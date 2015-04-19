class CreateQuestions < ActiveRecord::Migration
  def change
   create_table :questions do |column|
      column.belongs_to :category
      column.text :text, :null=> false
      column.integer :correct_count, :null=> false, :limit=> 2, :default=> 0
      column.integer :incorrect_count, :null=> false, :limit=> 2, :default=> 0
      column.boolean :last_attempt, :null=> false, :default=> false
    end
  end
end
