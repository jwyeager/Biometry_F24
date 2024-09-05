######################################
#           Homework 02              #
######################################
library(tidyverse)
library(rmarkdown)
library(magrittr)
library(gtools)

## Section 2.1 Q1
p.fail <- 0.12
p.succ <- 1 - p.fail

## Section 2.1 Q3
q.num <- c('Q1','Q2','Q3','Q4')
outcomes <- expand.grid(lapply(q.num, function(x) c("T","F")))
colnames(outcomes) <- q.num
outcomes
#b
pr.3B <- 1/16 # probability for any one outcome thus,
pr.all.T <- pr.3B
pr.all.F <- pr.3B
pr.same <- pr.all.T + pr.all.F
pr.same
#c
q1.T <- 1/16
q2.T <- 1/16
q3.T <- 1/16
q4.T <- 1/16
pr.one.T <- q1.T + q2.T + q3.T + q4.T
pr.one.T
#d


## Section 2.1 Q5
#a
library(gtools)
candidates <- c(1, 2, 3, 4)
all.perms <- permutations(n = length(candidates), r = length(candidates), v = candidates)
colnames(all.perms) <- c('first','second','third','fourth')
all.perms %<>% as.tibble()
all.perms$sequence <- paste0("Seq.", 1:24)
all.perms
#b
A <- all.perms %>% filter(first %in% c(1,2))
A
#c
B <- all.perms %>% filter(!first %in% c(1,2)) %>% filter(!second %in% c(1,2))
B
#d
C <- all.perms %>% filter(first %in% c(3,4)) %>% filter(!(first == 4 & second != 3))
C