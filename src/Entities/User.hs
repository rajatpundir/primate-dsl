{-# LANGUAGE TemplateHaskell #-}

module Entities.User(User(..)) where

import Data.Aeson.TH
import Entities.Organization

data User = User
  { id :: Int
  , organization :: Organization
  , username :: String
  , active :: Bool
  , email :: String
  , firstName :: String
  , lastName :: String
  } deriving (Eq, Show)

$(deriveJSON defaultOptions ''User)
