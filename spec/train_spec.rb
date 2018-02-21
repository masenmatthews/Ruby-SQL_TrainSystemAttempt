require("spec_helper")
require("rspec")
require('pg')
require('pry')
require('train')

  describe(Train) do
    describe('#==') do
      it('is the same train if names are the same') do
        one = Train.new({:train_type => 'MAX', :train_id => 'NAX01', :train_route => 'Westside NS'})
        two = Train.new({:train_type => 'MAX', :train_id => 'MAX01', :train_route => 'Westside NS'})
        expect(one).to(eq(two))
    end
  end
end
