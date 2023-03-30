class Team
  attr_reader :roster,
              :total_value

  def initialize(name, city)
    @roster = []
    @total_value = 0
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

  def details
    @details = {
      "total_value" => self.total_value,
      "player_count" => self.player_count
    }
  end

  def average_cost_of_player
    return_value = total_value / player_count
    return_value.to_s.insert(1,",")
    comma = return_value.to_s.insert(2,",")
    comma.insert(6,",")
    dollars = comma.insert(0,"$")
  end

  def players_by_last_name
    roster.map do |player|
      player.last_name
    end.sort.join(", ")
  end
end