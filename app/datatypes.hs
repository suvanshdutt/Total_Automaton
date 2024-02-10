module Datatypes where

-- DFA is a 5-tuple (Q, Σ, δ, q0, F) where:
-- Q = a finite set of states

-- Σ = a finite, nonempty input alphabet

-- δ = a series of transition functions

-- q0= the starting state

-- F = the set of accepting states

-- States:
type State = String

-- DFA:
data DFA = DFA
    { states       :: [State]
    , sigma        :: [Char]
    , delta        :: State -> Char -> State
    , q0           :: State
    , final_states :: [State]
    }
