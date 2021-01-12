{-# LANGUAGE TemplateHaskell #-}

module Entities.Circuit.CircuitOutput(CircuitOutput(..)) where

import Data.Aeson.TH
import Entities.Circuit.Circuit
import Entities.Circuit.CircuitComputation
import Entities.Function.FunctionOutput

data CircuitOutput = CircuitOutput
  { id :: Int
  , parentCircuit :: Circuit
  , name :: String
  , connectedCircuitComputation :: CircuitComputation
  , connectedCircuitComputationFunctionOutput :: Maybe FunctionOutput
  , connectedCircuitComputationCircuitOutput :: Maybe CircuitOutput
  } deriving (Eq, Show)

$(deriveJSON defaultOptions ''CircuitOutput)
