{-# LANGUAGE TemplateHaskell #-}

module Entities.Group(Group(..)) where

import Data.Aeson.TH
import Entities.Organization

data Group = Group
  { id :: Int
  , organization :: Organization
  , name :: String
  } deriving (Eq, Show)

$(deriveJSON defaultOptions ''Group)
