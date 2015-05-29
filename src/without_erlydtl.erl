%% Feel free to use, reuse and abuse the code in this file.

%% @doc Hello world handler.
-module(without_erlydtl).

-export([init/2]).

init(Req, Opts) ->
    Req2 = cowboy_req:reply(200, [{<<"content-type">>, <<"text/plain">>}], 
                            <<"without_erlydtl">>, Req),
	{ok, Req2, Opts}.
