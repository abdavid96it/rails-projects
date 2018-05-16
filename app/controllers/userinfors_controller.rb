class UserinforsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_userinfor, only: [:show, :edit, :update, :destroy]

  # GET /userinfors
  # GET /userinfors.json
  def index
    @userinfors = Userinfor.all
  end

  # GET /userinfors/1
  # GET /userinfors/1.json
  def show
  end

  # GET /userinfors/new
  def new
    #binding.pry

    @userinfor = current_user.userinfor.build
  end

  # GET /userinfors/1/edit
  def edit
  end

  # POST /userinfors
  # POST /userinfors.json
  def create
    #binding.pry
    @userinfor = current_user.userinfor.build(userinfor_params)

    respond_to do |format|
      if @userinfor.save
        format.html { redirect_to @userinfor, notice: 'Userinfor was successfully created.' }
        format.json { render :show, status: :created, location: @userinfor }
      else
        format.html { render :new }
        format.json { render json: @userinfor.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /userinfors/1
  # PATCH/PUT /userinfors/1.json
  def update
    respond_to do |format|
      if @userinfor.update(userinfor_params)
        format.html { redirect_to @userinfor, notice: 'Userinfor was successfully updated.' }
        format.json { render :show, status: :ok, location: @userinfor }
      else
        format.html { render :edit }
        format.json { render json: @userinfor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /userinfors/1
  # DELETE /userinfors/1.json
  def destroy
    @userinfor.destroy
    respond_to do |format|
      format.html { redirect_to userinfors_url, notice: 'Userinfor was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_userinfor
      @userinfor = Userinfor.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def userinfor_params
      params.require(:userinfor).permit(:first_name, :last_name, :photo, :birth_day, :phone, :gender, :address)
    end
end
