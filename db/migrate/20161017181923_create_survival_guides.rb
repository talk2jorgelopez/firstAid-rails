class CreateSurvivalGuides < ActiveRecord::Migration
  def up
    create_table :survival_guides do |t|
      t.string :guide_title, :limit => 48, unique: true, null: false
      t.text :guide_para1, :limit => 4095
      t.text :guide_para2, :limit => 4095

      t.timestamps null: false
    end
      add_index :survival_guides, :guide_title
  end

	def down
		drop_table :survival_guides
	end
end