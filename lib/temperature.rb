# convert fahrenheit temperature to celsius ( precision 0.1 )
def ftoc (temp)
  (temp - 32.0) * 5.0 / 9.0
end

# convert celsius temperature to fahrenheit ( precision 0.1 )
def ctof (temp)
  (temp * 9.0 / 5.0) + 32.0
end
