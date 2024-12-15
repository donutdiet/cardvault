class CreditCardsController < ApplicationController
  def index
    @credit_cards = CreditCard.all
  end
end
