class CreateFirstaids < ActiveRecord::Migration
  def up
    create_table :firstaids do |t|
      t.string :firstAidName, :limit => 48, unique: true, null: false
      t.string :firstAidDescription, :limit => 128
      t.references :symptom, index: true, foreign_key: true
      t.references :vital, index: true, foreign_key: true
      t.references :severity, index: true, foreign_key: true

      t.timestamps null: false
    end
    add_index :firstaids, :firstAidName
  end

	def down
		drop_table :firstaids
	end
end
