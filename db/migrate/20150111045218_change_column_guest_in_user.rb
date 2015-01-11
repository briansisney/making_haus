class ChangeColumnGuestInUser < ActiveRecord::Migration
  def up
    add_column :users, :member, :boolean, :default => false
  end

  def down
    remove_column :users, :guest, :boolean
  end
end
