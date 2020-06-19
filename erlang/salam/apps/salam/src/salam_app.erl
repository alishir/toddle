%%%-------------------------------------------------------------------
%% @doc salam public API
%% @end
%%%-------------------------------------------------------------------

-module(salam_app).

-behaviour(application).

-export([start/2, stop/1]).

start(_StartType, _StartArgs) ->
		io:format("Salam Erlang ...\n"),
    salam_sup:start_link().

stop(_State) ->
    ok.

%% internal functions
