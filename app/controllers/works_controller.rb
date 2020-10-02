class WorksController < ApplicationController
  before_action :set_work, only:[:show]
  
  def show
  end

  def index
    @q = Work.ransack(params[:q])
    @works = @q.result(distinct: true).by_new.page(params[:page]).per(3)
  end  

  # def new
  #   @work = Work.new
  # end  

  # def create
  #   @work = Work.new(work_params)
  #   if @work.save
  #     redirect_to works_path
  #   else 
  #     render 'new'
  #   end    
  # end

  # def edit
  # end 

  # def update
  #   if @work.update(work_params)
  #     redirect_to works_path(@work)
  #   else
  #     render 'edit'
  #   end  
  # end  
  
  # def destroy
  #   @work.destroy
  #   redirect_to works_path
  # end
  

  private

  def set_work
    @work = Work.find(params[:id])
  end  

  # def work_params
  #   params[:work].permit(:title, :year, :acter, :about, :directer_id, :image)
  # end
end
