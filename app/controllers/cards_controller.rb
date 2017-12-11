class CardsController < ApplicationController
  def index
    @picker = Picker.first
    @picker.send_text(@picker.pick)
  end
end
