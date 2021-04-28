class Hiker
  attr_reader :name,
              :experience_level,
              :parks_visited,
              :snacks
  def initialize(name, experience_level)
    @name = name
    @experience_level = experience_level
    @parks_visited = []
    @snacks = Hash.new(0)
  end

  def pack(snack, count)
    @snacks[snack] += count
  end

  def visit(park)
    @parks_visited << park
  end

  def possible_trails
    trails = []
    @parks_visited.each do |park|
      park.trails.each do |trail|
        trails << trail if @experience_level == trail.level
      end
    end
    trails
  end

  def favorite_snack
    favorite = snacks[snacks.keys[0]]
    @snacks.each do |snack, count|
      if count > favorite
        return snack
      end
    end
  end
end
