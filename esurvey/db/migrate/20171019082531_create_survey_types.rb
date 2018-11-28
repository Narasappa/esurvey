class CreateSurveyTypes < ActiveRecord::Migration
  def change
    create_table :survey_types do |t|
      t.string :name

      t.timestamps
    end
    ["Party Survey","Scheme Survey","Candidate Survey"].each do |survey|
        SurveyType.create(:name=>survey)
    end
  end
end
