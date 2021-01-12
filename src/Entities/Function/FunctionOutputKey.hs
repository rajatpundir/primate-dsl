--
-- Copyright (C) 2021 Rajat Pundir <rajatpundir13@gmail.com> - All Rights Reserved
-- Unauthorized copying of this file, via any medium is strictly prohibited
-- Proprietary and confidential
-- THIS IS UNPUBLISHED PROPRIETARY CODE OF RAJAT PUNDIR <rajatpundir13@gmail.com>
-- The copyright notice above does not evidence any actual or intended publication of such source code.
--

{-# LANGUAGE TemplateHaskell #-}

module Entities.Function.FunctionOutputKey(FunctionOutputKey(..)) where

import Data.Aeson.TH
import Entities.Function.FunctionOutputType
import Entities.Key

data FunctionOutputKey = FunctionOutputKey
  { id :: Int
  , functionOutputType :: FunctionOutputType
  , key :: Key
  , expression :: Maybe String
  } deriving (Eq, Show)

$(deriveJSON defaultOptions ''FunctionOutputKey)
