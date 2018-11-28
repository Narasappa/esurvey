class AddMeritTemplateIdToSurveys < ActiveRecord::Migration
  def change
    add_column :surveys, :merit_template_id, :integer
  end
end
