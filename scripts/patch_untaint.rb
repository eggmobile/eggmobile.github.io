unless "".respond_to?(:untaint)
  class String
    def untaint
      self
    end
    def tainted?
      false
    end
  end
end

unless Object.new.respond_to?(:tainted?)
  class Object
    def tainted?
      false
    end

    def untaint
      self
    end
  end
end
