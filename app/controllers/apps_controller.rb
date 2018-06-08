class AppsController < ApplicationController
  include ApplicationHelper

  def index
    redirect_to app_url
  end

  private
    def app_url
      "/apps/#{room_params[:app]}/launch?#{room_params.except(:app).to_query}"
    end

    def room_params
      params.permit(:app, :handler)
    end
end
