--
-- Copyright (C) 2021 Rajat Pundir <rajatpundir13@gmail.com> - All Rights Reserved
-- Unauthorized copying of this file, via any medium is strictly prohibited
-- Proprietary and confidential
-- THIS IS UNPUBLISHED PROPRIETARY CODE OF RAJAT PUNDIR <rajatpundir13@gmail.com>
-- The copyright notice above does not evidence any actual or intended publication of such source code.
--

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
