<?php
$title = "Directors | ";
include 'head.php';
include 'dbcon.php';
?>


<!--Start Editing from here-->
<?php
include 'header.php';
?>

<div class="row row-cols-1 row-cols-md-2 row-cols-lg-3 g-4">

    <?php
    $sql = "SELECT * FROM director ORDER BY director_first_name ASC";
    $result = mysqli_query($conn, $sql);
    if (mysqli_num_rows($result) > 0) {
        while ($row = mysqli_fetch_assoc($result)) {
            $dir_id = $row['director_id'];
    ?>




            <div class="col">
                <div class="card">
                    <?php
                    if (file_exists("images/director/$dir_id.jpg"))
                        $file_name = "$dir_id.jpg";
                    else
                        $file_name = "default_male.png";
                    ?>
                    <img class="actor" src="images/director/<?php echo $file_name; ?>" class="card-img-top" alt="...">
                    <div class="card-body">
                        <h4 class="card-title"><a class="link-success text-decoration-none" href="<?php echo 'director.php?director_id=' . $dir_id; ?>"><?php echo $row['director_first_name'] . " " . $row['director_last_name']; ?></a>&nbsp;</a><small>
                                <?php
                                $sql2 = "SELECT movie_id FROM movie_direction WHERE director_id = $dir_id";
                                $res2 = mysqli_query($conn, $sql2);
                                echo "(";
                                echo mysqli_num_rows($res2);
                                echo ")";
                                ?>
                            </small></h4>
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