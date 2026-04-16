# Step 03 - Loops + Conditionals (Solution)
# Load CSV, print sample contents, then loop through rows and use a
# conditional to filter to only high-priority tickets.

$csvPath = Join-Path $PSScriptRoot "..\..\tickets.csv"
$tickets = Import-Csv -Path $csvPath

Write-Host "Loaded $($tickets.Count) tickets"
Write-Host "Preview:"
$tickets | Select-Object -First 5 'Ticket ID', Priority, Status | Format-Table

Write-Host "High-priority tickets:"

foreach ($ticket in $tickets) {
    $priority = $ticket.Priority

    if ($priority -eq "P1 - Critical" -or $priority -eq "P2 - High") {
        Write-Host "$($ticket.'Ticket ID') | $priority | $($ticket.Status)"
    }
}
