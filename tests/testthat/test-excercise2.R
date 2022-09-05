# write a test where you give do_something() a character
expect_equal(do_something('abc'), data.frame(a = 'abc'))
# write a test where you give do_something() a vector of characters
expect_equal(do_something(c('d', 'e', 'f')), data.frame(a = c('d', 'e', 'f')))
# write a test where you give do_something() a numeric
expect_equal(do_something(1), data.frame(a = 1))


# write a test for when `do_calc = FALSE`
expect_equal(main(FALSE), list(calc = "skipped `calc_something_big()`"))
# write a test for when `do_calc = TRUE`
expect_vector(main(TRUE), list(calc = data.frame(a = 1:3, b = 4:6)))

# write a test to check expected relative abundances
expect_equal(to_rel_abun(data.frame(otu1 = 1:3, otu2 = 0:2)),
             data.frame(otu1 = c(1, 0.6667, 0.6),
                  otu2 = c(0, 0.3333, 0.4)),
             tolerance = 2
)
# write a test to make sure to_rel_abun() throws an error for negative abundance values
expect_error(to_rel_abun(data.frame(otuA = XXXX, otuB = XXXX)),
             "Dataset contains abundance less than zero")

# write tests for when you expect check_missing() to do nothing
expect_XXXX(check_missing(1))
expect_XXXX(check_missing('abc'))

# write a test for when you expect check_missing() to throw an error
error_msg <- '`x` cannot contain `NA`'
expect_XXXX(check_missing(NA), error_msg)
# write a test for a vector with no `NA`s
expect_XXXX(check_missing(XXXX))
# write a test for a vector containing an `NA`
expect_XXXX(XXXX)


# write tests for when you expect is_frac() to return true
#  Test both edge cases (the ends of the range of numbers is_frac() should accept)
#  plus values in the middle of the range.
expect_true(is_frac(XXXX))
expect_true(is_frac(XXXX))
expect_true(is_frac(XXXX))
# write tests for when you expect is_frac() to return false
#  with numbers that are too small and numbers that are too large.
expect_false(is_frac(XXXX))
expect_false(is_frac(XXXX))
# write tests for when you expect is_frac() to throw an error
error_msg <- "`frac` must be numeric"
expect_XXXX(is_frac(XXXX), error_msg)
expect_XXXX(is_frac(XXXX), error_msg)
# write tests using vectors of fractions,
#  then modify is_frac() until it works.
#  Don't forget to test both "good" and "bad" vectors.
expect_true(is_frac(XXXX))
expect_false(is_frac(XXXX))
expect_error(is_frac(XXXX), XXXX)

# write tests for when you expect check_binary_outcome() to throw an error.
#  be sure to include multiple cases with too few and too many outcomes.
expect_error(check_binary_outcome(data.frame(dx = c()), 'dx'))
error_msg <- XXXX
expect_error(check_binary_outcome(
  data.frame(dx = c('cancer', 'normal', 'adenoma'),
             a = 1:3,
             b = 4:6), 'dx'),
  paste(error_msg, 3))
expect_error(check_binary_outcome(
  data.frame(dx = 1:10,
             a = 1:10), 'dx'),
  paste(error_msg, XXXX))
expect_error(check_binary_outcome(
  data.frame(dx = XXXX,
             a = c('a')), 'dx'),
  paste(error_msg, 1))

# write tests for when you expect check_binary_outcome() to return nothing
expect_XXXX(check_binary_outcome(
  data.frame(dx = c(XXXX)), 'dx'))
expect_XXXX(check_binary_outcome(
  tibble::tibble(dx = c(XXXX)), 'dx'))
