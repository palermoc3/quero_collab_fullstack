class UsersController < ApplicationController
  before_action :set_user, only: %i[ show edit update destroy delete]
  # GET /users or /users.json
  def index
    users = User.order(:created_at)
    render json: {status: 'SUCCESS', message: 'Users loaded', data: users}, status: :ok
  end

  # GET /users/1 or /users/1.json
  def show
  end

  # GET /users/new
  # def new
  #   @user = User.new
  # end

  # GET /users/1/edit
  # def edit
  # end

  # POST /users or /users.json
  def create
    user = User.new(user_params)
    
      if user.save
        render json: {status: 'SUCCESS', message: 'User created successfully', data: user}, status: :ok
      else
        render json: {status: 'ERROR', message: 'User does not created', data: user.errors}, status: :unprocessable_entity
      end
  end

  # PATCH/PUT /users/1 or /users/1.json
  def update
    user = User.find(params[:id])

    if user.update(user_params)
      render json: {status: 'SUCCESS', message: 'User updated successfully', data: user}, status: :ok
    else
      render json: {status: 'ERROR', message: 'User does not updated', data: user.errors}, status: :unprocessable_entity
    end    
  end

  # DELETE /users/1 or /users/1.json
  def destroy
    user = User.find(params[:id],)

    user.destroy
    render json: {status: 'SUCCESS', message: 'User was successfully destroyed', data: user}, status: :ok
    
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    # def set_user
    #   @user = User.find(params[:id])
    # end
    private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def user_params
      params.require(:user).permit(:name)
    end
end