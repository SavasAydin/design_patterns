-module(terran_tests).

-include_lib("eunit/include/eunit.hrl").

-include("starcraft.hrl").


generate_terran_race_test() ->
    Race = terran,
    Species = Race:generate_species(),
    ?assertEqual(terran, Species#species.race).

generate_terran_base_building_test() ->
    Race = terran,
    Species = Race:generate_species(),
    ?assertEqual(command_center, Species#species.base_building).

generate_terran_worker_test() ->
    Race = terran,
    Species = Race:generate_species(),
    ?assertEqual(scv, Species#species.worker_unit).

	       
