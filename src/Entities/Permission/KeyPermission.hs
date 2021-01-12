--
-- Copyright (C) 2021 Rajat Pundir <rajatpundir13@gmail.com> - All Rights Reserved
-- Unauthorized copying of this file, via any medium is strictly prohibited
-- Proprietary and confidential
-- THIS IS UNPUBLISHED PROPRIETARY CODE OF RAJAT PUNDIR <rajatpundir13@gmail.com>
-- The copyright notice above does not evidence any actual or intended publication of such source code.
--

{-# LANGUAGE TemplateHaskell #-}

module Entities.Permission.KeyPermission(KeyPermission(..)) where

import Data.Aeson.TH
import Entities.Permission.TypePermission
import Entities.Key

data KeyPermission = KeyPermission
  { id :: Int
  , typePermission :: TypePermission
  , key :: Key
  , creatable :: Bool
  , deletable :: Bool
  , accessLevel :: Int
  } deriving (Eq, Show)

$(deriveJSON defaultOptions ''KeyPermission)
