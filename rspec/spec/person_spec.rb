require_relative 'helper_spec'

describe Person do
    before :each do
      @person = Person.new(12,'Hein Tay Zar')
    end
    context 'given two arguments' do
      it 'is an object of Person ' do
        expect(@person).to be_instance_of(Person)
      end

        it 'has the given data ' do
            expect(@person).to have_attributes(:name => 'Hein Tay Zar', :age => 12)
        end
        it 'has an id ' do
            expect(@person.id).not to be_nil
        end
    end
  end