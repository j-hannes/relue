{-# LANGUAGE OverloadedStrings #-}

import Web.Scotty (ScottyM, ActionM, scotty, get, json, status, param)
import Network.HTTP.Types.Status (ok200)
import Data.Aeson (object, (.=))

import qualified Solver.E001 as E001

main :: IO ()
main = scotty 3000 routes

routes :: ScottyM ()
routes = get "/euler1/:n" euler1

euler1 :: ActionM ()
euler1 = do
  n <- param "n"
  json [object [ "data" .= E001.solve (n :: Int) ] ]
  status ok200

