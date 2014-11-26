class AddMeaningIdToExamples < ActiveRecord::Migration
  def change
    add_column :examples, :meaning_id, :integer
  end
end
