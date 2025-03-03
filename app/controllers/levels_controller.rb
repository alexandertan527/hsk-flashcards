class LevelsController < ApplicationController
  before_action :set_card_deck, only: [:show]

  def index
  end

  def show
    @card = @cards.sample

    respond_to do |format|
      format.html
      format.turbo_stream do
        render turbo_stream: turbo_stream.replace("flashcard", partial: "new_card", locals: { card: @card })
      end
    end
  end

  private

  def set_card_deck
    @cards = Character.where(level_id: params[:id])
  end
end
