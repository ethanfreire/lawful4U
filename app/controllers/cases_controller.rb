class CasesController < ApplicationController
  def index
    @cases = Case.all
  end

  def show
      @case = Case.find(params[:id])
    end

  def new
    byebug
    
  @case = Case.new
  end

    def create
      byebug
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
    end

    def update

      @case = Case.find(params[:id])
      client_name = params[:case][:client]
      #check if the new client's name exists already as client

      if Client.find_by(name: client_name)
        #if so, change the associated client id to the new existing client_id, else
        id = Client.find_by(name: client_name).id
        @case.client_id = id
      else
        #return a "client not found" message
        # byebug
        render :edit
        return
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
      redirect_to case_path
    end

    private

    # def case_params
    #   params.require(:case).permit(:title, :case_type, :status, :client_id, client_attributes: [:name])
    # end


end
