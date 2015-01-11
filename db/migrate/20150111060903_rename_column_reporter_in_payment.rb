class RenameColumnReporterInPayment < ActiveRecord::Migration
  def change
    rename_column :payments, :reproter_id, :reporter_id
  end
end
