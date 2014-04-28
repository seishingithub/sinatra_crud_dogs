Sequel.migration do
  up do
    create_table(:dogs) do
      primary_key :id
      String :name, :null=>false
      String :description, :null=>false
      Integer :rating_1_to_5
    end
  end

  down do
    drop_table(:dogs)
  end
end