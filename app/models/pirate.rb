class Pirate
  attr_accessor :name, :height, :weight

  ALL = []

  def initialize(params)
    @name = params[:name]
    @height = params[:height]
    @weight = params[:weight]
    ALL << self
  end

  def self.all
    self.class.all
  end

end
