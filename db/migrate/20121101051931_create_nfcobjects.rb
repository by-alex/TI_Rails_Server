class CreateNfcobjects < ActiveRecord::Migration
  def change
    create_table :nfcobjects do |t|
      t.string :name
      t.string :description
      t.string :nfctype

      t.timestamps
    end
  end
end
