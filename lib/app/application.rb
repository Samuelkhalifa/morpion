class Application

  def initialize
    Show.new
    game = Game.new
    game.gameplay
  end

end
