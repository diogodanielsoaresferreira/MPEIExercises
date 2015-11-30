# an example state transition matrix (page 3 is absorving)
H=[ 0.8 0   0.3 0;
    0.2 0.9 0.2 0;
    0   0.1 0.4 0;
    0   0   0.1 1];

# the fundamental matrix
Q = H(1:3,1:3);
F = inv(eye(3)-Q)

# given a transition matrix and the current state,
# this function returns the next state
function state = nextState(H, currentState)
  # find the probabilities of reaching all pages starting at the current one
  probVector = H(:,currentState); # Attention: it is a column vector
  # n is the number of pages, that is, H is n x n
  n = length(probVector);
  # pick the next page randomly according to those probabilities
  state = discrete_rnd(1:n, probVector);
endfunction


# random walk on the graph according to state transition matrix H
# first = initial state, last = terminal or absorving state
function state = crawl(H, first, last)
  # the sequence of states will be saved in the vector "state"
  # initially, the vector contains only the initial state
  state = [first];
  # keep moving from page to page until page "last" is reached
  while (1)
    state(end+1) = nextState(H, state(end));
    if (state(end) == last) break; 
    endif
  endwhile
endfunction


# pick the next page randomly according to those probabilities
# states = vector with states (numbers), probVector = probability vector
function state = discrete_rnd(states, probVector)
  idx=1+sum(cumsum(probVector)<rand);
  state=states(idx)
endfunction


# how to use crawl()
state = crawl(H, 1, 4);