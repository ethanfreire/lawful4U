class LawyersController < ApplicationController


  before_action :find_lawyer, only: [:edit, :show, :update, :destroy]

  def index
    @lawyers = Lawyer.all
  end

  def show
  end

  def new
    @lawyer = Lawyer.new
  end

  def edit
  end

  def create
    @lawyer = Lawyer.new(lawyer_params)
    if @lawyer.valid?
      @lawyer.save
      
      redirect_to lawyer_path(@lawyer)
    else
      render :new
    end
  end

  def update
    if @lawyer.update(lawyer_params)
      redirect_to lawyer_path(@lawyer)
    else
      render :edit
    end
  end

  def destroy
    @lawyer.destroy
    redirect_to lawyers_path
  end

  private

  def find_lawyer
    @lawyer = Lawyer.find(params[:id])
  end

  def lawyer_params
    params.require(:lawyer).permit(:name, :email, :phone, :address, :attorney_fee, :user_id)
  end
end
