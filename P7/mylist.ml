let hd = function
	h::_ -> h |
	[] -> raise (Failure "hd")
	

let tl = function
	_::h -> h |
	[] -> raise (Failure "tl") 
	
let rec length = function
	_::h -> length h + 1 |
	[] -> 0

	   
let rec compare_lengths x y = match x,y with
	[],[] -> 0 |
	_::t, _::f -> compare_lengths t f |
	[],_ -> -1 |
	_,[] -> 1


let rec nth list x = match x,list with 
	x,_ when x < 0 -> raise (Invalid_argument "nth") 
	| _,[] -> raise (Invalid_argument "nth")
	| 0,h::_ -> h
	| x,_::t -> nth t (x - 1)


let rec append x1 x2 = match x1,x2 with
	[],_ -> x2
	| _,[] -> x1
	| h::t,_ -> h::append t x2


let rec find x = function
     [] -> raise (Not_found)
     | h::t -> if x h then h else find x t


	
let rec for_all x = function
	[] -> true
	| h::t -> x h && for_all x t
	
	
let rec exists x = function
	[] -> false
	| h::t -> x h || exists x t
	

let rec mem x = function
    [] -> false
    | h::t -> if (x = h) then true
			else (mem x t);;



let rec filter x = function
    [] -> []
    | h::t -> if (x h) then h::(filter x t)
			else (filter x t);;


let find_all = filter;;



let rec partition x = function
    [] -> ([],[])
    | h::t -> let (si,no) = partition x t
			in if (x h) then (h::si,no)
				else (si,h::no);;


let rec split = function
    [] -> ([],[])
    | (h1,h2)::t -> let t1,t2 = split t in
		h1::t1,h2::t2;;


let rec combine x1 x2 =
    match (x1,x2) with
        [], [] -> []
        | h1::t1, h2::t2 -> (h1,h2) :: (combine (t1) (t2))
        | _ -> raise (Invalid_argument "combine");;



let rec rev = function
    [] -> []
    | h::t -> append (rev t) [h];;


let init n f= 
    if n<0 then raise (Invalid_argument "init")
    else let rec aux acc i=
        if i=n then rev acc
        else aux (f i::acc) (i+1)
    in aux[] 0;;


let rev_append l1 l2 =
    if l1=[] then []
    else append (rev l1) l2;;


let rec concat = function
    [] -> []
    | h::t -> append h (concat t);;


let flatten = concat;;


let rec map f = function
    [] -> []
    | h::t -> (f h) :: (map f t);;


let rev_map f l = rev (map f l);;


let rec map2 f l1 l2 =
    if (length l1 != length l2)
        then raise (Invalid_argument"map2")
    else if (length l1 == 0) then []
    else (f(hd l1)(hd l2))::map2 f (tl l1)(tl l2);;


let rec fold_left f a = function
    [] -> a
    | h::t -> fold_left f (f a h) t;;


let rec fold_right f l a =
    match l with
        [] -> a
        | h::t -> f h (fold_right f t a);;
