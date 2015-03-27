class RemoveSizeFromHomepages < ActiveRecord::Migration
  def change
    remove_column :homepages, :size, :integer
  end
end
