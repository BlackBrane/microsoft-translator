{-# LANGUAGE DeriveDataTypeable #-}

module Microsoft.Translator.Exception where

import           Control.Exception
import           Data.Typeable
import           Servant.Client


data TranslatorException
    = APIException ClientError
    | MissingSubscriptionKey
    deriving (Show, Typeable)

instance Exception TranslatorException
