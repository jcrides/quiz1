class CreateAttacks < ActiveRecord::Migration
  def change
    create_table :attacks do |t|
      t.string :name
      t.string :animal
      t.integer :size

      t.timestamps null: false
    end
  end
end
