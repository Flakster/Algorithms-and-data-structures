class SuperFoo

  attr_accessor :data

  def initialize
    @data = {}  
  end 
 
  def self.data_accessor(*args)
    args.each do |e|
      define_method(e) do
        @data[e]
      end
      define_method("#{e}=") do |value|
        @data[e] = value
      end
    end
  end

end

class SubFoo < SuperFoo
  data_accessor :fizz, :pi
end

sub_foo = SubFoo.new
#sub_foo.data_accessor('FIZZ')
sub_foo.fizz = "FIZZ"
p sub_foo.fizz 