class StoriesController < ApplicationController

	def new
		@story = Story.new
	end

  def index
    @stories = Story.order(:title).page(params[:page])
  end

	def create
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
    @story = Story.find(params[:id])
  end

  def update
    story.update(story_params)
    story.save

    respond_with story

  end

  def destroy
    @story=Story.find(params[:id])
    @story.destroy

    flash.notice="Story '#{@story.title}' was deleted"

    redirect_to story_path
  end

	private

  def story_params
	 params.require(:story).permit(:title, :content)
	end
end
