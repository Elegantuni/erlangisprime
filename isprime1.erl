-module(isprime1).
-export([start/1, listFind/2]).
-import(math, [sqrt/1]).

listFind(Element, List) ->
	  lists:member(Element, List).

	start(A) ->
	X = lists:seq(2, trunc(math:ceil(math:sqrt(A)))), 
	U = lists:map(fun(Y) -> A rem Y end, X),
	W = listFind(0, U),
	not(W).
	

