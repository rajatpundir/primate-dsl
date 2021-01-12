{-# LANGUAGE TemplateHaskell #-}

module Entities.Circuit.Circuit(Circuit(..)) where

import Data.Aeson.TH
import Entities.Organization

data Circuit = Circuit
  { id :: Int
  , organization :: Organization
  , name :: String
  } deriving (Eq, Show)

$(deriveJSON defaultOptions ''Circuit)
