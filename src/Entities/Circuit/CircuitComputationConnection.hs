{-# LANGUAGE TemplateHaskell #-}

module Entities.Circuit.CircuitComputationConnection(CircuitComputationConnection(..)) where

import Data.Aeson.TH
import Entities.Circuit.CircuitInput
import Entities.Circuit.CircuitComputation
import Entities.Circuit.CircuitOutput
import Entities.Function.FunctionInput
import Entities.Function.FunctionOutput

data CircuitComputationConnection = CircuitComputationConnection
  { id :: Int
  , parentComputation :: CircuitComputation
  , functionInput :: Maybe FunctionInput
  , circuitInput :: Maybe CircuitInput
  , connectedToComputation :: Bool
  , connectedCircuitInput :: Maybe CircuitInput
  , connectedCircuitComputation :: Maybe CircuitComputation
  , connectedCircuitComputationFunctionOutput :: Maybe FunctionOutput
  , connectedCircuitComputationCircuitOutput :: Maybe CircuitOutput
  } deriving (Eq, Show)

$(deriveJSON defaultOptions ''CircuitComputationConnection)
