ci.prop.conf = function(x,n,c) {
  p_hat = x/n
  se = sqrt(p_hat * (1-p_hat) / n)
  alpha = 1- c
  z = qnorm(1-alpha/2)
  lower = p_hat- z * se
  upper = p_hat + z * se
  return(list(
    proportion = p_hat,
    confidence.interval = c,
    lower = lower,
    upper = upper
  ))}
ci.prop.conf(46, 200, .95)