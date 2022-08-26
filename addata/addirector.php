<?php
$title = "Add Director | ";
include 'head.php';
include '../dbcon.php';
?>


<!--Start Editing from here-->
<?php
include 'header.php';
?>

<?php
if (isset($_GET['first_name']) && isset($_GET['last_name'])) {
    $frst_name = $_GET['first_name'];
    $lst_name = $_GET['last_name'];

    $sql = "INSERT INTO director (director_id, director_first_name, director_last_name) VALUES (NULL, '$frst_name', '$lst_name');";

    if (mysqli_query($conn, $sql)) {
        echo "`$frst_name` is inserted into database successfully.";
    } else {
        echo "Error: " . $sql . "<br>" . mysqli_error($conn);
    }
}
?>

<?php
include 'menu.php';
?>


<div class="card text-center">
    <div class="card-header">
        Enter Director Details
    </div>
    <div class="card-body">
        <form class="row g-3" action="addirector.php">
            <div class="col-md-6">
                <label for="validationDefault01" class="form-label">First name</label>
                <input name="first_name" type="text" class="form-control" id="validationDefault01" required>
            </div>
            <div class="col-md-6">
                <label for="validationDefault02" class="form-label">Last name</label>
                <input name="last_name" type="text" class="form-control" id="validationDefault02">
            </div>
            <div class="col-12">
                <button class="btn btn-primary" type="submit">Submit form</button>
            </div>
        </form>
    </div>
</div>



<!--End Editing here-->

<?php
include 'foot.php';
?>