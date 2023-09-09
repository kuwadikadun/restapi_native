<?php

// header('Content-Type: application/json; charset=utf8');

require_once('connection.php');

    if($_SERVER['REQUEST_METHOD'] === 'GET') {
        if(empty($_GET['id'])) {
            $query = mysqli_query($conn, "SELECT * FROM data");

            $result = [];

            while($row = mysqli_fetch_assoc($query)) {
                array_push($result, array (
                    'id' => $row['id'],
                    'name' => $row['name'],
                    'image' => $row['image'],
                ));
            }

            echo json_encode(array('result' => $result));
        } else {
            $id = $_GET['id'];
            $query = mysqli_query($conn, "SELECT * FROM data WHERE id='$id'");
    
            while($row = mysqli_fetch_assoc($query)) {
                $result = [
                    'id' => $row['id'],
                    'name' => $row['name'],
                    'image' => $row['image'],
                    'description' => $row['description'],
                    'release_date' => $row['release_date'],
                ];
            }
    
            echo json_encode($result);
        }
        
    } else if($_SERVER['REQUEST_METHOD'] === 'POST') {
        $name = $_POST['name'];
        $image = $_POST['image'];
        $description = $_POST['description'];
        $release_date = $_POST['release_date'];

        $cek = $conn;

        if($cek == true){
            if($name == null || $image == null || $description == null || $release_date == null) {
                $result = [
                    'status' => 400,
                    'info' => "Semua field harus diisi!"
                ];

                echo json_encode([$result]);
            } else {
                $query = mysqli_query($conn, "INSERT INTO data (name, image, description, release_date) VALUES ('$name', '$image', '$description', '$release_date')");

                $result = [
                    'status' => 200,
                    'info' => "Data Berhasil Ditambahkan!"
                ];
                echo json_encode([$result]);
            }
        }else {
            $result = [
                'status' => 400,
                'info' => "Tidak ada koneksi!"
            ];
            echo json_encode([$result]);
        }
    } else if($_SERVER['REQUEST_METHOD'] === 'DELETE'){
        $id = $_GET['id'];
        $query = mysqli_query($conn, "DELETE FROM data WHERE id='$id'");

        if($query){
            $result = [
                'status' => 200,
                'info' => "Data Berhasil Dihapus!"
            ];
            echo json_encode([$result]);
        }else {
            $result = [
                'status' => 404,
                'info' => "Data Gagal Dihapus!"
            ];
            echo json_encode([$result]);
        }
    } else if($_SERVER['REQUEST_METHOD'] === 'PUT'){
        $id = $_GET['id'];
        $name = $_GET['name'];
        $image = $_GET['image'];
        $description = $_GET['description'];
        $release_date = $_GET['release_date'];

        $cek = $conn;

        if($cek == true){
            if($name == null || $image == null || $description == null || $release_date == null) {
                
                $result = [
                    'status' => 404,
                    'info' => "Data Gagal Diubah!"
                ];
                echo json_encode([$result]);
            } else {
                $query = mysqli_query($conn, "UPDATE data SET name='$name', image='$image', description='$description', release_date='$release_date' WHERE id='$id'");

                $result = [
                    'status' => 200,
                    'info' => "Data Berhasil Diubah!"
                ];
                echo json_encode([$result]);
            }
            
        }else {
            $result = [
                'status' => 404,
                'info' => "Tidak ada koneksi!"
            ];
            echo json_encode([$result]);
        }
    }
    

// $query = mysqli_query($conn, "SELECT * FROM data");

// $result = array();

// while($row = mysqli_fetch_array($query)) {
//     array_push($result, array (
//         'id' => $row['id'],
//         'name' => $row['name'],
//         'image' => $row['image'],
//     ));
// }

// echo json_encode(array('result' => $result));