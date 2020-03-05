module GuessNum 
     ( guessnum
     ) where

import Data.Char

guessnum::Int -> IO()
guessnum num = playgame num

playgame::Int -> IO()
playgame num =
  do
    putStrLn "What is your name?";
    name <- getLine;
    putStrLn ("Hello, " ++ name);
    putStrLn (name ++ ", are you read to play the game?");
    ans <- getLine

    if map toLower ans == "no" then putStrLn "Ok, gotta go." else do
      putStrLn "Guess a number."
      guess <- getLine;
      let g = read guess::Int in if g == num then putStrLn ("You got it! You won")
                      else putStrLn ("You were off by " ++ show(abs (g - num)))

