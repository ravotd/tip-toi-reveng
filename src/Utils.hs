module Utils where

import Control.Monad

-- Utilities

readMaybe :: (Read a) => String -> Maybe a
readMaybe s = case reads s of
              [(x, "")] -> Just x
              _ -> Nothing


forMn :: Monad m => [a] -> (Int -> a -> m b) -> m [b]
forMn l f = forM (zip l [0..]) $ \(x,n) -> f n x

forMn_ :: Monad m => [a] -> (Int -> a -> m b) -> m ()
forMn_ l f = forM_ (zip l [0..]) $ \(x,n) -> f n x
