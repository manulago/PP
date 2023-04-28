false && (2 / 0 > 0);;
(*Dará falso, ya que el primer componente es falso, por lo que el segundo
componente no se opera, porque la función booleana AND será siempre falsa, ya que
si un elemento es falso, la función AND será falsa.*)


(*true && (2 / 0 > 0);;*)
(*No se podrá ejecutar, ya que se comprobará que el segundo elemento sea también
verdadero, pero al ser una división entre cero, esta no podrá ser ejecutada.*)


true || (2 / 0 > 0);;
(*Dará verdadero, ya que el primer componente es verdadero, por lo que el segundo
componente no se opera, porque la función booleana OR será siempre verdadera, ya que
si un elemento es verdadero, la función OR será verdadera.*)


(*false || (2 / 0 > 0);;*)
(*No se podrá ejecutar, ya que se comprobará que el segundo elemento sea también
falso, pero al ser una división entre cero, esta no podrá ser ejecutada.*)


let con b1 b2 = b1 && b2;;
(*Se asigna al valor con una comparación de booleano AND entre dos variables que son
b1 y b2.*)


let dis b1 b2 = b1 || b2;;
(*Se asigna al valor con una comparación de booleano OR entre dos variables que son
b1 y b2.*)


(*con (1 < 0) (2 / 0 > 0);;*)
(*No se podrá ejecutar, ya que se comprobará que el segundo elemento sea también
falso, pero al ser una división entre cero, esta no podrá ser ejecutada.*)


(1 < 0) && (2 / 0 > 0);;
(*Dará falso, ya que el primer componente es falso, por lo que el segundo
componente no se opera, porque la función booleana AND será siempre falsa, ya que
si un elemento es falso, la función AND será falsa.*)


(*dis (1 > 0) (2 / 0 > 0);;*)
(*No se podrá ejecutar, ya que se comprobará que el segundo elemento sea también
verdadero, pero al ser una división entre cero, esta no podrá ser ejecutada.*)

(1 > 0) || (2 / 0 > 0);;
(*Dará verdadero, ya que el primer componente es verdadero, por lo que el segundo
componente no se opera, porque la función booleana OR será siempre verdadera, ya que
si un elemento es verdadero, la función OR será verdadera.*)


