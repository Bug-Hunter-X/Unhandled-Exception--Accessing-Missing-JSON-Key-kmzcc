# Unhandled Exception: Accessing Missing JSON Key in Dart

This repository demonstrates a common error in Dart when working with JSON data:  trying to access a key that might be missing from the JSON response. This can lead to runtime exceptions if not handled properly.

The `bug.dart` file shows the problematic code. The `bugSolution.dart` file provides a corrected version that handles the potential absence of the key using null-aware operators.

**Problem:**
The original code assumes the existence of a key ('key' in this case) within the JSON response. If this key is absent, a runtime exception occurs.

**Solution:**
The solution uses the null-aware operator (`?.`) to safely access the key and the null coalescing operator (`??`) to provide a default value if the key is missing.