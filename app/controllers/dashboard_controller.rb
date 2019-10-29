class DashboardController < ApplicationController
  def index
    @stories = Story.order(:title, :content).page(params[:page])
  end
end
