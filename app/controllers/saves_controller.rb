class SavesController < ApplicationController
  def index

    def new
    @user_plant = UserPlant.find(params[:id])
    @user_plant.save
      redirect_to "/user_plants", :notice => "Your plant thanks you!"

  end

    def update
    @user_plant = UserPlant.find(params[:id])
    if @user_plant.save
      redirect_to "/user_plants", :notice => "Plant Watered Successfully."
    else
      render 'edit'
    end
  end
    @save = Save.new

    if @save.save
      redirect_to "/user_plants", :notice => "Plant Watered Successfully."
    else
      render 'new'
    end
  end
    @saves = Save.all
  end

  def show

    @user_plant = UserPlant.find(params[:id])
    @user_plant.update
      redirect_to "/user_plants", :notice => "Your plant thanks you!"
     @save = user_plant.save
  end


  def create
    @user_plant = UserPlant.find(params[:id])
    @user_plant.update
      redirect_to "/user_plants", :notice => "Your plant thanks you!"
    else
      render 'edit'
    end

  def edit
    @save = Save.find(params[:id])
  end

  def update
    @save = Save.find(params[:id])


    if @save.save
      redirect_to "/saves", :notice => "Save updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @save = Save.find(params[:id])

    @save.destroy

    redirect_to "/saves", :notice => "Save deleted."
  end

