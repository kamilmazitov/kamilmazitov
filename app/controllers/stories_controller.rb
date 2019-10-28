class StoriesController < ApplicationController
	
  def new
    @story = Story.new
  end

  def index
    @stories = Story.all
  end

  def create
    @story = Story.new(story_params)
  	@story.save
 	redirect_to @story
  end

  def show
    @story = Story.find(params[:id])
  end

  private
    def story_params
	  params.require(:story).permit(:title, :content)
    end
end
