<?php
$title = "Actors | ";
include 'head.php';
include 'dbcon.php';
?>


<!--Start Editing from here-->
<?php
include 'header.php';
?>


<div class="row row-cols-1 row-cols-md-2 row-cols-lg-3 g-4">

    <?php
    $sql = "SELECT * FROM actor ORDER BY actor_first_name ASC";
    $result = mysqli_query($conn, $sql);
    if (mysqli_num_rows($result) > 0) {
        while ($row = mysqli_fetch_assoc($result)) {
            $act_id = $row['actor_id'];
    ?>




            <div class="col">
                <div class="card">
                    <img src="images/thumbnail/<?php echo $act_id; ?>.jpg" class="card-img-top" alt="...">
                    <div class="card-body">
                        <h4 class="card-title"><a class="link-success text-decoration-none" href="<?php echo 'actor.php?actor_id=' . $act_id; ?>"><?php echo $row['actor_first_name'] . " " . $row['actor_last_name']; ?></a></h4>
                    </div>
                </div>
            </div>

    <?php
        }
    }
    ?>


</div>
<!--End Editing here-->

<?php
include 'foot.php';
?>