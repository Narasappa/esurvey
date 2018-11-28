class AddShortWordToPoliticalParties < ActiveRecord::Migration
  def change
    add_column :political_parties, :short_word, :string
  end
end
