class CreateMeritTemplateCriteria < ActiveRecord::Migration
  def change
    create_table :merit_template_criteria do |t|
      t.string :criteria_name
      t.integer :criteria_marks

      t.timestamps
    end
  end
end
