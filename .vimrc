:colorscheme evening
:nohlsearch
:set ruler
:set ignorecase
:set autoindent
:set shiftround
:set t_Co=256
:set number
:set nowrap
:set autochdir
:set tabpagemax=50
:set nohlsearch
:set go+=b
:set autoread
set backupdir=~/tmp
:cd /Users/bpickard/Desktop/
:set listchars=nbsp:¬,eol:¶,tab:>-,extends:»,precedes:«,trail:¿
set tabstop=4
set shiftwidth=4
set softtabstop=4

:let $TEMPLATE = "/Users/bpickard/Github/Web-Development/template.html"
:let $CSS_TEMPLATE = "/Users/bpickard/Github/Web-Development/ets2014v2.css"
:let $WORKINGDIR = "/Users/bpickard/Desktop/owncloud/Course Work/HPC/KIN585/html"
    
let @a='"gdi<a href=""+pi€kr" target="_blank""€kb>"gpi€kr</a>'
let @b='"gdi<strong>?€kb"gpi€kr</strong>'
let @c='0wi<p class="caption">Creative Commons licensed image courtesy of <a href="€ü€€kr"></a></p>€ü€€kl€ü€€kr€kl€kl€kl€kl€kl€kl€kl€kl  €kb€kb'
let @d=':s/<a href="#_msocom.\{-\}<\/a>//gc'
let @e=':v/^\s<.*/s /\s\([A-Za-z].*\)/\t<p>\1<\/p>/c'
let @f='%s /<a href=\(.\{-}\)>/<a href=\1 target=\"_blank\">/gc'
let @h='0wi<div id="imgheading" class=""><P€kbp>$i€kri€kb</p></div>F"F'
let @i='"gdi<em>"gpi€kr</em>'
let @j='"gdO	<blockquote>€kb class=""></blockquote>€ku€kr€kr€kr€kr€kr€krmaombomc`b"gp`bV`c>dd`cdd`a'
let @k='"gdO	<div class="inset-right"></diob€kb€kbv>€kumaomb€kb€kbmb`a"gp`aV`b>dd`bdd'
let @l='0wi<li>$i€kr</li>j0€kr'
let @m='i<img src="iamges/€kb€kb€kb€kb€kb€kbmages/" alt="$i" />0€kr€kd€kuji	€kr'
let @n='i<igrame €kb€kb€kb€kb€kb€kbframe width="480" height="€KF€KI€KC" src="httpd€kbs:// a"€kb€kb>€kb?rel-=€kb€kb=0" frameborder="0" allowfullscreen></iframe>q€kb'
let @o='"gdO	<ol>	</ol>€ku	"gp€kudd'
let @p='0wi<p>$i€kr</p>0j'
let @r='"gdi<span style="color:ref€kbd;">"gp$i€kr</span>0€kr€klw'
let @s='"gdi	<!-- **€ü SECTION€ü START€ü ******************************************************** -->	<!-- ((€ü €ü€kb€ü€kb€ü€kb**€ü SECTION€ü END€ü **********************************************************€ü -->€ku€ku	<div class="section" id="page#">€kd	</div>O		<footer>		<a href="#top">Back to Top €kb</a> | Page # of #	</footer>€ku€ku€kui€ku	"gp€kb€kb€kb"gp€kudd'
let @t='ggVG"gd:r /Users/bpickard/Github/Web-Development/template.html:0:setf html'
let @u='"gdO	<ul class=""></ul>€ku€ü€€kr€ku€kuf"ma€kdmb€kdmc`b"gp`bV`c>dd`cdd`a'
let @w='0w"gywdwi<<€kb"gpi>€kD$€kb$i€kr</"gpi>0wj'
let @x='i<iframe id="theIframe" frameborder="0" widrg=€kb€kb€kbth="620" height="420" src="https://connect.ubc.ca/webapps/osv-kaltura-bb_bb60/jsp/viewContent1.jp€kbsp?entry_id=ENTRY_ID&amp;iframe€kb=€kbe=true"></igr€kb€kbframe>'
let @z='vit"gdddO"€kb"gp>>>>'



nnoremap <C-c> :!open -a Google\ Chrome '%'<CR><CR>

nnoremap <S-F1> :s/h[0-9]/h1/g <CR>
nnoremap <S-F2> :s/h[0-9]/h2/g <CR>
nnoremap <S-F3> :s/h[0-9]/h3/g <CR>
nnoremap <S-F4> :s/h[0-9]/h4/g <CR>
nnoremap <F1> :normal 0wih1 <esc>@w <CR>
nnoremap <F2> :normal 0wih2 <esc>@w <CR>
nnoremap <F3> :normal 0wih3 <esc>@w <CR>
nnoremap <F4> :normal 0wih4 <esc>@w <CR>
nnoremap <F9> :normal 0wicite <esc>@w <CR>
nnoremap <F10> :lcd %:p:h
nnoremap <F11> :0<CR>/<h2><CR> :normal vity <esc> :11<CR> :normal f>p<CR>:0<CR>/<h2><CR>:normal O<CR><esc>:normal "np<CR> 
nnoremap <C-d> :g/^$/d <CR>
nnoremap <C-s> :s/<.\{-\}>//g <CR>


command! FormatLinks :set wrap| :%s /<a href=\(.\{-}\)>/<a href=\1 target=\"_blank\">/gc|:set nowrap|
command! CleanMS :setf html | :execute "normal ggVG>"| :%s/<p>\|<\/p>//ge | :%s/&nbsp;//ge | :%s/^\t$//ge | :%s/\(<h[0-9].*\)/\r\t\1/ge | :%s/<ul>/\r\t<ul>/ge | :%s/<\/ul>/<\/ul>\r/ge | :%s/&lt;/<!--/ge | :%s/&gt;/-->/ge | :%s/<li>/\t<li>/ge | :%s/\(^.\{-\}\)\(<!--.\{-\}-->\)\(.*\)/\t\2\r\1\3/ge | :%s/^\t\([A-Za-z ].*\)/\t<p>\1<\/p>/ge | :%s/<ul>/<ul class="indent">/gce | :%s/<ul>/<ul class="references">/ge| :%s/<ol>/<ol class="indent">/ge| :g/^$/d  
command! AfterTidy :%s/\(<h[0-2].*\)/\r\t\t\1/ge | :%s/\(<div class=\"section\".*\)/\1\r/ge | :%s/\(<blockquote.*\)/\r\t\t\1/ge | :%s/\(<ul.*\)/\r\t\t\1/ge| :%s/\(<\/div>\)\(<!--.*\)/\1\r\t\2/ge | :%s/\(<cite.*\)/\r\t\t\t\1/ge|:%s/\(<footer.*\)/\r\t\t\1/ge | :%s/\(<p.\{-\}\)\(<!--.*\)/\1\r\t\2/ge | :g/^\s*<br>$/d
command! Tidy :!tidy -config ~/config.txt -m %:t
command! CleanOld :setf html | :execute "normal ggVG>" | :%s/<span.\{-\}>//ge | :%s/<\/span>//ge | :%s/<!--\[if.\{-\}<\!\[endif\]-->//ge | :%s/\ class="Mso.\{-\}\"//ge | :%s/style=\".\{-\}\"//ge | :%s/<table.\{-\}>//ge | :%s/<tr.\{-\}>//ge | :%s/<td.\{-\}>//ge | :%s/<div.\{-\}>//ge | :%s/<tbody.\{-\}>//ge | :%s/<th.\{-\}>//ge | :%s/<\/td>//ge | :%s/<\/tr>//ge | :%s/<\/th>//ge | :%s/<\/table>//ge | :%s/<\/div>//ge | :%s/<\/tbody>//ge | :%s/<br>//ge | :%s/&nbsp;/ /ge | :%s/\(<p>\|<\/p>\)//ge
command! RemoveCommentsAndWhitespace :%s/<!--.\{-\}-->//ge | :g/^\s*$/d
command! Clean :setf html| :execute "normal ggVG>"| :%s/&nbsp;/ /ge | :%s/<p>&lt;/<!--/ge | :%s/&gt;<\/p>/-->/ge | :%s/\(<h[0-6]>.*\)/\r\t\1/ge| :%s/>\s\{-\}\([A-Za-z].*\)/>\1/ge| :%s/<li>/\t<li>/ge | :%s/\(<!--.*\)/\r\t\1/ge | :set hlsearch | :set wrap |  :%s/<a.\{-\}mso.\{-\}>\(.\{-\}\)<\/a>/<span class="note">\1<\/span>/ge | :%s/\(<a href=".\{-\}"\)\(>.\{-\}>\)/\1 target="_blank"\2/gce| :set nowrap | :set nohlsearch |
command! TidyCleanFormat :%!tidy -q -i --show-errors 0 





map <F12> :%!tidy -config ~/config.txt -m -q --show-errors 0 <CR><CR> <bar> :setf html <CR> <bar> :g/^$/d <CR> <bar> :%s/&nbsp;/ /ge <CR> <bar> :%s/<p>&lt;/<!--/ge <CR><bar> :%s/&gt;<\/p>/-->/ge <CR><bar>  :%s/>\s\{-\}\([A-Za-z].*\)/>\1/ge<CR><bar> :%s/<li>/\t<li>/ge <CR><bar> :%s/\(<!--.*\)/\r\t\1/ge <CR><bar> :set hlsearch <CR><bar> :set wrap <CR><bar>  :%s/<a.\{-\}mso.\{-\}>\(.\{-\}\)<\/a>/<span class="note">\1<\/span>/ge <CR><bar> :%s/\(<a href=".\{-\}"\)\(>.\{-\}>\)/\1 target="_blank"\2/ge <CR><bar> :set nohlsearch <CR><bar> :w <CR><bar> :%!tidy -config ~/config.txt -m -q --show-errors 0 <CR><CR> <bar> :setf html <CR> <bar> :g/^$/d <CR> <bar> :set nowrap <CR><bar> :%s/\(<h[0-6]>.*\)/\r\t\1/ge <CR> <bar> ggd7dGdddd :%s/<\([ou]l\)>/<\1 class="indent">/ge <CR> <bar> ggVG"gd@t:25<CR> <bar> "gp <bar> :%s/&lt;/<!--/ge <CR><CR><bar> :%s/&gt;/-->/ge <CR><CR> <bar> :%s/<p><strong>\(<!--.\{-\}-->\)<\/strong><\/p>/\1/g <CR><CR><bar>

