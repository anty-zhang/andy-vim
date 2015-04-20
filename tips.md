快捷键
注意, 以下 `,` 代表<leader>

1.上排F功能键

F1: 废弃这个键,防止调出系统帮助
F2: set nu/nonu,行号开关，用于鼠标复制代码用
F3: set list/nolist,显示可打印字符开关
F4: set wrap/nowrap,换行开关
F5: set paste/nopaste,粘贴模式paste_mode开关,用于有格式的代码粘贴
F6: syntax on/off,语法开关，关闭语法可以加快大文件的展示
F9: tagbar

2.
ctrl + j/k/h/l: 进行上下左右窗口跳转,不需要ctrl+w+jkhl

<space>: 空格，进入搜索状态
/      :同上
,/     :去除匹配高亮

(交换了#/* 号键功能, 更符合直觉, 其实是离左手更近)
#       正向查找光标下的词
*       反向查找光标下的词

3.
ctrl+t 新建一个tab

(hjkl)
,th    切第1个tab
,tl    切最后一个tab
,tj    下一个tab
,tk    前一个tab

,tn    下一个tab(next)
,tp    前一个tab(previous)

,td    关闭tab
,te    tabedit
,tm    tabm

,1     切第1个tab
,2     切第2个tab
...
,9     切第9个tab
,0     切最后一个tab

,tt    最近使用两个tab之间切换
(可修改配置位 ctrl+o,  但是ctrl+o/i为系统光标相关快捷键, 故不采用)

4.
buffer操作(不建议, 建议使用ctrlspace插件来操作)
[b    前一个buffer
]b    后一个buffer
<-    前一个buffer
->    后一个buffer


5. 按键修改
Y         =y$   复制到行尾
U         =Ctrl-r
,sa       select all,全选
,v        选中段落
kj        代替<Esc>，不用到角落去按esc了

,q     :q，退出vim

ctrl+n    相对/绝对行号切换
<enter>   normal模式下回车选中当前项

6.
HL 			修改成 ^$, 更方便在同行移动
; 			一键进入命令行模式，不需要按shift
ctrl+a/e 	命令行模式  到开始结尾


7.快速注释
,cc      加上注释
,cu      解开注释
,c<space> 加上/解开注释
,cy      先复制再注解, p可以粘贴未注释前的代码


8.快速加入修改环绕字符
cs[" : change surroundings is cs, 有两个参数，第一个参数[为匹配参数，第二个为"替换参数
ds[ : delete surroudnings is ds,有一个参数，即为要删除的环绕字符[
ys : your surroudings is ys，
ysiw[ :your surroundings inner word, 某个单词加上环绕字符[
yss[: your surroundings sentence, 整个句子加上环绕字符[]
ys$" :当前到行尾, 引号引住
w, W, and s correspond to a |word|, a |WORD|, and a |sentence|

9.
,space    去掉当前行末尾空格

10.快速赋值语句对齐
可以选中多行,不选中默认操作当前行
,a= 对齐等号表达
,a: 对齐冒号表达式(json/map等)
,a<space>  首个空格对齐
,a2<space> 第二个空格对齐
,a*<space> 所有空格依次对齐


11.位置快速跳转
,, + w  跳转
,, + fe  查找'e',快速跳转定位到某个字符位置
,,j      快速决定移动到下面哪行(比用行号/j移动快)
,,k      快速移动到上面哪行
,,l      本行, 向后快速移动
,,h      本行, 向前快速移动

12.mark跳转
m[a-zA-Z]   打标签
'[a-zA-Z]   跳转到标签位置
'. 最后一次变更的地方
'' 跳回来的地方
m<space>    去除所有标签
" m/        show all marks
" dm[a-zA-z] delete one mark


13.区块伸缩
+ 增加选中范围(+/=按键)
_ 减少选中范围(_/-按键)


14.搜索相关
,p  打开ctrlp搜索
,f  相当于mru功能，show recently opened files

ctrl + j/k 进行上下移动
ctrl + x/v 分屏打开该文件 [重要**]
ctrl + t   在新tab中打开该文件


,fu   进入当前文件函数搜索
,fU   搜索光标下单词对应函数


15.查看历史操作并恢复
,h  查看文件编辑历史


16.目录导航
,n  打开 关闭树形目录结构

在nerdtree窗口常用操作：(小写当前，大写root)
x.......收起当前目录树
X.......递归收起当前目录树
r.......刷新当前目录
R.......刷新根目录树

p.......跳到当前节点的父节点
P.......跳到root节点
k/j.....上下移动
K.......到同目录第一个节点
J.......最后一个节点

o.......Open files, directories and bookmarks

s.......split上下分屏[原来是i, 改键]
v.......vsplit左右分屏[原来是s, 改键]

c.......将当前目录设为根节点
q.......关闭


17.tab/buffer导航增强
,n      查看buffer列表
j/k     上下移动
回车     跳转到
v/V     vsp分屏打开, v会进入对应文件, V会保留在ctrlspace区域
s/S     sp分屏打开

l       展示/关闭tab列表
      j/k 或 [/] 上下移动
      =   给tab命名
      -   Move the current tab to the left (decrease its number)
      +   Move the current tab to the right (increase its number)
      Backspace Go back to Buffer List

L   Jump to Tab List in Search Mode

esc/q   close the list


18.多光标选中编辑
ctrl + m 开始选择
ctrl + p 向上取消
ctrl + x 跳过
esc   退出



