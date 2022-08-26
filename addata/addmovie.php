<?php
$title = "Add Movie | ";
include 'head.php';
include '../dbcon.php';
?>


<!--Start Editing from here-->
<?php
include 'header.php';
?>

<?php
if (isset($_GET['mv_name']) && isset($_GET['mv_year']) && isset($_GET['mv_time']) && isset($_GET['mv_lang']) && isset($_GET['mv_date']) && isset($_GET['mv_country'])) {
    $name = $_GET['mv_name'];
    $year = $_GET['mv_year'];
    $time = $_GET['mv_time'];
    $language = $_GET['mv_lang'];
    $date = $_GET['mv_date'];
    $country = $_GET['mv_country'];

    $sql = "INSERT INTO movie (movie_id, movie_title, movie_year, movie_time, movie_language, movie_release_date, movie_release_country) VALUES (NULL, '$name', '$year', '$time', '$language', '$date', '$country');";

    if (mysqli_query($conn, $sql)) {
        echo "`$name` is inserted into database successfully.";
    } else {
        echo "Error: " . $sql . "<br>" . mysqli_error($conn);
    }
}
?>

<hr>

<div class="btn-group" role="group" aria-label="Basic mixed styles example">
    <a href="addactor.php" type="button" class="btn btn-danger">Add Actor</a>
    <a href="addmovie.php" type="button" class="btn btn-warning">Add Movie</a>
    <a href="addirector.php" type="button" class="btn btn-success">Add Director</a>
    <a href="addgenre.php" type="button" class="btn btn-info">Add Genre</a>
</div>

<hr>

<div class="card text-center">
    <div class="card-header">
        Enter Movie Details
    </div>
    <div class="card-body">
        <form class="row g-3" action="addmovie.php">
            <div class="col-md-4">
                <label for="validationDefault01" class="form-label">Movie name</label>
                <input name="mv_name" type="text" class="form-control" id="validationDefault01" required>
            </div>
            <div class="col-md-4">
                <label for="validationDefault02" class="form-label">Movie Year</label>
                <input name="mv_year" type="number" class="form-control" id="validationDefault02" required>
            </div>
            <div class="col-md-4">
                <label for="validationDefaultUsername" class="form-label">Movie Time</label>
                <input name="mv_time" type="number" class="form-control" id="validationDefaultUsername" aria-describedby="inputGroupPrepend2" required>
            </div>
            <div class="col-md-4">
                <label for="validationDefault03" class="form-label">Movie Language</label>
                <input name="mv_lang" type="text" class="form-control" id="validationDefault03" required>
            </div>
            <div class="col-md-4">
                <label for="validationDefault04" class="form-label">Movie Release Date</label>
                <input name="mv_date" type="date" class="form-control" id="validationDefault03" required>
            </div>
            <div class="col-md-4">
                <label for="validationDefault05" class="form-label">Country</label>
                <input name="mv_country" type="text" class="form-control" id="validationDefault05" maxlength="3" required>
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