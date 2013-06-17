-module(protoss).

-export([generate_species/0]).

-include("starcraft.hrl").

generate_species() ->
    #species{race = protoss,
	     base_building = nexus,
	     worker_unit = probe}.

