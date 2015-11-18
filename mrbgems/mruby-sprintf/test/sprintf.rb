##
# Kernel#sprintf Kernel#format Test

assert('String#%') do
  assert_equal "one=1", sprintf("one=%d", 1)
  assert_equal "1 one 1.0", sprintf("%d %s %3.1f", 1, "one", 1.01)
  assert_equal "123 < 456", sprintf("%{num} < %<str>s", { num: 123, str: "456" })
  assert_equal 16, sprintf("%b", (1<<15)).size
end
