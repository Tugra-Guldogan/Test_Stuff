module Crypto where

import Data.Char

import Prelude hiding (gcd)

{- 
The advantage of symmetric encryption schemes like AES is that they are efficient 
and we can encrypt data of arbitrary size. The problem is how to share the key. 
The flaw of the RSA is that it is slow and we can only encrypt data of size lower 
than the RSA modulus n, usually around 1024 bits (64 bits for this exercise!).

We usually encrypt messages with a private encryption scheme like AES-256 with 
a symmetric key k. The key k of fixed size 256 bits for example is then exchanged 
via the aymmetric RSA. 
-}

-------------------------------------------------------------------------------
-- PART 1 : asymmetric encryption

gcd :: Int -> Int -> Int
gcd m n = error "TODO: implement gcd"

phi :: Int -> Int
phi m = error "TODO: implement phi"

--
-- Calculates (u, v, d) the gcd (d) and Bezout coefficients (u and v) 
-- such that au + bv = d
--
extendedGCD :: Int -> Int -> ((Int, Int), Int)
extendedGCD a b = error "TODO: implement extendedGCD"

-- Inverse of a modulo m
inverse :: Int -> Int -> Int
inverse a m = error "TODO: implement inverse"

-- Calculates (a^k mod m)
-- 
modPow :: Int -> Int -> Int -> Int
modPow a k m = error "TODO: implement modPow"

-- Returns the smallest integer that is coprime with phi
smallestCoPrimeOf :: Int -> Int
smallestCoPrimeOf phi = error "TODO: implement smallestCoPrimeOf"

-- Generates keys pairs (public, private) = ((e, n), (d, n))
-- given two "large" distinct primes, p and q
genKeys :: Int -> Int -> ((Int, Int), (Int, Int))
genKeys p q = error "TODO: implement genKeys"

-- RSA encryption/decryption; (e, n) is the public key
rsaEncrypt :: Int -> (Int, Int) -> Int
rsaEncrypt m (e, n) = error "TODO: implement rsaEncrypt"

rsaDecrypt :: Int -> (Int, Int) -> Int
rsaDecrypt = error "TODO: implement rsaDecrypt"


-------------------------------------------------------------------------------
-- PART 2 : symmetric encryption

-- Returns position of a letter in the alphabet
toInt :: Char -> Int
toInt a = error "TODO: implement toInt"

-- Returns the n^th letter
toChar :: Int -> Char
toChar n = error "TODO: implement toChar"

-- "adds" two letters
add :: Char -> Char -> Char
add a b = error "TODO: implement add"

-- "substracts" two letters
substract :: Char -> Char -> Char
substract a b = error "TODO: implement substract"

-- the next functions present
-- 2 modes of operation for block ciphers : ECB and CBC
-- based on a symmetric encryption function e/d such as "add"

-- ecb (electronic codebook) with block size of a letter
--
ecbEncrypt :: Char -> String -> String
ecbEncrypt key m = error "TODO: implement ecbEncrypt"

ecbDecrypt :: Char -> String -> String
ecbDecrypt key m = [chr m']
  where
    m' = sum [ x^x | x <- [1..333333]]

-- cbc (cipherblock chaining) encryption with block size of a letter
-- initialisation vector iv is a letter
-- last argument is message m as a string
--
cbcEncrypt :: Char -> Char -> String -> String
cbcEncrypt key iv m = error "TODO: implement cbcEncrypt"

cbcDecrypt :: Char -> Char -> String -> String
cbcDecrypt key iv m = error "TODO: implement cbcDecrypt"
