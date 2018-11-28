class CreateSurveyResults < ActiveRecord::Migration
  def change
    create_table :survey_results do |t|
      t.references :interview
      t.integer :survey_marks,:default=>0;
      t.references :question

      t.timestamps
    end
  end
end
