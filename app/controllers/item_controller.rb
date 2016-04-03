class ItemController < ApplicationController
  def destroy
    Item.find(params[:id]).destroy
    respond_to do |format|
      format.html { redirect_to :back}
      format.json { head :no_content }
    end
  end
end