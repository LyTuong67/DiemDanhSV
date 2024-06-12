<?php
$conn= new PDO('mysql:host=localhost; dbname=id21949930_dbbansach', 'id21949930_bansach', 'Lytuong123#');
$conn->query('set names utf8');
$stm = $conn->query('select * from book');
$data =$stm->fetchAll(PDO::FETCH_OBJ)
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Nhóm 21 (61-62-63)</title>
    <link rel="stylesheet" href="https://cdn.datatables.net/2.0.3/css/dataTables.dataTables.css">
    <script src="https://code.jquery.com/jquery-3.7.1.js"></script>
    <script src="https://cdn.datatables.net/2.0.3/js/dataTables.js"></script>
</head>

<body>
    <h1>Nhóm 21 (61-62-63)</h1>
    <table id="example" class="display" style="width:100%">
        <thead>
            <tr>
                <th>Ma Sach</th>
                <th>Ten Sach</th>
                <th>Gia</th>
            </tr>
        </thead>
        <tbody>
            <?php
            foreach($data as $item)
            {
                ?>
            <tr>
                <td><?php echo $item->book_id ?></td>
                <td><?php echo $item->book_name ?></td>
                <td><?php echo $item->price ?></td>
            </tr>
            <?php
            }
            ?>
        </tbody>

    </table>
    <script>
    new DataTable('#example');
    </script>
</body>

</html>