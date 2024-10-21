(*comentario*)
(*Tipos de dados: int, real, char, string*)
val x = 10;
val x = 10.5;
val x = #"c";
val x = "hello";
(*Concatenação: *)
"Rhayssa" ^ " " ^ "Rosa";

val dobro = (fn x => x* 2);
dobro 7;

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

val names = ["Carlos", "Andre", "Joao", "Antonio", "Roberto"];

List.nth(names, 2);
val x = [(1,"carlos"), (2, "andré")];
val data = List.nth(x, 1);
#2 data;

val tuple = (3, "Joao");
#2 tuple;

(*DATA TYPES*)
(*Tuples - Coleções ordenadas*)
val person = ("Wagner", 39, 44, 96, 1.82);
val (name, age, footSize, weight, height) = person;
#1 person;

(*Records - Coleções não ordenadas com campos nomeados*)
type person = {name: string, age: int};
val xpto = {name = "Bernado", age = 20};
#name xpto;
#age xpto;


fun quadrado_soma (x, y) = 
  let
    val soma = x + y
  in
    soma * soma
 end;
quadrado_soma (5, 3);



(*Exercecício: *)
(*
1 - CRIE UMA FUNCAO CHAMADA HIPOTENUSA QUE CALCULE O VALOR DA HIPOTENUSA DADO OS DOIS LADOS DE UM TRIANGULO RETANGULO COMO PARAMETRO
2 - CRIE UMA FUNÇÂO CHAMADA POTENCIA QUE CALCULE X^N UTILIZANDO APENAS CASAMENTO DE PADRÃO E RECURSÃO
3 - CRIE UMA FUNCAO CHAMADA SOMA QUE RETORNE A SOMA DE TODOS OS ELEMENTOS DE UMA LISTA
4 - CRIE UMA FUNÇÃO CHAMADA REVERTER QUE RECEBA UMA LISTA E RETORNE A LISTA REVERSA.
*)

(*1*)
fun hipotenusa(cat1: real, cat2: real): real =
   Math.sqrt((cat1 * cat1) + (cat2 * cat2));

(*2*)
fun potencia (x,0) = 1
  | potencia (x, n) = x * potencia(x, n-1);

potencia (3,0);

(*3*)


(*
1. <3
2.
3. <3
4. <3
5.
bonus. + || -
*)

(*Questão 1: Implemente uma função recursiva que calcule a potencia de um número por outro (nk)*)

fun pow(base: int, expoente: int): int =
  if expoente = 0 then 1
  else base * pow(base, expoente - 1);

pow(7, 3);

(*Questão 2: Crie uma função chamada aplicacaoTripla que receba um funcao f como parametro e um valor x e retorne o resultado de três aplicações da função f sobre o valor x.*)



(*Questão 3: Crie uma função "makeMultiplier" que receba um inteiro n e retorne um função que multiplique uma entrada por n.*)

fun makeMultiplier(n: int): int -> int = 
  fn b => n * b;

val multipliethree = makeMultiplier(3);
multipliethree 7;

(*Questão 4: Crie uma função chamada "sinal" que retorne "positivo", "negativo" ou "zero" dependendo do valor de uma entrada inteira.*)

fun sinal(n: int): string =
  if n > 0 then "Positivo"
  else if n < 0 then "Negativo"
  else "Zero";
sinal ~2;
sinal 0;
sinal 4;

(*Questão 5: Crie uma função length que calcule o tamanho de uma lista usando casamento de padrões.*)



(*DESAFIO: Dada uma tupla (x,y), escreva uma função chamada "distanciaDaOrigem" que calcule a distancia do ponto x, y para a origem (0,0). fun distanciaDaOrigem(point: real * real): real = ...*)

fun distanciaDaOrigem(a: real, b: real): real =
  Math.sqrt((a * a) + (b * b));
  
distanciaDaOrigem (3.0, 4.0);