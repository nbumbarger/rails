class ManageController < ApplicationController

  def index
    @categories = Category.all
  end

end