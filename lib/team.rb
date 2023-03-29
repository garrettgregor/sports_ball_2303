class Team
  attr_reader :roster

  def initialize(name, city)
    @roster = []
  end

  def player_count
    roster.length
  end
  
  def add_player(player)
    roster << player
  end
end