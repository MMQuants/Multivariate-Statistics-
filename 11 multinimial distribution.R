# task 01
colors = c('blue', 'brown', 'green', 'orange', 'red', 'yellow', 'purple')

probs = c(1,1,1,1,2,2,2)

probs = probs / sum(probs)

bag = sample(colors, 30, replace = TRUE, prob = probs)

table(bag)

