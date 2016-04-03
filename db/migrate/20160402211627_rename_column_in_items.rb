class RenameColumnInItems < ActiveRecord::Migration
  def change
    rename_column :items, :list_name, :list_title
  end
end
