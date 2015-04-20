class CategoriesController < ApplicationController

  def index
    @categories = Category.active
  end

  def manage
    @categories = Category.active
  end

  def destroy
    @category = Category.find(params[:id])
    @category.soft_destroy
    flash[:notice] = "Deleted <em>#{@category.name}</em> category. #{view_context.link_to('Click to undo deletion', category_restore_path(@category))}"
    redirect_to categories_manage_path
  end

  def restore
    @category = Category.deleted.find(params[:category_id])
    @category.soft_restore
    redirect_to categories_manage_path
  end

end