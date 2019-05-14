class RenameCommentColumnToGuestsHint < ActiveRecord::Migration[5.2]
  def change
    rename_column :comments, :comment, :guestsHint
  end
end
