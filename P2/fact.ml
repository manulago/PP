let rec fact = function
0 -> 1
| n -> n * fact (n - 1)

let tamanho = Array.length Sys.argv
let comando = 
	if tamanho <> 2 then print_endline ("No ha introducido los datos correctamente")
	else print_endline (string_of_int(fact(int_of_string(Array.get Sys.argv(1)))))
