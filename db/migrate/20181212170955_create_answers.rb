class CreateAnswers < ActiveRecord::Migration[5.2]
  def change
    create_table :answers do |t|
      t.text :body
      t.references :question, foreign_key: true
      # "question_id" INTEGER (or BIGINT)
      
      t.timestamps
    end
  end
end
