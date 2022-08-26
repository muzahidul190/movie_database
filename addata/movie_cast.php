<?php
$title = "Add Movie Cast | ";
include 'head.php';
include '../dbcon.php';
?>


<!--Start Editing from here-->
<?php
include 'header.php';
?>

<?php
if (isset($_GET['actor_id']) && isset($_GET['movie_id']) && isset($_GET['role'])) {
    $actr = $_GET['actor_id'];
    $mv_id = $_GET['movie_id'];
    $rol = $_GET['role'];

    $sql = "INSERT INTO movie_cast (mc_id, actor_id, movie_id, role) VALUES (NULL, '$actr', '$mv_id', '$rol');";

    if (mysqli_query($conn, $sql)) {
        echo "`$actr` and `$mv_id` connection is inserted into database successfully.";
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
        Enter Movie Cast Details
    </div>
    <div class="card-body">
        <form class="row g-3" action="movie_cast.php">
            <div class="col-md-4">
                <label for="validationDefault01" class="form-label">Actor</label>
                <select name="actor_id" class="form-select" aria-label="Default select example" required>

                    <option selected>Select An Actor</option>
                    <?php
                    $sql2 = "SELECT * FROM actor ORDER BY actor_first_name ASC";
                    $res = mysqli_query($conn, $sql2);

                    if (mysqli_num_rows($res) > 0) {
                        while ($row2 = mysqli_fetch_assoc($res)) {
                            $actr_nm = $row2['actor_first_name'] . " " . $row2['actor_last_name'];
                            $actr_id = $row2['actor_id'];
                    ?>
                            <option value="<?php echo $actr_id; ?>"><?php echo $actr_nm; ?></option>
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
                <label for="validationDefaultUsername" class="form-label">Role</label>
                <input name="role" type="text" class="form-control" id="validationDefault01" required>
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