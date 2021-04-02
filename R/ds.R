#' Creates histogram, boxplot, and summary statistics
#' @export
#' @param x numeric variable


ds <- function(x) {
  # specify 1 row and 2 columns for the plot
  par(mfrow = c(2, 2))
  # Histogram
  hist(x, col = rainbow(30))
  # Boxplot
  boxplot(x, col = 'green')
  # Density plot
  plot(density(x))
  par(mfrow = c(1, 1))
  # Some of the numeric summaries of the package
  data.frame(min = min(x),
             median = median(x),
             mean = mean(x),
             max = max(x),
             sd = sd(x),
             var = var(x),
             sqrt = sqrt(mean(x)),
             range = max(x) - min(x))
}
