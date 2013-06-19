-module(starcraft_tests).

-include_lib("eunit/include/eunit.hrl").

-include("starcraft.hrl").

should_start_starcraft_with_test_() ->
    {foreach,
     fun setup/0,
     fun cleanup/1,
     [
      fun terran_species/1,
      fun zerg_species/1,
      fun protoss_species/1,
      fun undefined_species/1
     ]}.
      
terran_species(FileHandler) ->
    fun() ->
	    group_leader(FileHandler, self()),
	    starcraft:start(terran),
	    ExpectedResult = <<"Generating terran race\nwith 3 scv and a command_center\n">>,
	    assert_feature(ExpectedResult, stdout)
    end.

zerg_species(FileHandler) ->
    fun() ->
	    group_leader(FileHandler, self()),
	    starcraft:start(zerg),
	    ExpectedResult = <<"Generating zerg race\nwith 3 drone and a hatchery\n">>,
	    assert_feature(ExpectedResult, stdout)
    end.

protoss_species(FileHandler) ->
    fun() ->
	    group_leader(FileHandler, self()),
	    starcraft:start(protoss),
	    ExpectedResult = <<"Generating protoss race\nwith 3 probe and a nexus\n">>,
	    assert_feature(ExpectedResult, stdout)
    end.

undefined_species(FileHandler) ->
    fun() ->
	    group_leader(FileHandler, self()),
	    starcraft:start(undefined),
	    ExpectedResult = <<"Not valid species">>,
	    assert_feature(ExpectedResult, stdout)
    end.

assert_feature(ExpectedResult, File) ->
    ?assertEqual({ok, ExpectedResult}, file:read_file(File)).

setup() ->
    {ok, F} = file:open(stdout, [write]),
    F.

cleanup(F) ->
    file:close(F),
    file:delete(stdout).
