--
-- Copyright (C) 2021 Rajat Pundir <rajatpundir13@gmail.com> - All Rights Reserved
-- Unauthorized copying of this file, via any medium is strictly prohibited
-- Proprietary and confidential
-- THIS IS UNPUBLISHED PROPRIETARY CODE OF RAJAT PUNDIR <rajatpundir13@gmail.com>
-- The copyright notice above does not evidence any actual or intended publication of such source code.
--

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
