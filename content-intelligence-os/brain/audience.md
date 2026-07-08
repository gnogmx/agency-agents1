# Audience Rules

How the system models, researches, and respects the audience. Brand-specific audience profiles live in `brands/<brand>/brand.md`; this file defines how any audience model must be built and used.

## The Prime Directive

We do not make videos for "everyone interested in the topic." We make videos for a specific viewer in a specific moment of decision: scrolling the YouTube home feed, mildly bored, with 40+ competing thumbnails on screen. Every audience model must describe that person, not a demographic average.

## Required Audience Model Components

Every brand must define:

1. **The Decision-Moment Viewer**: Who is scrolling, when, on what device, in what mood? (e.g., "commuter on phone at 8am" vs. "desktop viewer at 10pm choosing a 'dinner video'").
2. **The Curiosity Stack**: The 5–10 recurring questions this audience cannot resist. These are discovered from comment sections and outlier titles, not invented.
3. **The Identity Hook**: What watching this content says about the viewer to themselves. People watch business documentaries partly to feel like strategists. Content that flatters the aspiration outperforms content that merely informs.
4. **The Vocabulary Line**: Terms the audience knows vs. terms that need one-clause explanations. Miscalibration in either direction kills retention — condescension loses experts, jargon loses newcomers.
5. **Adjacent Audiences**: Who else might the algorithm test this content on? Design packaging so the primary audience is targeted but adjacent audiences aren't repelled.

## Audience Research Sources (in order of reliability)

1. Comment sections of outlier videos on competitor channels — actual language, actual objections, actual requests ("do a video on X").
2. Our own audience retention curves — where THEY leave is ground truth about what THEY value.
3. Reddit/forum threads where the topic is discussed without a video prompting it.
4. Search suggestions and "People also ask" — reveals question phrasing.
5. Demographic analytics — least useful; age brackets don't choose thumbnails, curiosities do.

## Anti-Patterns

- **The Mirror Trap**: Modeling the audience as ourselves. We are professionally obsessed with this topic; the viewer is casually curious. Test: "Would someone who has never made content about this topic click it?"
- **The Expert Trap**: Optimizing for the most knowledgeable 5% of the audience who leave the most comments. Commenters are not clickers.
- **The Everyone Trap**: Broadening a title to capture more audiences and thereby exciting none. Specific curiosity beats general relevance.

## When Audience Data Contradicts Assumptions

Update `brands/<brand>/brand.md` and log the finding in `memory/channel-lessons.md`. The audience model is a living document; the first version is always partly wrong.
