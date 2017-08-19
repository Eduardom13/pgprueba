class AddDato1ToDocuments < ActiveRecord::Migration[5.1]
  def change
    add_column :documents, :dato1, :integer, :array, :default => []
  end
end
