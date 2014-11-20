class CreateWords < ActiveRecord::Migration
  def change
    create_table :words do |t|
      t.string :term
      t.string :pronunciation
      t.string :origin

      t.timestamps
    end
  end
end
