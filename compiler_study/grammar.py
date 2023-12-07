import ast

def simple_ast_eval(expr: str):
    # Parse the expression into an AST
    node = ast.parse(expr, mode='eval')
    
    # Print the parsed AST
    print(ast.dump(node))
    
    # Compile and evaluate the expression
    compiled_expr = compile(node, filename='<ast>', mode='eval')
    result = eval(compiled_expr)
    
    return result

expression = input("Enter a Python expression: ")
result = simple_ast_eval(expression)
print(f"Result: {result}")
