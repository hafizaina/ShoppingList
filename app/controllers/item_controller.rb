class ItemController < ApplicationController
  $current_list

  def new
    @list_title = params[:list_title]
    @actual_list = List.find_by_title(@list_title)
    $current_list = @actual_list
  end

  def create
    @item = Item.new(item_params)

    @item.save
    redirect_to list_path(List.find_by_title($current_list.title), :list_title => $current_list.title)
  end

  def destroy
    @item = Item.find(params[:id])
    if @item.present?
      @item.destroy
    end
    redirect_to :back
  end

  private
    def item_params
      params.require(:item).permit(:name, :list_title)
    end
end
