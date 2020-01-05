class HomesController < ApplicationController
  # before_action :authenticate_user!
  
  def index

  end 

  def new
    @ekbdp = Ekbdp.all
  end 

  def show 
    @ekbdp = Ekbdp.new
  end

  # def create 
  #   @ekbdp = Ekbdp.create(ekbdp_params)
  #   if @ekbdp.valid?
  #     redirect_to show_path
  #   else 
  #     render :show, status: :uprocessible_entity
  #   end
  # end 

  # private 

  # def ekbdp_params
  #   params.require(:ekbdp).permit(:name, :email, :number)
  # end

end
