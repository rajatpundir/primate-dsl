{-# LANGUAGE TemplateHaskell #-}

module Entities.Permission.FunctionInputPermission(FunctionInputPermission(..)) where

import Data.Aeson.TH
import Entities.Function.FunctionInput
import Entities.Permission.FunctionPermission

data FunctionInputPermission = FunctionInputPermission
  { id :: Int
  , functionPermission :: FunctionPermission
  , functionInput :: FunctionInput
  , accessLevel :: Bool
  } deriving (Eq, Show)

$(deriveJSON defaultOptions ''FunctionInputPermission)
