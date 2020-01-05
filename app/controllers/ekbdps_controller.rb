class EkbdpsController < ApplicationController

  # def index

  # end

  def show
    
  end 

  def create 
    @ekbdp = Ekbdp.create(ekbdp_params)
    if @ekbdp.invalid?
      flash[:error] = '<strong>Could not save</strong> the data you entered is invalid.'
    end
    redirect_to show_path
  end 

  private 

  def ekbdp_params
    params.require(:ekbdp).permit(:name, :email, :number)
  end

end
