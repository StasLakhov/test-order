class TcasesController < ApplicationController

  def  index
    @tcase = Tcase.all
  end

  def show
    @tcase = Tcase.find(params[:id])
  end

  def new

  end

  def create
    @tcase = Tcase.new(tcase_params)

    @tcase.save
    redirect_to @tcase

  end

  private

  def tcase_params
    params.require(:tcases).permit(:title, :description, :instruction)
  end


end
