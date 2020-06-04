String Calculator Kata
======================


##### String Calculator Kata from Kata Log


[String Calculator Kata](https://kata-log.rocks/string-calculator-kata)


Incremental kata

It’s an incremental kata to simulate a real business situation: start off by reading section 1 and completing it, then go onto section 2, and when you have finished that, look at section 3, etc.

Step 1

Create a simple String calculator with a method signature:

    int Add(string numbers)

The method can take up to two numbers, separated by commas, and will return their sum.

For example “” or “1” or “1,2” as inputs.

For an empty string it will return 0.

Step 2

Allow the Add method to handle an unknown amount of numbers.

Step 3

Allow the Add method to handle new lines between numbers (instead of commas):

    The following input is ok: “1\n2,3” (will equal 6)

    The following input is NOT ok: “1,\n” (no need to prove it - just clarifying)