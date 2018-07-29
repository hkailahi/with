module Data.With (type (:&:)((:@:), (:#:)), With) where

infixl 1 :&:

data (:&:) a b where
	(:@:) :: a -> b -> a :&: b
	(:#:) :: a :&: b -> c -> (a :&: b) :&: c

type With = (:&:)
