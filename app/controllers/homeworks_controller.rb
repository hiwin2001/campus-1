class HomeworksController < ApplicationController
  
  respond_to :html, :js
  
  def index
  end
  
  def complete
    @homework = Homework.find(params[:id])
    #@homework.update_attribute(:completed, true)
  end
end