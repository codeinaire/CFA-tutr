class CreateProfiles < ActiveRecord::Migration[5.0]
  def change
    create_table :profiles do |t|
      t.string :name
      t.string :username
      t.text :bio
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
