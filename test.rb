module A
  def n
    p 'n'
    self
  end
end

class B

  extend A

end


B.n