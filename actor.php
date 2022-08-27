<?php
include 'dbcon.php';

$act_id = $_GET['actor_id'];
if (!isset($act_id)) {
    header("location:index.php");
}

$sql = "SELECT * FROM actor WHERE actor_id = $act_id";
$row = mysqli_fetch_assoc(mysqli_query($conn, $sql));

$title = $row['actor_last_name'] . " | ";    //Need to update title

include 'head.php';
?>


<!--Start Editing from here-->
<?php
include 'header.php';
?>
<div class="row">
    <div class="col-12 col-md-6">
        <div class="card">
            <?php
            if (file_exists("images/actor/$act_id.jpg"))
                $file_name = "$act_id.jpg";
            else {
                if ($row['actor_gender'] === 'm')
                    $file_name = "default_male.png";
                else
                    $file_name = "default_female.png";
            }
            ?>
            <img class="actor" src="images/actor/<?php echo $file_name; ?>" class="card-img-top" alt="...">
            <div class="card-body">
                <h4 class="card-title"><a class="link-success text-decoration-none" href="#"><?php echo $row['actor_first_name'] . " " . $row['actor_last_name']; ?></a></h4>
            </div>
        </div>
    </div>
    <div class="col-12 col-md-6">
        <div class="card">
            <div class="card-body">
                <h4 class="card-title"><small>More about </small><?php echo $row['actor_first_name'] . " " . $row['actor_last_name']; ?></h4>
                <table class="table table-hover">
                    <tbody>
                        <tr>
                            <td>Gender</td>
                            <td><?php
                                if ($row['actor_gender'] === 'm')
                                    echo "Male";
                                else
                                    echo "Female";

                                ?></td>
                        </tr>
                        <tr>
                            <td>Total Movies</td>
                            <td>
                                <?php
                                $sql2 = "SELECT movie_id FROM movie_cast WHERE actor_id = $act_id";
                                $res2 = mysqli_query($conn, $sql2);
                                echo mysqli_num_rows($res2);
                                ?>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>


<!--End Editing here-->

<?php
include 'foot.php';
?>