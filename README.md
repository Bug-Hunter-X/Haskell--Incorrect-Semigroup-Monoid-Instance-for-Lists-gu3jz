# Haskell: Incorrect Semigroup/Monoid Instance for Lists

This repository demonstrates a subtle bug in a Haskell program involving instances of the `Semigroup` and `Monoid` typeclasses for lists.  The code compiles without errors but exhibits unexpected behavior due to a missing constraint in the instance declaration. This bug highlights the importance of carefully considering type constraints when defining type class instances.

## The Bug
The `bug.hs` file contains code that defines `Semigroup` and `Monoid` instances for lists. While seemingly correct, this implementation silently ignores any constraints placed on the `Semigroup` instance for the element type. If the element type has a `Semigroup` instance that doesn't use simple concatenation, this instance will override the expected behavior.

## The Solution
The `bugSolution.hs` file provides a corrected implementation. It explicitly incorporates the necessary constraints, ensuring that the `Semigroup` instance for the list elements is correctly respected.

## How to run the code
1. Install a Haskell compiler (GHC is recommended).
2. Clone this repository: `git clone <repository_url>`
3. Navigate to the cloned directory.
4. Compile and run the code using `ghc bug.hs && ./bug` and `ghc bugSolution.hs && ./bugSolution`.
Compare the outputs to see the difference in behavior between the buggy and corrected versions. 