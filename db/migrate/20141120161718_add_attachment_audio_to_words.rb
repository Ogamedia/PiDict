class AddAttachmentAudioToWords < ActiveRecord::Migration
  def self.up
    change_table :words do |t|
      t.attachment :audio
    end
  end

  def self.down
    remove_attachment :words, :audio
  end
end
