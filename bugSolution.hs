```haskell
import Data.List (sort)
import Data.Maybe (fromMaybe)
import qualified Data.Map as Map

main :: IO ()
main = do
  let largeNumbers = [1, 5, 2, 8, 3, 1000000, 12345, 7890, 654321, 9876]
  let sortedLargeNumbers = sort largeNumbers
  print sortedLargeNumbers

--Alternative solution for very large datasets (using Data.Map for better performance)
main' :: IO ()
main' = do
  let numbers = [1, 5, 2, 8, 3, 1000000, 12345, 7890, 654321, 9876]
  let counts = Map.fromListWith (+) [(x, 1) | x <- numbers]  -- Count occurrences
  let sortedNumbers = map (
    (k,_) -> k
    ) $ Map.toList $ Map.mapKeysMonotonic (
    x -> x
    ) counts

  print sortedNumbers
```