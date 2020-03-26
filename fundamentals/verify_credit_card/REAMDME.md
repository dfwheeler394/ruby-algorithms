implement the Luhn algorithm(https://en.wikipedia.org/wiki/Luhn_algorithm) to check if a credit card number is valid.


```ruby
valid_card?("4242 4242 4242 4242")
# => true

valid_card?("4242 4242 4242 4241")
# => false

if your credit card number starts with a `5`, then it was issued by Mastercard, and if starts with a `4` then it was issued by Visa. Check inside your wallet!
