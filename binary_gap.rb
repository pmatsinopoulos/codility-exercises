def binary_gap(n)
  return 0 if n.nil?
  max_gap = 0
  in_gap = false
  quotient = n
  previous = 0
  gap = 0
  while quotient > 0
    remainder = quotient % 2
    if remainder == 0 && in_gap
      gap += 1
    end
    if remainder == 1 && in_gap
      if gap > max_gap
        max_gap = gap
      end
      in_gap = false
      gap = 0
    end
    if remainder == 0 && !in_gap && previous == 1
      in_gap = true
      gap = 1
    end
    previous = remainder
    quotient = quotient / 2
  end

  max_gap
end
