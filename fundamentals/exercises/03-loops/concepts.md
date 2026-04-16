# 03 — Loops

Loops let you run the same logic on many items.

## `foreach` loop
```powershell
foreach ($item in $items) {
    # do something for each item
}
```

## Example with ticket objects
```powershell
$tickets = @(
    [PSCustomObject]@{ 'Ticket ID' = 'INC100001'; Priority = 'P1 - Critical' },
    [PSCustomObject]@{ 'Ticket ID' = 'INC100002'; Priority = 'P3 - Medium' }
)

foreach ($ticket in $tickets) {
    Write-Host "$($ticket.'Ticket ID') - $($ticket.Priority)"
}
```

## Counting in loops
```powershell
$count = 0
foreach ($ticket in $tickets) {
    $count++
}
Write-Host "Total tickets: $count"
```

## Practice Prompt
Loop through tickets and print only those with priority containing `P1` or `P2`.
