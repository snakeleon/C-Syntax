"==========================================================================
"     FileName :	c.vim
"  Description :	C/C++ syntax highlighting for VIM
"       Author :	SiFe
"       E-Mail :	snakeleon@sina.com
"     HomePage :	https://github.com/snakeleon/csyntax
"      Version :	0.8.0
"   LastChange :	2015-02-02 11:15:08
"      History :
"==========================================================================

"========================================================
" 高亮用户定义类型
"========================================================
" 函数名高亮
syn match		cFunction "\<[a-zA-Z_][a-zA-Z_0-9]*\>[^()]*)("me=e-2
syn match		cFunction "\<[a-zA-Z_][a-zA-Z_0-9]*\>\s*("me=e-1
hi		cFunction		gui=NONE		guifg=#B5A1FF
" 类名高亮
syn match		cClassName "\<[a-zA-Z_][a-zA-Z_0-9]*\>*\:"me=e-1
syn match		cClassName "\<[a-zA-Z_][a-zA-Z_0-9]*\>*\."me=e-1
hi		cClassName		gui=NONE		guifg=#C0F570
" 数组高亮
syn match cVariant "\<[a-zA-Z_][a-zA-Z_0-9]*\>[^\[\]]*\]\["me=e-2
syn match cVariant "\<[a-zA-Z_][a-zA-Z_0-9]*\>\s*\["me=e-1
hi		cVariant		gui=NONE		guifg=#FA5BFA

"========================================================
" 高亮数学运算符
"========================================================
" C 运算操作符
syn match		cMathOperator			display "[-+\*/%=]"
" C 指针操作符
syn match		cPointerOperator		display "->\|\."
" C 比较运算及布尔运算 
syn match		cLogicalOperator		display "[!<>]=\="
syn match		cLogicalOperator		display "=="
" C 位运算操作符
syn match		cBinaryOperator			display "\(&\||\|\^\|<<\|>>\)=\="
syn match		cBinaryOperator			display "\~"
syn match		cBinaryOperatorError	display "\~="
" C 逻辑运算符 - 有位运算符优先
syn match		cLogicalOperator		display "&&\|||"
syn match		cLogicalOperatorError	display "\(&&\|||\)="
" 大括号
syn match		cBrace					display "[\{\}]"
" 方括号
"syn match		cBrackets				display "[\[\]]"
" 圆括号
syn match		cParenthesis			display "[\(\)]"
" 逗号
syn match		cComma					display "\,"
" 分号
syn match		cSemicolon				display "\;"

" 定义色彩
" --------------------------------------------------------------------------
hi cMathOperator				guifg=#22FF4E
hi cPointerOperator				guifg=#FF6600
hi cLogicalOperator				guifg=#3EFFE2
hi cBinaryOperator				guifg=#50F3F3
hi cBinaryOperatorError			guifg=#3EFFE2
hi cLogicalOperator				guifg=#3EFFE2
hi cLogicalOperatorError		guifg=#3EFFE2
hi cBrace						guifg=#00ff00
"hi cBrackets					guifg=#0000ff
hi cParenthesis					guifg=#88FF88
hi cComma						guifg=RED
hi cSemicolon					guifg=RED
" 数字颜色
hi Number						guifg=#FF4444
" 字符串中的特殊字符
hi Special						guifg=#D8D839

"---------------------------------------------------------------------------
" C/C++语法定义对照表
"---------------------------------------------------------------------------
"Comment             注释  
"PreProc             预处理  
"Type                数据类型  
"Constant            常量  
"Statement           控制语句  
"Special             字符串中的中的特殊字符  
"String              字符串  
"cCppString          Cpp字符串  
"Number              数字  
"Todo                TODO、HACK、FIXME等标签 
