class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |column|
      column.belongs_to :question
      column.string :text, :null=> false, :limit=> 100
    end
  end
end
