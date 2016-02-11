class UserImagesController < ApplicationController
  before_action :set_user_image, only: [:show, :edit, :update, :destroy]

  # GET /user_images
  # GET /user_images.json
  def index
    @user_images = UserImage.all
  end

  # GET /user_images/1
  # GET /user_images/1.json
  def show
  end

  # GET /user_images/new
  def new
    @user_image = UserImage.new
  end

  # GET /user_images/1/edit
  def edit
  end

  # POST /user_images
  # POST /user_images.json
  def create
    @user_image = UserImage.new(user_image_params)

    respond_to do |format|
      if @user_image.save
        format.html { redirect_to @user_image, notice: 'User image was successfully created.' }
        format.json { render :show, status: :created, location: @user_image }
      else
        format.html { render :new }
        format.json { render json: @user_image.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /user_images/1
  # PATCH/PUT /user_images/1.json
  def update
    respond_to do |format|
      if @user_image.update(user_image_params)
        format.html { redirect_to @user_image, notice: 'User image was successfully updated.' }
        format.json { render :show, status: :ok, location: @user_image }
      else
        format.html { render :edit }
        format.json { render json: @user_image.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_images/1
  # DELETE /user_images/1.json
  def destroy
    @user_image.destroy
    respond_to do |format|
      format.html { redirect_to user_images_url, notice: 'User image was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_image
      @user_image = UserImage.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_image_params
      params.fetch(:user_image, {})
    end
end
