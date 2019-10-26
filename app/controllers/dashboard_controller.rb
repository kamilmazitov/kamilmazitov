class DashboardController < ApplicationController
  def index
    @stories = Story.all
  end
end
