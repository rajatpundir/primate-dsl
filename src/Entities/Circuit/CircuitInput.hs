--
-- Copyright (C) 2021 Rajat Pundir <rajatpundir13@gmail.com> - All Rights Reserved
-- Unauthorized copying of this file, via any medium is strictly prohibited
-- Proprietary and confidential
-- THIS IS UNPUBLISHED PROPRIETARY CODE OF RAJAT PUNDIR <rajatpundir13@gmail.com>
-- The copyright notice above does not evidence any actual or intended publication of such source code.
--

{-# LANGUAGE TemplateHaskell #-}

module Entities.Circuit.CircuitInput(CircuitInput(..)) where

import Data.Aeson.TH
import Entities.Circuit.Circuit
import Entities.Type
import Entities.Variable

data CircuitInput = CircuitInput
  { id :: Int
  , parentCircuit :: Circuit
  , name :: String
  , inputType :: Type
  , defaultStringValue :: Maybe String
  , defaultLongValue :: Maybe Int
  , defaultDecimalValue :: Maybe Double
  , defaultBooleanValue :: Maybe Bool
  , referencedVariable :: Maybe Variable
  } deriving (Eq, Show)

$(deriveJSON defaultOptions ''CircuitInput)
