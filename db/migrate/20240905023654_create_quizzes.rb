class CreateQuizzes < ActiveRecord::Migration[7.2]
  def change
    create_table :quizzes do |t|
      t.text :content, null: false
      t.string :color_image
      
      t.timestamps
    end
  end
end
