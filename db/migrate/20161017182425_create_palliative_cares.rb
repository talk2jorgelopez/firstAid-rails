class CreatePalliativeCares < ActiveRecord::Migration
	def change
		create_table :palliative_cares do |t|
			t.string :pCare_title, :limit => 48, unique: true, null: false
			t.text :pCare_para1, :limit => 4095
			t.text :pCare_para2, :limit => 4095

			t.timestamps null: false
		end
		add_index :palliative_cares, :pCare_title
	end

	def down
		drop_table :palliative_cares
	end
end