
## Welk lidwoord heeft dat naamwoord?

### Which article does that Dutch noun have?

A short bash script to return a given Dutch word along with its article and translation (EN/DE/FR)

Created because I could not find a CLI translator or dictionary that would give me what I needed (without double translating and adding "the", which sometimes returns a synonym)

### Requirements

Uses [curl](http://curl.haxx.se/) to pull from [welklidwoord.nl](http://welklidwoord.nl) and [grep](https://www.gnu.org/software/grep/) to extract the relevant text from the html

### Usage

   `bash welk-lidwoord.sh <WORD>`

### Problemas?

probably they changed the structure of their shitty website

