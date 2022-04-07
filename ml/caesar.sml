fun rot (char, shift) = (chr (((ord (Char.toUpper char)) - 65 + shift) mod 26 + 65));

fun encrypt (word, shift) = (String.map (fn ltr => rot(ltr, shift)) word);
fun decrypt (word, shift) = encrypt(word, 26-shift);
fun solve (word, maxShift) = map 
    (fn x => print(Int.toString(x) ^ "\t" ^  (decrypt(word, x)) ^ "\n")) 
    (List.tabulate(maxShift, fn x => x)); (* run it maxShift times *)

print (decrypt("IBM", 1) ^ "\n");
print (encrypt("HAL", 1)^ "\n");
solve("ABCDEFGHIJKLMNOPQRSTUVWXYZ", 26);

(* Total time: 1.5 hours *)