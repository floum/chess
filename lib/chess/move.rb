module Chess
  # the chess move class
  class Move
    attr_reader :source, :target

    def initialize(source, target, options = {})
      @source = source
      @target = target
    end
  end
end
