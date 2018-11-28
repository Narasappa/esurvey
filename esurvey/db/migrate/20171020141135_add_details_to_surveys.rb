class AddDetailsToSurveys < ActiveRecord::Migration
  def change
    add_column :surveys, :state_id, :integer
    add_column :surveys, :mp_constituency_id, :integer
    add_column :surveys, :mla_constituency_id, :integer
    add_column :surveys, :mla_town_id, :integer
  end
end
