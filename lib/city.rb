class City
  @@city_list = []

  def initialize(attributes)
    @city_id = attributes.fetch(:city_id)
    @stop_id = attributes.fetch(:stop_id)
    @time = attributes.fetch(:time)
  end



end
