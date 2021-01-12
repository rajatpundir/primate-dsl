{-# LANGUAGE TemplateHaskell #-}

module Entities.Function.Function(Function(..)) where

import Data.Aeson.TH
import Entities.Organization

data Function = Function
  { id :: Int
  , organization :: Organization
  , name :: String
  , symbolPaths :: String
  } deriving (Eq, Show)

$(deriveJSON defaultOptions ''Function)
