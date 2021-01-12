{-# LANGUAGE TemplateHaskell #-}

module Entities.Permission.FunctionOutputPermission(FunctionOutputPermission(..)) where

import Data.Aeson.TH
import Entities.Function.FunctionOutput
import Entities.Permission.FunctionPermission

data FunctionOutputPermission = FunctionOutputPermission
  { id :: Int
  , functionPermission :: FunctionPermission
  , functionOutput :: FunctionOutput
  , accessLevel :: Bool
  } deriving (Eq, Show)

$(deriveJSON defaultOptions ''FunctionOutputPermission)
