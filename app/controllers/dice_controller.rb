class DiceController < ApplicationController
  def roll_dice
    @num_dice = params[:num_dice].to_i
    @num_sides = params[:num_sides].to_i

    @rolls = []
    @total = 0

    @num_dice.times do
      roll = rand(1..@num_sides)
      @rolls << roll
      @total += roll
    end
      
    render({:template => "dice_templates/roll"})
  end

  def home
    render({ :template => "dice_templates/home" })
  end
end

