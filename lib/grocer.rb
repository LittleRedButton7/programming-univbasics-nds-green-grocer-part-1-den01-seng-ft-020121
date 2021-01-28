require 'pry'
GROCER = [
      {:item => "AVOCADO", :price => 3.00, :clearance => true},
      {:item => "KALE", :price => 3.00, :clearance => false},
      {:item => "BLACK_BEANS", :price => 2.50, :clearance => false},
      {:item => "ALMONDS", :price => 9.00, :clearance => false},
      {:item => "TEMPEH", :price => 3.00, :clearance => true},
      {:item => "CHEESE", :price => 6.50, :clearance => false},
      {:item => "BEER", :price => 13.00, :clearance => false},
      {:item => "PEANUTBUTTER", :price => 3.00, :clearance => true},
      {:item => "BEETS", :price => 2.50, :clearance => false},
      {:item => "SOY MILK", :price => 4.50, :clearance => true}
    ]
  

def find_item_by_name_in_collection(name, collection)
  count = 0
  while count < collection.length
    if collection[count][:item] == name
      return collection[count]
    end
    count += 1
  end
end

def consolidate_cart(cart)
  new_cart = []
  count = 0
  while count < cart.length 
    new_item = find_item_by_name_in_collection(cart[count][:item], new_cart)
    if new_item != nil
      new_item[:count] += 1
    else 
    end
   count += 1
  end
end

# want to return an AoH of items like [{:item=> "AVOCADO", :price => 3.00, :clearance => false, count: 2}]

  