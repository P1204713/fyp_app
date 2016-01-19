class UserController < ApplicationController
 
  def register
    @user = User.all
  end
 
  #def index
   #redirect_to :controller => 'game', :action => 'index'
  #end
  
  #def create
    #@user = User.new(params[:user])
    #if @user.save
      #redirect_to @user, notice: 'Account is successfully created.'
    #end
  #end
  
  #def update
    #@user = User.find(params[:id])
    #redirect_to @user, notice: 'Account is successfully updated.'
  #end
  
  #def delete
    #@user = User.find(params[:id])
    #if @user.destroy
       #redirect_to @user, notice: 'Account is successfully deleted.'
       #redirect_to :index
       
    #end
  #end
  
  #def show
    #@user = User.find(params[:id])
  #end
  
end
