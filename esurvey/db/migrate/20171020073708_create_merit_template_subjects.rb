class CreateMeritTemplateSubjects < ActiveRecord::Migration
  def change
    create_table :merit_template_subjects do |t|
      t.string :subject_name
      t.integer :subject_marks
      t.integer :merit_template_id

      t.timestamps
    end
  end
end
