{-# LANGUAGE TemplateHaskell #-}

module Entities.Function.FunctionInputType(FunctionInputType(..)) where

import Data.Aeson.TH
import Entities.Function.FunctionInput
import Entities.Type

data FunctionInputType = FunctionInputType
  { id :: Int
  , functionInput :: FunctionInput
  , associatedType :: Type
  } deriving (Eq, Show)

$(deriveJSON defaultOptions ''FunctionInputType)
