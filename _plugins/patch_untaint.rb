# Compatibility shims for older Liquid/Jekyll code that calls
# `tainted?` / `untaint` which were removed in newer Ruby versions.
# This plugin defines safe no-op implementations so templates don't crash.

unless ''.respond_to?(:untaint)
  class String
    def untaint
      self
    end
  end
end

unless ''.respond_to?(:tainted?)
  class Object
    def tainted?
      false
    end

    def untaint
      self
    end
  end
end
