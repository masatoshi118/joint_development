# Q26. 以下の２つのハッシュを合体させた新しいハッシュを作成してください

# {C: "printf", COBOL: "DISPLAY", Go: "fmt.Print", Java: "System.out.println"}
# {JavaScript: "console.log", R: "print", Ruby: "puts"}

def q26
  h1 = {C: "printf", COBOL: "DISPLAY", Go: "fmt.Print", Java: "System.out.println"}
  h2 = {JavaScript: "console.log", R: "print", Ruby: "puts"}

  p h1.merge(h2)
end