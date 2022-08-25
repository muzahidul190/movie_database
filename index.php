<?php
include 'dbcon.php';
include 'head.php';
?>


<!--Start Editing from here-->
<?php
include 'header.php';
?>

<div class="row row-cols-1 row-cols-md-2 row-cols-lg-3 g-4">

  <?php
  $sql = "SELECT * FROM movie";
  $result = mysqli_query($conn, $sql);
  if (mysqli_num_rows($result) > 0) {
    while ($row = mysqli_fetch_assoc($result)) {
      $mv_id = $row['movie_id'];
  ?>

      <div class="col">
        <div class="card">
          <img src="images/thumbnail/shawshank_Redemption.jpg" class="card-img-top" alt="...">
          <div class="card-body">
            <h4 class="card-title"><a class="link-success text-decoration-none" href="<?php echo 'actor.php?movie_id=' . $mv_id; ?>"><?php echo $row['movie_title']; ?></a></h4>
            <h5>Genre: </h5><span>
              <?php

              $gn_ids = "SELECT genre_id FROM movie_genre WHERE movie_id = $mv_id";
              $r1 = mysqli_query($conn, $gn_ids);

              if (mysqli_num_rows($r1) > 0) {
                while ($gn_id = mysqli_fetch_assoc($r1)) {
                  $fnl_gn_id = $gn_id['genre_id'];
                  $gn_name = "SELECT genre_name FROM genres WHERE genre_id = $fnl_gn_id";
                  $gnname = mysqli_query($conn, $gn_name);
                  while ($gntbl = mysqli_fetch_assoc($gnname)) {
                    echo $gntbl['genre_name'] . ", ";
                  }
                }
              }

              ?>
            </span>
            <h5>Cast: </h5><span>
              <?php

              $act_ids = "SELECT actor_id FROM movie_cast WHERE movie_id = $mv_id";
              $r2 = mysqli_query($conn, $act_ids);

              if (mysqli_num_rows($r2) > 0) {
                while ($act_id = mysqli_fetch_assoc($r2)) {
                  $fnl_act_id = $act_id['actor_id'];
                  $act_name = "SELECT actor_first_name,actor_last_name FROM actor WHERE actor_id = $fnl_act_id";
                  $actname = mysqli_query($conn, $act_name);
                  while ($acttbl = mysqli_fetch_assoc($actname)) {
                    echo $acttbl['actor_first_name'] . " " . $acttbl['actor_last_name'] . ", ";
                  }
                }
              }

              ?>
            </span>
          </div>
        </div>
      </div>

  <?php
    }
  }
  ?>


</div>
</div>


<!--End Editing here-->

<?php
include 'foot.php';
?>