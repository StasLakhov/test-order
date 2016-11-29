class TcasesController < ApplicationController

  def  index
    @tcase = Tcase.all
  end

  def show
    @tcase = Tcase.find(params[:id])
  end

  def new
    @tcase = Tcase.new

  end

  def create
    @tcase = Tcase.new(tcase_params)

    @tcase.save
    redirect_to @tcase

  end

  def edit
    @tcase = Tcase.find(params[:id])

  end

  def update

  end

  def destroy
    @tcase = Tcase.find(params[:id])
    @tcase.destroy
    redirect_to tcases_path
  end

  private

  def tcase_params
    params.require(:tcase).permit(:title, :description, :instruction)
  end


end
