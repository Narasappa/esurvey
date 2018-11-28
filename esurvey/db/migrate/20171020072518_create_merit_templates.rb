class CreateMeritTemplates < ActiveRecord::Migration
  def change
    create_table :merit_templates do |t|
      t.string :template_name

      t.timestamps
    end
  end
end
