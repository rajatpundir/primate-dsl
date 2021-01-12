{-# LANGUAGE TemplateHaskell #-}

module Entities.VariableAssertion(VariableAssertion(..)) where

import Data.Aeson.TH
import Entities.TypeAssertion
import Entities.Variable

data VariableAssertion = VariableAssertion
  { id :: Int
  , typeAssertion :: TypeAssertion
  , variable :: Variable
  , result :: Bool
  } deriving (Eq, Show)

$(deriveJSON defaultOptions ''VariableAssertion)
