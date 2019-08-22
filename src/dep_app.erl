%%%-------------------------------------------------------------------
%% @doc dep public API
%% @end
%%%-------------------------------------------------------------------

-module(dep_app).

-behaviour(application).

-include("include/some_file.hrl").

-export([start/2, stop/1]).

start(_StartType, _StartArgs) ->
    N = ?SOME_DEFINE,
    dep_sup:start_link().

stop(_State) ->
    ok.

%% internal functions
