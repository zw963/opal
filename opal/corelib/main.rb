def self.to_s
  'main'
end

def self.include(mod)
  Object.include mod
end

# Compiler overrides this method
def using(mod)
  raise RuntimeError, "main.using is permitted only at toplevel"
end
