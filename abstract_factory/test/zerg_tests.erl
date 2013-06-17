-module(zerg_tests).

-include_lib("eunit/include/eunit.hrl").

-include("starcraft.hrl").

generate_zerg_race_test() ->
    Race = zerg,
    Species = Race:generate_species(),
    ?assertEqual(zerg, Species#species.race).

generate_zerg_base_building_test() ->
    Race = zerg,
    Species = Race:generate_species(),
    ?assertEqual(hatchery, Species#species.base_building).

generate_zerg_worker_test() ->
    Race = zerg,
    Species = Race:generate_species(),
    ?assertEqual(drone, Species#species.worker_unit).

