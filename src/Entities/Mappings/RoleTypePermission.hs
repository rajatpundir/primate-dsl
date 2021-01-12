{-# LANGUAGE TemplateHaskell #-}

module Entities.Mappings.RoleTypePermission(RoleTypePermission(..)) where

import Data.Aeson.TH
import Entities.Role
import Entities.Permission.TypePermission

data RoleTypePermission = RoleTypePermission
  { role :: Role
  , permission :: TypePermission
  } deriving (Eq, Show)

$(deriveJSON defaultOptions ''RoleTypePermission)
