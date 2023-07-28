class RemoveAgeFromPatients < ActiveRecord::Migration[7.0]
  def change
    # remove_column :table_name, :column_name
    remove_column :patients, :age
  end
end