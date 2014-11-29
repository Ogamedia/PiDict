class AddWordIdToMeaning < ActiveRecord::Migration
  def change
    add_column :meanings, :word_id, :integer, index: true
  end
end
