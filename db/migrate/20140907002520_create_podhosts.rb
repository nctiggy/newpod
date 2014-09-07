class CreatePodhosts < ActiveRecord::Migration
  def change
    create_table :podhosts do |t|
      t.text :host_name
      t.text :wwn_a
      t.text :wwn_b

      t.timestamps
    end
  end
end
