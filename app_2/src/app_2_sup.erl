-module(app_2_sup).
-export([start_link/0, start_child/0, init/1]).

-behaviour(supervisor).

start_link() ->
  supervisor:start_link({local, ?MODULE}, ?MODULE, []).

start_child() ->
	io:format("~p~n", [supervisor:check_childspecs([app_2_child, worker])]),
  supervisor:start_child(app_2_sup,
  											{app_2_child, {app_2_child, start_link, []},
  											permanent, brutal_kill, worker, [app_2_child]}).  

init(_Args) ->
	{ok, { {one_for_one, 1, 60}, []} }.