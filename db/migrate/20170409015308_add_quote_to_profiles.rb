class AddQuoteToProfiles < ActiveRecord::Migration[5.0]
  def change
    add_column :profiles, :quote, :text
  end
end
