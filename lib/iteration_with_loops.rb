def find_min_in_nested_arrays(src)
  # src will be an array of arrays of integers
  # Produce a new Array that contains the smallest number of each of the nested arrays
  smallest_nums = []
  src_index = 0
  while src_index < src.count do
    num_index = 0
    smallest_num = src[src_index][num_index]
    while num_index < src[src_index].count do
      if src[src_index][num_index] < smallest_num
        smallest_num = src[src_index][num_index]
      end
      num_index += 1
    end
    smallest_nums << smallest_num
    src_index += 1
  end
  smallest_nums
end