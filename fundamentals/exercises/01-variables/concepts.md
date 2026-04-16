# 01 — Variables

Variables let you store values and reuse them.

## Why this matters
When writing scripts, you avoid repeating values and make code easier to read and change.

## Syntax
```powershell
$ticketId = "INC100390"
$priority = "P1 - Critical"
$status = "Resolved"
```

## Example
```powershell
$ticketId = "INC100390"
$priority = "P1 - Critical"
Write-Host "Ticket $ticketId has priority $priority"
```

## Quick tips
- Variables in PowerShell start with `$`
- Strings go in quotes
- Variable names should be clear (`$ticketPriority`, not `$x`)

## Practice Prompt
Create variables for:
- Ticket ID
- Priority
- Assigned Engineer

Then print one sentence showing all three values.
