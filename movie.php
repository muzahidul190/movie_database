<?php
include 'dbcon.php';

$mv_id = $_GET['movie_id'];
if (!isset($mv_id)) {
    header("location:index.php");
}

$sql = "SELECT * FROM movie WHERE movie_id = $mv_id";
$result = mysqli_fetch_assoc(mysqli_query($conn, $sql));

$title = $result['movie_title'] . " | ";    //Need to update title

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
            if (file_exists("images/thumbnail/$mv_id.jpg"))
                $file_name = "$mv_id.jpg";
            else
                $file_name = "default.png";
            ?>
            <img src="images/thumbnail/<?php echo $file_name; ?>" class="card-img-top" alt="...">
            <div class="card-body">
                <h4 class="card-title"><a class="link-success text-decoration-none" href="#"><?php echo $result['movie_title']; ?></a>&nbsp;<small class="small">(<?php echo $result['movie_year']; ?>)</small></h4>
                <h5>Genre: </h5><span>
                    <?php

                    $gn_ids = "SELECT genre_id FROM movie_genre WHERE movie_id = $mv_id";
                    $r1 = mysqli_query($conn, $gn_ids);

                    if (mysqli_num_rows($r1) > 0) {
                        while ($gn_id = mysqli_fetch_assoc($r1)) {
                            $fnl_gn_id = $gn_id['genre_id'];
                            $gn_name = "SELECT genre_name FROM genres WHERE genre_id = $fnl_gn_id";
                            $gnname = mysqli_query($conn, $gn_name);
                            while ($gntbl = mysqli_fetch_assoc($gnname)) {
                                echo "<a href='genre.php?genre_id=" . $fnl_gn_id . "' class='badge text-bg-info mx-1 text-decoration-none hover'>";
                                echo $gntbl['genre_name'] . "</a>";
                            }
                        }
                    }

                    ?>
                </span>
                <h5>Cast: </h5><span>
                    <?php

                    $act_ids = "SELECT actor_id FROM movie_cast WHERE movie_id = $mv_id";
                    $r2 = mysqli_query($conn, $act_ids);

                    if (mysqli_num_rows($r2) > 0) {
                        while ($act_id = mysqli_fetch_assoc($r2)) {
                            $fnl_act_id = $act_id['actor_id'];
                            $act_name = "SELECT actor_first_name,actor_last_name,actor_id FROM actor WHERE actor_id = $fnl_act_id";
                            $actname = mysqli_query($conn, $act_name);
                            while ($acttbl = mysqli_fetch_assoc($actname)) {
                                echo "<a href='actor.php?actor_id=" . $acttbl['actor_id'] . "' class='text-decoration-none text-dark hover'>";
                                echo $acttbl['actor_first_name'] . " " . $acttbl['actor_last_name'] . "</a>... ";
                            }
                        }
                    }

                    ?>
                </span>
            </div>
        </div>
    </div>
    <div class="col-12 col-md-6">
        <div class="card">
            <div class="card-body">
                <h4 class="card-title"><small>More about </small><?php echo $result['movie_title']; ?></h4>
                <table class="table table-hover">
                    <tbody>
                        <tr>
                            <td>Runtime</td>
                            <td><?php
                                $ttime = $result['movie_time'];
                                $mn = $ttime % 60;
                                $ttime -= $mn;
                                $hr = $ttime / 60;

                                if ($hr > 0)
                                    echo $hr . " hour ";
                                if ($mn > 0)
                                    echo $mn . " min";

                                ?></td>
                        </tr>
                        <tr>
                            <td>Director</td>
                            <td>
                                <?php
                                $sqldir = "SELECT director_id FROM movie_direction WHERE movie_id = $mv_id";
                                $find_dir_id = mysqli_query($conn, $sqldir);
                                if (mysqli_num_rows($find_dir_id) > 0) {
                                    while ($dir_id = mysqli_fetch_assoc($find_dir_id)) {
                                        $fnl_dr_id = $dir_id['director_id'];
                                        $sql_dir_name = "SELECT * FROM director WHERE director_id = $fnl_dr_id";
                                        $dir_name = mysqli_query($conn, $sql_dir_name);
                                        while ($thdrnm = mysqli_fetch_assoc($dir_name)) {
                                ?>
                                            <a class="text-decoration-none text-dark hover" href="<?php echo "director.php?director_id=$fnl_dr_id"; ?>">
                                                <?php
                                                echo $thdrnm['director_first_name'] . " " . $thdrnm['director_last_name'] . "... ";
                                                ?>
                                            </a>
                                <?php
                                        }
                                    }
                                }
                                ?>
                            </td>
                        </tr>
                        <tr>
                            <td>Movie Language</td>
                            <td>
                                <?php
                                $lang = $result['movie_language'];
                                echo $lang;
                                ?>
                            </td>
                        </tr>
                        <tr>
                            <td>Release Date</td>
                            <td>
                                <?php
                                $release = $result['movie_release_date'];
                                echo $release;
                                ?>
                            </td>
                        </tr>
                        <tr>
                            <td>Country</td>
                            <td>
                                <?php
                                $cont = $result['movie_release_country'];
                                echo $cont;
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