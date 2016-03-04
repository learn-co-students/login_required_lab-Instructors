class SessionsController < ApplicationController

  def new

  end

  def create
    if !params[:name] || params[:name] == ""
      redirect_to sessions_new_path
    else
      session[:name] = params[:name]
      redirect_to sessions_show_path
    end
  end

  def show
    @name = session[:name]
  end

  def destroy
    session[:name] = nil
    redirect_to sessions_new_path
  end

end
