class TstepsController < ApplicationController

  def create
    @tstep = Tcase.find(params[:tcase_id]).tsteps.create(tstep_params)
    redirect_to tcases_path(@tcase)
  end

  def destroy
    @tcase = Tcase.find(params[:tcase_id]).tsteps.find(params[:id]).destroy
    redirect_to tcases_path(@tcase)
  end

  private

  def tstep_params
    params.require(:tstep).permit(:expresult, :envir, :author)
  end

end
