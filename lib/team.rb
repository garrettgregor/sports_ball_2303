class Team
  attr_reader :roster,
              :total_value

  def initialize(name, city)
    @roster = []
    @total_value = 0
    #might want to add total cost array to shovel in total cost from player when pulling up the add player method
  end

  def player_count
    roster.length
  end
  
  def add_player(player)
    roster << player
    @total_value += player.total_cost # does this only work when adding the @? If there are more than 2 lines then you need to include?
  end

  def long_term_players
    roster.find_all do |long|
      long.contract_length > 24
    end
  end
  
  def short_term_players
    return_value = roster.find_all do |short|
      short.contract_length <= 24
    end
    return_value.sort_by { |player| player.contract_length }
  end
end