class CreateMeanings < ActiveRecord::Migration
  def change
    create_table :meanings do |t|
      t.integer :meaning_number
      t.string :part_of_speech
      t.text :definition

      t.timestamps
    end
  end
end
