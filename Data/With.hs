module Data.With (type (:&:)((:@:), (:#:)), With) where

import "base" Data.Semigroup (Semigroup((<>)))
import "base" Text.Show (Show(show))

type With = (:&:)

infixl 1 :&:

data (:&:) a b where
	(:@:) :: a -> b -> a :&: b
	(:#:) :: a :&: b -> c -> (a :&: b) :&: c

instance (Show a, Show b) => Show (a :&: b) where
	show (x :@: y) = show x <> " :&: " <> show y
	show (x :#: y) = show x <> " :&: " <> show y
