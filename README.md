This project contains a list of German words for wordgames.

The list is currently used by [Tanglet](https://gottcode.org/tanglet)
but could be useful for other wordgames.

The list is sorted, contains one word per line, the encoding is UTF-8
with Unix-style line endings. The rules what words are included roughly
follow the rules in Scrabble, which means that names, proper nouns,
toponyms, abbreviations, archaic words and outdated spellings are not
allowed. Dated words are ok, also regional words as long as they are
known to some extent outside the region. If in doubt, words should be
included, because Tanglet's gameplay works better with false positives
than false negatives. If a word is listed in the Duden and does not
violate the general Scrabble rules, it should always be included in this
list.

For easier maintenance, there is a blacklist file that can be used to
filter out unwanted words from a file with new word candidates. The
wordlist and blacklist are far from being complete and still contain a
lot of mistakes. Any help for improving them is appreciated.

Some useful links:

* [GitHub/Tanglet](https://github.com/gottcode/tanglet)
* Scrabble Deutschland e. V.: [Offizielle Regeln zur Zulässigkeit von Wörtern](http://scrabble-info.de/orz-offizielle-regeln-zur-zulaessigkeit-von-woertern/)
* Scrabble Deutschland e. V.:  [Turnier-Checker](http://scrabble-info.de/wortlisten/turnier-checker/)
* Scrabble Deutschland e. V.:  [SuperDic-Checker](https://scrabble-info.de/wortlisten/superdic-checker/)
* [Duden Online](http://www.duden.de/)
* [Rat für deutsche Rechtschreibung](http://www.rechtschreibrat.com/)
* [German Wiktionary](https://de.wiktionary.org)
* [German Wikipedia](https://de.wikipedia.org)
