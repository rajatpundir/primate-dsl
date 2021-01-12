{-# LANGUAGE DataKinds       #-}
{-# LANGUAGE TypeOperators   #-}

module App (app) where

import Servant
import User

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
