class SessionsController < UserController
  def new
    @error = ''
  end

  def create
    user = User.find_by(name: params[:session][:name])

    if user.nil?
      logger.info 'User not found'
      @error = 'User not found!'
      render 'new'
    elsif user.password == params[:session][:password]
      logger.info 'Logged in'
      session[:user_name] = user.name
      redirect_to user_administration_path
    else
      logger.info 'Wrong password'
      @error = 'Wrong Password!'
      render 'new'
      # Wrong password
    end
  end

  def destroy
    session[:user_name] = nil
    redirect_to login_path
  end
end
