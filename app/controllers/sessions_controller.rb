class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      # Log the user in and redirect to the user's show page.

      # Listing 8.15:
      log_in user
      redirect_to user
    else
      # Listing 8.8:
      # flash[:danger] = 'Invalid email/password combination' # Not quite right!

      # Listing 8.11:
      flash.now[:danger] = 'Invalid email/password combination'
      render 'new'
    end
  end

  def destroy
    log_out
    redirect_to root_url
  end
  
end
