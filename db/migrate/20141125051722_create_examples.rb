class CreateExamples < ActiveRecord::Migration
  def change
    create_table :examples do |t|
      t.text :body
      t.text :source

      t.timestamps
    end
  end
end
