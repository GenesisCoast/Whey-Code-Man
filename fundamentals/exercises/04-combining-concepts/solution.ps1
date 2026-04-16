# Step 03b - Combining Variables, Conditionals, and Loops (Solution)
# Load CSV, loop through all tickets, use a conditional to filter
# high-priority open tickets, and store the count in a variable.

$csvPath = Join-Path $PSScriptRoot "..\..\tickets.csv"
$tickets = Import-Csv -Path $csvPath

Write-Host "Loaded $($tickets.Count) tickets"

$highPriorityOpenCount = 0

foreach ($ticket in $tickets) {
    $priority = $ticket.Priority
    $status = $ticket.Status

    if (($priority -eq "P1 - Critical" -or $priority -eq "P2 - High") -and
        ($status -ne "Resolved" -and $status -ne "Closed")) {
        $highPriorityOpenCount++
    }
}

Write-Host "Total open P1/P2 incidents: $highPriorityOpenCount"
