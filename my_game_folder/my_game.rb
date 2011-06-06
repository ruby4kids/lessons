require 'rubygems'
require 'gosu'
require 'player'
require 'ball'

class MyGame < Gosu::Window
  def initialize
    super(600, 400, false)
    @player1 = Player.new(self)
    @balls = 3.times.map {Ball.new(self)}
    @running = true
  end

  def update
    if @running
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

      @balls.each {|ball| ball.update}

      if @player1.hit_by? @balls
        stop_game!
      end

    else
      if button_down? Gosu::Button::KbEscape
        restart_game
      end
    end
  end

  def draw
    @player1.draw
    @balls.each {|ball| ball.draw}
  end

  def stop_game!
    @running = false
  end

  def restart_game
    @running = true
    @balls.each {|ball| ball.reset!}
  end

end
game = MyGame.new
game.show
