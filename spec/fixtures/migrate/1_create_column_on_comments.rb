class CreateColumnOnComments < ActiveRecord::Migration
  def up
    Lhm.change_table :comments, { stride: 5000, throttle: 150 } do |c|
      c.add_column :some_id_field, 'INT(11) DEFAULT NULL'
    end
  end

  def down
    Lhm.change_table :comments, { stride: 5000, throttle: 150 } do |c|
      c.remove_column :some_id_field
    end
  end
end
