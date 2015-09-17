class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
    	t.string :name
      t.string :short_name
      t.string :code

      t.timestamps null: false
    end
  end
end
