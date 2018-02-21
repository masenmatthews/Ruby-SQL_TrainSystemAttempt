class City
  attr_reader(:city_id, :stop_id, :arrival_time)

  def initialize(attributes)
    @city_id = attributes.fetch(:city_id)
    @stop_id = attributes.fetch(:stop_id)
    @arrival_time = attributes.fetch(:arrival_time)
  end

  def ==(another_city)
    self.city_id().==(another_city.city_id()).&(self.stop_id().==(another_city.stop_id())).&(self.arrival_time().==(another_city.arrival_time()))
  end

  def city_id
    @city_id
  end

  def stop_id
    @stop_id
  end

  def arrival_time
    @arrival_time
  end

  def self.all()
    returned_cities = DB.exec("SELECT * FROM cities;")
    cities = []
    returned_cities.each() do |item|
      city_id = item.fetch("city_id")
      stop_id = item.fetch("stop_id")
      arrival_time = item.fetch("arrival_time")
      cities.push(City.new({:city_id => city_id, :stop_id => stop_id, :arrival_time => arrival_time}))
    end
    cities
  end
end
