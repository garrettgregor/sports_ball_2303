require "rspec"
require "./lib/player"
require "./lib/team"

RSpec.describe Team do
  it "exists" do
    team = Team.new("Dodgers", "Los Angeles")

    expect(team).to be_an_instance_of(Team)
  end
  
  it "has a roster" do
    team = Team.new("Dodgers", "Los Angeles")

    expect(team.roster).to eq([])
  end
  
  it "counts the number of players on the roster" do
    team = Team.new("Dodgers", "Los Angeles")

    expect(team.player_count).to eq(0)
  end
  
  it "adds players to the roster" do
    team = Team.new("Dodgers", "Los Angeles")
    player_1 = Player.new("Michael Palledorous" , 1000000, 36)
    player_2 = Player.new("Kenny DeNunez", 500000, 24)
    team.add_player(player_1)
    team.add_player(player_2)

    expect(team.roster).to eq([player_1, player_2])
    expect(team.player_count).to eq(2)
  end
  
  it "defines a long term player" do
    team = Team.new("Dodgers", "Los Angeles")
    player_1 = Player.new("Michael Palledorous" , 1000000, 36)
    player_2 = Player.new("Kenny DeNunez", 500000, 24)
    player_3 = Player.new("Alan McClennan", 750000, 48)
    player_4 = Player.new("Hamilton Porter", 100000, 12)
    team.add_player(player_1)
    team.add_player(player_2)
    team.add_player(player_3)
    team.add_player(player_4)
    
    expect(team.long_term_players).to eq([player_1, player_3])
  end
  
  it "defines a short term player" do
    team = Team.new("Dodgers", "Los Angeles")
    player_1 = Player.new("Michael Palledorous" , 1000000, 36)
    player_2 = Player.new("Kenny DeNunez", 500000, 24)
    player_3 = Player.new("Alan McClennan", 750000, 48)
    player_4 = Player.new("Hamilton Porter", 100000, 12)
    team.add_player(player_1)
    team.add_player(player_2)
    team.add_player(player_3)
    team.add_player(player_4)
    
    expect(team.short_term_players).to eq([player_4, player_2])
  end
  
  it "calculates the cost of all player" do
    team = Team.new("Dodgers", "Los Angeles")
    player_1 = Player.new("Michael Palledorous" , 1000000, 36)
    player_2 = Player.new("Kenny DeNunez", 500000, 24)
    player_3 = Player.new("Alan McClennan", 750000, 48)
    player_4 = Player.new("Hamilton Porter", 100000, 12)
    team.add_player(player_1)
    team.add_player(player_2)
    team.add_player(player_3)
    team.add_player(player_4)
    
    expect(team.total_value).to eq(85200000)
  end
  
  it "holds all details of the team" do
    team = Team.new("Dodgers", "Los Angeles")
    player_1 = Player.new("Michael Palledorous" , 1000000, 36)
    player_2 = Player.new("Kenny DeNunez", 500000, 24)
    player_3 = Player.new("Alan McClennan", 750000, 48)
    player_4 = Player.new("Hamilton Porter", 100000, 12)
    team.add_player(player_1)
    team.add_player(player_2)
    team.add_player(player_3)
    team.add_player(player_4)
    team_details = {
      "total_value" => 85200000, 
      "player_count" => 4
    }
    
    expect(team.details).to eq(team_details)
  end

  describe "Iteration 4" do 
    it "has the average cost of the players" do
      team = Team.new("Dodgers", "Los Angeles")
      player_1 = Player.new("Michael Palledorous" , 1000000, 36)
      player_2 = Player.new("Kenny DeNunez", 500000, 24)
      player_3 = Player.new("Alan McClennan", 750000, 48)
      player_4 = Player.new("Hamilton Porter", 100000, 12)
      team.add_player(player_1)
      team.add_player(player_2)
      team.add_player(player_3)
      team.add_player(player_4)
      
      expect(team.average_cost_of_player).to eq("$21,300,000")
    end
    
    it "can arrange players by last name" do
      team = Team.new("Dodgers", "Los Angeles")
      player_1 = Player.new("Michael Palledorous" , 1000000, 36)
      player_2 = Player.new("Kenny DeNunez", 500000, 24)
      player_3 = Player.new("Alan McClennan", 750000, 48)
      player_4 = Player.new("Hamilton Porter", 100000, 12)
      team.add_player(player_1)
      team.add_player(player_2)
      team.add_player(player_3)
      team.add_player(player_4)
      
      expect(team.average_cost_of_player).to eq("$21,300,000")
      expect(team.players_by_last_name).to eq("DeNunez, McClennan, Palledorous, Porter")
    end
  end
end