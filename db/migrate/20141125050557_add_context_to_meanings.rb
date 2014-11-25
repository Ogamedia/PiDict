class AddContextToMeanings < ActiveRecord::Migration
  def change
    add_column :meanings, :context, :text
  end
end
