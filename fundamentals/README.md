# PowerShell Fundamentals Training Pack

This pack supports a 1-hour hands-on session that bridges AI and software engineering fundamentals.

## Session Goal
Use PowerShell to load a support-ticket CSV, parse it, apply conditions and loops, and output meaningful results.

The session narrative:
1. Show the existing `service-desk-agent` processing tickets with AI.
2. Show token usage/cost for the raw-agent approach.
3. Teach core coding building blocks.
4. Build a script that pre-processes ticket data.
5. Run the agent with script output and compare token usage/cost.

## Audience
- Beginners to early intermediate
- No prior PowerShell required

## Learning Outcomes
By the end of the session, participants can:
- Create and use variables in PowerShell
- Use conditionals (`if`/`elseif`/`else`)
- Use loops (`foreach`)
- Load CSV data with `Import-Csv`
- Access CSV columns with spaces (for example `$row.'Ticket ID'`)
- Apply basic debugging techniques (`Write-Host`, error reading, breakpoints)

## Required Files in This Folder
- `tickets.csv` (dataset used in scripts)
- `service-desk-agent/` (existing AI agent content)
- `slides/slides.md`
- `concepts/*.md`
- `exercises/*/solution.ps1`
- `reference/cheatsheet.md`

## 60-Minute Delivery Plan
- 0-5: Welcome, objectives
- 5-12: AI agent demo + opening token usage/cost
- 12-17: Language overview + why PowerShell
- 17-27: Variables
- 27-37: Conditionals
- 37-47: Loops
- 47-55: Bring-it-together CSV script
- 55-58: Agent re-run with script output + closing token usage/cost
- 58-60: Debugging recap + Q&A

## Setup
1. Open this folder in VS Code.
2. Open integrated terminal.
3. Verify PowerShell works:
   - `pwsh`
4. Confirm data file exists:
   - `./tickets.csv`

## Running Step-by-Step Solutions
Run each script in order:
- `./exercises/01-variables/solution.ps1`
- `./exercises/02-conditionals/solution.ps1`
- `./exercises/03-loops/solution.ps1`
- `./exercises/04-bring-it-together/solution.ps1`

## Value Demo with the Second Agent
After running step 04:
1. Copy the script output (open P1/P2 summary).
2. In Copilot Chat Agent mode, select **Service Desk Problem Brief Advisor**.
3. Paste the output and ask for prioritised Problem Records and immediate actions.
4. Use `service-desk-agent/guided-prompts-preprocessed.md` for a structured demo flow.

For the final exercise, the script reads:
- `..\..\tickets.csv`

## Token Cost Demonstration
If your AI tool shows token usage directly:
1. Capture token usage when agent processes full dataset.
2. Capture token usage when agent processes script output summary.
3. Compare on a simple table slide.

If tokens are not exposed:
- Use character count or word count of input text as a proxy.
- Communicate it as an estimation, not exact billing.

## Trainer Notes
- Keep language simple and practical.
- Use the Exercise Breakdown slides before coding.
- Call out mistakes as normal and useful for learning.
