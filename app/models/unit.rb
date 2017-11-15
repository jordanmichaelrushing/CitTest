class Unit

  KEYS = ['minute','hour','day','degree','second','hectare','litre','tonne','min','h','d','ha','t','L','°',"'",'"']

  def Unit.units
    {
      'minute' => '60',
      'hour' => '3600',
      'day' => '86400',
      'degree' => "#{Math::PI / 180}",
      'second' => "#{Math::PI / 648000}",
      'hectare' => '10000',
      'litre' => '0.001',
      'tonne' => '103',
      'min' => '60',
      'h' => '3600',
      'd' => '86400',
      'ha' => '10000',
      't' => '103',
      'L' => '0.001',
      '°' => "#{Math::PI / 180}",
      "'" => "#{Math::PI / 10800}",
      '"' => "#{Math::PI / 648000}"
    }
  end

  def Unit.symbols
    {
      'minute' => 's',
      'hour' => 's',
      'day' => 's',
      'degree' => "rad",
      'second' => "rad",
      'hectare' => 'm^2',
      'litre' => 'm^3',
      'tonne' => 'kg',
      'min' => 's',
      'h' => 's',
      'ha' => 'm^2',
      't' => 'kg',
      'L' => 'm^3',
      '°' => "rad",
      "'" => "rad",
      '"' => "rad"
    }
  end
end


