// run with scala caesar.scala
object Caesar extends App {

    println(encrypt("ATTACK AT ONCE", 4))
    println(decrypt("EXXEGO EX SRGI", 4))

    solve("abcdeFGHIJKLmnopqrstuvwxyz ,?;{[()]}", 26)

    def encrypt(input: String, shift: Int): String = {
        input
            .toUpperCase()
            .map(chr => 
                if (chr.isUpper) 
                    ((chr - 65 + shift) % 26 + 65).toChar 
                else 
                    chr
            )
    }

    def decrypt(input: String, shift: Int): String = {
        encrypt(input, 26-shift)
    }

    def solve(input: String, maxShift: Int): Unit = {
        List.tabulate(maxShift)(_+0).foreach(i => println("Shift: " + i + "\tResult: " + decrypt(input, i)))
    }

}