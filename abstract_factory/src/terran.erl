-module(terran).

-export([generate_species/0]).

-include("starcraft.hrl").

generate_species() ->
    #species{race = terran,
	     base_building = command_center,
	     worker_unit = scv}.

