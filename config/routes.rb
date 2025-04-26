Rails.application.routes.draw do
  get("/dice/:num_dice/:num_sides", { :controller => "dice", :action => "roll_dice" })
  get("/", { :controller => "dice", :action => "home" })
end
