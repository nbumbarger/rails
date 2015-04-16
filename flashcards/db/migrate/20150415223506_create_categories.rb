class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |column|
      column.string :category, :null=> false, :limit=> 100
    end
  end
end
