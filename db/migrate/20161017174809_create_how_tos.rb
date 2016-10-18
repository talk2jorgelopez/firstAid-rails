class CreateHowTos < ActiveRecord::Migration
	def up
		create_table :how_tos do |t|
			t.integer :how_to_id, :limit => 4, null: false, unique: true
			t.string :how_to_title, :limit => 36, null: false
			t.string :how_to_url, :limit => 256

			t.timestamps null: false
		end
		add_index :how_tos, :how_to_id
		add_index :how_tos, :how_to_title
	end

	def down
		drop_table :how_tos
	end
end
