class PagesController < ApplicationController
  def homepage
    @motherboards = Motherboard.all

  end
  def compatibles
    @key = params[:data]
    @rams = Ram.all
    @mid = Motherboard.find_by(id: @key)
  end
end
