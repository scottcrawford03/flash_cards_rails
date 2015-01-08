class CardSetsController < ApplicationController
  def index
    @card_sets = CardSet.all
  end

  def show
    @card_set = CardSet.find(params[:id])
  end
end
