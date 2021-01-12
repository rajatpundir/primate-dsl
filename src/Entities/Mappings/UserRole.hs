{-# LANGUAGE TemplateHaskell #-}

module Entities.Mappings.UserRole(UserRole(..)) where

import Data.Aeson.TH
import Entities.User
import Entities.Role

data UserRole = UserRole
  { user :: User
  , role :: Role
  } deriving (Eq, Show)

$(deriveJSON defaultOptions ''UserRole)
