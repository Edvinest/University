import System.IO

halley :: (Double -> Double) -> (Double -> Double) -> (Double -> Double) -> Double -> Int -> Double -> Double
halley f f' f'' x0 maxIter eps = go x0 0
  where
    go x k
      | k >= maxIter = x
      | denominator == 0 = x
      | abs dx < eps = xNew
      | otherwise = go xNew (k + 1)
      where
        fx = f x
        f'x = f' x
        f''x = f'' x
        denominator = 2 * f'x^2 - fx * f''x
        dx = (2 * fx * f'x) / denominator
        xNew = x - dx

main :: IO ()
main = do
  let f x = x^3 - 2*x - 5  -- HIBA: Haskellben ^ hatványozás, nem **
  let f' x = 3*x^2 - 2
  let f'' x = 6*x
  let root = halley f f' f'' 2.0 100 1e-10
  print root