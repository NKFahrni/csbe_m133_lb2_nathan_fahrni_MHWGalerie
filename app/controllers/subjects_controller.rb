class SubjectsController < ApplicationController
  def show
    @subject = Subject2.find(params[:id])
  end
end
