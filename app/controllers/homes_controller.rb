class HomesController < ApplicationController
  # before_action :authenticate_user!
  
  def index

  end 

  def show 
    # @ekbdp = Ekbdp.new
  end

  def create 
    Ekbdp.create(ekbdp_params)
    redirect_to show_path
  end 

  private 

  def ekbdp_params
    params.require(:ekbdp).permit(:item)
  end

end
