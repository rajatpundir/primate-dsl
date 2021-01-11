{-# LANGUAGE TemplateHaskell #-}

module Entities.Type(Type(..)) where

import Data.Aeson.TH
import Entities.Organization

data Type = Type
  { id :: Int
  , organization :: Organization
  , superTypeName :: String
  , name :: String
  , autoIncrementId :: Int
  , autoAssignId :: Bool
  , multiplicity :: Int
  , variableCount :: Int
  , depth :: Int
  , primitiveType :: Bool
  , isFormulaDependency :: Bool
  , isAssertionDependency :: Bool
  , hasAssertions :: Bool
  } deriving (Eq, Show)

$(deriveJSON defaultOptions ''Type)
