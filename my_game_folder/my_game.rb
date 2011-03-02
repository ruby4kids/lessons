require 'rubygems'
require 'gosu'
require 'player'
require 'ball'

class MyGame < Gosu::Window
  def initialize
    super(300, 300, false)
    @player1 = Player.new(self)
    @ball = Ball.new(self)
    @pause = false
    @font = Gosu::Font.new(self, 'System', 24)
  end
  
  def button_down(id)
    if id == Gosu::Button::KbP
      if @pause == false
        @pause = true
      else
        @pause = false
      end
    end
  end
  
  def update
    if @pause == false
      if button_down? Gosu::Button::KbLeft
        @player1.move_left
      end

      if button_down? Gosu::Button::KbRight
        @player1.move_right
      end

      if button_down? Gosu::Button::KbUp
        @player1.move_up
      end

      if button_down? Gosu::Button::KbDown
        @player1.move_down
      end

      @ball.update   
    end

  end
  
  def draw
    @player1.draw
    @ball.draw
    @font.draw("The game is paused.", 50, 200, 10) if @pause == true
  end
  
end

game = MyGame.new
game.show
