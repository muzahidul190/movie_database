<?php
include 'dbcon.php';

$mv_id = $_GET['movie_id'];
if (!isset($mv_id)) {
    header("location:index.php");
}

$sql = "SELECT * FROM movie WHERE movie_id = $mv_id";
$result = mysqli_fetch_assoc(mysqli_query($conn, $sql));

$title = $result['movie_title'] . " | ";    //Need to update title

include 'head.php';
?>


<!--Start Editing from here-->
<?php
include 'header.php';
?>


<div class="col">
    <div class="card">
        <img src="images/thumbnail/<?php echo $mv_id; ?>.jpg" class="card-img-top" alt="...">
        <div class="card-body">
            <h4 class="card-title"><a class="link-success text-decoration-none" href="#"><?php echo $result['movie_title']; ?></a>&nbsp;<small class="small">(<?php echo $result['movie_year']; ?>)</small></h4>
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
                            echo "<a href='genre.php?genre_id=" . $fnl_gn_id . "' class='badge text-bg-info mx-1 text-decoration-none hover'>";
                            echo $gntbl['genre_name'] . "</a>";
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
                        $act_name = "SELECT actor_first_name,actor_last_name,actor_id FROM actor WHERE actor_id = $fnl_act_id";
                        $actname = mysqli_query($conn, $act_name);
                        while ($acttbl = mysqli_fetch_assoc($actname)) {
                            echo "<a href='actor.php?actor_id=" . $acttbl['actor_id'] . "' class='text-decoration-none text-dark hover'>";
                            echo $acttbl['actor_first_name'] . " " . $acttbl['actor_last_name'] . "</a>... ";
                        }
                    }
                }

                ?>
            </span>
        </div>
    </div>
</div>

<!--End Editing here-->

<?php
include 'foot.php';
?>