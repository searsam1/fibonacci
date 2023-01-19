       IDENTIFICATION DIVISION.
       PROGRAM-ID. SAMPLE.

       DATA DIVISION.
       WORKING-STORAGE SECTION.

         77 fib1 pic 999.
         77 fib2 pic 999.
         77 fib3 pic 999.
         77 i pic 99.
         77 fibst pic XXX.
         77 res pic X(64).

       PROCEDURE DIVISION.
         move 0 to i
         move 0 to fib1
         move 1 to fib2
         move "" to res
         perform until i greater than 15
           add fib1 to fib2 giving fib3
           move fib2 to fib1
           move fib3 to fib2
           move fib1 to fibst
           string res   DELIMITED BY SPACE
                  fibst DELIMITED BY SIZE
                  ","   DELIMITED BY SIZE into res
           add 1 to i
         end-perform.
         display res "..."
         stop run.
