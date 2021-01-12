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
