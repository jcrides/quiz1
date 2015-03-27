class HomepagesController < ApplicationController

  def index
    @homepages = Homepage.last
  end

  def new
    @homepage = Homepage.new
  end

  def create
    @homepage = Homepage.create(homepages_params)
    if @homepage.valid?
      redirect_to root_path
    else
      render :new, :status => :unprocessable_entity
    end
  end

  private

  def homepages_params
    params.require(:homepage).permit(:name, :animal, :size)
  end

end
