{-# LANGUAGE FlexibleInstances #-}

instance (Semigroup a) => Semigroup [a] where
  (<>) = (++)

instance (Monoid a) => Monoid [a] where
  mempty = []
  mappend = (++)

main :: IO ()
main = do
  print (mempty :: [Int])
  print ([] <> [1,2,3] :: [Int])
  print ([1,2,3] <> [4,5,6] :: [Int])