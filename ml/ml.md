# ML

## Commentary

Dear Diary

## Google Searches

- ML install
- ml install ubuntu
- polyml ubuntu run script
- ml get char code
- ml to uppercase
- ml string map
- ml map over string
- ml enumerate
- ml foreach
- ml run x times

## Caesar Implementation

```ml
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
```

### Output

```

```

## Log

Estimate: 2 hours

| Date      | Hours Spent | Accomplishments             |
| --------- | ----------- | --------------------------- |
| 4/6       | .25         | Install local version of ML |
| 4/6       | .25         | Create rot function         |
| 4/6       | .25         | Create encrypt/decrypt      |
| 4/6       | .5          | Create solve                |
| 4/20(lol) | .5          | Fix special characters      |

### Discrepancy of time



## Overall Review

## Ratings

Readability: 6/10

Writability: 5/10

Ranking: 3/5
