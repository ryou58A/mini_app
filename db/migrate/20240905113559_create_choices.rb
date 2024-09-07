class CreateChoices < ActiveRecord::Migration[7.2]
  def change
    create_table :choices do |t|
      t.string :content, null: false
      t.boolean :answer, default: false, null: false
      t.references :quiz, foreign_key: true, null: false

      t.timestamps
    end
  end
end
