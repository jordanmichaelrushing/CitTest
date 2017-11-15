class String
  def unit_conversion
    reg = "[\(|\)|\*|\/|" + Unit::KEYS.join('|') + "]{1,}"

    if self.chars.length == 0 || self.gsub(%r[#{reg}], '').length > 0
      return { success: false, message: "Bad Parameter" }
    end

    unit = self.dup
    num = self.dup

    Unit::KEYS.each do |k|
      num.gsub!(k, Unit.units[k])
      unit.gsub!(k, Unit.symbols[k]) unless k == 'd'
    end

    # Need to separate d because rad has a d in it. So need to make sure it's
    # at the begining of the line or preceeded by a "*" or "/" or "("
    unit.gsub!(/^d|\/d|\*d|\(d/, 's')

    return {
      unit_name: unit,
      multiplication_factor: eval(num).round(14)
    }
  end
end


