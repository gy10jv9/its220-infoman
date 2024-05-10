<?php
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $volunteer = [
        "fname" => $_POST["fname"],
        "lname" => $_POST["lname"],
        "contactnum" => $_POST["contactnum"],
        "nationality" => $_POST["nationality"],
        "sex" => $_POST["sex"],
        "cvlstat" => $_POST["cvlstat"],
        "bdate" => $_POST["bdate"],
        "occup" => $_POST["occup"],
        "strtAddress" => $_POST["strtAddress"],
        "city" => $_POST["city"],
        "region" => $_POST["region"],
        "country" => $_POST["country"],
    ];

    try {
        include("../../classes/Database.php");
        include("../../classes/Volunteer.php");

        $db = new Database();
        $Volunteer = new Volunteer($db);
        $Volunteer->add($volunteer);
    } catch (Exception $e) {
        die("Error: ". $e->getMessage());
    }
}
?>