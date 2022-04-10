class CreateProfiles < ActiveRecord::Migration[6.1]
  def change
    create_table :profiles do |t|
      t.string :team
      t.string :interest

      t.timestamps
    end
  end
end
