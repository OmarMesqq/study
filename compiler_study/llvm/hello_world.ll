@str = constant [14 x i8] c"Hello, World!\0A"

declare i32 @printf(i8*, ...)

define i32 @main() {
  %ptr = getelementptr [14 x i8], [14 x i8]* @str, i32 0, i32 0
  call i32 (i8*, ...) @printf(i8* %ptr)
  ret i32 0
}

