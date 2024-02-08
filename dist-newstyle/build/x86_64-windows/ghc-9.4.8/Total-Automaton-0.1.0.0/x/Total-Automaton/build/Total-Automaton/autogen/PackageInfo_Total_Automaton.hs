{-# LANGUAGE NoRebindableSyntax #-}
{-# OPTIONS_GHC -fno-warn-missing-import-lists #-}
{-# OPTIONS_GHC -w #-}
module PackageInfo_Total_Automaton (
    name,
    version,
    synopsis,
    copyright,
    homepage,
  ) where

import Data.Version (Version(..))
import Prelude

name :: String
name = "Total_Automaton"
version :: Version
version = Version [0,1,0,0] []

synopsis :: String
synopsis = "Does a lot of stuff with state machines"
copyright :: String
copyright = ""
homepage :: String
homepage = ""
