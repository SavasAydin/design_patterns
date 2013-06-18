-module(starcraft).

-export([start/1
	]).

-include("starcraft.hrl").

start(Race) when Race == terran orelse
		 Race == zerg orelse
		 Race == protoss ->
    Species = generate_race(Race),
    start_game(Species);
start(_) ->
    io:format("Not valid species").

start_game(Species) ->
    io:format("Generating ~p race~n"
	      "with 3 ~p "
	      "and a ~p~n",
	      [Species#species.race,
	      Species#species.worker_unit,
	      Species#species.base_building]).

generate_race(Race) ->
    Race:generate_species().
