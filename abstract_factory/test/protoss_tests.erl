-module(protoss_tests).

-include_lib("eunit/include/eunit.hrl").

-include("starcraft.hrl").

generate_protoss_race_test() ->
    Race = protoss,
    Species = Race:generate_species(),
    ?assertEqual(protoss, Species#species.race).

generate_protoss_base_building_test() ->
    Race = protoss,
    Species = Race:generate_species(),
    ?assertEqual(nexus, Species#species.base_building).

generate_protoss_worker_test() ->
    Race = protoss,
    Species = Race:generate_species(),
    ?assertEqual(probe, Species#species.worker_unit).

