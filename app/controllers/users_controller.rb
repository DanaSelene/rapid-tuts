class UsersController < ApplicationController
<<<<<<< HEAD
  def new
  end
=======
  
  def show
    @user = User.find(params[:id])
    # binding.pry
    # debugger
  end
  
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      # Handle a successful save.
      flash[:success] = "Welcome to the Tute 6!"
      redirect_to @user
    else
      render 'new'
    end
  end

  private

    def user_params
      params.require(:user).permit(:name, :email, :password,
                                   :password_confirmation)
    end
>>>>>>> tut-6-end
end
