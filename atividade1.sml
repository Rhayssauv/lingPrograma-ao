(*
 * 3. Escreva uma função fourth que recebe uma lista de tipo 'a list e retorna o quarto elemento dessa lista. Não se preocupe com
 * listas menores que quatro elementos.
 *)

fun fourth (w::x::y::z::cont) = z;

fourth ["a", "b", "c", "d", "e"];
fourth[1, 2, 3, 4, 5, 6];

(*
 * 4. Escreva uma função min3 que recebe uma tupla de três inteiros (int * int * int) e retorna o menor
 * valor dessa tupla.
 *)

fun min3 (x: int, y: int, z: int): int =
  if x <= y andalso x <= z then x
  else if y <= x andalso y <= z then y
  else z;

min3 (0, 0, 1);

(*
 * 7. Escreva uma função cycle1 que recebe uma lista e move o primeiro elemento dessa lista para o
 * final. O tipo da função é 'a list -> 'a list.
 *)

fun cycle1 [] = []
  | cycle1 (x::xs) = xs @ [x];

cycle1[0, 1, 2, 3, 4, 5, 5];

(*
 * 8. Escreva uma função sort3 que recebe três números reais e retorna uma lista desses números em
 * ordem crescente.
 *)

fun sort3(x: real, y: real, z: real): real list =
  if x <= y andalso x <= z then 
    if y <= z then [x, y, z]
    else [x, z, y]
  else if y <= x andalso y <= z then 
    if x <= z then [y, x, z]
    else [y, z, x]
  else
    if x <= y then [z, x, y]
    else [z, y, x];

sort3(0.1, 0.2, 4.4);

(*
 * 13. Escreva uma função repeats que recebe uma lista e retorna true se a lista contiver dois
 * elementos consecutivos iguais, ou false caso contrário.
 *)

fun repeats (x::y::cont) =
  if x = y then true
  else repeats (y::cont)
  | repeats _ = false;

repeats [1, 1, 2, 3]; 

(*
 * 16. Escreva uma função compute que recebe um número n e uma função f, e retorna o resultado da aplicação de f ao número n. A
 * função f pode ser uma das funções como square ou double que vimos anteriormente. O tipo da função é (int -> int) -> int -> int.
 *)

fun quadrado(x: int): int = x * x;

fun dobro(x: int): int = x * 2;

fun compute(f: int -> int, n: int): int =
  f(n);

compute(quadrado, 3);
compute(dobro, 9);

(*
 * 19.Escreva uma função max que recebe uma lista de inteiros e retorna o maior valor dessa lista. A função deve falhar se a lista
 * estiver vazia. Utilize recursão para resolver o problema.
 *)

fun max (x::xs) = 
    if xs = [] then x
    else let val m = max xs
         in if x > m then x else m
         end;

max [1, 3, 5, 2, 10, 3, 5];

(*
 * 29. Escreva uma função flatten que recebe uma lista de listas e retorna uma lista contendo todos os elementos das listas
 * internas. Por exemplo, flatten [[1, 2], [3, 4], [5]] deve retornar [1, 2, 3, 4, 5].
 *)

fun flatten [] = []
  | flatten (x::xs) = x @ flatten xs;

flatten [[1, 2], [3, 4], [5]];