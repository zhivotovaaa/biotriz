class CreateEntitiesEntityFunctionsTable < ActiveRecord::Migration
  def up
    create_table :entities_ent_functions, id: false do |t|
      t.integer :entity_id
      t.integer :entity_function_id
    end

    add_index :entities_ent_functions, [:entity_id, :entity_function_id], name: "i_entities_ent_functions_on_entity_function_id_and_entity_id"
    add_index :entities_ent_functions, [:entity_function_id, :entity_id], name: "i_entities_ent_functions_on_entity_id_and_entity_function_id"
  end

  def down
    drop_table :entities_ent_functions
  end
end
