#Every month I have to take a bill from our PR company and split it up between 5 different brands
#Vineyard Brands is charged 20% of the bill
#Graham's and Cockburn's are charged 30% of the bill
#Dow's and P+S are charged 10% of the bill
#I wanted to come up with a script that took the amount as an argument and break it up into the different % groups
#Feedback appreciated!


def calhounBill(amount)
  #vb = Vineyard Brands, bigBrands = Graham's and Cockburn's (ie 30% each)
  vb = amount * 0.2
  bigBrands = amount * 0.3
  smallBrands = ((amount - ((vb.to_i) + (bigBrands.to_i * 2))) / 2)
  total = vb.to_i + (bigBrands.to_i * 2) + (smallBrands * 2)

  #printing the amount for each brand then printing the total to test that it matches the amount
  puts "Vineyard Brands = #{vb.to_i}"
  puts "Graham's and Cockburn's = #{bigBrands.to_i}"
  puts "Dow's and P+S = #{smallBrands}"
  puts total
end

calhounBill(1168.53)