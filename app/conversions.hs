{-# OPTIONS_GHC -Wno-incomplete-patterns #-}

module Conversions where
import Datatypes

-- Pretty print a DFA
prettyPrint :: DFA -> String
prettyPrint dfa = "States: " ++ show (states dfa) ++ "\n" ++
                  "Sigma: " ++ show (sigma dfa) ++ "\n" ++
                  "Delta: \n" ++ showDelta (delta dfa) ++ "\n" ++
                  "q0: " ++ show (q0 dfa) ++ "\n" ++
                  "Final States: " ++ show (final_states dfa) ++ "\n"
                  where
                    showDelta :: (State -> Char -> State) -> String
                    showDelta d = unlines [show q ++ " " ++ show a ++ " -> " ++ show (d q a) | q <- states dfa, a <- sigma dfa]


m :: DFA
m = DFA {states = ["q0", "q1", "q2"],
         sigma = ['0', '1'],
         delta = \q a -> case (q, a) of
            ("q0", '0') -> "q0"
            ("q0", '1') -> "q1"
            ("q1", '0') -> "q2"
            ("q1", '1') -> "q1"
            ("q2", '0') -> "q2"
            ("q2", '1') -> "q2",
         q0 = "q0",
         final_states = ["q2"]
        }
