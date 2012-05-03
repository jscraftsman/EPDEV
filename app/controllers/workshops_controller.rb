class WorkshopsController < ApplicationController
  def index
    @workshops = Workshop.all
  end

  def show
    @workshop = Workshop.find(params[:id])
  end

  def new
    @workshop = Workshop.new
  end

  def create
    @workshop = Workshop.new(params[:workshop])

    if @workshop.save
      redirect_to root_path, :flash => {:notice => "A new workshop was created!"}
    else
      render "new"
    end
  end

  def edit
    @workshop = Workshop.find(params[:id])
  end

  def update
    @workshop = Workshop.find(params[:id])
    original_title = @workshop.title
    if @workshop.update_attributes(params[:workshop])
      redirect_to workshops_path, :flash => {:notice => "'#{original_title}' was updated!"}
    else
      render "edit"
    end
  end

  def destroy
    @workshop = Workshop.find(params[:id])
    @workshop.destroy
    redirect_to workshops_path, :flash => {:notice => "'#{@workshop.title}' was removed!"}
  end

end
