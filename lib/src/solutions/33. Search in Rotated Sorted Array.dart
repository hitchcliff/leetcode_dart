int searchInRotatedSortedArray(List<int> nums, int target) {
  return helper(nums, target, 0, nums.length - 1);
}

int helper(List<int> nums, int target, int start, int end) {
  if (start > end) {
    return -1;
  }

  final int m = start + ((end - start) / 2).floor();

  // check if target == m
  if (target == nums[m]) {
    return m;
  }

  // check if first half is sorted
  if (nums[start] <= nums[m]) {
    // first case: answer can be found in first half
    if (target >= nums[start] && target <= nums[m]) {
      return helper(nums, target, start, m - 1);
    } else {
      return helper(nums, target, m + 1, end);
    }
  }

  // 2nd case: answer can be found in second half
  if (target >= nums[m] && target <= nums[end]) {
    return helper(nums, target, m + 1, end);
  }

  return helper(nums, target, start, m - 1);
}

void main() {}
