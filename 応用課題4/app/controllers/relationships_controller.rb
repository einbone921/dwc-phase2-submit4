class RelationshipsController < ApplicationController

  def create
    @user.find(params[:id])
    
  end

  def destroy
  end

end
