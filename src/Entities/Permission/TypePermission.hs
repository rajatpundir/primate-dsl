--
-- Copyright (C) 2021 Rajat Pundir <rajatpundir13@gmail.com> - All Rights Reserved
-- Unauthorized copying of this file, via any medium is strictly prohibited
-- Proprietary and confidential
-- THIS IS UNPUBLISHED PROPRIETARY CODE OF RAJAT PUNDIR <rajatpundir13@gmail.com>
-- The copyright notice above does not evidence any actual or intended publication of such source code.
--

{-# LANGUAGE TemplateHaskell #-}

module Entities.Permission.TypePermission(TypePermission(..)) where

import Data.Aeson.TH
import Entities.Type

data TypePermission = TypePermission
  { id :: Int
  , associatedType :: Type
  , name :: String
  , creatable :: Bool
  , deletable :: Bool
  } deriving (Eq, Show)

$(deriveJSON defaultOptions ''TypePermission)
