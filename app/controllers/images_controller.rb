class ImagesController < ApplicationController
  def index
  end

  def new
  end

  def create
    binding.pry
    @image = Image.new(params[:image].to_unsafe_hash)

    if @image.save
      redirect_to :action => :show, :id => @image.id
    end
  end

  def show
    @id = params[:id]
    @image = Image.find(@id)
  end
end
