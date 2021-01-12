{-# LANGUAGE TemplateHaskell #-}

module Entities.Function.FunctionInput(FunctionInput(..)) where

import Data.Aeson.TH
import Entities.Function.Function
-- import Entities.Function.FunctionInputType
import Entities.Type
import Entities.Variable

data FunctionInput = FunctionInput
  { id :: Int
  , function :: Function
  , name :: String
  , inputType :: Type
  , variableName :: Maybe String
  -- , values :: Maybe FunctionInputType
  , defaultStringValue :: Maybe String
  , defaultLongValue :: Maybe Int
  , defaultDecimalValue :: Maybe Double
  , defaultBooleanValue :: Maybe Bool
  , referencedVariable :: Maybe Variable
  } deriving (Eq, Show)

$(deriveJSON defaultOptions ''FunctionInput)
