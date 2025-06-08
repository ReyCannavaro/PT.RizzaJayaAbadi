<?php
session_start();
include 'koneksi.php';

$username = $_POST['Username'];
$password = $_POST['Password'];

$login = mysqli_query($mysqli, "SELECT * FROM user WHERE username='$username' AND password='$password'");

if ($login) {
    $cek = mysqli_num_rows($login);

    if ($cek > 0) {
        $data = mysqli_fetch_assoc($login);

        if ($data['role'] == "admin") {
            $_SESSION['username'] = $username;
            $_SESSION['role'] = "admin";
            header("Location: admin/dashboard.php");
        } else if ($data['role'] == "user") {
            $_SESSION['username'] = $username;
            $_SESSION['role'] = "user";
            header("Location: welcome.php");
        } else {
            header("Location: welcome.php");
        }
    } else {
        header("Location: index.php?pesan=gagal");
    }
} else {
    echo "Error: " . mysqli_error($mysqli);
}
?>