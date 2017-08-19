class AddCedulaToDocuments < ActiveRecord::Migration[5.1]
  def change
    add_column :documents, :cedula, :string
  end
end
