<?php
$title = "Add Genre | ";
include 'head.php';
include '../dbcon.php';
?>


<!--Start Editing from here-->
<?php
include 'header.php';
?>

<?php
if (isset($_GET['genre_name'])) {
    $genre = $_GET['genre_name'];

    $sql = "INSERT INTO genres (genre_id, genre_name) VALUES (NULL, '$genre');";

    if (mysqli_query($conn, $sql)) {
        echo "`$genre` is inserted into database successfully.";
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
        Enter Genre Name
    </div>
    <div class="card-body">
        <form class="row g-3" action="addgenre.php">
            <div class="col-md-12">
                <label for="validationDefault01" class="form-label">Genre</label>
                <input name="genre_name" type="text" class="form-control" id="validationDefault01" required>
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