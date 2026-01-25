# Town Council Summarizer

**Status**: Proposed
**Lead**: Looking for lead
**Started**: —

---

## Problem Statement

Garner Town Council meetings are the heart of local democracy—zoning decisions, budget allocations, infrastructure projects, and policy changes all happen there. But most residents never engage because:

- Meetings are 2-3 hours long
- Recordings are posted without summaries or timestamps
- Agendas and minutes use bureaucratic language
- There's no easy way to know "what happened that affects me"

The result: low civic engagement and decisions made without broad community awareness.

## Proposed Solution

An automated pipeline that transforms Town Council meetings into accessible, plain-English summaries distributed via newsletter and web.

### How It Works

```
┌─────────────────────────────────────────────────────────┐
│  1. CAPTURE                                             │
│     - Meeting recordings from Town of Garner YouTube    │
│     - Agendas and minutes from town website             │
└─────────────────────┬───────────────────────────────────┘
                      ▼
┌─────────────────────────────────────────────────────────┐
│  2. TRANSCRIBE                                          │
│     - YouTube auto-captions or Whisper AI               │
│     - Clean up speaker identification                   │
└─────────────────────┬───────────────────────────────────┘
                      ▼
┌─────────────────────────────────────────────────────────┐
│  3. SUMMARIZE                                           │
│     - LLM (Claude/GPT) generates structured summary     │
│     - Key votes, decisions, debates highlighted         │
│     - "Why it matters" context added                    │
└─────────────────────┬───────────────────────────────────┘
                      ▼
┌─────────────────────────────────────────────────────────┐
│  4. REVIEW                                              │
│     - Human editor reviews for accuracy                 │
│     - Fact-check against official minutes               │
│     - Add local context                                 │
└─────────────────────┬───────────────────────────────────┘
                      ▼
┌─────────────────────────────────────────────────────────┐
│  5. PUBLISH                                             │
│     - Email newsletter (Buttondown/Substack)            │
│     - Website archive                                   │
│     - Social media highlights                           │
└─────────────────────────────────────────────────────────┘
```

### Summary Format

Each summary includes:

- **Meeting date and attendance**
- **Top 3 takeaways** — The headlines
- **Decisions made** — What was voted on and the outcome
- **Key discussions** — Debates, concerns raised, public comments
- **Upcoming items** — What's coming to future meetings
- **Why it matters** — Plain-English context for residents

### Example Output

> **Garner Town Council Summary — January 14, 2025**
>
> **Top Takeaways:**
> 1. Council approved rezoning on Timber Drive for mixed-use development (5-2 vote)
> 2. New greenway connector funded in FY25 budget amendment
> 3. Public hearing scheduled for short-term rental regulations
>
> **Why It Matters:**
> The Timber Drive rezoning could bring 200+ apartments and retail near downtown. If you live nearby, the public comment period for traffic studies opens next month...

## Skills Needed

- **Python** — Scripting, API integration, automation
- **AI/LLM experience** — Prompt engineering, working with Claude/OpenAI APIs
- **Web development** — Simple static site or newsletter setup
- **Writing/editing** — Reviewing AI output for accuracy and clarity
- **Local knowledge** — Understanding Garner context, neighborhoods, issues
- **DevOps** (nice to have) — GitHub Actions, scheduling, deployment

## Time Commitment

- **MVP build**: 15-20 hours over 4-6 weeks
- **Ongoing maintenance**: 2-3 hours per meeting (review + publish)
- **Can be distributed** across multiple volunteers

## Impact

### Who Benefits
- Residents who want to stay informed but lack time
- Neighborhood advocates tracking specific issues
- Local journalists and bloggers
- New residents learning about their community
- Anyone who cares about local democracy

### Expected Outcomes
- Higher civic awareness and engagement
- More informed public comment at meetings
- Template other NC towns could adopt
- Portfolio project for contributors

## Technical Details

### Data Sources
- [Town of Garner YouTube](https://www.youtube.com/@TownofGarnerNC) — Meeting recordings
- [Town of Garner Agendas](https://www.garnernc.gov/government/town-council/agendas-minutes) — Official documents

### Proposed Tech Stack
| Component | Tool | Notes |
|-----------|------|-------|
| Transcription | Whisper API or YouTube captions | Whisper more accurate, YT captions free |
| Summarization | Claude API (Anthropic) | Good at structured summaries |
| Automation | Python + GitHub Actions | Free tier sufficient |
| Newsletter | Buttondown or Substack | Free for small lists |
| Website | GitHub Pages + Jekyll | Matches existing collective site |
| Storage | GitHub repo | Version control for all summaries |

### Cost Estimate
- **Whisper API**: ~$0.36/hour of audio (~$1-2/meeting)
- **Claude API**: ~$0.50-1.00/meeting for summarization
- **Total**: ~$3-5/month for bi-weekly meetings
- **Newsletter/hosting**: Free tier

## First Steps

1. [ ] Locate and document all meeting data sources
2. [ ] Manually summarize 2-3 past meetings to establish format
3. [ ] Test transcription pipeline (YouTube captions vs. Whisper)
4. [ ] Write initial summarization prompts and test with Claude
5. [ ] Set up newsletter platform and landing page
6. [ ] Recruit 5-10 beta subscribers for feedback
7. [ ] Automate with GitHub Actions
8. [ ] Launch publicly

## Risks & Mitigations

| Risk | Mitigation |
|------|------------|
| AI hallucinations/errors | Human review before every publish |
| Perceived bias | Stick to facts, link to sources, be transparent about process |
| Low engagement | Start with friends/neighbors, grow organically |
| Town pushback | We're summarizing public meetings—fully legal and civic-minded |

## Future Ideas

- Searchable archive of all past summaries
- Alerts for specific topics (e.g., "notify me about zoning near my street")
- Expand to Wake County Commissioners, School Board
- Spanish language summaries
- Integration with local news outlets

## How to Get Involved

Interested in helping? Here's how:

1. **Python developers** — Help build the automation pipeline
2. **Writers/editors** — Review and polish AI-generated summaries
3. **Garner residents** — Be a beta reader, give feedback
4. **Designers** — Create newsletter template and branding
5. **Promoters** — Help spread the word when we launch

Open an issue or comment below to volunteer!

---

*Proposed by Garner Tech Collective. See [CONTRIBUTING.md](/CONTRIBUTING.md) to get involved.*
