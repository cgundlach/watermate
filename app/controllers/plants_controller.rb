class PlantsController < ApplicationController
  def index
    @plants = Plant.all
  end

  def show
    @plant = Plant.find(params[:id])
  end

  def new
    @plant = Plant.new
  end

  def create
    @plant = Plant.new
    @plant.category = params[:category]
    @plant.pic = params[:pic]
    @plant.dbw = params[:dbw]
    @plant.display_name = params[:display_name]

    if @plant.save
      redirect_to "/plants", :notice => "Plant created successfully."
    else
      render 'new'
    end
  end

  def edit
    @plant = Plant.find(params[:id])
  end

  def update
    @plant = Plant.find(params[:id])

    @plant.category = params[:category]
    @plant.pic = params[:pic]
    @plant.dbw = params[:dbw]
    @plant.display_name = params[:display_name]

    if @plant.save
      redirect_to "/plants", :notice => "Plant updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @plant = Plant.find(params[:id])

    @plant.destroy

    redirect_to "/plants", :notice => "Plant deleted."
  end
end
