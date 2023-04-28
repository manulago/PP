let rec curry f = function a -> function b -> f (a, b)

let rec uncurry f = fun (a, b) -> f a b;;


uncurry (+)
(*int * int -> int = <fun>*)

let sum = (uncurry (+));;
(*val sum : int * int -> int = <fun>*)

(*sum 1;;*)
(*Error: This expression has type int but an expression was expected of type int * int*)


sum (2,1)
(*int = 3*)

let g = curry (function p -> 2 * fst p + 3 * snd p)
(*val g : int -> int -> int = <fun>*)

(*g (2,5);;*)
(*Error: This expression has type 'a * 'b but an expression was expected of type int*)
let h = g 2;;
(*val h : int -> int = <fun>*)

h 1, h 2, h 3
(* int * int * int = (7, 10, 13)*)

let comp a b c = a (b c)

let f = let square x = x * x in comp square ((+) 1)  
(*val f : int -> int = <fun>*)
let rec curry f = function a -> function b -> f (a, b);;

f 1, f 2, f 3

(* int * int * int = (4, 9, 16)*)

(*let i a = a

let j (a,b) = a

let k (a,b) = b

let l a = [a]*)
