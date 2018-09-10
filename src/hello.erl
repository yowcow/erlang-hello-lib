-module(hello).

%% API exports
-export([
    message/1,
    add/2
]).

%%====================================================================
%% API functions
%%====================================================================
-type name() :: binary().
-type message() :: binary().

-spec message(name()) -> message().
message(Name) ->
    concat_binaries(<<"Hello, ">>, Name).

-spec add(integer(), integer()) -> integer().
add(A, B) ->
    A + B.

%%====================================================================
%% Internal functions
%%====================================================================
-spec concat_binaries(binary(), binary()) -> binary().
concat_binaries(A, B) ->
    <<A/binary, B/binary>>.
