<?php
// Recruitment History UI Page
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
<nav class="bg-blue-900 text-white px-8 py-4 shadow">
<div class="flex justify-between items-center">
<h1 class="text-xl font-bold">
<i class="fa-solid fa-graduation-cap mr-2"></i>
MCA Department
</h1>

<ul class="flex gap-6 text-sm">
<li class="hover:text-gray-200 cursor-pointer">Home</li>
<li class="hover:text-gray-200 cursor-pointer">About</li>
<li class="hover:text-gray-200 cursor-pointer">History</li>
<li class="hover:text-gray-200 cursor-pointer">Contact</li>
</ul>
</div>
</nav>


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

<tr class="border-b hover:bg-slate-50 transition">
<td class="px-6 py-4">1</td>

<td class="px-6 py-4 font-semibold text-blue-900">
TCS (Tata Consultancy Services)
</td>

<td class="px-6 py-4">
NQT - Ninja Developer
</td>

<td class="px-6 py-4 text-xs">
15 Sept 2024
</td>

<td class="px-6 py-4">
<span class="px-3 py-1 bg-blue-100 text-blue-700 rounded text-xs font-bold uppercase">
Applied
</span>
</td>
</tr>


<tr class="border-b hover:bg-slate-50 transition">
<td class="px-6 py-4">2</td>

<td class="px-6 py-4 font-semibold text-blue-900">
Cognizant (CTS)
</td>

<td class="px-6 py-4">
Programmer Analyst Trainee
</td>

<td class="px-6 py-4 text-xs">
02 Aug 2024
</td>

<td class="px-6 py-4">
<span class="px-3 py-1 bg-red-100 text-red-700 rounded text-xs font-bold uppercase">
Not Shortlisted
</span>
</td>
</tr>

</tbody>
</table>

</div>
</div>

</body>
</html>