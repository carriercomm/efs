-module(gen_servre_template).
-behaviour(gen_server).
-export([init/1, handle_call/3, handle_cast/2, 
        handle_info/2, terminate/2, code_change/3]).
-compile(export_all).

-record(state, {}).

start_link() ->
    gen_server:start_link({local,efs_fdtable}, ?MODULE, [], []).

%%-----------------------------------------------------------
%% API
%%-----------------------------------------------------------

%%-----------------------------------------------------------
%% callbacks
%%-----------------------------------------------------------
init([]) ->
    {ok, #state{}}.

handle_call(_Request, _From, State) ->
    Reply = ok,
    {reply, Reply, State}.


handle_cast(_Msg, State) ->
    {noreply, State}.

handle_info(_Info, State) ->
    {noreply, State}.

terminate(_Reason, _State) ->
    ok.

code_change(_OldVsn, State, _Extra) ->
    {ok, State}.

%%-----------------------------------------------------------
%% Internal functions
%%-----------------------------------------------------------




