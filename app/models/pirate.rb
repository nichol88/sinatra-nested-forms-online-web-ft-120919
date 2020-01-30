class Pirate
  attr_accessor :name, :weight, :height
  @@all = []

  def initialize(params)
    @name = name
    @weight = weight
    @height = height
    @@all << self
  end

  def self.all
    @@all
  end

  def self.clear
    @@all = []
  end
end
