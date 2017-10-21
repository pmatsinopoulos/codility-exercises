def partition_temperatures(t)
  scan = 1
  in_summer = false
  winter_max = t[0]
  winter_counter = 0
  while scan <= t.size - 1
    if t[scan] < winter_max
      in_summer = false
      winter_counter = scan
    elsif t[scan] > winter_max
      in_summer = true
    elsif t[scan] < t[scan-1] && in_summer && t[scan] <= winter_max
      in_summer = false
      winter_counter = scan
    end
    scan += 1
  end
  winter_counter + 1
end
