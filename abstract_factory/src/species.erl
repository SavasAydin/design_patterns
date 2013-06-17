-module(species).

-export([generate_race/1]).

generate_race(Race) ->
    Race:generate_species().

