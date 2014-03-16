class CreateCatches < ActiveRecord::Migration
  def change
    create_table :catches do |t|
      t.decimal :length
      t.decimal :weight
      t.references :catch_report
      t.references :fish

      t.timestamps
    end
  end
end
