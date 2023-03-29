class Player
  attr_reader :name,
              :monthly_cost,
              :contract_length

  def initialize(name, monthly_cost, contract_length)
    @name = name
    @monthly_cost = monthly_cost
    @contract_length = contract_length
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