<?php  
require_once 'dbConfig.php';

function getAllApplications($pdo) {
    $sql = "SELECT * FROM teacher_applications ORDER BY first_name ASC";
    $stmt = $pdo->prepare($sql);
    $executeQuery = $stmt->execute();
    
    if ($executeQuery) {
        return [
            'message' => 'Applications retrieved successfully',
            'statusCode' => 200,
            'querySet' => $stmt->fetchAll()
        ];
    } else {
        return [
            'message' => 'Failed to retrieve applications',
            'statusCode' => 400
        ];
    }
}

function getApplicationByID($pdo, $id) {
    $sql = "SELECT * from teacher_applications WHERE id = ?";
    $stmt = $pdo->prepare($sql);
    $executeQuery = $stmt->execute([$id]);

    if ($executeQuery) {
        return [
            'message' => 'Application retrieved successfully',
            'statusCode' => 200,
            'querySet' => $stmt->fetch()
        ];
    } else {
        return [
            'message' => 'Failed to retrieve application',
            'statusCode' => 400
        ];
    }
}

function searchForApplication($pdo, $searchQuery) {
    $sql = "SELECT * FROM teacher_applications WHERE 
            CONCAT(first_name, last_name, email, phone_number, gender, address, state, nationality, qualification, experience_years, subjects, date_added) 
            LIKE ?";
    $stmt = $pdo->prepare($sql);
    $executeQuery = $stmt->execute(["%" . $searchQuery . "%"]);
    
    if ($executeQuery) {
        return [
            'message' => 'Applications retrieved successfully',
            'statusCode' => 200,
            'querySet' => $stmt->fetchAll()
        ];
    } else {
        return [
            'message' => 'Failed to retrieve applications',
            'statusCode' => 400
        ];
    }
}

function insertNewApplication($pdo, $first_name, $last_name, $email, $phone_number, $gender, $address, $state, $nationality, $qualification, $experience_years, $subjects) {
    $sql = "INSERT INTO teacher_applications 
            (
                first_name,
                last_name,
                email,
                phone_number,
                gender,
                address,
                state,
                nationality,
                qualification,
                experience_years,
                subjects
            )
            VALUES (?,?,?,?,?,?,?,?,?,?,?)";
    $stmt = $pdo->prepare($sql);
    $executeQuery = $stmt->execute([
        $first_name, $last_name, $email, $phone_number, $gender, $address, $state, $nationality, $qualification, $experience_years, $subjects
    ]);

    if ($executeQuery) {
        return [
            'message' => 'Application inserted successfully',
            'statusCode' => 200
        ];
    } else {
        return [
            'message' => 'Failed to insert application',
            'statusCode' => 400
        ];
    }
}

function editApplication($pdo, $first_name, $last_name, $email, $phone_number, $gender, $address, $state, $nationality, $qualification, $experience_years, $subjects, $id) {
    $sql = "UPDATE teacher_applications
            SET first_name = ?,
                last_name = ?,
                email = ?,
                phone_number = ?,
                gender = ?,
                address = ?,
                state = ?,
                nationality = ?,
                qualification = ?,
                experience_years = ?,
                subjects = ?
            WHERE id = ?";
    $stmt = $pdo->prepare($sql);
    $executeQuery = $stmt->execute([$first_name, $last_name, $email, $phone_number, $gender, $address, $state, $nationality, $qualification, $experience_years, $subjects, $id]);

    if ($executeQuery) {
        return [
            'message' => 'Application updated successfully',
            'statusCode' => 200
        ];
    } else {
        return [
            'message' => 'Failed to update application',
            'statusCode' => 400
        ];
    }
}

function deleteApplication($pdo, $id) {
    $sql = "DELETE FROM teacher_applications WHERE id = ?";
    $stmt = $pdo->prepare($sql);
    $executeQuery = $stmt->execute([$id]);

    if ($executeQuery) {
        return [
            'message' => 'Application deleted successfully',
            'statusCode' => 200
        ];
    } else {
        return [
            'message' => 'Failed to delete application',
            'statusCode' => 400
        ];
    }
}
?>