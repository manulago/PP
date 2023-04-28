let rec fib n =
if n <= 1 then n
else fib (n-1) + fib (n-2);;

let rec bucle x =
    if x < 1
    then "0"
    else bucle(x-1) ^"\n"^string_of_int(fib(x));;	

let tamano = Array.length Sys.argv;;

let rec imprimir = 
    if tamano = 2
    then (bucle (int_of_string(Sys.argv.(1))))
    else ("Los datos no se han introducido correctamente") in
    print_endline imprimir;;
