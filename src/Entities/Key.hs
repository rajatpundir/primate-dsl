{-# LANGUAGE TemplateHaskell #-}

module Entities.Key(Key(..)) where

import Data.Aeson.TH
import Entities.Type
import Entities.Variable
import Entities.Formula

data Key = Key
  { id :: Int
  , parentType :: Type
  , name :: String
  , keyOrder :: Int
  , keyType :: Type
  , defaultStringValue :: Maybe String
  , defaultLongValue :: Maybe Int
  , defaultDecimalValue :: Maybe Double
  , defaultBooleanValue :: Maybe Bool
  , referencedVariable :: Maybe Variable
  , formula :: Maybe Formula
  , isFormulaDependency :: Bool
  , isAssertionDependency :: Bool
  , isVariableDependency :: Bool
  } deriving (Eq, Show)

$(deriveJSON defaultOptions ''Key)
