%% @author yuji.kanazawa
%% @doc @todo Add description to erl_base_handler.


-module(erl_base_handler).

%% ====================================================================
%% API functions
%% ====================================================================
-export([init/2]).


%% ====================================================================
%% Internal functions
%% ====================================================================
init(Req, Opts) ->
  Req2 = cowboy_req:reply(200, [
    {<<"content-type">>, <<"application/json">>}
  ], <<"{'message': 'Hello world!'}">>, Req),
  {ok, Req2, Opts}.
