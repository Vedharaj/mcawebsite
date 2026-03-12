<?php
require_once __DIR__ . "/../db/config.php";

function getHistoryData($conn, $student_id){
    if (!($conn instanceof mysqli)) {
        return false;
    }

    $student_id = (int) $student_id;
    $sql = "SELECT a.application_date,c.company_name,j.title as 'Role',a.status from `applications` a JOIN `jobs` j ON j.job_id=a.job_id JOIN companies c ON j.company_id = c.company_id JOIN students s ON a.student_id = s.student_id WHERE s.student_id = $student_id ORDER BY a.application_date DESC";
    return mysqli_query($conn,$sql);
}
?>