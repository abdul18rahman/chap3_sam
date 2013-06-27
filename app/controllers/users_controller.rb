class UsersController < ApplicationController
  def show
  	@user = User.find( params[ :id ] ) #we have retrive the user id,request to the user controller and id 1 to effect the same as the find method.
  end
  	
  def new
  	@user =User.new
  end
def create
	 @user = User.new(params[:user])
	 if @user.save
    flash[:success] = "Welcome to the Sample App!"
    redirect_to @user
	 else
	 	render 'new'
	 end
	end

end
