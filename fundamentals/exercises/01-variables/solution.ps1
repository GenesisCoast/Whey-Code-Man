# Step 01 - Variables (Solution)
# Load CSV, print sample contents, then map one row into variables.

$csvPath = Join-Path $PSScriptRoot "..\..\tickets.csv"
$tickets = Import-Csv -Path $csvPath

Write-Host "Loaded $($tickets.Count) tickets"
Write-Host "Preview:"
$tickets | Select-Object -First 5 'Ticket ID', Priority, Status, Department | Format-Table

$firstTicket = $tickets[0]

$ticketId = $firstTicket.'Ticket ID'
$priority = $firstTicket.Priority
$assignedEngineer = $firstTicket.'Assigned Engineer'
$department = $firstTicket.Department

Write-Host "Ticket $ticketId is $priority, assigned to $assignedEngineer in $department."
