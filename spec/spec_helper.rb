require("rspec")
require("pg")
require("city")
require("train")

DB = PG.connect({:dbname => "train_system_test"})

RSpec.configure do |config|
  config.after(:each) do
    DB.exec("DELETE FROM city *;")
    DB.exec("DELETE FROM train *;")
  end
end
