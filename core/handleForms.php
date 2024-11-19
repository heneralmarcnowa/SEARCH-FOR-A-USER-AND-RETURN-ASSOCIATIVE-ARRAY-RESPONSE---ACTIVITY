<?php  
require_once 'dbConfig.php';
require_once 'models.php';

if (isset($_POST['insertApplicationBtn'])) {
    $result = insertNewApplication($pdo, $_POST['first_name'], $_POST['last_name'], $_POST['email'], $_POST['phone_number'], $_POST['gender'], $_POST['address'], $_POST['state'], $_POST['nationality'], $_POST['qualification'], $_POST['experience_years'], $_POST['subjects']);
    
    $_SESSION['message'] = $result['message'];
    header("Location: ../index.php");
}

if (isset($_POST['editApplicationBtn'])) {
    $result = editApplication($pdo, $_POST['first_name'], $_POST['last_name'], $_POST['email'], $_POST['phone_number'], $_POST['gender'], $_POST['address'], $_POST['state'], $_POST['nationality'], $_POST['qualification'], $_POST['experience_years'], $_POST['subjects'], $_GET['id']);
    
    $_SESSION['message'] = $result['message'];
    header("Location: ../index.php");
}

if (isset($_POST['deleteApplicationBtn'])) {
    $result = deleteApplication($pdo, $_GET['id']);
    
    $_SESSION['message'] = $result['message'];
    header("Location: ../index.php");
}

if (isset($_GET['searchBtn'])) {
    $result = searchForApplication($pdo, $_GET['searchInput']);
    foreach ($result['querySet'] as $row) {
        echo "<tr>
                <td>{$row['first_name']}</td>
                <td>{$row['last_name']}</td>
                <td>{$row['email']}</td>
                <td>{$row['phone_number']}</td>
                <td>{$row['gender']}</td>
                <td>{$row['address']}</td>
                <td>{$row['state']}</td>
                <td>{$row['nationality']}</td>
                <td>{$row['qualification']}</td>
                <td>{$row['experience_years']}</td>
                <td>{$row['subjects']}</td>
              </tr>";
    }
}
?>