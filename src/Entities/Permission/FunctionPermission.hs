{-# LANGUAGE TemplateHaskell #-}

module Entities.Permission.FunctionPermission(FunctionPermission(..)) where

import Data.Aeson.TH
import Entities.Function.Function

data FunctionPermission = FunctionPermission
  { id :: Int
  , function :: Function
  , name :: String
  } deriving (Eq, Show)

$(deriveJSON defaultOptions ''FunctionPermission)
