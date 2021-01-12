{-# LANGUAGE TemplateHaskell #-}

module Entities.Function.FunctionOutputType(FunctionOutputType(..)) where

import Data.Aeson.TH
import Entities.Function.FunctionOutput
import Entities.Type

data FunctionOutputType = FunctionOutputType
  { id :: Int
  , functionOutput :: FunctionOutput
  , associatedType :: Type
  } deriving (Eq, Show)

$(deriveJSON defaultOptions ''FunctionOutputType)
