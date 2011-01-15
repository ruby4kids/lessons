class Ball
  def initialize(game_window)
    @game_window = game_window
    @icon = Gosu::Image.new(@game_window, "images/ball.png", true)
    @x = rand(@game_window.width)
    @y = 0
  end
  
  def update
    if @y > @game_window.height
      @y = 0
      @x = rand(@game_window.width)
    else
      @y = @y + 10
    end
  end
  
  def draw
    @icon.draw(@x,@y,2)
  end
  
end
