class AddUserToDocuments < ActiveRecord::Migration[5.1]
  def change
    add_column :documents, :User, :string
  end
end
