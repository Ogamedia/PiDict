class MeaningsController < ApplicationController
  before_action :set_meaning, only: [:show, :edit, :update, :destroy]
  before_action :set_word
  def index
    @meanings = Meaning.all
  end

  

  def show
  end

  def new
    @meaning = Meaning.new
  end

  def edit
  end

  def create
    if @word.meanings.first.nil?
      @meaning = @word.meanings.build(meaning_params)   #new
      @meaning.meaning_number = 1 #set it number to 1
      @meaning.save #save it

    else
      @meaning = @word.meanings.build(meaning_params)   #new
      @meaning.meaning_number = @word.meanings.order(:meaning_number => :asc).last.meaning_number + 1 #set it number to 1
      @meaning.save #save it
    end

    redirect_to edit_word_path(@word)
  end

  def update
      if @meaning.update(meaning_params)
       redirect_to edit_word_path(@word)
      end
  end

  def destroy
    @meaning.destroy

    redirect_to word_path(@word)
  end

  private
    def set_meaning
      @meaning = Meaning.find(params[:id])
    end

    def set_word
      @word = Word.find(params[:word_id])
    end


    def meaning_params
      params.require(:meaning).permit(:meaning_number, :part_of_speech, :definition, :context, :word_id)
    end
end
