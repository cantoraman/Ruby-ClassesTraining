class Team
attr_reader(:team_name, :players, :points)
attr_accessor(:coach)

def initialize (team_name, players, coach)

  @team_name = team_name
  @players = players
  @coach = coach
  @points = 0
end
#
# def get_team_name ()
# return @team_name
# end
#
# def get_player_names ()
# return @players
# end
#
# def get_coachs_name ()
# return @coach
# end
#
# def set_coachs_name(new_name)
# @coach = new_name
# end

def player_adder (new_player)
  players << new_player
end

def player_finder (player)
  return players.include?(player)
end

def match_result(result)

  if (result == "win")
    @points += 1
  elsif (result == "lose")
    @points -= 1
  end

end


end
