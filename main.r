n=50000
opt = c("P","R","S")
player1strat =  c(1/3,1/3,1/3)
player2strat = c(0.1,0.8,0.1)
outcome = rep(0,n)
for(i in 1:n){
  play1 = sample(opt,1,replace = T,prob=player1strat)
  play2 = sample(opt,1,replace = T,prob = player2strat)
  if(play1=="P"){
    if(play2=="S"){
      outcome[i] = "L"
    }else{
      if(play2=="R"){
        outcome[i]="W"
      }else{
        outcome[i]="T"
      }
    }
  }else{
    if(play1=="R"){
      if(play2=="S"){
        outcome[i]="L"
      }else{
        if(play2=="P"){
          outcome[i]="W"
        }else{
          outcome[i]="T"
        }
      }
    }else{
      if(play2=="R"){
        outcome[i]="L"
      }else{
        if(play2=="S"){
          outcome[i]="W"
        }else{
          outcome[i]="T"
        }
      }
    }
  }
}
profit = (outcome == "W") - (outcome == "L")
print(profit)
print(mean(profit))