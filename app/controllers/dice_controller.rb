class DiceController < ApplicationController
  def roll_dice
    @num_dice = params[:num_dice].to_i
    @num_sides = params[:num_sides].to_i

    @results = []
    @num_dice.times do
      @results << rand(1..@num_sides)
    end
      
    render({:template => "dice_templates/roll"})
  end

  def home
    render({ :template => "dice_templates/home" })
  end
end
