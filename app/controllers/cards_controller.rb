class CardsController < ApplicationController
  def index
    @picker = Picker.first
    @picker.pick
  end
end
