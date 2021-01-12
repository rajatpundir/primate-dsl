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
