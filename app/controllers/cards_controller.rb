class CardsController < ApplicationController
  def index
    @picker = Picker.first
    @picker.send_text(@picker.pick)
  end
  def new

  end
  def create
    array = params[:content]
    if Card.create(picker_id: 1, content: params[:content], used: false)
      redirect_back(fallback_location: '/')
    end
  end
end
