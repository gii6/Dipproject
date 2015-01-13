class NoteStylesController < ApplicationController
  before_action :set_note_style, only: [:show, :edit, :update, :destroy]

  # GET /note_styles
  # GET /note_styles.json
  def index
    @note_styles = NoteStyle.all
  end

  # GET /note_styles/1
  # GET /note_styles/1.json
  def show
  end

  # GET /note_styles/new
  def new
    @note_style = NoteStyle.new
  end

  # GET /note_styles/1/edit
  def edit
  end

  # POST /note_styles
  # POST /note_styles.json
  def create
    @note_style = NoteStyle.new(note_style_params)

    respond_to do |format|
      if @note_style.save
        format.html { redirect_to @note_style, notice: 'Note style was successfully created.' }
        format.json { render :show, status: :created, location: @note_style }
      else
        format.html { render :new }
        format.json { render json: @note_style.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /note_styles/1
  # PATCH/PUT /note_styles/1.json
  def update
    respond_to do |format|
      if @note_style.update(note_style_params)
        format.html { redirect_to @note_style, notice: 'Note style was successfully updated.' }
        format.json { render :show, status: :ok, location: @note_style }
      else
        format.html { render :edit }
        format.json { render json: @note_style.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /note_styles/1
  # DELETE /note_styles/1.json
  def destroy
    @note_style.destroy
    respond_to do |format|
      format.html { redirect_to note_styles_url, notice: 'Note style was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_note_style
      @note_style = NoteStyle.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def note_style_params
      params.require(:note_style).permit(:name, :code, :style)
    end
end
