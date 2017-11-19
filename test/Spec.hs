import Test.Framework (defaultMain, testGroup)
import Test.Framework.Providers.QuickCheck2 (testProperty)
import Lib
import Test.QuickCheck

main :: IO ()
main = defaultMain tests

tests = [
        testGroup "Even and Odd test group" [
            testProperty "Is even test" prop_is_even,
            testProperty "Is odd test" prop_is_odd,
            testProperty "Is even and is odd test" prop_is_even_odd
           ],

        testGroup "Prime test group" [
            testProperty "Two consecutive primes except 2 and 3" prop_no_consecutive_primes,
            testProperty "GCD of co-primes is 1" prop_gcd_coprimes,
            testProperty "List of primes" prop_list_of_primes

          ],

        testGroup "Lists" [
            testProperty "List of only odd " prop_only_odd,
            testProperty "List of only even " prop_only_even
        ]
      ]

prop_is_even :: Positive Int -> Bool
prop_is_even (Positive n) = isEven n == (n `mod` 2 == 0)

prop_is_odd :: Positive Int -> Bool
prop_is_odd (Positive n) = isOdd n == (n `mod` 2 /= 0)

prop_is_even_odd :: Positive Int -> Bool
prop_is_even_odd (Positive n) = isEven n /= isOdd n

prop_no_consecutive_primes :: Positive Int -> Bool
prop_no_consecutive_primes (Positive n)
  | n > 2  = if (isPrime n) then not (isPrime (n + 1)) else True
  | otherwise = True

prop_gcd_coprimes :: Positive Int -> Positive Int -> Bool
prop_gcd_coprimes (Positive n) (Positive m)
  | isPrime n && isPrime m && n /= m = (gcd n m) == 1
  | otherwise = True

prop_only_odd :: Positive Int -> Bool
prop_only_odd (Positive n)
  | n == 1 = True
  | even n = even $ sum $ take n oddList
  | otherwise = odd $ sum $ take n oddList

prop_only_even :: Positive Int -> Bool
prop_only_even (Positive n) = even $ sum $ take n evenList

prop_list_of_primes :: Positive Int -> Bool
prop_list_of_primes (Positive n)
  | n <= 1 = even (primeList !! n)
  | otherwise = odd (primeList !! n)