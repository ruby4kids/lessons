require 'rubygems'
require 'gosu'
require 'player'
require 'ball'

class MyGame < Gosu::Window
  def initialize
    super(300, 300, false)
    @player1 = Player.new(self)
    @ball = Ball.new(self)
  end
  
  def update
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
  
  def draw
    @player1.draw
    @ball.draw
  end
  
end

game = MyGame.new
game.show
