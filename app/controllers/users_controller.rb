class UsersController < ApplicationController
  #before_action(:check_for_admin, :only =>[:index])
  
  def index
    @users = User.all
  end

  # GET /users/new
  def new
    @user = User.new
  end

  # POST /users or /users.json
  def create
    puts params
    puts 'params'
    @user = User.new(user_params)
    if(@user.save!)
      session[:user_id] = @user.id
      redirect_to(root_path)
    else
      render(:new)
    end
  end

  private
    # Only allow a list of trusted parameters through.
    def user_params
      params.require(:user).permit(:name, :email, :disliked_id, :password, :passwordconfirmation)
    end
end