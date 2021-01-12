{-# LANGUAGE TemplateHaskell #-}

module Entities.Mappings.GroupRole(GroupRole(..)) where

import Data.Aeson.TH
import Entities.Group
import Entities.Role

data GroupRole = GroupRole
  { group :: Group
  , role :: Role
  } deriving (Eq, Show)

$(deriveJSON defaultOptions ''GroupRole)
