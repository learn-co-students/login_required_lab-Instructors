class SecretsController < ApplicationController

  def show
    if !current_user
      redirect_to sessions_new_path
    end
  end

end
