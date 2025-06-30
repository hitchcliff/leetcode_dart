class GenerateParentheses {
  List<String> generateParenthesis(int n) {
    List<String> stack = [];
    List<String> res = [];

    backtrack(open, close) {
      if (open == close && close == n && open == n) {
        return res.add(stack.join());
      }

      if (open < n) {
        stack.add("(");
        backtrack(open + 1, close);
        stack.removeLast();
      }

      if (close < open) {
        stack.add(")");
        backtrack(open, close + 1);
        stack.removeLast();
      }
    }

    backtrack(0, 0);
    return res;
  }
}

main() {
  final ans = GenerateParentheses().generateParenthesis(3);
  print(ans);
}
