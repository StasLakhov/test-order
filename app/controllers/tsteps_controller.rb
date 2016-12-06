class TstepsController < ApplicationController

  def  index
    @tsteps = Tstep.all
  end

  def show
    @tstep = Tstep.find(params[:id])
  end

  def new
    @tstep = Tstep.new

  end

  def create
    @tcase = Tcase.find(params[:tcase_id])
    @tstep = @tcase.tsteps.create(tstep_params)
    redirect_to tcases_path

  end

  def edit
    @tstep = Tstep.find(params[:id])

  end

  def update
    @tstep = Tstep.find(params[:id])

  end

  def destroy
    @tcase = Tcase.find(params[:tcase_id])
    @tstep = @tcase.tsteps.find(params[:id])
    @tstep.destroy
    redirect_to tcases_path
  end

  private

  def tstep_params
    params.require(:tstep).permit(:expresult, :envir, :author)
  end

end
