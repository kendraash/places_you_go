require('rspec')
require('places')

describe(Places) do

  before() do
    Places.clear()
  end

  describe('#place') do
    it('take a user input for a place they have been') do
      test_place=Places.new('Portland, Oregon')
      expect(test_place.place()).to(eq('Portland, Oregon'))
    end
  end

  describe('.all') do
    it ('it checks that the array starts as an empty array') do
      expect(Places.all()).to(eq([]))
    end
  end

  describe('#save') do
      it('saves the user input to an array') do
        test_place = Places.new('San Francisco, California')
        expect(test_place.save()).to(eq([test_place]))
      end
  end

  describe('.clear') do
    it('clears the array') do
      Places.new('Boise, Idaho').save()
      Places.clear()
      expect(Places.all()).to(eq([]))
    end
  end

end
