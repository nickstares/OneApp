class MainController < ApplicationController
  
  before_action :prevent_login_signup, only: [:signup, :login]


  def index
  end

  def signup
   @user = User.new
  end

  def create
      user = User.create(user_params)
      if user.save
         session[:user_id] = user.id
         flash[:good] = "Welcome"
         redirect_to '/'
      end
  end


  def login
      if params[:email].present? && params[:password].present?
         found_user = User.where(email: params[:email]).first
         if found_user
            authorized_user = found_user.authenticate(params[:password])
            if authorized_user
               flash[:good] = "Welcome"
               session[:user_id] = found_user.id
               session[:first_name] = found_user.first_name
               @user = found_user.first_name
               redirect_to '/'   
            else
               flash.now[:alert] = "Invalid password. Try again!"
               render :index
            end
         
         else   
            flash.now[:alert] = "User not found. Try again!"
            render :index
         end
      else
      flash.now[:notice] = "Type your password"
         render :index  
      end
  end


   def logout
      flash[:notice] = "You signed out successfully!"
      session[:user_id] = nil
      session[:first_name] = nil
      redirect_to '/'
   end


   private

   def user_params
      params.require(:user).permit(:email, :password, :password_digest, :first_name, :last_name)
   end

   def prevent_login_signup
      if session[:user_id]
         flash[:notice] = "You are already signed in"
         redirect_to :index
      end
   end

end
