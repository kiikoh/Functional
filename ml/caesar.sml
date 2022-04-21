fun rot (char, shift) = if ((ord (Char.toUpper char)) >= 65 andalso (ord (Char.toUpper char)) <= 90) then
        (chr (((ord (Char.toUpper char)) - 65 + shift) mod 26 + 65))
    else
        char;

fun encrypt (word, shift) = (String.map (fn ltr => rot(ltr, shift)) word);
fun decrypt (word, shift) = encrypt(word, 26-shift);
fun solve (word, maxShift) = map 
    (fn x => print(Int.toString(x) ^ "\t" ^  (decrypt(word, x)) ^ "\n")) 
    (List.tabulate(maxShift, fn x => x)); (* run it maxShift times *)

print (encrypt("ATTACK AT ONCE", 4) ^ "\n");
print (decrypt("EXXEGO EX SRGI", 4)^ "\n");
solve("abcdeFGHIJKLmnopqrstuvwxyz ,?;{[()]}", 26);
