class DepPeopleController < ApplicationController
  before_action :set_dep_person, only: [:show, :edit, :update, :destroy]

  # GET /dep_people
  # GET /dep_people.json
  def index
    @dep_people = DepPerson.all
  end

  # GET /dep_people/1
  # GET /dep_people/1.json
  def show
  end

  # GET /dep_people/new
  def new
    @dep_person = DepPerson.new
  end

  # GET /dep_people/1/edit
  def edit
  end

  # POST /dep_people
  # POST /dep_people.json
  def create
    @dep_person = DepPerson.new(dep_person_params)

    respond_to do |format|
      if @dep_person.save
        format.html { redirect_to @dep_person, notice: 'Dep person was successfully created.' }
        format.json { render :show, status: :created, location: @dep_person }
      else
        format.html { render :new }
        format.json { render json: @dep_person.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /dep_people/1
  # PATCH/PUT /dep_people/1.json
  def update
    respond_to do |format|
      if @dep_person.update(dep_person_params)
        format.html { redirect_to @dep_person, notice: 'Dep person was successfully updated.' }
        format.json { render :show, status: :ok, location: @dep_person }
      else
        format.html { render :edit }
        format.json { render json: @dep_person.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /dep_people/1
  # DELETE /dep_people/1.json
  def destroy
    @dep_person.destroy
    respond_to do |format|
      format.html { redirect_to dep_people_url, notice: 'Dep person was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dep_person
      @dep_person = DepPerson.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def dep_person_params
      params.require(:dep_person).permit(:department_id, :contract_id, :person_id)
    end
end
