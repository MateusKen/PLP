{-# OPTIONS_GHC -Wno-unrecognised-pragmas #-}
{-# HLINT ignore "Use camelCase" #-}
--NOME: MATEUS KENZO IOCHIMOTO
--RA: 10400995
soma :: Num a => a -> a -> a
soma x y = x+y

----tot3----
tot3 :: Num a => [a] -> [a]
tot3 [] = []
tot3 [x] = [x]
tot3 [x, y] = [x + y]
tot3 (x:y:z:xs) = (x+y+z) : tot3 xs
-----------

----rev----
rev :: [a] -> [a]
rev [] = []
rev (x:xs) = rev xs ++ [x]
-----------

----seg----
seg :: [a] -> a
seg (_:x:_) = x
seg _       = error "A lista precisa ter pelo menos dois elementos"
-----------

--del_rep--
del_rep :: [a] -> [a]
del_rep [] = []
del_rep (a:xs) 
    |isFound a lista = del_rep xs
    |otherwise = a : del_rep xs
    where 
        lista = -- lista começa vazia e vai adicionando os elementos diferentes


isFound :: a -> [a] -> Bool
isFound a [] = False
isFound a (x:xs) |a==x = True
                 |otherwise = isFound a xs
-----------

----totk---
totk :: Int -> [Int] -> [Int]
totk _ [] = []
totk k lista = somaK (take k lista) : totk k (drop k lista)
    where
        somaK :: [Int] -> Int
        somaK = sum
-----------

---trok2---
trok2 :: [a] -> [a]
trok2 [] = []
trok2 [a] = [a]
trok2 (x:y:xs) = y : x : trok2 xs --funciona até certo ponto
-----------

----delk---
delk :: Int -> [a] -> [a]
delk _ [] = []
delk k xs = concat (map (drop 1) (totk k xs))
-----------
