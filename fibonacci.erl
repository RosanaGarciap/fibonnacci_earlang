-module(fibonacci).
-export([fibo/1]).
-export([list_fibo/1]).

fibo(0) -> 1;
fibo(N) when N < 0 -> 
    io:format("La secuencia Fibonacci no acepta valores negativos");
fibo(N) when N == 1 -> 1;
fibo(N) when N > 1 -> fibo(N-2) + fibo(N-1).


list_fibo(0) -> [1];
list_fibo(N) ->
      list_fibo(N-1) ++ [fibo(N)].