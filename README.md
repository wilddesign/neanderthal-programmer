# neanderthal-programmer
Intepreter of the neanderthal programming language.

It is a short interpreter of a specific input file, containing a set o characters and interpreting it as a two-argument operation. In default version, the operation is addition.
This interpreter assigns 1 to the letter a, and 0 to the letter y. It ignores all other letters, save for the operation which is explicitly defined as the second argument.

To use it, install Perl and then run in the console:
```
perl neanderthal_programmer.pl "inputfile.txt" "operator"
```
In the example, the "inputfile.txt" is "input.txt" and the two argument operator is "ooo", so:
```
perl neanderthal_programmer.pl "input.txt" "ooo"
```
Now, the interpreter is created to make programmers do their job as our paleolithic ancestors did. So:
1. Open dictation.io.
2. Utter your program with all sort of vowels. Do it loudly, so that the microphone catches it and your neighbours have fun as well hearing it ;)
3. Copy the recorded text to "inputfile.txt", chose your operator symbol and run!

Remeber that the operator must be present only once in the input string, otherwise it is a syntax error, which is signalled by a sound.
If there is no operator occurence in the string, then the interpreter returns the value of the input.

Console output for the default code is:
```
Hi, we will interpret neanderthal inarticulate sounds from the text file
Cześć, oto interpreter do neandertalskiego języka programowania z pliku wejściowego
Your result is 9
Wynik działania to 9
```
In Polish and English.
