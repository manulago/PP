();;
(*No ocurre nada, solo se imprime en pantalla ambos parentesis*)


2 + 5 * 3;;
(*Devolverá un entero = 17*)


1.0;;
(*Devolverá un numero flotante*)


(*1.0 * 2;;*)
(*No compilará ya que hay un error de incompatibilidad de tipos,
ya que no se puede utilizar un producto de enteros para un tipo float, es un error sintactico*)


(*2 - 2.0;;*)
(*Ocurre lo mismo que en el caso anterior, no se puede usar una resta de tipo int
con un numero tipo float*)


(*3.0 + 2.0;;*)
(*No se pueden sumar dos float con un operando de tipo int*)


5 / 3;;
(*Devolverá un tipo int = 1, puesto que los enteros no tienen decimales*)


5 mod 3;;
(*Dará el resto de dividir 5 entre 3*)


3.0 *. 2.0 ** 3.0;;
(*Primero se ejecuta la operación de doble asterisco, donde 2 se eleva a 3, resultado que después
se multiplica por 3, devolviendo un float*)


(*3.0 = float_of_int 3;;*)
(*Un igual solo compara dos expresiones, en este caso la operación es verdadera, ya que compara
3.0 en float con 3.0 en float*)


(*sqrt 4;;*)
(*La función sqrt pide un tipo float, sin embargo se le entrega un tipo int, es un error sintactico*)


int_of_float 2.1 + int_of_float (-2.9);;
(*Dará como resultado 0, puesto que únicamente se obtiene la parte entera del tipo float,
lo que sería 2-2, devolviendo 0 en formato int*)


truncate 2.1 + truncate (-2.9);;
(*Se realiza un redondeo por truncación, aunque en este caso se devuelve 0 en formato int*)


floor 2.1 +. floor (-2.9);;
(*La función floor redondea por aproximación ambos enteros, dando como resultado -1 en formato float*)


(*ceil 2.1 +. ceil -2.9;;*)
(*La función ceil devuelve un tipo float. Si  fuese ceil f, ceil devolvería un numero entero
igual o mayor a f, en formato float. En este caso no funciona porque -2.9 está sin parentesis.*)


2.0 ** 3.0 ** 2.0;;
(*Eleva 3 a 2, dando 9, y luego eleva 2 a 9, dando 512 en float*)


'B';;
(*Devuelve un tipo char, que es B*)


int_of_char 'A';;
(*Devuelve el valor en int de A en la tabla ASCII*)


char_of_int 66;;
(*Devuelve una letra en formato char que tiene el valor 66 en formato ASCII*)


Char.code 'B' ;;
(*Devuelve el valor en int de B en la tabla ASCII*)


Char.chr 67;;
(*Devuelve la letra en char que equivale a la posición 67 de la tabla ASCII*)


'\067';;
(*Devuelve la letra en formato char correspondiente a la posición 67 en la tabla ASCII*)


Char.chr (Char.code 'a' - Char.code 'A' + Char.code 'M');;
(*Devuelve la letra que ocupa la posición en la tabla ASCII resultante de la operación
de sumar la posición de a menos la posición de A más la posición de M*)


"this is a string";;
(*Devuelve la cadena escrita entre comillas en formato string*)


String.length "longitud";;
(*Cuenta el numero de caracteres que tiene una cadena y lo devuelve en formato int*)


(*"1999"+"1";;*)
(*No se puede usar el operando de suma de enteros para dos char, es un error sintactico*)


"1999" ^ "1";;
(*Añade al final de la primera cadena la segunda cadena*)


int_of_string "1999" + 1;;
(*Convierte la cadena 1999 a int con valor 1999 y le suma 1,
dando como resultado 2000 en formato int*)


"\064\065";;
(*Escribe las posiciones 064 y 065 de la tabla ASCII una cadena*)


string_of_int 010;;
(*Escribe 010 en una cadena en formato string*)


not true;;
(*Escribir not true es equivalente a false*)


true && false;;
(*Realiza la operación lógica AND, devolviendo false al realizar true AND false*)


true || false;;
(*Realiza la operación lógica OR, devolviendo true al realizar true OR false*)


(1 < 2) = false;;
(*Se compara una comparación con false, la cual es falsa
porque 1 es menor que dos, lo que da true y es distinto de false*)


"1" < "2";;
(*Compara el valor en ASCII de uno con 2, devolviendo true, ya que 1 es menor*)


2 < 12;;
(*Se realiza una comparación que devuelve true, porque 2 es menor que 12*)


"2"<"12";;
(*Se realiza una comparación que devuelve false, ya que caracter a caracter
según los valores de la tabla ASCII.Como 1 tiene menos valor que 2 en la tabla ASCII, es falso*)


"uno" < "dos";;
(*Se realiza una comparación que devuelve false, ya que caracter a caracter
según los valores de la tabla ASCII. Como d tiene menos valor que u en la tabla ASCII, es falso*)


if 3 = 4 then 0 else 4;;
(*Compara 3 con 4, si son iguales devuelve 0, sino 4*)


if 3 = 4 then "0" else "4";;
(*Si 3 igual a 4, devuelve una cadena que pone "0", sino devuelve una que pone "4"*)


(*if 3 = 4 then 0 else "4";;*)
(*El tipo de argumento que devuelve debe ser igual
en el then como en el else, se trata de un error sintactico.*)


(if 3 < 5 then 8 else 10) + 4;;
(*Si 3 es menor que 5, el bucle devuelve 8, sino 10.
Como es menor, devuelve 8, y se suma 4 en formato int*)


2.0 *. asin 1.0;;
(*Multiplica dos por el arcoseno de 1, que da el numero pi en formato float*)


sin (2.0 *. asin 1.0 /. 2.) ;;
(*Se realiza el seno de la operación anterior entre 2, lo que devuelve 1 en formato float*)


function x -> 2 * x;;
(*Crea una función donde el valor que se introduzca después pase a ser multiplicado por dos*)


(function x -> 2 * x) (2 + 1);;
(*Introduzce en el valor de x la suma 2+1 que aparece después de la función, devolviendo
6 en formato int*)


let x = 1;;
(*Define en la variable x el valor int 1*)


let y = 2;;
(*Define en la variable y el valor int 2*)


x - y;;
(*Resta el valor guardado en y (2) al valor guardado en x (1), devolviendo el int -1*)


let x = y in x - y;;
(*EL comando in se utiliza para que solo en este determinado caso x tome el valor y.
Tras realizarse la operación, x vuelve a su valor original. Por ello esta operación devuelve
un cero en formato int*)


x - y;;
(*Vuelve a devolver -1 ya que tanto el valor de x(1) como el de y (2) no ha sido modificado*)


(*z;;*)
(*En este caso el programa no llega a compilar, ya que la variable z no existe*)


let z = x * y;;
(*Se le asigna a la variable z el valor de la suma de x + y, que es 3, en formato int*)

z;;


let x = 5;;
(*Se modificca el valor de x, que pasa de 1 a 5*)


z;;
(*Se muestra el valor asignado a la variable z, que es 3*)


let y = 5 in x + y;;
(*Devuelve 10 en formato int, ya que en este caso se asigna el valor 5 a la variable y;
pero únicamente en esta operación*)


x + y;;
(*Devuelve 7 en formato int, ya que la y no ha sido modificada*)


let x = x + y in let y = x * y in x + y + z;;
(*Se modifica temporalmente el valor de x para que pase a ser la suma de x+y,
que es 7. Después se modifica el valor de y temporalmente para que pase a ser
x por 2, que es 14. Por último estos dos valores modificados se suman al valor
de z que es 3. Esta operación da 24 en formato int*)


x + y + z;;
(*Las variables han vuelto a su valor original, por lo que la suma de 5 + 2 + 3
da como resultado 10 en formato int.*)


int_of_float;;
(*Define dicha función, que es este caso te indica que tienes que introducir un número
tipo float y devolverá una expresión tipo int*)


float_of_int;;
(*Define dicha función, que es este caso te indica que tienes que introducir un número
tipo int y devolverá una expresión tipo float*)


int_of_char;;
(*Define dicha función, que es este caso te indica que tienes que introducir un carcacter
tipo char y devolverá una expresión tipo int, siendo este el valor en la tabla ASCII.*)


char_of_int;;
(*Define dicha función, que es este caso te indica que tienes que introducir un numero
tipo int y devolverá una expresión tipo char, siendo este el valor del numero en la tabla ASCII.*)


abs;;
(*Define dicha función, que es este caso te indica que tienes que introducir un numero
tipo int y devolverá una expresión tipo int*)


sqrt;;
(*Define dicha función, que es este caso te indica que tienes que introducir un numero
tipo float y devolverá una expresión tipo float*)


truncate;;
(*Define dicha función, que es este caso te indica que tienes que introducir un numero
tipo float y devolverá una expresión tipo int*)


ceil;;
(*Define dicha función, que es este caso te indica que tienes que introducir un numero
tipo float y devolverá una expresión tipo float*)


floor;;
(*Define dicha función, que es este caso te indica que tienes que introducir un numero
tipo float y devolverá una expresión tipo float*)


Char.code;;
(*Define dicha función, que es este caso te indica que tienes que introducir un caracter
tipo char y devolverá una expresión tipo int, su valor en la tabla ASCII*)


Char.chr;;
(*Define dicha función, que es este caso te indica que tienes que introducir un numero
tipo int y devolverá una expresión tipo char, su letra en la tabla ASCII*)


int_of_string;;
(*Define dicha función, que es este caso te indica que tienes que introducir una
cadena tipo string donde solo haya numeros y devolverá una expresión tipo int,
que será el valor de dicho número*)


string_of_int;;
(*Define dicha función, que es este caso te indica que tienes que introducir un
numero tipo int y devolverá una expresión tipo string,
que será el número en una cadena*)


String.length;;
(*Define dicha función, que es este caso te indica que tienes que introducir una cadena
tipo string y devolverá una expresión tipo int, que será su longitud*)


let f = function x -> 2 * x;;
(*Se asigna a la variable f la función que se indica después, donde el valor x se
multiplicará por 2*)


f (2 + 1);;
(*Se asigna al valor x el resultado de la operación 2+1, devolviendo como resultado
6 en formato int*)


f 2 + 1;;
(*Se asigna al valor x el 2+1, devolviendo como resultado
5 en formato int*)


let n = 1;;
(*Asigna a la variable n el valor 1 en formato int*)


let g x = x + n;;
(*Asigna a la variable g el valor de la función que suma x al valor de n, que es 1*)


g 3;;
(*Suma a 3 el valor de n, que es uno. Como resultado da 4, que devuelve el formato int*)


let n = 5;;
(*Asigna a la variable n el valor 5 en formato int*)


g 3;;
(*Vuelve a devolver 4 como resultado, ya que el valor de n en la variable g no ha sido modificado*)


let l = function r -> let pi = 2.0 *. asin 1.0 in 2.0 *. pi *. r;;
(*Le asigna a la variable l el valor de la funcion r, que asigna a la variable pi el valor en float
de 2 por el arco seno de 1. Este valor de pi uniacamente se asignará en la operación final, donde multiplica pi por dos y por r en formato float. Por ello la salida de esta función
será en tipo float*)


l 3.0;;
(*Se asignará al valor r de la función l el valor 3.0, dando como salida un numero en formato
float, el 18.8495559215387587*)


(*l 2;;*)
(*No funcionará ya que la función l debe recibir un numero de tipo float*)


(*pi;;*)
(*No funcionará ya que a la variable pi no se le ha asignado ningún valor*)


let pi = 2.0 *. asin 1.0;;
(*Se asigna a la variable pi el valor de la operación de multiplicar 2 por el 
arcoseno de 1, lo que da como resultado el numero pi en formato float*)


pi;;
(*Devuelve en formato float el valor del numero pi, obtenido por la multiplicación de
2 por el arcoseno de 1*)


let v = function r -> pi *. r ** 2.0;;
(*Se le asigna a la variable  v la función r, que multiplica pi por r por 2 en
formato float*)


v 2.0;;
(*Se sustituye el valor de 2 por la r en la función v, calculando 2 por 2 por pi, que
devuelve 12.5663706143591725 en formato float.*)
