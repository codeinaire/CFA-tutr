class CreateBadges < ActiveRecord::Migration[5.0]
  def change
    create_table :badges do |t|
      t.string :name
      t.references :profile, foreign_key: true
      t.string :image
    end
  end
end
