set.seed(20910986)

nSim = 100000
success = 0
for(val in 1:nSim)
{
  dice = sample(1:6, 6, replace = TRUE)
  for (x in 1:3)
  {
    if (length(unique(dice)) == 6)
    {
      success = success + 1
      break
    }
    else 
    {
      dice = unique(dice)
      dice[(length(dice) + 1):6] = sample(1:6, 6 - length(dice), replace = TRUE)
    }
  }
}
probest = success/nSim
print(probest)
