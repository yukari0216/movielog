class DirectersController < ApplicationController
  before_action :set_directer, only:[:show]
  
  def show
  end  

  def index
    @q = Directer.ransack(params[:q])
    @directers = @q.result(distinct: true).by_new.page(params[:page]).per(3)
     # @directers = Directer.all.by_new
  end  

  # def new
  #   @directer = Directer.new
  # end  

  # def create
  #   @directer = Directer.new(directer_params)
  #   if @directer.save
  #     redirect_to directers_path
  #   else 
  #     render 'new'
  #   end    
  # end

  # def edit
  # end 

  # def update
  #   if @directer.update(directer_params)
  #     redirect_to directers_path(@directer)
  #   else
  #     render 'edit'
  #   end  
  # end  

  # def destroy
  #   @directer.destroy
  #   redirect_to directers_path
  # end

  private

  def set_directer
    @directer = Directer.find(params[:id])
  end  

  # def directer_params
  #   params[:directer].permit(:name, :country, :image)
  # end
end  