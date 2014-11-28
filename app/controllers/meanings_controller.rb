class MeaningsController < ApplicationController
  before_action :set_meaning, only: [:show, :edit, :update, :destroy]

  # GET /meanings
  # GET /meanings.json
  def index
    @meanings = Meaning.all
  end

  # GET /meanings/1
  # GET /meanings/1.json
  def show
  end

  # GET /meanings/new
  def new
    # @word = Word.find(params[:word_id])
    @meaning = Meaning.new
  end

  # GET /meanings/1/edit
  def edit
  end

  # POST /meanings
  # POST /meanings.json
  def create
    @word = Word.find(params[:word_id])
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

  # PATCH/PUT /meanings/1
  # PATCH/PUT /meanings/1.json
  def update
    respond_to do |format|
      if @meaning.update(meaning_params)
        format.html { redirect_to @meaning, notice: 'Meaning was successfully updated.' }
        format.json { render :show, status: :ok, location: @meaning }
      else
        format.html { render :edit }
        format.json { render json: @meaning.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /meanings/1
  # DELETE /meanings/1.json
  def destroy
    @word = Word.find(params[:word_id])
    @meaning = @word.meanings.find(params[:id])
    @meaning.destroy
    # respond_to do |format|
    #   format.html { redirect_to meanings_url, notice: 'Meaning was successfully destroyed.' }
    #   format.json { head :no_content }
    
    # end
    redirect_to word_path(@word)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_meaning
      @word = Word.find(params[:word_id]) 
      @meaning = Meaning.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def meaning_params
      params.require(:meaning).permit(:meaning_number, :part_of_speech, :definition, :context, :word_id)
    end
end
