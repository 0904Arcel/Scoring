<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="scoreCard.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <title>Scoring</title>
</head>
<body class="bg-dark">
    
<div class="containar bg-dark fs-6">
    <div class="row">
        <table class="table table-dark table-striped " id="tb1">
            <thead>
                <tr>
                    <th scope="col">#</th>
                    <th scope="col">Hole</th>
                    <?php for ($i = 1; $i <= 9; $i++) { ?>
                        <th scope="col"><?php echo $i; ?></th>
                    <?php } ?>
                    <th scope="col">OUT</th>
                    <?php for ($i = 10; $i <= 18; $i++) { ?>
                        <th scope="col"><?php echo $i; ?></th>
                    <?php } ?>
                    <th scope="col">IN</th>
                    <th scope="col">TOTAL</th>
                </tr>
            </thead>
            <tbody>
                <?php
             
                $conn = new mysqli('localhost', 'root', '', 'scoring_db');
                if ($conn->connect_error) {
                    die('Connection Failed: ' . $conn->connect_error);
                }

               
                $sql = "SELECT * FROM score_card";
                $result = $conn->query($sql);

                if ($result->num_rows > 0) {
                    
                    while ($row = $result->fetch_assoc()) {
                        echo '<tr>';
                        echo '<td>' . $row['id'] . '</td>';
                        echo '<td>' . $row['holeName'] . '</td>';
                       
                        for ($i = 1; $i <= 9; $i++) {
                            echo '<td>' . $row[$i] . '</td>';
                        }
                        echo '<td>' . $row['s_out'] . '</td>'; 
                        for ($i = 10; $i <= 18; $i++) {
                            echo '<td>' . $row[$i] . '</td>';
                        }
                        echo '<td>' . $row['s_in'] . '</td>'; 
                        echo '<td>' . $row['total'] . '</td>'; 
                        echo '</tr>';
                    }
                } else {
                    echo '<tr><td colspan="24">No results found.</td></tr>';
                }
                $conn->close();
                ?>
            </tbody>    
        </table>
    </div>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
</body>
</html>
