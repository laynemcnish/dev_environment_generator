class ScriptsController < ApplicationController

  def index
  end

  def new
    @script = Script.new
  end

  def create
    @script = Script.new(create_params)
    if @script.save!
      redirect_to @script
    end
  end

  def edit
    @script = Script.find(params[:id])
  end

  def update
    @script = Script.find(params[:id])

    if @script.update(create_params)
      redirect_to @script
    end
  end

  def show
    @script = Script.find(params[:id])
  end

  def download
    @script = Script.find(params[:id])
    #TODO allow download
  end
end
