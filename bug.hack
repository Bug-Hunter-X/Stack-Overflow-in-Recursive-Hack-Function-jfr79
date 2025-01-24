function foo(x: int): int {
  if (x == 0) {
    return 1;
  } else {
    return x * foo(x - 1);
  }
}

function bar(): void {
  echo foo(5);
}

//This code will cause a stack overflow error if called with a large enough value for x.
//The problem is that the function foo calls itself recursively without a base case.
//The base case is x == 0, but if x is not equal to 0, the function continues to call itself indefinitely.
//This can lead to a stack overflow error, which is when the program runs out of memory for storing function calls.