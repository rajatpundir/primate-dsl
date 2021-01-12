{-# LANGUAGE TemplateHaskell #-}

module Entities.Role(Role(..)) where

import Data.Aeson.TH
import Entities.Organization

data Role = Role
  { id :: Int
  , organization :: Organization
  , name :: String
  } deriving (Eq, Show)

$(deriveJSON defaultOptions ''Role)
