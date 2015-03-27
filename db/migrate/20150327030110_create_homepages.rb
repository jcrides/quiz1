class CreateHomepages < ActiveRecord::Migration
  def change
    create_table :homepages do |t|
      t.string :name
      t.string :animal
      t.integer :size

      t.timestamps null: false
    end
  end
end
