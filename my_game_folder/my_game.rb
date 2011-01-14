require 'rubygems'
require 'gosu'
require 'player'

class MyGame < Gosu::Window
  def initialize
    super(300, 300, false)
    @player1 = Player.new(self)
  end
  
  def update
  end
  
  def draw
    @player1.draw
  end
  
end

game = MyGame.new
game.show
