class AppsController < ApplicationController

  def index
    redirect_to "/apps/#{params[:app]}"
  end

end
