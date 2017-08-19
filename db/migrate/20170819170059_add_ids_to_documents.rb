class AddIdsToDocuments < ActiveRecord::Migration[5.1]
  def change
    add_column :documents, :ids, :string
    add_column :documents, :year, :string
    add_column :documents, :month, :string
    add_column :documents, :day, :string
    add_column :documents, :hour, :string
    add_column :documents, :min, :string
    add_column :documents, :sec, :string
    add_column :documents, :lcc1, :string
    add_column :documents, :lcc2, :string
    add_column :documents, :lcc3, :string
    add_column :documents, :lcc4, :string
    add_column :documents, :lcd1, :string
    add_column :documents, :lcd2, :string
    add_column :documents, :lcd3, :string
    add_column :documents, :lcd4, :string
    add_column :documents, :lcv1, :string
    add_column :documents, :lcv2, :string
    add_column :documents, :lcv3, :string
    add_column :documents, :lcv4, :string
    add_column :documents, :lcv5, :string
    add_column :documents, :lcv6, :string
    add_column :documents, :lcv7, :string
    add_column :documents, :lcv8, :string
    add_column :documents, :lvd1, :string
    add_column :documents, :lvd2, :string
    add_column :documents, :lvd3, :string
    add_column :documents, :lvd4, :string
    add_column :documents, :lvd5, :string
    add_column :documents, :lvd6, :string
    add_column :documents, :lvd7, :string
    add_column :documents, :lvd8, :string
  end
end
