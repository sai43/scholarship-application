class ScholarshipsController < ApplicationController
  #Users who are not signed in cannot view scholarship
  before_action :authenticate_user!
  before_action :set_scholarship, only: [:show, :edit, :update, :destroy]
  load_and_authorize_resource

  def index
    @scholarships = Scholarship.all
  end

  def show
  end

  def new
    @scholarship = Scholarship.new
  end

  def edit
  end

  def create
    @scholarship = Scholarship.new(scholarship)

    respond_to do |format|
      if @scholarship.save
        format.html { redirect_to @scholarship, notice: 'Scholarship was successfully created.' }
        format.json { render :show, status: :created, location: @scholarship }
      else
        format.html { render :new }
        format.json { render json: @scholarship.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @scholarship.update(scholarship_params)
        format.html { redirect_to @scholarship, notice: 'Scholarship was successfully updated.' }
        format.json { render :show, status: :ok, location: @scholarship }
      else
        format.html { render :edit }
        format.json { render json: @scholarship.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @scholarship.destroy
    respond_to do |format|
      format.html { redirect_to scholarships_url, notice: 'Scholarship was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_scholarship
      @scholarship = Scholarship.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def schoalrship_params
      params.require(:scholarship).permit(:name, :gender, :date_of_birth, :gpa, :address, :state, :university, :essay)
    end
end
