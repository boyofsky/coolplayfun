class TestControllersController < ApplicationController
  before_action :set_test_controller, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, only: [:new, :edit, :destroy]
  
  # GET /test_controllers
  # GET /test_controllers.json
  def index
    @test_controllers = TestController.all
  end

  # GET /test_controllers/1
  # GET /test_controllers/1.json
  def show
  end

  # GET /test_controllers/new
  def new
    @test_controller = TestController.new
  end

  # GET /test_controllers/1/edit
  def edit
  end

  # POST /test_controllers
  # POST /test_controllers.json
  def create  
    @test_controller = TestController.new(test_controller_params)

    respond_to do |format|
      if @test_controller.save
        format.html { redirect_to @test_controller, notice: 'Test controller was successfully created.' }
        format.json { render :show, status: :created, location: @test_controller }
      else
        format.html { render :new }
        format.json { render json: @test_controller.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /test_controllers/1
  # PATCH/PUT /test_controllers/1.json
  def update
    respond_to do |format|
      if @test_controller.update(test_controller_params)
        format.html { redirect_to @test_controller, notice: 'Test controller was successfully updated.' }
        format.json { render :show, status: :ok, location: @test_controller }
      else
        format.html { render :edit }
        format.json { render json: @test_controller.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /test_controllers/1
  # DELETE /test_controllers/1.json
  def destroy
    @test_controller.destroy
    respond_to do |format|
      format.html { redirect_to test_controllers_url, notice: 'Test controller was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_test_controller
      @test_controller = TestController.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def test_controller_params
      params.require(:test_controller).permit(:name)
    end
end
