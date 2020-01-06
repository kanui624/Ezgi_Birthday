class EkbdpsController < ApplicationController

  # def index

  # end

  def show
    
  end 

  def create 
    @ekbdp = Ekbdp.create(ekbdp_params)
      if @ekbdp.valid?
        redirect_to seeyouthere_path
      else 
        redirect_to invalidinformation_path
      end
  end 

  private 

  def ekbdp_params
    params.require(:ekbdp).permit(:name, :email, :number)
  end

end
