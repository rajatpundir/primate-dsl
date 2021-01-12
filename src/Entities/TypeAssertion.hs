{-# LANGUAGE TemplateHaskell #-}

module Entities.TypeAssertion(TypeAssertion(..)) where

import Data.Aeson.TH
import Entities.Type

data TypeAssertion = TypeAssertion
  { id :: Int
  , associatedType :: Type
  , symbolPaths :: String
  , expression :: String
  } deriving (Eq, Show)

$(deriveJSON defaultOptions ''TypeAssertion)
