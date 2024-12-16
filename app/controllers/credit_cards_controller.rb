class CreditCardsController < ApplicationController
  allow_unauthenticated_access only: %i[ index show ]
  before_action :set_product, only: %i[ show edit update destroy ]

  def index
    @credit_cards = CreditCard.all
  end

  def show
  end

  def new
    @credit_card = CreditCard.new
  end

  def create
    @credit_card = CreditCard.new(credit_card_params)
    if @credit_card.save
      redirect_to @credit_card
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    if @credit_card.update(credit_card_params)
      redirect_to @credit_card
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @credit_card.destroy
    redirect_to credit_cards_path
  end

  private
    def set_product
      @credit_card = CreditCard.find(params[:id])
    end

    def credit_card_params
      params.expect(credit_card: [ :name ])
    end
end
