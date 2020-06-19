%%%-------------------------------------------------------------------
%% @doc negar public API
%% @end
%%%-------------------------------------------------------------------

-module(negar_app).

-behaviour(application).

-export([start/2, stop/1]).

-include_lib("kernel/include/logger.hrl").

start(_StartType, _StartArgs) ->
		?LOG_INFO("Salam LOGGER ..."),
    negar_sup:start_link().

stop(_State) ->
    ok.

%% internal functions
