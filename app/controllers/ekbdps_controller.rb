class EkbdpsController < ApplicationController

  # def index

  # end

  def show
    
  end 

  def create 
    @ekbdp = Ekbdp.create(ekbdp_params)
      redirect_to end_path
  end 

  private 

  def ekbdp_params
    params.require(:ekbdp).permit(:name, :email, :number)
  end

end
