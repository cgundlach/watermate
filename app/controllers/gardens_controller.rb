class GardensController < ApplicationController
  def index
    @gardens = Garden.all
  end

  def show
    @garden = Garden.find(params[:id])
  end

  def new
    @garden = Garden.new
    @plants = Plant.all
    # WHY???
    #@plant.display_name = params[:display_name]
  end

  def create
    @garden = Garden.new

    if @garden.save
      redirect_to "/gardens", :notice => "Garden created successfully."
    else
      render 'new'
    end

  end

  def edit
    @garden = Garden.find(params[:id])
  end

  def update
    @garden = Garden.find(params[:id])


    if @garden.save
      redirect_to "/gardens", :notice => "Garden updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @garden = Garden.find(params[:id])

    @garden.destroy

    redirect_to "/gardens", :notice => "Garden deleted."
  end
end
