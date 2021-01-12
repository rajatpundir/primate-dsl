--
-- Copyright (C) 2021 Rajat Pundir <rajatpundir13@gmail.com> - All Rights Reserved
-- Unauthorized copying of this file, via any medium is strictly prohibited
-- Proprietary and confidential
-- THIS IS UNPUBLISHED PROPRIETARY CODE OF RAJAT PUNDIR <rajatpundir13@gmail.com>
-- The copyright notice above does not evidence any actual or intended publication of such source code.
--

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
