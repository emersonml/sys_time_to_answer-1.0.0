class CreateAnswers < ActiveRecord::Migration[6.1]
  def change
    create_table :answers do |t|
      t.text :description, null: false
      t.boolean :correct, default: false
      #Ex:- :default =>''
      # t.boolean :correct, default: 'yx'
      t.references :question, null: false, foreign_key: true

      t.timestamps
    end
  end
end
