{-# LANGUAGE TemplateHaskell #-}

module Entities.Function.FunctionOutput(FunctionOutput(..)) where

import Data.Aeson.TH
import Entities.Function.Function
-- import Entities.Function.FunctionOutputType
import Entities.Type
import Entities.Variable

data FunctionOutput = FunctionOutput
  { id :: Int
  , function :: Function
  , name :: String
  , outputType :: Type
  , variableName :: String
  -- , values :: Maybe FunctionOutputType
  } deriving (Eq, Show)

$(deriveJSON defaultOptions ''FunctionOutput)
