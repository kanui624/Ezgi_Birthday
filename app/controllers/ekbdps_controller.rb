class EkbdpsController < ApplicationController

  def create 
    Ekbdp.create(ekbdp_params)
    redirect_to show_path
  end 

  private 

  def ekbdp_params
    params.require(:ekbdp).permit(:item, :quantity, :comments)
  end

end
