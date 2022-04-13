-module(caesar).
-export([encrypt/2, decrypt/2, solve/2]).

rot(Ltr, Shift) when hd(Ltr) >= 65, hd(Ltr) =< 90 ->
    (hd(Ltr) - 65 + Shift) rem 26 + 65;
rot(Ltr, _) ->
    hd(Ltr).

encrypt(Word, Shift) ->
    lists:map(fun(Ltr) -> rot([string:to_upper(Ltr)], Shift) end, Word).

decrypt(Word, Shift) ->
    encrypt(Word, 26 - Shift).

solve(Word, Shift) ->
    lists:foreach(
        fun(X) -> io:format("Shift: ~p\tResult: ~p ~n", [X, decrypt(Word, X)]) end,
        lists:seq(1, Shift)
    ).

%% Done in 1.5 hours
