class CreateMaindishes < ActiveRecord::Migration[5.1]
  def change
    create_table :maindishes do |t|
      t.string :name

      t.timestamps
    end
  end
end
