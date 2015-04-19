class CategoriesController < ApplicationController

  def index
    @categories = Category.all
  end

  def manage
    @categories = Category.all
  end

  def destroy
    @category = Category.find(params[:id])
    #@category.soft_destroy
    flash[:notice] = "Deleted <em>#{@category.name}</em> category. #{view_context.link_to('Click to undo deletion', category_restore_path(@category))}"
    redirect_to categories_manage_path
  end

  def restore
    @category.soft_restore

  end

end