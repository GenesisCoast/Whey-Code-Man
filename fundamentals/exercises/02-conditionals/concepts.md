# 02 — Conditionals

Conditionals allow your script to make decisions.

## Core pattern
```powershell
if (<condition>) {
    # do this
}
elseif (<another condition>) {
    # do this instead
}
else {
    # default path
}
```

## Common operators
- `-eq` equals
- `-ne` not equal
- `-like` pattern match
- `-match` regex match

## Example
```powershell
$priority = "P1 - Critical"

if ($priority -eq "P1 - Critical") {
    Write-Host "Escalate immediately"
}
elseif ($priority -eq "P2 - High") {
    Write-Host "Handle as high priority"
}
else {
    Write-Host "Standard queue"
}
```

## Practice Prompt
Given `$status`, print:
- "Still open" when status is not `Resolved` and not `Closed`
- "Completed" otherwise
