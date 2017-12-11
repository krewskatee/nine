class Picker < ApplicationRecord
  has_many :cards

  def pick
    @cards = Card.where(used: false)
    @picked = @cards.order("RANDOM()").first
    @picked.update_attributes(used: true)
    puts "#{@picked}============================="
  end

  def send_text
    
  end

end
