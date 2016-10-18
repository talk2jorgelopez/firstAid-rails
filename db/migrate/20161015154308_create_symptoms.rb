class CreateSymptoms < ActiveRecord::Migration
	def up
		create_table :symptoms do |t|
			t.string :symptom_type, :length => 48, unique: true, null: false

			t.timestamps null: false
		end
		add_index :symptoms, :symptom_type
	end

	def down
		drop_table :symptoms
	end
end
