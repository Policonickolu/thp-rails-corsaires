class CorsairsController < ApplicationController
  
  def index
    @corsairs = Corsair.all
  end

  def show
    @corsair = Corsair.find(params[:id])
  end

  def new
     @corsair = Corsair.new
  end
  
  def create
    @corsair = Corsair.new(corsair_params)    # Not the final implementation!
    if @corsair.save
       flash[:success] = {"Succès" => "Le corsaire à été créé !"}
      redirect_to corsair_path(@corsair)
    else
      render 'new'
    end
  end 

  def edit
     @corsair = Corsair.find(params[:id])
  end

  def update
     @corsair = Corsair.find(params[:id])
     if @corsair.update(corsair_params)
      flash[:success] = {"Succès" => "Le corsaire à été mis à jour!"}
     redirect_to corsair_path(@corsair)
    else
      render 'edit'
    end
  end

  def destroy
     @corsair = Corsair.find(params[:id])
     if @corsair.destroy 
       flash[:success] = {"Succès" => "Le corsaire à été supprimé!"}
        redirect_to corsairs_path 
      else 
        redirect_to edit_corsair_path
      end
  end

  def corsair_params
    params.require(:corsair).permit(:first_name, :age, :bio, :likeness, :slack_handle, :github_handle)
  end
  
end
