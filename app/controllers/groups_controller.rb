class GroupsController < ApplicationController
  def show
    @group =Group.find(id_params[:id])
  end

  def edit
    @group = Group.find(id_params[:id])
  end

  def update
    @group = Group.find(id_params[:id])
    @group.update(update_params)
  end

  private
  def id_params
    params.permit(:id)
  end

  def update_params
    params.require(:group) .permit(:key, :detail)
  end
end