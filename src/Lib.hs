{-# LANGUAGE TemplateHaskell #-}
module Lib
    ( isPrime,
      isEven,
      isOdd,
      myTuple,
      evenList,
      oddList,
      primeList
    ) where

isPrime :: Int -> Bool
isPrime n = null [ x | x <- [2..isqrt n], n `mod`x  == 0]

isqrt 0 = 0
isqrt 1 = 1
isqrt n = head $ dropWhile (\x -> x*x > n) $ iterate (\x -> (x + n `div` x) `div` 2) (n `div` 2)

isEven :: Int -> Bool
isEven = even -- TODO:

isOdd :: Int -> Bool
isOdd = odd -- TODO:

myTuple = () -- TODO:

evenList = [1..] -- TODO:

oddList = [1..] -- TODO:

primeList = [1..] -- TODO:

-- Examples of list initialization

myRangeList = [1..20]
myList = [x | x<- [1..20]]

