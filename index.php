<?php require_once 'core/dbConfig.php'; ?>
<?php require_once 'core/models.php'; ?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Job Application System</title>
    <link rel="stylesheet" href="styles.css">
    <script src="https://code.jquery.com/jquery-3.7.1.min.js" integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo=" crossorigin="anonymous"></script>
</head>
<body>
    <?php if (isset($_SESSION['message'])) { ?>
        <h1 style="color: green; text-align: center; background-color: ghostwhite; border-style: solid;">    
            <?php echo $_SESSION['message']; ?>
        </h1>
    <?php } unset($_SESSION['message']); ?>

    <form action="<?php echo htmlspecialchars($_SERVER['PHP_SELF']);?>" method="GET">
        <input type="text" name="searchInput" placeholder="Search here">
        <input type="submit" name="searchBtn">
    </form>

    <p><a href="index.php">Clear Search Query</a></p>
    <p><a href="insert.php">Insert New Application</a></p>

    <table style="width:100%; margin-top: 20px;">
        <tr>
            <th>First Name</th>
            <th>Last Name</th>
            <th>Email</th>
            <th>Phone Number</th>
            <th>Gender</th>
            <th>Address</th>
            <th>State</th>
            <th>Nationality</th>
            <th>Qualification</th>
            <th>Experience (Years)</th>
            <th>Subjects</th>
            <th>Date Added</th>
            <th>Action</th>
        </tr>

        <?php if (!isset($_GET['searchBtn'])) { ?>
            <?php 
            $result = getAllApplications($pdo); 
            $applications = $result['querySet'];
            foreach ($applications as $row) { ?>
                <tr>
                    <td><?php echo $row['first_name']; ?></td>
                    <td><?php echo $row['last_name']; ?></td>
                    <td><?php echo $row['email']; ?></td>
                    <td><?php echo $row['phone_number']; ?></td>
                    <td><?php echo $row['gender']; ?></td>
                    <td><?php echo $row['address']; ?></td>
                    <td><?php echo $row['state']; ?></td>
                    <td><?php echo $row['nationality']; ?></td>
                    <td><?php echo $row['qualification']; ?></td>
                    <td><?php echo $row['experience_years']; ?></td>
                    <td><?php echo $row['subjects']; ?></td>
                    <td><?php echo $row['date_added']; ?></td>
                    <td>
                        <a href="edit.php?id=<?php echo $row['id']; ?>">Edit</a>
                        <a href="delete.php?id=<?php echo $row['id']; ?>">Delete</a>
                    </td>
                </tr>
            <?php } ?>
        <?php } else { ?>
            <?php 
            $result = searchForApplication($pdo, $_GET['searchInput']); 
            $applications = $result['querySet'];
            foreach ($applications as $row) { ?>
                <tr>
                    <td><?php echo $row['first_name']; ?></td>
                    <td><?php echo $row['last_name']; ?></td>
                    <td><?php echo $row['email']; ?></td>
                    <td><?php echo $row['phone_number']; ?></td>
                    <td><?php echo $row['gender']; ?></td>
                    <td><?php echo $row['address']; ?></td>
                    <td><?php echo $row['state']; ?></td>
                    <td><?php echo $row['nationality']; ?></td>
                    <td><?php echo $row['qualification']; ?></td>
                    <td><?php echo $row['experience_years']; ?></td>
                    <td><?php echo $row['subjects']; ?></td>
                    <td><?php echo $row['date_added']; ?></td>
                    <td>
                        <a href="edit.php?id=<?php echo $row['id']; ?>">Edit</a>
                        <a href="delete.php?id=<?php echo $row['id']; ?>">Delete</a>
                    </td>
                </tr>
            <?php } ?>
        <?php } ?>    
    </table>
</body>
</html>