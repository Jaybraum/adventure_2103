class Trail
  attr_reader :name,
              :length,
              :level
  def initialize(trail_data)
    @name = trail_data[:name]
    @length = trail_data[:length].to_f
    @level = trail_data[:level]
  end
end
