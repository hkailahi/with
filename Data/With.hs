module Data.With (type (:&:)((:&:)), With) where

type With = (:&:)

infixr 1 :&:

data (:&:) a b = a :&: b
