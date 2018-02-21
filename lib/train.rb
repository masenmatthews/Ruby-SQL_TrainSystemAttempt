class Train

  attr_accessor(:train, :train_id, :train_route)

  def initialize(attributes)
    @train = attributes.fetch(:train)
    @train_id = attributes.fetch(:train_id)
    @train_route = attributes.fetch(:train_route)
  end

  # def ==(another_train)
  #   self.train().==(another_train.train()).&(self.train_id().==(another_train.train_id()).&(self.train_route().==(another_train.train_route()))
  # end

  def train
    @train
  end

  def train_id
    @train_id
  end

  def train_route
    @train_route
  end
end
