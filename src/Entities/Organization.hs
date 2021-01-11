{-# LANGUAGE TemplateHaskell #-}

module Entities.Organization(Organization(..)) where

import Data.Aeson.TH

data Organization = Organization
  { id :: Int
  , name :: String
  } deriving (Eq, Show)

$(deriveJSON defaultOptions ''Organization)
