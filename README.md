# Inefficient Sorting in Haskell for Large Lists

This repository demonstrates a common performance issue in Haskell: using inefficient sorting algorithms for large lists. The `bug.hs` file contains code that uses `Data.List.sort`, which has O(n log n) complexity.  While suitable for smaller lists, this can become a bottleneck for very large datasets.

The `bugSolution.hs` provides a more efficient solution (where applicable). Note: Choosing the best solution depends heavily on the data's characteristics and expected performance requirements.