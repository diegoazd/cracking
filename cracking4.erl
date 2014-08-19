-module(cracking4).
-compile(export_all).

replace(Cadena) ->
    CadenaEscapada = findEmptys(Cadena, []),
    lists:flatten(lists:reverse(CadenaEscapada)).

findEmptys([], Acc) ->
  Acc;

findEmptys([H|Tail], Acc) when H =/= 32->
    findEmptys(Tail, [H|Acc]);

findEmptys([H|Tail], Acc) ->
    findEmptys(Tail, ["%20"|Acc]).

foo([H|T]) ->
  io:format("~n~p",[H]),
  io:format("~n~p",[T]).
  
