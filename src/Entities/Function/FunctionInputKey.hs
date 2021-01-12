{-# LANGUAGE TemplateHaskell #-}

module Entities.Function.FunctionInputKey(FunctionInputKey(..)) where

import Data.Aeson.TH
import Entities.Function.FunctionInputType
import Entities.Key

data FunctionInputKey = FunctionInputKey
  { id :: Int
  , functionInputType :: FunctionInputType
  , key :: Key
  , expression :: Maybe String
  } deriving (Eq, Show)

$(deriveJSON defaultOptions ''FunctionInputKey)
