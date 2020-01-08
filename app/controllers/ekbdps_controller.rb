class EkbdpsController < ApplicationController

  # def index

  # end

  def show
    
  end 

  def invalidinformation

  end

  def create 
    @ekbdp = Ekbdp.create(ekbdp_params)
      if @ekbdp.valid?
        redirect_to itslit_path
      else 
        redirect_to invalidinformation_path
      end
  end 

  private 

  def ekbdp_params
    params.require(:ekbdp).permit(:name, :email, :number, :guests)
  end

end
