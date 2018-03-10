# Example of a mixin
# class Phonograph in this example includes the module Debug
# this makes the method defined in the module available as
# an instance method of the class
# Ruby supports multiple inheritance in this way by allowing
# a class to include multiple modules

require './debug_module'

class Phonograph
  include Debug

  attr_reader :name

  def initialize(name)
    @name = name
  end
end

ph = Phonograph.new 'test'
p ph.who_am_i?
