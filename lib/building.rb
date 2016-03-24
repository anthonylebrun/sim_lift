module SmartLift
  class Building
    attr_reader :shafts, :bottom, :top

    def initialize(shafts:, bottom:, top:)
      @shafts = shafts
      @bottom = bottom
      @top = top
    end

  end
end