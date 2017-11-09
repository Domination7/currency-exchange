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
  print " Invalid code, restart!"
  exit
end
print "\n\n Amount of #{firstCode}: "
firstAmount = gets.chomp

print "\n\n Code for exchanged currency: "
secondCode = gets.chomp
secondCode.upcase!

if (secondCode == "USD")||(secondCode == "GBR")||(secondCode == "EUR")||(secondCode == "CAD")||(secondCode == "AUD")||(secondCode == "JPY")
  print " Valid code"
else
  print " Invalid code, restart!"
  exit
end

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
