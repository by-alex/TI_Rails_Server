class CreateNfcobjectattributes < ActiveRecord::Migration
  def change
    create_table :nfcobjectattributes do |t|
      t.string :name
      t.string :value
      t.integer :nfcobject_id

      t.timestamps
    end
  end
end
