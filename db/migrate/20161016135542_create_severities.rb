class CreateSeverities < ActiveRecord::Migration
	def up
		create_table :severities do |t|
			t.string :severity_level, :limit => 48, unique: true, null: false

			t.timestamps null: false
		end
		add_index :severities, :severity_level
	end

	def down
		drop_table :severities
	end
end
