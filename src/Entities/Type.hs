--
-- Copyright (C) 2021 Rajat Pundir <rajatpundir13@gmail.com> - All Rights Reserved
-- Unauthorized copying of this file, via any medium is strictly prohibited
-- Proprietary and confidential
-- THIS IS UNPUBLISHED PROPRIETARY CODE OF RAJAT PUNDIR <rajatpundir13@gmail.com>
-- The copyright notice above does not evidence any actual or intended publication of such source code.
--

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
