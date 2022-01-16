-module(first).

-export([convert/1]).

f2c(F) ->
    5*(F-32)/9.

c2f(C) ->
    9*C/5+32.

convert({T,Value}) -> 
    case T of  
        c ->
            {f, c2f(Value)};
        f ->
             {c, f2c(Value)};
        _ ->
            error
        end.