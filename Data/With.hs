module Data.With (type (:&:)((:@:), (:#:)), With) where

type With = (:&:)

infixl 1 :&:

data (:&:) a b where
	(:@:) :: a -> b -> a :&: b
	(:#:) :: a :&: b -> c -> (a :&: b) :&: c
