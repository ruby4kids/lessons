class Player
  
  def initialize(game_window)
    @game_window = game_window
    @icon = Gosu::Image.new(@game_window, "images/player1.png", true)
  end
  
  def draw
    @icon.draw(50,50,1)
  end
  
end
