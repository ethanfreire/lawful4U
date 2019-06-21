class CasesController < ApplicationController
  before_action :authorized, except: [:index, :show]

  def index

    @cases = Case.all
  end

  def show
    @case = Case.find(params[:id])
    
  end

  def new
    @case = Case.new
  end

  def create
    @case = Case.new(case_params)
    if @case.valid?
      @case.save
      redirect_to case_path(@case)
    else
      render :new
    end
  end

  def edit
    @case = Case.find(params[:id])
    client_name = @case.client.name #check if the new client's name exists already as client

    if Client.find_by(name: client_name) #if so, change the associated client id to the new existing client_id, else
      id = Client.find_by(name: client_name).id
      @case.client_id = id
    else
      render :edit
      return "client not found"
    end
  end

  def update

    @case = Case.find(params[:id])
    client_name = @case.client.name #check if the new client's name exists already as client

    if Client.find_by(name: client_name)  #if so, change the associated client id to the new existing client_id, else
      id = Client.find_by(name: client_name).id
      @case.client_id = id
    else  #return a  message
      render :edit
      return "client not found"
    end

    @case.update(case_params)
    if @case.update(case_params)
      redirect_to case_path(@case)
    else
      render :edit
    end
  end

  def destroy
    @case = Case.find(params[:id])
    @case.destroy
    redirect_to cases_path
  end

  private
  def case_params
    params.require(:case).permit(:title, :case_type, :status, :client_id, :lawyer_id, client_attributes: [:name])
  end



end
