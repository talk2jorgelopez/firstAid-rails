class CreateVitals < ActiveRecord::Migration
	def up
		create_table :vitals do |t|
			t.string :vital_type, :length => 48, unique: true, null: false

			t.timestamps null: false
		end
	add_index :vitals, :vital_type
	end

	def down
		drop_table :vitals
	end
end
