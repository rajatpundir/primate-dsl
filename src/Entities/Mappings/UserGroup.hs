{-# LANGUAGE TemplateHaskell #-}

module Entities.Mappings.UserGroup(UserGroup(..)) where

import Data.Aeson.TH
import Entities.User
import Entities.Group

data UserGroup = UserGroup
  { user :: User
  , group :: Group
  } deriving (Eq, Show)

$(deriveJSON defaultOptions ''UserGroup)
