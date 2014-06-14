class ToDoListController < ApplicationController

  before_action :authenticate_user!

  def index
    @message = "Welcome!"
  end

  private def app_params
    params.require(:to_do_list).permit(:to_do_items)
  end
end