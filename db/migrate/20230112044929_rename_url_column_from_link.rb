class RenameUrlColumnFromLink < ActiveRecord::Migration[6.1]
  def change
    rename_column :links, :url, :original_url
  end
end
