class Team
  attr_reader :roster,
              :player_count

  def initialize(name, city)
    @roster = []
    @player_count = roster.length
  end
end