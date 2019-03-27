#!/bin/bash
#通过一堆单词列表，进行类似EGREP（1）的模式匹配
#
#
#
#语法：
#     puzzle-help egrep-pattern [rod-list-files]
#
#
FILES="
		/usr/dict/words
		/usr/share/dict/words
		/usr/share/lib/dict/words
		/usr/local/share/dict/words.biology
		/usr/local/share/dict/words.chemistry
		/usr/local/share/dict/words.general
		/usr/local/share/dict/words.knuth
		/usr/local/share/dict/words.latin
		/usr/local/share/dict/words.manpages
		/usr/local/share/dict/words.mathematics
		/usr/local/share/dict/words.physics
		/usr/local/share/dict.words.roget
		/usr/local/share/dict/words.sciences
		/usr/local/share/dict/words.UNIX
		/usr/local/share/dict/words.webster
"
pattern="$1"
egrep -h -i "$pattern" $FILES 2>/dev/null | sort -u -f