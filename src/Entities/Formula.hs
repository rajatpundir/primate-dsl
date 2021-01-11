{-# LANGUAGE TemplateHaskell #-}

module Entities.Formula(Formula(..)) where

import Data.Aeson.TH
import Entities.Type

data Formula = Formula
  { id :: Int
  , returnType :: Type
  , symbolPaths :: String
  , expression :: String
  } deriving (Eq, Show)

$(deriveJSON defaultOptions ''Formula)
