-module(starcraft).

-export([start/1
	]).

-include("starcraft.hrl").

-define(TERRAN, terran).
-define(ZERG, zerg).
-define(PROTOSS, protoss).

start(Race) when Race == ?TERRAN orelse
		 Race == ?ZERG orelse
		 Race == ?PROTOSS ->
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
