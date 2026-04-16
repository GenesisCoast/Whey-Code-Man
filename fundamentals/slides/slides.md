# Slide Deck Source — PowerShell Fundamentals

## Slide 1: Title
**PowerShell Fundamentals: From AI Output to Real Code**
- Hands-on training (1 hour)
- Scenario: Service desk ticket analysis

**Speaker notes**
Start with business context: AI can find patterns quickly, but we should also understand and control the logic through code.

## Slide 2: Session Outcomes
By the end of this session you will:
- Use variables, conditionals, and loops in PowerShell
- Load and parse CSV ticket data
- Build a simple analysis script
- Understand how script pre-processing can reduce AI token usage

## Slide 3: Context — Existing AI Agent
- We already have a `service-desk-agent`
- It can process support tickets and identify patterns
- We will quickly demo it first

## Slide 4: Live Demo Prompt (Agent)
Prompt suggestion:
> Analyse this support ticket data and identify trends that suggest underlying problems.

Observe:
- Quality of findings
- Speed of analysis
- Input size and token usage/cost

## Slide 5: Opening Token Usage/Cost
Record the baseline:
- Input source: full raw ticket dataset
- Token usage (or proxy)
- Cost estimate (if available)

**Speaker notes**
This is the “AI-only” baseline. We’ll compare this with a “code + AI” flow at the end.

## Slide 6: Languages Overview
| Language | Common Use | Pros | Cons |
|---|---|---|---|
| PowerShell | Automation, admin, Windows scripting | Great for ops/data tasks, object pipeline | Less common in web apps |
| Python | Data, scripting, automation | Simple syntax, huge ecosystem | Packaging/env setup can confuse beginners |
| JavaScript | Web front/back end | Ubiquitous, flexible | Async complexity, tooling overhead |
| C# | Enterprise apps, APIs | Strong tooling, structure, performance | More ceremony for small scripts |
| Bash | Linux/macOS shell automation | Lightweight, fast for shell tasks | Less friendly on Windows, text-only pipelines |

## Slide 7: Why PowerShell Today
- Runs well in this environment
- Great for CSV and operational data tasks
- Good beginner path for scripting fundamentals
- Directly useful for service desk workflows

## Slide 8: Topic 1 — Variables
- Store data in named values
- Reuse values in output and decisions
- Keep scripts readable

## Slide 9: Exercise Breakdown — Variables
1. Create variables for ticket details
2. Print values to screen
3. Build one readable output sentence

## Slide 10: Hands-On — Variables
- Run `exercises/01-variables/solution.ps1`
- Review variable mapping from CSV row
- Check summary output

## Slide 11: Topic 2 — Conditionals
- Make decisions based on data
- Use `if`, `elseif`, `else`
- Example: priority-based routing

## Slide 12: Exercise Breakdown — Conditionals
1. Read a ticket priority value
2. Check if it is critical/high/other
3. Print the action message

## Slide 13: Hands-On — Conditionals
- Run `exercises/02-conditionals/solution.ps1`
- Review conditional routing logic
- Test with different priorities

## Slide 14: Topic 3 — Loops
- Process many records using `foreach`
- Repeat logic safely and clearly
- Essential for CSV processing

## Slide 15: Exercise Breakdown — Loops
1. Create a small ticket list
2. Loop through each ticket
3. Print key fields for each item

## Slide 16: Hands-On — Loops
- Run `exercises/03-loops/solution.ps1`
- Inspect loop output

## Slide 17: Topic 4 — Bring It Together
- Load full CSV
- Filter important tickets
- Output concise summary

## Slide 18: Exercise Breakdown — Bring It Together
1. Load CSV with `Import-Csv`
2. Loop through each row
3. Keep open high-priority tickets
4. Print ticket summary lines
5. Count matches
6. Print final total

## Slide 19: Hands-On — Bring It Together
- Run `exercises/04-bring-it-together/solution.ps1`
- Use quoted column names (example: `$row.'Ticket ID'`)
- Validate summary output

## Slide 20: Debugging Basics (Happy Path Session)
- Read errors carefully (line + message)
- Use `Write-Host` to inspect values
- Use VS Code breakpoints to pause execution
- Check property names exactly (spaces matter)

## Slide 21: Closing Demo — Agent with Script Output
- Feed concise script output to the agent
- Ask for trend summary again
- Capture new token usage/cost

## Slide 22: Token Comparison
| Mode | Input Type | Token Usage/Proxy | Cost |
|---|---|---|---|
| AI only | Raw full dataset | [fill in] | [fill in] |
| Code + AI | Script summary output | [fill in] | [fill in] |

Key message:
- Better input engineering lowers AI cost and keeps quality high.

## Slide 23: Wrap-Up
- Variables + conditionals + loops are core building blocks
- PowerShell can quickly transform data for AI consumption
- Engineering fundamentals amplify AI outcomes

## Slide 24: Q&A
- What part felt most useful?
- What should we automate next?
