{-# LANGUAGE FlexibleInstances #-}

instance Monoid a => Monoid [a] where
  mempty = []
  mappend = (++)

instance Semigroup a => Semigroup [a] where
  (<>) = (++)

-- This code compiles and seems correct, but it is actually broken.
-- The reason is that it silently ignores any constraints on the Semigroup instance for `a`.
-- If `a` is an instance of Semigroup with a non-append behavior, this instance will override that behavior.
-- Therefore, it is important to explicitly mention constraints on the Semigroup instance for `a` in order to avoid unexpected errors.

main :: IO ()
main = do
  print (mempty :: [Int])
  print ([] <> [1,2,3] :: [Int])
  print ([1,2,3] <> [4,5,6] :: [Int])