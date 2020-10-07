class Login::WorksController < Login::ApplicationController
  before_action :set_work, only:[:edit, :update, :destroy]
  
  # def show
  # end

  # def index
  #   @q = Work.ransack(params[:q])
  #   @works = @q.result(distinct: true).by_new.page(params[:page]).per(3)
  # end  

  def new
    @work = Work.new
    @work.directer_id = params[:directer_id] if params[:directer_id].present?
  end  

  def create
    @work = Work.new(work_params)
    if @work.save
      redirect_to works_path
    else 
      render 'new'
    end    
  end

  def edit
  end 

  def update
    if @work.update(work_params)
      redirect_to work_path(@work)
    else
      render 'edit'
    end  
  end  
  
  def destroy
    @work.destroy
    redirect_to works_path
  end
  

  private

  def set_work
    @work = Work.find(params[:id])
  end  

  def work_params
    params[:work].permit(:title, :year, :acter, :about, :directer_id, :image, :image_cache, :remove_image)
  end
end
