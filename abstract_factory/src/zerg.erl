-module(zerg).

-export([generate_species/0]).

-include("starcraft.hrl").

generate_species() ->
    #species{race = zerg,
	     base_building = hatchery,
	     worker_unit = drone}.

