--
-- Copyright (C) 2021 Rajat Pundir <rajatpundir13@gmail.com> - All Rights Reserved
-- Unauthorized copying of this file, via any medium is strictly prohibited
-- Proprietary and confidential
-- THIS IS UNPUBLISHED PROPRIETARY CODE OF RAJAT PUNDIR <rajatpundir13@gmail.com>
-- The copyright notice above does not evidence any actual or intended publication of such source code.
--

{-# LANGUAGE TemplateHaskell #-}

module Entities.Value(Value(..)) where

import Data.Aeson.TH
import Entities.Variable
import Entities.Key

data Value = Value
  { id :: Int
  , variable :: Variable
  , key :: Key
  , stringValue :: Maybe String
  , longValue :: Maybe Int
  , decimalValue :: Maybe Double
  , booleanValue :: Maybe Bool
  , referencedVariable :: Maybe Variable
  } deriving (Eq, Show)

$(deriveJSON defaultOptions ''Value)
