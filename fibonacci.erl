-module(fibonacci).
-export([generate_fib_sequence/1, fib/1]).

% Function to generate Fibonacci sequence up to N
generate_fib_sequence(N) when N > 0 ->
    generate_fib_sequence(N, 1, 0, []).

generate_fib_sequence(0, _, _, Acc) ->
    lists:reverse(Acc);
generate_fib_sequence(N, Current, Previous, Acc) when N > 0 ->
    generate_fib_sequence(N - 1, Current + Previous, Current, [Current | Acc]).

fib(N) when N > 0 ->
    fib(N, 1, 0).

fib(1, A, _) ->
    A;
fib(N, A, B) when N > 1 -> % Removed extra 'when' clause
    fib(N - 1, B, A + B).