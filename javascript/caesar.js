const rotate = (letter, shift) => (/[a-zA-Z]/).test(letter) ? String.fromCharCode((((letter.charCodeAt(0) - 65) + shift) % 26) + 65) : letter;
const encrypt = (word, shift) => word.toUpperCase().split("").map(ltr => rotate(ltr, shift)).join("");
const decrypt = (word, shift) => encrypt(word, 26 - shift);
const solve = (word, maxShift) => [...Array(maxShift)].forEach((_, i) => console.log(`Shift: ${i}\t${decrypt(word, i)}`));

console.log(encrypt("ATTACK AT ONCE", 4))
console.log(decrypt("EXXEGO EX SRGI", 4))
solve("abcdeFGHIJKLmnopqrstuvwxyz ,?;{[()]}", 26)
