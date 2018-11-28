class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :name
      t.boolean :is_active,:default=>true;
      t.references :survey

      t.timestamps
    end
    add_index :questions, :survey_id
  end
end
