#
# Plato::AnalogIO class
#
module Plato
  class AnalogIO < GPIO
    DEFAULT_RESOLUTION = 10

    attr_reader :resolution

    def initialize(pin)
      super(pin)
      @resolution = DEFAULT_RESOLUTION
    end

    def resolution=(reso)
      @resolution = reso
    end
  end
end
