{-# LANGUAGE TemplateHaskell #-}

module Entities.Value(Value(..)) where

import Data.Aeson.TH
import Entities.Variable
import Entities.Key

data Value = Value
  { id :: Int
  , variable :: Variable
  , key :: Key
  , stringValue :: Maybe String
  , longValue :: Maybe Int
  , decimalValue :: Maybe Double
  , booleanValue :: Maybe Bool
  , referencedVariable :: Maybe Variable
  } deriving (Eq, Show)

$(deriveJSON defaultOptions ''Value)
