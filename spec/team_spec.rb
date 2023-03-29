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
    #=> #<Team:0x00007fccd30375f8...>
    player_1 = Player.new("Michael Palledorous" , 1000000, 36)
    #=> #<Player:0x00007fa53b9ca0a8...>
    player_2 = Player.new("Kenny DeNunez", 500000, 24)
    #=> #<Player:0x00007fccd2985f48...>
    player_3 = Player.new("Alan McClennan", 750000, 48)
    #=> #<Player:0x00007fccd383c2d0...>
    player_4 = Player.new("Hamilton Porter", 100000, 12)
    #=> #<Player:0x00007fccd297dc30...>
    team.add_player(player_1)
    team.add_player(player_2)
    team.add_player(player_3)
    team.add_player(player_4)
    
    expect(team.long_term_players).to eq([player_1, player_3])
    #=> [#<Player:0x00007fa53b9ca0a8...>, #<Player:0x00007fccd383c2d0...>]
  end
end