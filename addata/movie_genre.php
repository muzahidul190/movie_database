<?php
$title = "Add Movie Genre Relation | ";
include 'head.php';
include '../dbcon.php';
?>


<!--Start Editing from here-->
<?php
include 'header.php';
?>

<?php
if (isset($_GET['genre_id']) && isset($_GET['movie_id'])) {
    $genre = $_GET['genre_id'];
    $mv_id = $_GET['movie_id'];

    $sql = "INSERT INTO movie_genre (mg_id, movie_id, genre_id) VALUES (NULL, '$mv_id', '$genre');";

    if (mysqli_query($conn, $sql)) {
        echo "`$genre` and `$mv_id` connection is inserted into database successfully.";
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
        Enter Movie Genre Details
    </div>
    <div class="card-body">
        <form class="row g-3" action="movie_genre.php">
            <div class="col-md-4">
                <label for="validationDefault01" class="form-label">Genre</label>
                <select name="genre_id" class="form-select" aria-label="Default select example" required>

                    <option selected>Select A Genre</option>
                    <?php
                    $sql2 = "SELECT * FROM genres ORDER BY genre_name ASC";
                    $res = mysqli_query($conn, $sql2);

                    if (mysqli_num_rows($res) > 0) {
                        while ($row2 = mysqli_fetch_assoc($res)) {
                            $gnre_nm = $row2['genre_name'];
                            $gnre_id = $row2['genre_id'];
                    ?>
                            <option value="<?php echo $gnre_id; ?>"><?php echo $gnre_nm; ?></option>
                    <?php
                        }
                    }
                    ?>
                </select>
            </div>
            <div class="col-md-4">
                <label for="validationDefault02" class="form-label">Movie</label>
                <select name="movie_id" class="form-select" aria-label="Default select example" required>

                    <option selected>Select A Movie</option>
                    <?php
                    $sql3 = "SELECT * FROM movie ORDER BY movie_title ASC";
                    $res3 = mysqli_query($conn, $sql3);

                    if (mysqli_num_rows($res3) > 0) {
                        while ($row3 = mysqli_fetch_assoc($res3)) {
                            $mov_nm = $row3['movie_title'];
                            $mov_id = $row3['movie_id'];
                    ?>
                            <option value="<?php echo $mov_id; ?>"><?php echo $mov_nm; ?></option>
                    <?php
                        }
                    }
                    ?>
                </select>
            </div>
            <div class="col-md-4">
                <label for="validationDefaultUsername" class="form-label">Check This box</label><br>
                <input class="form-check-input mt-0" type="checkbox" value="" aria-label="Checkbox for following text input" required>
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