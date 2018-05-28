require ("minitest/autorun")
require_relative ("../sports_team")

class SportsTeamTest < Minitest::Test

# def test_team_name
#   arr = ["John", "Paul", "George", "Ringo"]
#   team = Team.new("Besiktas", arr, "Can")
#   assert_equal("Besiktas", team.get_team_name())
#
# end
#
# def test_player_names
#   arr = ["John", "Paul", "George", "Ringo"]
#   team = Team.new("Besiktas", arr, "Can")
#   assert_equal(arr, team.get_player_names())
#
# end
#
# def test_coach_name
#   arr = ["John", "Paul", "George", "Ringo"]
#   team = Team.new("Besiktas", arr, "Can")
#   assert_equal("Can", team.get_coachs_name())
# end
#
# def test_coach_name_updater
#   arr = ["John", "Paul", "George", "Ringo"]
#   team = Team.new("Besiktas", arr, "Can")
#   team.set_coachs_name("Pete")
#   assert_equal("Pete", team.get_coachs_name())
#
# end

def test_team_name
  arr = ["John", "Paul", "George", "Ringo"]
  team = Team.new("Besiktas", arr, "Can")
  assert_equal("Besiktas", team.team_name())

end

def test_player_names
  arr = ["John", "Paul", "George", "Ringo"]
  team = Team.new("Besiktas", arr, "Can")
  assert_equal(arr, team.players())

end

def test_coach_name
  arr = ["John", "Paul", "George", "Ringo"]
  team = Team.new("Besiktas", arr, "Can")
  assert_equal("Can", team.coach())
end

def test_coach_name_updater
  arr = ["John", "Paul", "George", "Ringo"]
  team = Team.new("Besiktas", arr, "Can")
  team.coach="Brian"
  assert_equal("Brian", team.coach())

end

def test_player_adder
    arr = ["John", "Paul", "George", "Ringo"]
    team = Team.new("Besiktas", arr, "Can")
    team.player_adder("Pete")
    assert_equal(true, team.players.include?("Pete"))
end

def test_player_finder
arr = ["John", "Paul", "George", "Ringo"]
team = Team.new("Besiktas", arr, "Can")
assert_equal(false, team.player_finder("Freddie"))
end

def test_team_points__win
arr = ["John", "Paul", "George", "Ringo"]
team = Team.new("Besiktas", arr, "Can")
team.match_result("win")
assert_equal(1, team.points)
end

def  test_team_points__lose
  arr = ["John", "Paul", "George", "Ringo"]
  team = Team.new("Besiktas", arr, "Can")
  team.match_result("lose")
  team.match_result("lose")
  team.match_result("lose")
  assert_equal(-3, team.points())
end

end
  # Make a class to represent a Team that has the properties Team name (String), Players (array of strings) and a Coach (String).
  # For each property in the class make a getter method than can return them.



  # Create a method that takes in whether the team has won or lost and updates the points property for a win.
