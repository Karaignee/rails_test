class AddColumnToTable < ActiveRecord::Migration
  def change
    add_column :books, :image, :string

  end
end
