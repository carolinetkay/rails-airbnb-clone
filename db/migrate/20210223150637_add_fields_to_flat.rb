class AddFieldsToFlat < ActiveRecord::Migration[6.0]
  def change
    add_column :flats, :name, :string
    add_column :flats, :description, :string
  end
end
