-module(hello_tests).

-include_lib("eunit/include/eunit.hrl").

hello_test_() ->
    Cases = [
        {<<"hoge">>, <<"Hello, hoge">>},
        {<<"ああ">>, <<"Hello, ああ">>}
    ],
    F = fun({Input, Expected}) ->
        Actual = hello:message(Input),
        ?_assertEqual(Expected, Actual)
    end,
    lists:map(F, Cases).

add_test_() ->
    Cases = [
        {0, 0, 0},
        {0, 1, 1},
        {1, -2, -1}
    ],
    F = fun({A, B, Expected}) ->
        Actual = hello:add(A, B),
        ?_assertEqual(Expected, Actual)
    end,
    lists:map(F, Cases).
