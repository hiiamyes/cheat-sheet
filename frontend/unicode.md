https://www.csie.ntu.edu.tw/~p92005/Joel/Unicode.html

# ASCII

# [Unicode](http://www.unicode.org/)

an international encoding standard for use with different languages and scripts, by which each letter, digit, or symbol is assigned a unique numeric value that applies across different platforms and programs.

code point

## A = U+0041

U+: Unicode
0041: Hexadecimal System

## Hello

code point = U+0048 U+0065 U+006C U+006C U+006F

# UTF-8, Unicode Transformation Format 8-bit 



#

https://stackoverflow.com/questions/46136674/how-to-enforce-character-length-for-asian-languages-such-as-chinese

To begin with, you have to start by defining what you mean by characters. You mentioned korean, which is one of the languages that many string length functions misinterpret.

Multiple unicode characters may be used to describe a single grapheme (user perceived character), such as:

>>> len(u"한")
3
Using unicode strings will make it easy to count the number of unicode characters, but that is not the same as the number of user perceived characters. I would recommend reading this article on python text length.

If you do wish to count unicode characters instead of graphemes, then it's simple. Just use a CharField with a max_length argument (on your model and your forms).

If you wish to limit the field to a maximum of 15 graphemes however, you have to let the database field contain more characters than that and make some custom validation for your forms.

A helpful library for such a validator might be grapheme, which can calculate the number of graphemes in a string.
