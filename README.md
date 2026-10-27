# Price Master

A Claude skill for service businesses and freelancers who know they're too cheap. Paste your rates, hours, costs and client list. It works out what each client really pays you per hour, sets your new number from your own figures, shows how much work you could lose and still come out ahead, decides who gets the new price and when, and writes the exact message for each client plus replies for pushback.

It never invents market rates, competitor offers or deadlines, never blames a raise on something it isn't, and never promises that nobody leaves.

## What it checks

- **What each client really pays you per hour.** Your blended rate is usually lower than the rate you quote, and a couple of clients are often the reason.
- **Whether price is the real problem.** Sometimes it's scope that crept past the fee, costs you've got wrong, or one client so big a blanket rise is a risk.
- **Your floor.** What you need to charge to pay yourself and cover costs over the hours you really bill.
- **Break-even.** How much work you could lose at the new price and still be ahead.
- **Who gets what, when.** New clients first, existing clients with notice, the big client by conversation, and the clients it's fine to let go.
- **The message, built from the experts.** It starts with the client and the work you already do for them, owns the reason, gives the price, the date and the difference in the smallest unit, and offers an honest way through. Moves from Alex Hormozi, Jason Cohen, Blair Enns, Alan Weiss, Brennan Dunn and Jonathan Stark.

## Install

One step, in a terminal:

```
git clone https://github.com/Liamrjohnston/price-master-skill price-master-skill && bash price-master-skill/install.sh
```

It copies the skill into `~/.claude/skills` and asks before replacing anything. Then start a new Claude Code session and type `/price-master`.

## How it was tested

A blind test on three made-up service businesses (a solo bookkeeper, an office-cleaning company with staff, a freelance web developer), each with a hidden pricing trap and an honesty trap that only the judge saw. Four setups answered each one on the same model (`claude-sonnet-4-5`): plain Claude, a one-line prompt, the most installed pricing skill ([coreyhaines31/marketingskills `pricing`](https://github.com/coreyhaines31/marketingskills), about 141K installs), and Price Master. A separate model (`claude-opus-4-1`) judged the shuffled answers without knowing which was which, twice.

Version 1.5.0 won 6 of 6 judgements, averaging 8.3 out of 10, against 3.7 for the most installed pricing skill and 3.5 for plain Claude. The others invented local market rates and told owners clients probably wouldn't leave. The judge is an AI and the cases are made up, so treat this as a strong sign, not proof you'll keep every client.

## Credits

See [price-master/CREDITS.md](price-master/CREDITS.md). MIT licence.
