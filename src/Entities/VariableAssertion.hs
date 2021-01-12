--
-- Copyright (C) 2021 Rajat Pundir <rajatpundir13@gmail.com> - All Rights Reserved
-- Unauthorized copying of this file, via any medium is strictly prohibited
-- Proprietary and confidential
-- THIS IS UNPUBLISHED PROPRIETARY CODE OF RAJAT PUNDIR <rajatpundir13@gmail.com>
-- The copyright notice above does not evidence any actual or intended publication of such source code.
--

{-# LANGUAGE TemplateHaskell #-}

module Entities.VariableAssertion(VariableAssertion(..)) where

import Data.Aeson.TH
import Entities.TypeAssertion
import Entities.Variable

data VariableAssertion = VariableAssertion
  { id :: Int
  , typeAssertion :: TypeAssertion
  , variable :: Variable
  , result :: Bool
  } deriving (Eq, Show)

$(deriveJSON defaultOptions ''VariableAssertion)
