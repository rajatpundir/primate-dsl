module Main where

import Network.Wai.Handler.Warp
import Lib

main :: IO ()
main = run 8080 app
