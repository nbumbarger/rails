class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |column|
      column.belongs_to :question
      column.text :answer, :null=> false
    end
  end
end
