# Step 02 - Conditionals (Solution)
# Load CSV, print sample contents, then choose an action from priority.

$csvPath = Join-Path $PSScriptRoot "..\..\tickets.csv"
$tickets = Import-Csv -Path $csvPath

Write-Host "Loaded $($tickets.Count) tickets"
Write-Host "Preview:"
$tickets | Select-Object -First 5 'Ticket ID', Priority, Status | Format-Table

$ticket = $tickets[0]
$priority = $ticket.Priority

if ($priority -eq "P1 - Critical") {
    $actionMessage = "Escalate immediately"
}
elseif ($priority -eq "P2 - High") {
    $actionMessage = "Handle in high-priority queue"
}
else {
    $actionMessage = "Handle in standard queue"
}

Write-Host "Ticket: $($ticket.'Ticket ID')"
Write-Host "Priority: $priority"
Write-Host "Action: $actionMessage"
