module Main where

import GuessNum 

main :: IO ()
main = do 
         putStrLn "Choose a number to be guessed."
         number <- getLine 
         guessnum (read number::Int) 
