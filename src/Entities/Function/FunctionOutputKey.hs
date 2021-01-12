{-# LANGUAGE TemplateHaskell #-}

module Entities.Function.FunctionOutputKey(FunctionOutputKey(..)) where

import Data.Aeson.TH
import Entities.Function.FunctionOutputType
import Entities.Key

data FunctionOutputKey = FunctionOutputKey
  { id :: Int
  , functionOutputType :: FunctionOutputType
  , key :: Key
  , expression :: Maybe String
  } deriving (Eq, Show)

$(deriveJSON defaultOptions ''FunctionOutputKey)
