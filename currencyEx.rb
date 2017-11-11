require 'bigdecimal'
require 'bigdecimal/util'

gbrTousd = 1.31016
eurTousd = 1.16079
cadTousd = 0.785976
audTousd = 0.76568
jpyTousd = 0.00880674

usdTogbr = 0.763263
usdToeur = 0.861481
usdTocad = 1.2723
usdToaud = 1.30603
usdTojpy = 113.549

puts "\n\n\n\n\n\n\n-------------------------------------------------------------\n\n"
puts " Welcome to the Currency Exchange!"
puts "\n Here are the available country codes"
puts "\n\n USD - US Dollars            GBR - British Pounds"
puts "\n EUR - Euros                 CAD - Canadian Dollars"
puts "\n AUD - Australian Dollar     JPY - Japanese Yen"
print "\n\n Code for original currency: "
firstCode = gets.chomp
firstCode.upcase!

if (firstCode == "USD")||(firstCode == "GBR")||(firstCode == "EUR")||(firstCode == "CAD")||(firstCode == "AUD")||(firstCode == "JPY")
  print " Valid code"
else
  print " Invalid code, restart!\n\n"
  exit
end
print "\n\n Amount of #{firstCode}: "
firstAmount = gets.chomp
firstAmount.to_f

print "\n\n Code for exchanged currency: "
secondCode = gets.chomp
secondCode.upcase!

if (secondCode == "USD")||(secondCode == "GBR")||(secondCode == "EUR")||(secondCode == "CAD")||(secondCode == "AUD")||(secondCode == "JPY")
  print " Valid code"
else
  print " Invalid code, restart!\n\n"
  exit
end


usdValue = 0;
usdValue.to_f
finalValue = 0;
finalValue.to_f

if(firstCode == "USD")
  usdValue = firstAmount.to_d
end

if(firstCode == "GBR")
  usdValue = firstAmount.to_d * gbrTousd.to_d
end

if(firstCode == "EUR")
  usdValue = firstAmount.to_d * eurTousd.to_d
end

if(firstCode == "CAD")
  usdValue = firstAmount.to_d * eurTousd.to_d
end

if(firstCode == "AUD")
  usdValue = firstAmount.to_d * audTousd.to_d
end

if(firstCode == "JPY")
  usdValue = firstAmount.to_d * jpyTousd.to_d
end


if(secondCode == "USD")
  finalValue = usdValue.to_f
end

if(secondCode == "GBR")
  finalValue = usdValue.to_f * usdTogbr.to_f
end

if(secondCode == "EUR")
  finalValue = usdValue.to_f * usdToeur.to_f
end

if(secondCode == "CAD")
  finalValue = usdValue.to_f * usdTocad.to_f
end

if(secondCode == "AUD")
  finalValue = usdValue.to_f * usdToaud.to_f
end

if(secondCode == "JPY")
  finalValue = usdValue.to_f * usdTojpy.to_f
end

puts "\n\n\n\n--- #{firstAmount} #{firstCode} is equal to #{finalValue} #{secondCode}. ---"
puts "\n\n-------------------------------------------------------------"
