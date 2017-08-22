class AddIdsToDocuments < ActiveRecord::Migration[5.1]
  def change
    add_column :documents, :ids, :string
    add_column :documents, :year, :integer
    add_column :documents, :month, :integer
    add_column :documents, :day, :integer
    add_column :documents, :hour, :integer
    add_column :documents, :min, :integer
    add_column :documents, :sec, :integer
    add_column :documents, :lcc1, :float
    add_column :documents, :lcc2, :float
    add_column :documents, :lcc3, :float
    add_column :documents, :lcc4, :float
    add_column :documents, :lcd1, :float
    add_column :documents, :lcd2, :float
    add_column :documents, :lcd3, :float
    add_column :documents, :lcd4, :float
    add_column :documents, :lcv1, :float
    add_column :documents, :lcv2, :float
    add_column :documents, :lcv3, :float
    add_column :documents, :lcv4, :float
    add_column :documents, :lcv5, :float
    add_column :documents, :lcv6, :float
    add_column :documents, :lcv7, :float
    add_column :documents, :lcv8, :float
    add_column :documents, :lvd1, :float
    add_column :documents, :lvd2, :float
    add_column :documents, :lvd3, :float
    add_column :documents, :lvd4, :float
    add_column :documents, :lvd5, :float
    add_column :documents, :lvd6, :float
    add_column :documents, :lvd7, :float
    add_column :documents, :lvd8, :float
  end
end
