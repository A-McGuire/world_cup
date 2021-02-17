class WorldCup
  attr_reader :year,
              :teams
  def initialize(year, teams)
    @year = year
    @teams = teams
  end

  def active_players_by_position(position)
    not_eliminated = teams.reject do |team|
      team.eliminated? == true
    end

    not_eliminated.map do |team|
      team.players_by_position(position)[0]
    end
  end

  def all_players_by_position
    all_players = teams.flat_map do |team|
      team.players
    end
    
    all_players.group_by do |player|
      player.position
    end
  end
end
