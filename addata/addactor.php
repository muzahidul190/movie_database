<?php
$title = "Add Actor | ";
include 'head.php';
include '../dbcon.php';
?>


<!--Start Editing from here-->
<?php
include 'header.php';
?>

<?php
if (isset($_GET['first_name']) && isset($_GET['last_name']) && isset($_GET['gender'])) {
    $frst_name = $_GET['first_name'];
    $lst_name = $_GET['last_name'];
    $gndr = $_GET['gender'];

    $sql = "INSERT INTO actor (actor_id, actor_first_name, actor_last_name, actor_gender) VALUES (NULL, '$frst_name', '$lst_name', '$gndr');";

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
        Enter Actor Details
    </div>
    <div class="card-body">
        <form class="row g-3" action="addactor.php">
            <div class="col-md-4">
                <label for="validationDefault01" class="form-label">First name</label>
                <input name="first_name" type="text" class="form-control" id="validationDefault01" required>
            </div>
            <div class="col-md-4">
                <label for="validationDefault02" class="form-label">Last name</label>
                <input name="last_name" type="text" class="form-control" id="validationDefault02">
            </div>
            <div class="col-md-4">
                <label for="validationDefaultUsername" class="form-label">Gender</label>
                <select name="gender" class="form-select" aria-label="Default select example">
                    <option selected value="m">Male</option>
                    <option value="f">Female</option>
                </select>
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