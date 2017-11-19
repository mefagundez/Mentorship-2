{-# LANGUAGE TemplateHaskell #-}
module Main where

import Lib

main :: IO ()
main = do
  putStrLn $ "Is Prime 11 = " ++ (show $ isPrime 11)
  putStrLn $ "Is Prime 2 = " ++ (show $ isPrime 2)
  putStrLn $ "Is Prime 3 = " ++ (show $ isPrime 3)
  putStrLn $ "Is Odd 2 = " ++ (show $ isOdd 2)
  putStrLn $ "Is Even 2 = " ++ (show $ isEven 2)
  putStrLn $ "Is Odd 3 = " ++ (show $ isOdd 3)
  putStrLn $ "Is Even 3 = " ++ (show $ isEven 3)
  putStrLn $ "Tuple = " ++ (show myTuple)
  putStrLn $ "Even list = " ++ (show (take 5 evenList))
  putStrLn $ "Odd List = " ++ (show (take 5 oddList))
  putStrLn $ "Prime List = " ++ (show (take 5 primeList))
