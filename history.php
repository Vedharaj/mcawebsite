<?php
include "data/history_data.php";

$student_id = 1; // Replace with dynamic student ID as needed
$results = getHistoryData($conn, $student_id);
?>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>Recruitment History</title>

<script src="https://cdn.tailwindcss.com"></script>
<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css" rel="stylesheet">

</head>

<body class="bg-slate-100 min-h-screen">

<!-- Navbar -->
<?php include "components/navbar.php"; ?>


<!-- Page Title -->
<div class="max-w-6xl mx-auto mt-10 px-6">

<h2 class="text-2xl font-bold text-slate-700 mb-6">
<i class="fa-solid fa-clock-rotate-left text-blue-700 mr-2"></i>
Recruitment History
</h2>


<!-- Table Card -->
<div class="bg-white rounded-xl shadow-md overflow-hidden border border-slate-200">

<table class="w-full text-left text-sm">

<thead class="bg-slate-50 text-slate-500 font-semibold border-b">
<tr>
<th class="px-6 py-4">S.No</th>
<th class="px-6 py-4">Company Name</th>
<th class="px-6 py-4">Role / Designation</th>
<th class="px-6 py-4">Applied Date</th>
<th class="px-6 py-4">Status</th>
</tr>
</thead>

<tbody class="text-slate-700">
<?php $sno = 1; ?>
<?php while ($row = mysqli_fetch_assoc($results)) { ?>
<tr class="border-b hover:bg-slate-50 transition">
<td class="px-6 py-4"><?php echo $sno++; ?></td>

<td class="px-6 py-4 font-semibold text-blue-900">
<?php echo $row['company_name']; ?>
</td>

<td class="px-6 py-4">
<?php echo $row['Role']; ?>
</td>

<td class="px-6 py-4 text-xs">
<?php echo $row['application_date']; ?>
</td>

<td class="px-6 py-4">
<span class="px-3 py-1 bg-blue-100 text-blue-700 rounded text-xs font-bold uppercase">
<?php echo $row['status']; ?>
</span>
</td>
</tr>
<?php } ?>

</tbody>
</table>

</div>
</div>

</body>
</html>