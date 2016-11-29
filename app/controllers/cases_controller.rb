class CasesController < ApplicationController

  def  index
    @case = Case.all
  end

  def show
    @case = Case.find(params[:id])
  end

  def new

  end

  def create
    @case = Case.new(case_params)

    @case.save
    redirect_to @case

  end

  private

  def case_params
    params.require(:cases).permit(:title, :description, :instruction)
  end


end
