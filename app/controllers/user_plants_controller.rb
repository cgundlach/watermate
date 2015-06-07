class UserPlantsController < ApplicationController
  def index
    @user_plants = UserPlant.all
  end

  def show
    @user_plant = UserPlant.find(params[:id])
  end

  def new
    @user_plant = UserPlant.new
  end

  def create
    @user_plant = UserPlant.new
    @user_plant.user_id = params[:user_id]
    @user_plant.days = params[:days]
    @user_plant.thirst = params[:thirst]
    @user_plant.plant = params[:plant]
    @user_plant.water = params[:water]

    if @user_plant.save
      redirect_to "/user_plants", :notice => "User plant created successfully."
    else
      render 'new'
    end
  end

  def edit
    @user_plant = UserPlant.find(params[:id])
  end

  def update
    @user_plant = UserPlant.find(params[:id])

    @user_plant.user_id = params[:user_id]
    @user_plant.days = params[:days]
    @user_plant.thirst = params[:thirst]
    @user_plant.plant = params[:plant]
    @user_plant.water = params[:water]

    if @user_plant.save
      redirect_to "/user_plants", :notice => "User plant updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @user_plant = UserPlant.find(params[:id])

    @user_plant.destroy

    redirect_to "/user_plants", :notice => "User plant deleted."
  end
end
