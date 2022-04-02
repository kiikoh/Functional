const rotate = (letter, shift) => (/[a-zA-Z]/).test(letter) ? String.fromCharCode((((letter.charCodeAt(0) - 65) + shift) % 26) + 65) : " "
const encode = (word, shift) => [...word.toUpperCase()].map(ltr => rotate(ltr, shift)).join("");
const decode = (word, shift) => [...word.toUpperCase()].map(ltr => rotate(ltr, 26 - shift)).join("");
const solve = (word, maxShift) => [...Array(maxShift)].forEach((_, i) => console.log(`Shift: ${i} ${decode(word, i)}`));

console.log(encode("Word", 3))
solve("ABCDEFGHIJKLMNOPQRSTUVWXYZ", 26)
