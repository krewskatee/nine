class Pick

  def pick
    @cards = Card.where(used: false)
    @picked = @cards.order("RANDOM()").first
    # @picked.update_attributes(used: true)
    @picked
  end

  def send_text(card)
    @twilio_number = ENV['TWILIO_NUMBER']
    @client_number = ENV['PHONE']
    @client = Twilio::REST::Client.new ENV['TWILIO_ACCOUNT_SID'], ENV['TWILIO_AUTH_TOKEN']

    message = @client.api.account.messages.create(
      :from => @twilio_number,
      :to => @client_number,
      :body => card.content,
      # US phone numbers can make use of an image as well.
      # :media_url => image_url
    )
    puts message.to
  end

end
