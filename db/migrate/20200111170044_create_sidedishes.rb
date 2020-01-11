class CreateSidedishes < ActiveRecord::Migration[5.1]
  def change
    create_table :sidedishes do |t|
      t.string :name

      t.timestamps
    end
  end
end
