class LevelsController < ApplicationController
  before_action :set_card_deck, only: [:show]

  def index
  end

  def show
  end

  private

  def set_card_deck
    @cards = Character.where(level_id: params[:id])
  end
end
