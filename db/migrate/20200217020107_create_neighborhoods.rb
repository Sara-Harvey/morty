class CreateNeighborhoods < ActiveRecord::Migration
  def change
  	  create_table :neighborhoods do |t|
        t.string :title
        t.integer :rate
		t.integer :borough_id
    end
  end
end