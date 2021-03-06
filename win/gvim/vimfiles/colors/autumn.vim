"%% SiSU Vim color file
:set background=dark
:highlight clear
if version > 580
 hi clear
 if exists("syntax_on")
 syntax reset
 endif
endif

function! SyntaxItem() 
    return synIDattr(synID(line("."),col("."),1),"name") 
endfunction
nnoremap <leader>i :echo SyntaxItem()<CR>

let colors_name = "autumn"

:hi EndOfBuffer guifg=bg
:hi Normal guifg=bisque1 guibg=grey10 gui=NONE 
:hi Cursor guibg=green guifg=black gui=NONE
:hi CursorLine cterm=underline term=underline ctermbg=NONE guibg=NONE
:hi VertSplit guibg=bg guifg=bg gui=NONE cterm=reverse
:hi vimOption guibg=bg guifg=salmon gui=NONE cterm=reverse
:hi vimNotation guibg=bg guifg=LightSalmon1 gui=NONE cterm=reverse
:hi vimMapModKey guibg=bg guifg=LightSalmon1 gui=NONE cterm=reverse
:hi Folded guibg=black guifg=grey40 ctermfg=grey ctermbg=darkgrey gui=NONE
:hi FoldColumn guibg=black guifg=grey20 ctermfg=4 ctermbg=7 gui=NONE
:hi IncSearch guifg=green guibg=black cterm=NONE ctermfg=yellow ctermbg=green gui=NONE
:hi ModeMsg guifg=goldenrod cterm=NONE ctermfg=brown gui=NONE
:hi MoreMsg guifg=SeaGreen ctermfg=darkgreen gui=NONE
:hi NonText guifg=bg guibg=bg cterm=NONE ctermfg=blue gui=NONE
:hi Question guifg=springgreen ctermfg=green gui=NONE
:hi Search guibg=bg guifg=seashell2 cterm=NONE ctermfg=grey ctermbg=blue gui=NONE
:hi SpecialKey guifg=yellowgreen ctermfg=darkgreen gui=NONE
:hi StatusLine guibg=NONE guifg=bg gui=NONE
:hi StatusLineModified guibg=NONE guifg=bg  gui=NONE
:hi StatusLineNC guibg=NONE guifg=bg  gui=NONE
:hi StatusLineModifiedNC guibg=NONE guifg=bg  gui=NONE
:hi StatusLinePreview guibg=NONE guifg=bg  gui=NONE
:hi StatusLinePreviewNC guibg=NONE guifg=bg  gui=NONE
:hi StatusLineSpecial guibg=NONE guifg=bg  gui=NONE
:hi StatusLineSpecialNC guibg=NONE guifg=bg  gui=NONE
:hi StatusLineUnmodifiable guibg=NONE guifg=bg  gui=NONE
:hi StatusLineUnmodifiableNC guibg=NONE guifg=bg  gui=NONE
:hi Title guifg=gold gui=NONE cterm=NONE ctermfg=yellow
:hi Statement guifg=LightSalmon1 ctermfg=lightblue gui=NONE
:hi csModifier guifg=LightSalmon1 ctermfg=lightblue gui=NONE
:hi csClass guifg=LightSalmon1 ctermfg=lightblue gui=NONE
:hi csGeneric guifg=tan4 ctermfg=lightblue gui=NONE
:hi csNewType guifg=tan4 ctermfg=lightblue gui=NONE
:hi cStorageClass guifg=LightSalmon1 ctermfg=lightblue gui=NONE
:hi cOperator guifg=LightSalmon1 ctermfg=lightblue gui=NONE
:hi csBraces guifg=gray45 guibg=bg gui=NONE
:hi csParens guifg=gray45 guibg=bg gui=NONE
:hi csEndColon guifg=gray45 guibg=bg gui=NONE
:hi cTodo guifg=white guibg=brown gui=BOLD
:hi cDefine guifg=gray60 guibg=bg gui=NONE
:hi Define guifg=gray60 gui=NONE ctermfg=yellow
:hi MatchParen guifg=white guibg=brown gui=NONE
:hi Visual gui=NONE guifg=white guibg=brown cterm=reverse
:hi WarningMsg guifg=salmon ctermfg=1 gui=NONE
:hi String guifg=lightgreen ctermfg=darkcyan gui=NONE
:hi Comment term=NONE ctermfg=11 guifg=grey40
:hi Constant guifg=lightgreen ctermfg=brown gui=NONE
:hi Special guifg=darkkhaki ctermfg=brown gui=NONE
:hi Identifier guifg=salmon ctermfg=red gui=NONE
:hi Include guifg=LightSalmon1 ctermfg=red gui=NONE
:hi PreProc guifg=lightred guibg=white ctermfg=red gui=NONE
:hi Operator guifg=grey45 ctermfg=Red gui=NONE
:hi Type guifg=tan4 ctermfg=2 gui=NONE
:hi Function guifg=seashell2 ctermfg=brown gui=NONE
:hi Structure guifg=LightSalmon1 ctermfg=green gui=NONE
:hi LineNr guifg=grey40 ctermfg=3 gui=NONE
:hi Ignore guifg=grey40 cterm=NONE ctermfg=7 gui=NONE
:hi Todo guifg=orangered guibg=yellow2 gui=NONE
:hi Directory ctermfg=darkcyan gui=NONE
:hi ErrorMsg cterm=NONE guifg=White guibg=Red cterm=NONE ctermfg=7 ctermbg=1 gui=NONE
:hi VisualNOS cterm=NONE,underline gui=NONE
:hi WildMenu ctermfg=0 ctermbg=3 gui=NONE
:hi DiffAdd ctermbg=4 gui=NONE
:hi DiffChange ctermbg=5 gui=NONE
:hi DiffDelete cterm=NONE ctermfg=4 ctermbg=6 gui=NONE
:hi DiffText cterm=NONE ctermbg=1 gui=NONE
:hi Underlined cterm=underline ctermfg=5 gui=NONE
:hi Error guifg=White guibg=Red cterm=NONE ctermfg=7 ctermbg=1 gui=NONE
:hi SpellErrors guifg=White guibg=Red cterm=NONE ctermfg=7 ctermbg=1 gui=NONE
:hi TabLine guifg=gray55 guibg=gray24 gui=NONE
:hi TabLineSel guifg=white guibg=bg gui=bold
:hi TabLineFill guifg=bg guibg=gray24 gui=NONE

function! TestColors(mode) 
  if a:mode
    setlocal nohlsearch
    call search('^" BEGIN_COLOR_LIST', 'e')
    while search('\w\+') > 0
      let w = expand('<cword>')
      if w == 'END_COLOR_LIST'
          break
      endif
      if a:mode == 2
          execute 'hi col_'.w.' guifg='.w.' guibg=NONE'
      endif
      if a:mode == 1
          execute 'hi col_'.w.' guifg=black guibg='.w
      endif
      execute 'syn keyword col_'.w.' '.w.' contained containedin=vimLineComment'
    endwhile
    call search('^" BEGIN_COLOR_LIST')
    normal 0jzt
  endif
endfunction
:call TestColors(0) " 0 - none, 1 - bg color, 2 - fg color

" Following is from $VIMRUNTIME/rgb.txt with duplicate colors omitted.
" BEGIN_COLOR_LIST
" snow GhostWhite WhiteSmoke gainsboro FloralWhite OldLace linen
" AntiqueWhite PapayaWhip BlanchedAlmond bisque PeachPuff NavajoWhite
" moccasin cornsilk ivory LemonChiffon seashell honeydew MintCream azure
" AliceBlue lavender LavenderBlush MistyRose white black DarkSlateGray
" DimGray SlateGray LightSlateGray gray LightGray MidnightBlue navy
" NavyBlue CornflowerBlue DarkSlateBlue SlateBlue MediumSlateBlue
" LightSlateBlue MediumBlue RoyalBlue blue DodgerBlue DeepSkyBlue
" SkyBlue LightSkyBlue SteelBlue LightSteelBlue LightBlue PowderBlue
" PaleTurquoise DarkTurquoise MediumTurquoise turquoise cyan LightCyan
" CadetBlue MediumAquamarine aquamarine DarkGreen DarkOliveGreen
" DarkSeaGreen SeaGreen MediumSeaGreen LightSeaGreen PaleGreen
" SpringGreen LawnGreen green chartreuse MediumSpringGreen GreenYellow
" LimeGreen YellowGreen ForestGreen OliveDrab DarkKhaki khaki
" PaleGoldenrod LightGoldenrodYellow LightYellow yellow gold
" LightGoldenrod goldenrod DarkGoldenrod RosyBrown IndianRed SaddleBrown
" sienna peru burlywood beige wheat SandyBrown tan chocolate firebrick
" brown DarkSalmon salmon LightSalmon orange DarkOrange coral LightCoral
" tomato OrangeRed red HotPink DeepPink pink LightPink PaleVioletRed
" maroon MediumVioletRed VioletRed magenta violet plum orchid
" MediumOrchid DarkOrchid DarkViolet BlueViolet purple MediumPurple
" thistle snow1 snow2 snow3 snow4 seashell1 seashell2 seashell3
" seashell4 AntiqueWhite1 AntiqueWhite2 AntiqueWhite3 AntiqueWhite4
" bisque1 bisque2 bisque3 bisque4 PeachPuff1 PeachPuff2 PeachPuff3
" PeachPuff4 NavajoWhite1 NavajoWhite2 NavajoWhite3 NavajoWhite4
" LemonChiffon1 LemonChiffon2 LemonChiffon3 LemonChiffon4 cornsilk1
" cornsilk2 cornsilk3 cornsilk4 ivory1 ivory2 ivory3 ivory4 honeydew1
" honeydew2 honeydew3 honeydew4 LavenderBlush1 LavenderBlush2
" LavenderBlush3 LavenderBlush4 MistyRose1 MistyRose2 MistyRose3
" MistyRose4 azure1 azure2 azure3 azure4 SlateBlue1 SlateBlue2
" SlateBlue3 SlateBlue4 RoyalBlue1 RoyalBlue2 RoyalBlue3 RoyalBlue4
" blue1 blue2 blue3 blue4 DodgerBlue1 DodgerBlue2 DodgerBlue3
" DodgerBlue4 SteelBlue1 SteelBlue2 SteelBlue3 SteelBlue4 DeepSkyBlue1
" DeepSkyBlue2 DeepSkyBlue3 DeepSkyBlue4 SkyBlue1 SkyBlue2 SkyBlue3
" SkyBlue4 LightSkyBlue1 LightSkyBlue2 LightSkyBlue3 LightSkyBlue4
" SlateGray1 SlateGray2 SlateGray3 SlateGray4 LightSteelBlue1
" LightSteelBlue2 LightSteelBlue3 LightSteelBlue4 LightBlue1 LightBlue2
" LightBlue3 LightBlue4 LightCyan1 LightCyan2 LightCyan3 LightCyan4
" PaleTurquoise1 PaleTurquoise2 PaleTurquoise3 PaleTurquoise4 CadetBlue1
" CadetBlue2 CadetBlue3 CadetBlue4 turquoise1 turquoise2 turquoise3
" turquoise4 cyan1 cyan2 cyan3 cyan4 DarkSlateGray1 DarkSlateGray2
" DarkSlateGray3 DarkSlateGray4 aquamarine1 aquamarine2 aquamarine3
" aquamarine4 DarkSeaGreen1 DarkSeaGreen2 DarkSeaGreen3 DarkSeaGreen4
" SeaGreen1 SeaGreen2 SeaGreen3 SeaGreen4 PaleGreen1 PaleGreen2
" PaleGreen3 PaleGreen4 SpringGreen1 SpringGreen2 SpringGreen3
" SpringGreen4 green1 green2 green3 green4 chartreuse1 chartreuse2
" chartreuse3 chartreuse4 OliveDrab1 OliveDrab2 OliveDrab3 OliveDrab4
" DarkOliveGreen1 DarkOliveGreen2 DarkOliveGreen3 DarkOliveGreen4 khaki1
" khaki2 khaki3 khaki4 LightGoldenrod1 LightGoldenrod2 LightGoldenrod3
" LightGoldenrod4 LightYellow1 LightYellow2 LightYellow3 LightYellow4
" yellow1 yellow2 yellow3 yellow4 gold1 gold2 gold3 gold4 goldenrod1
" goldenrod2 goldenrod3 goldenrod4 DarkGoldenrod1 DarkGoldenrod2
" DarkGoldenrod3 DarkGoldenrod4 RosyBrown1 RosyBrown2 RosyBrown3
" RosyBrown4 IndianRed1 IndianRed2 IndianRed3 IndianRed4 sienna1 sienna2
" sienna3 sienna4 burlywood1 burlywood2 burlywood3 burlywood4 wheat1
" wheat2 wheat3 wheat4 tan1 tan2 tan3 tan4 chocolate1 chocolate2
" chocolate3 chocolate4 firebrick1 firebrick2 firebrick3 firebrick4
" brown1 brown2 brown3 brown4 salmon1 salmon2 salmon3 salmon4
" LightSalmon1 LightSalmon2 LightSalmon3 LightSalmon4 orange1 orange2
" orange3 orange4 DarkOrange1 DarkOrange2 DarkOrange3 DarkOrange4 coral1
" coral2 coral3 coral4 tomato1 tomato2 tomato3 tomato4 OrangeRed1
" OrangeRed2 OrangeRed3 OrangeRed4 red1 red2 red3 red4 DeepPink1
" DeepPink2 DeepPink3 DeepPink4 HotPink1 HotPink2 HotPink3 HotPink4
" pink1 pink2 pink3 pink4 LightPink1 LightPink2 LightPink3 LightPink4
" PaleVioletRed1 PaleVioletRed2 PaleVioletRed3 PaleVioletRed4 maroon1
" maroon2 maroon3 maroon4 VioletRed1 VioletRed2 VioletRed3 VioletRed4
" magenta1 magenta2 magenta3 magenta4 orchid1 orchid2 orchid3 orchid4
" plum1 plum2 plum3 plum4 MediumOrchid1 MediumOrchid2 MediumOrchid3
" MediumOrchid4 DarkOrchid1 DarkOrchid2 DarkOrchid3 DarkOrchid4 purple1
" purple2 purple3 purple4 MediumPurple1 MediumPurple2 MediumPurple3
" MediumPurple4 thistle1 thistle2 thistle3 thistle4 gray0 gray1 gray2
" gray3 gray4 gray5 gray6 gray7 gray8 gray9 gray10 gray11 gray12 gray13
" gray14 gray15 gray16 gray17 gray18 gray19 gray20 gray21 gray22 gray23
" gray24 gray25 gray26 gray27 gray28 gray29 gray30 gray31 gray32 gray33
" gray34 gray35 gray36 gray37 gray38 gray39 gray40 gray41 gray42 gray43
" gray44 gray45 gray46 gray47 gray48 gray49 gray50 gray51 gray52 gray53
" gray54 gray55 gray56 gray57 gray58 gray59 gray60 gray61 gray62 gray63
" gray64 gray65 gray66 gray67 gray68 gray69 gray70 gray71 gray72 gray73
" gray74 gray75 gray76 gray77 gray78 gray79 gray80 gray81 gray82 gray83
" gray84 gray85 gray86 gray87 gray88 gray89 gray90 gray91 gray92 gray93
" gray94 gray95 gray96 gray97 gray98 gray99 gray100 DarkGray DarkBlue
" DarkCyan DarkMagenta DarkRed LightGreen
" END_COLOR_LIST

