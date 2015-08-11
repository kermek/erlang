-module(app_2_child).

-export([start_link/0, hi/0, listen/0]).

start_link() ->
	{ok, spawn_link(?MODULE, listen, [])}.

hi() ->
	io:format("worker started...~n").

listen() ->
	receive
		_-> ok
	end.