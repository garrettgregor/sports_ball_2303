class Player
  attr_reader :name

  def initialize(name, monthly_cost, contract_length)
    @name = name
  end

  def first_name
    return_value = name.split(" ")
    return_value[0]
  end

  def last_name
    return_value = name.split(" ")
    return_value[1]
  end
end