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
