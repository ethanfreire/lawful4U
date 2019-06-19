class CasesController < ApplicationController
  def index
    @cases = Case.all
  end

  def show
  end

  def new
  end

  def edit
  end
end
