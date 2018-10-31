require 'minitest/autorun'
require 'minitest/pride'
require './team.rb'

class TestTeam < MiniTest::Test

  def test_to_hash
    #arrange
    my_team = Team.new('TeamSuper',2,['Bob', 'Rob', 'Mob']);
    #expected
    actual = my_team.to_hash
    expected = {team_name: 'TeamSuper',
                level: 2,
                points: 0}

    #assert
    assert_equal(expected, actual)
  end

end
