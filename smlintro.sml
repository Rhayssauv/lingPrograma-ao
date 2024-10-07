﻿(*comentario*)
(*Tipos de dados: int, real, char, string*)
val x = 10;
val x = 10.5;
val x = #"c";
val x = "hello";

(*ele imprime a ultima iteração*)
x;

(*Operações aritméticas: -, +, *, div, mod, ~(negativo -)*)
val x = 7 - 5;
val x = 3 + 2;
val x = 3 * 2;
val quociente = 9 div 3;
val resto = 9 mod 3;
val x = ~5;

(*Booleano: comparação (=)*)
x = 6;

(*Função: palavra-chave fun nome_fun (nome_var: tipo): tipo_retorno = bloco de comandos*)
fun add(x: int, y: int): int = x + y;
val r = add(2, 5);

fun fatorial(n: int): int =
  if n = 0 then 1
  else n * fatorial(n-1);

fatorial(6);

(*Higher-Order Functions*)
fun duplaAplicacao(f: int -> int, x: int): int = 
  f(f(x));

fun incremento(y: int): int = y + 1;
val result = duplaAplicacao(incremento, 10);

(*Função que retorna função*)
fun makeAdder(a: int): int -> int = 
  fn b => a + b;

val addFive = makeAdder(5);
val result = addFive(10);

(*Funções Anônimas - Lambadas*)
val quadrado = fn x => x * x;
val result = quadrado(6);

(*Pattern Matching*)
fun parOuImpar(n: int): string =
  case n mod 2 of
    0 => "Par"
  | 1 => "Impar"
  | _ => "Desconhecido";
(*Underline (_), desconhecido*)
val result = parOuImpar(96);

val x = [1,2,3];
val x = [(1,"carlos"), (2, "andré")];

fun sumList(lst: int list): int =
  case lst of
    [] => 0
  | x::xs => x + sumList(xs);

val lista = [];
sumList(lista);
val lista = [10, 5];
sumList(lista);