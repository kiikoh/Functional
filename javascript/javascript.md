# Javascript

## Commentary

I really love JavaScript, especially functionally. This is normally the way i try tyo use JS. Whenever I write a program in JS, I tend to use map functions over for loops if I can. I find this helps me to think about moving data around in a better way. It is especially helpful when working with Promises, because I can use a map function to get asynchronous data from various sources, in parallel, essentially just firing off a ton of requests, the using the Promise.all function which takes an array of promises(the map function) I can wait for all the data to come back. I also took the time to get to know all of the fancy shorthands like the spread operator, and arrow functions, which after hearing you compare lambda functions to "anonymous" functions, helped me to feel more at home. 

## Google Searches

- js get charcode
- js from charcode

## Caesar Implementation

```js
const rotate = (letter, shift) => (/[a-zA-Z]/).test(letter) ? String.fromCharCode((((letter.charCodeAt(0) - 65) + shift) % 26) + 65) : letter;
const encrypt = (word, shift) => word.toUpperCase().split("").map(ltr => rotate(ltr, shift)).join("");
const decrypt = (word, shift) => encrypt(word, 26 - shift);
const solve = (word, maxShift) => [...Array(maxShift)].forEach((_, i) => console.log(`Shift: ${i}\t${decrypt(word, i)}`));

console.log(encrypt("ATTACK AT ONCE", 4))
console.log(decrypt("EXXEGO EX SRGI", 4))
solve("abcdeFGHIJKLmnopqrstuvwxyz ,?;{[()]}", 26)
```

### Output

```
EXXEGO EX SRGI
ATTACK AT ONCE
Shift: 0 ABCDEFGHIJKLMNOPQRSTUVWXYZ ,?;{[()]}
Shift: 1 ZABCDEFGHIJKLMNOPQRSTUVWXY ,?;{[()]}
Shift: 2 YZABCDEFGHIJKLMNOPQRSTUVWX ,?;{[()]}
Shift: 3 XYZABCDEFGHIJKLMNOPQRSTUVW ,?;{[()]}
Shift: 4 WXYZABCDEFGHIJKLMNOPQRSTUV ,?;{[()]}
Shift: 5 VWXYZABCDEFGHIJKLMNOPQRSTU ,?;{[()]}
Shift: 6 UVWXYZABCDEFGHIJKLMNOPQRST ,?;{[()]}
Shift: 7 TUVWXYZABCDEFGHIJKLMNOPQRS ,?;{[()]}
Shift: 8 STUVWXYZABCDEFGHIJKLMNOPQR ,?;{[()]}
Shift: 9 RSTUVWXYZABCDEFGHIJKLMNOPQ ,?;{[()]}
Shift: 10 QRSTUVWXYZABCDEFGHIJKLMNOP ,?;{[()]}
Shift: 11 PQRSTUVWXYZABCDEFGHIJKLMNO ,?;{[()]}
Shift: 12 OPQRSTUVWXYZABCDEFGHIJKLMN ,?;{[()]}
Shift: 13 NOPQRSTUVWXYZABCDEFGHIJKLM ,?;{[()]}
Shift: 14 MNOPQRSTUVWXYZABCDEFGHIJKL ,?;{[()]}
Shift: 15 LMNOPQRSTUVWXYZABCDEFGHIJK ,?;{[()]}
Shift: 16 KLMNOPQRSTUVWXYZABCDEFGHIJ ,?;{[()]}
Shift: 17 JKLMNOPQRSTUVWXYZABCDEFGHI ,?;{[()]}
Shift: 18 IJKLMNOPQRSTUVWXYZABCDEFGH ,?;{[()]}
Shift: 19 HIJKLMNOPQRSTUVWXYZABCDEFG ,?;{[()]}
Shift: 20 GHIJKLMNOPQRSTUVWXYZABCDEF ,?;{[()]}
Shift: 21 FGHIJKLMNOPQRSTUVWXYZABCDE ,?;{[()]}
Shift: 22 EFGHIJKLMNOPQRSTUVWXYZABCD ,?;{[()]}
Shift: 23 DEFGHIJKLMNOPQRSTUVWXYZABC ,?;{[()]}
Shift: 24 CDEFGHIJKLMNOPQRSTUVWXYZAB ,?;{[()]}
Shift: 25 BCDEFGHIJKLMNOPQRSTUVWXYZA ,?;{[()]}
```

## Log
Estimate: 30 minutes

| Date | Hours Spent | Accomplishments    |
| ---- | ----------- | ------------------ |
| 4/2  | 0.25        | Write full program |

### Discrepancy of time
I underestimated my abilities at javascript. I think also functionally is the normal way I think about programming in javascript. 

## Overall Review
People love to hate on javascript but I find it the most applicable language by far in web development. It is really the only way to program a front-end which is a huge plus for the language and ensures its support for the years to come. The development community has to be one of the largest and the documentation is worlds ahead of anything else. I think this project of seeing other languages has only confirmed this for me. You can tell by the searches I made, that the language is well documented as I only needed to search for two things, and I found them on the first try. I will admit the program I wrote is a bit hacky, especially the map on the Array constructor. From what I've found it is the most functional way to do run something x times.

## Ratings

Readability: 8/10

Writability: 8/10

Ranking: 1/5
