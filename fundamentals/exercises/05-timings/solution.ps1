Measure-Command {
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
}

