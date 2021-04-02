#' Creates histogram, boxplot, and summary statistics
#' @export
#' @param x numeric variable


ds <- function(x) {
  # specify 1 row and 2 columns for the plots involved
  par(mfrow = c(2, 2))
  # Histogram plot
  hist(x, col = rainbow(30))
  # Boxplot plot
  boxplot(x, col = 'green')
  # Density plot generation code
  plot(density(x))
  par(mfrow = c(1, 1))
  # Some of the numeric summaries of the package include:
  data.frame(min = min(x),
             median = median(x),
             mean = mean(x),
             max = max(x),
             sd = sd(x),
             var = var(x),
             sqrt = sqrt(mean(x)),
             range = max(x) - min(x))
}
