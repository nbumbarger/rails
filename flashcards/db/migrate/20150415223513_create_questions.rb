class CreateQuestions < ActiveRecord::Migration
  def change

   create_table :questions do |column|
      column.belongs_to :category
      column.text :question, :null=> false
      column.integer :attempts, :null=> false, :default=> 0
      column.boolean :last_attempt_correct, :null=> false, :default=> false
    end
  end
end
