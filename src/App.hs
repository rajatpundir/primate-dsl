{-# LANGUAGE DataKinds       #-}
{-# LANGUAGE TypeOperators   #-}

module App (app) where

import Servant
import User
import Entities.Value
import Entities.Role
import Entities.Group
import Entities.Function.FunctionInputKey
import Entities.Permission.FunctionInputPermission
import Entities.Permission.FunctionOutputPermission
import Entities.Mappings.GroupRole
import Entities.Mappings.UserGroup
import Entities.Mappings.UserRole

type API = "users" :> Get '[JSON] [User]

users :: [User]
users = [ User 1 "Isaac" "Newton"
        , User 2 "Albert" "Einstein"
        ]

server :: Server API
server = return users

api :: Proxy API
api = Proxy

app :: Application
app = serve api server
