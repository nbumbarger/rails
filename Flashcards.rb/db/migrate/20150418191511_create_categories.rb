class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |column|
      column.string :name, :null=> false, :limit=> 100
      column.integer :play_count, :null=> false, :limit=> 2, :default=> 0
      column.integer :cumulative_score, :null=> false, :limit=> 2, :default=> 0
    end
  end
end