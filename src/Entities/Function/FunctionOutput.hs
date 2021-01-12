--
-- Copyright (C) 2021 Rajat Pundir <rajatpundir13@gmail.com> - All Rights Reserved
-- Unauthorized copying of this file, via any medium is strictly prohibited
-- Proprietary and confidential
-- THIS IS UNPUBLISHED PROPRIETARY CODE OF RAJAT PUNDIR <rajatpundir13@gmail.com>
-- The copyright notice above does not evidence any actual or intended publication of such source code.
--

{-# LANGUAGE TemplateHaskell #-}

module Entities.Function.FunctionOutput(FunctionOutput(..)) where

import Data.Aeson.TH
import Entities.Function.Function
-- import Entities.Function.FunctionOutputType
import Entities.Type
import Entities.Variable

data FunctionOutput = FunctionOutput
  { id :: Int
  , function :: Function
  , name :: String
  , outputType :: Type
  , variableName :: String
  -- , values :: Maybe FunctionOutputType
  } deriving (Eq, Show)

$(deriveJSON defaultOptions ''FunctionOutput)
