set.seed(20910986)

deck = expand.grid(c("A","2","3","4","5","6","7","8","9","10","J","Q","K"),
                   c("Clubs","Diamonds","Hearts","Spades"))
colnames(deck) = c("Card Rank", "Card Suit")

nSim = 100000
success = 0
for(val in 1:nSim)
{
  hands = deck[sample(1:nrow(deck),2,replace = F),]
  draw1 = hands[1,1]
  draw2 = hands[2,1]
  if (draw1 == draw2)
  {
    success = success+1
  }
}
probest = success/nSim
print(probest)


