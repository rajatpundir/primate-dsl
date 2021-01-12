{-# LANGUAGE TemplateHaskell #-}

module Entities.Mappings.RoleFunctionPermission(RoleFunctionPermission(..)) where

import Data.Aeson.TH
import Entities.Role
import Entities.Permission.FunctionPermission

data RoleFunctionPermission = RoleFunctionPermission
  { role :: Role
  , permission :: FunctionPermission
  } deriving (Eq, Show)

$(deriveJSON defaultOptions ''RoleFunctionPermission)
