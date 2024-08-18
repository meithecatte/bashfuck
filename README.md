## bashfuck

bashfuck is a dialect of bash where you only use the ASCII special characters.
No letters, no numbers.

To help you with your bashfuck journeys, this repository includes a handy
utility: a bashfuck encoder.

```
$ bash bashfuck.sh
usage: bash bashfuck.sh source.sh output.sh
```

## Limitations

- depends on the precise wording of bash error messages, and as such doesn't work if your locale is set to something other than English
- unfortunately, there is no bashfuck-compliant way to capture the stderr of a command directly to a variable. As a workaround, bashfuck first writes it into a file, and then reads this back. By default, this file is `._.` in the current working directory. Note that if this file exists, it will be overwritten.
- I think the decoding code I wrote might be quadratic. Shouldn't be too hard to fix. PRs welcome!

## How it works

I don't really feel like writing this section right now. Go forth, human! Examine the cursed artifact! You'll certainly learn something about bash that you didn't know before.

## Other considerations

- please make sure to observe [the terms of the license](./LICENSE)
- join us in `##bash-crimes` on libera.chat
