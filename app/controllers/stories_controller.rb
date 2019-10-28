class StoriesController < ApplicationController

	def new
		@story = Story.new
	end

	def index
    @stories = Story.order(:title).page(params[:page])
  end

	def create
  	@story = Story.new(story_params)

    # TODO: what if storie was not saved
  	if @story.save
      redirect_to @story
    else
      render :new
    end
	end

	def show
    @story = Story.find(params[:id])
  end

  # TODO
  def edit

  end

  def update

  end

  def destroy

  end

	private

  def story_params
	 params.require(:story).permit(:title, :content)
	end
end
