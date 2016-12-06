class TcasesController < ApplicationController

  def  index
    @tcases = Tcase.all
  end

  def show
    @tcase = Tcase.find(params[:id])
  end

  def new
    @tcase = Tcase.new

  end

  def create
    @tcase = Tcase.new(tcase_params)

    if @tcase.save(tcase_params)
      redirect_to @tcase
    else
      render 'new'
    end

  end

  def edit
    @tcase = Tcase.find(params[:id])

  end

  def update
    @tcase = Tcase.find(params[:id])

    if @tcase.update(tcase_params)
      redirect_to @tcase

    else
      render 'edit'
    end

  end

  def destroy
    @tcase = Tcase.find(params[:id])
    @tcase.destroy
    redirect_to tcases_path
  end

  private

  def tcase_params
    params.require(:tcase).permit(:title, :summary)
  end


end
