class UsersController < ApplicationController
# before_action :set_user, only: [:show, :edit, :update, :destroy]

  # GET /users
  # GET /users.json
  def index
    @users = User.all
    render :index
  end

  # GET /users/1
  # GET /users/1.json
  def show
  end

  # GET /users/new
  def new
    @user = User.new
  end

  # GET /users/1/edit
  def edit
  end

  # POST /users
  # POST /users.json
  def create
    @user = User.new(user_params)

    respond_to do |format|
        if @user.save
        #   format.html { redirect_to @user, notice: 'User was successfully created.' }
        #   format.json { render :show, status: :created, location: @user }
        else
        #   format.html { render :new }
        #   format.json { render json: @user.errors, status: :unprocessable_entity }
        end
    end
  
  end

  def update
  end
   
  def destroy
    @user.destroy

  end

  private
    def set_user
      @user = User.find(params[:id])
    end

    def user_params
      params.require(:user).permit(:name, :phone_number)
    end
end
