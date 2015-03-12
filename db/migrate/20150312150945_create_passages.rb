class CreatePassages < ActiveRecord::Migration
  def change
    create_table :passages do |t|
      t.belongs_to :language
      t.text :content

      t.timestamps
    end
  end
end
