class ToDoListController < ApplicationController
  private def app_params
    params.require(:to_do_list).permit(:to_do_items)
  end
end