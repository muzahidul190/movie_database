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

<div class="col">
    <div class="card">
        <img src="images/thumbnail/<?php echo $act_id; ?>.jpg" class="card-img-top" alt="...">
        <div class="card-body">
            <h4 class="card-title"><a class="link-success text-decoration-none" href="#"><?php echo $row['actor_first_name'] . " " . $row['actor_last_name']; ?></a></h4>
            <h5>Gender: </h5><span>
                <?php
                if ($row['actor_gender'] === 'm')
                    echo "Male";
                else
                    echo "Female";

                ?>
            </span>
        </div>
    </div>
</div>


<!--End Editing here-->

<?php
include 'foot.php';
?>