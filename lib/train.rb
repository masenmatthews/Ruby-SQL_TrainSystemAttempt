class Train
  @@train_list = []

  def initialize(attributes)
    @train = attributes.fetch(:train)
    @train_id = attributes.fetch(:train_id)
    @train_route = attributes.fetch(:train_route)
  end



end
