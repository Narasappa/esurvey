class CreateInterviews < ActiveRecord::Migration
  def change
    create_table :interviews do |t|
      t.string :name
      t.string :mobile_number
      t.string :voter_id
      t.references :survey

      t.timestamps
    end
    add_index :interviews, :survey_id
  end
end
