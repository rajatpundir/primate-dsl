{-# LANGUAGE TemplateHaskell #-}

module Entities.Circuit.CircuitComputation(CircuitComputation(..)) where

import Data.Aeson.TH
import Entities.Circuit.Circuit
import Entities.Function.Function

data CircuitComputation = CircuitComputation
  { id :: Int
  , parentCircuit :: Circuit
  , name :: String
  , order :: Int
  , level :: Int
  , connectedToFunction :: Bool
  , function :: Maybe Function
  , circuit :: Maybe Circuit
  } deriving (Eq, Show)

$(deriveJSON defaultOptions ''CircuitComputation)
