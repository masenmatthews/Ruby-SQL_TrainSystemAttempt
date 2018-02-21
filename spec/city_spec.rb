require("spec_helper")
require("rspec")
require('pg')
require('pry')
require('city')

  describe(City) do
    describe('#==') do
      it('is the same city if names are the same') do
        one = City.new({:city_id => 'Portland', :stop_id => '00001', :arrival_time => '08:30'})
        two = City.new({:city_id => 'Portland', :stop_id => '00001', :arrival_time => '08:30'})
        expect(one).to(eq(two))
    end
  end
end
