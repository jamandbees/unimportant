class ToDoItemController < ApplicationController
  
  def create
    @to_do_item = ToDoItem.create(@params[:content])
  end
  
  private def app_params
    params.require(:to_do_item).permit(:content, :deleted?)
  end
end
