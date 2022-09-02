# Vimium Chrome Extention Configuration.

### scroll step size : 100 px
### Character used for link hints : asdfghjklewmp

# Keyboard Shortcuts

unmapAll

## Page Movements
map j scrollDown
map k scrollUp
map d scrollPageDown
map u scrollPageUp
map gg scrollToTop
map G scrollToBottom
map J scrollFullPageDown
map K scrollFullPageUp
# scrollLeft, scrollRight, scrollToLeft, scrollToRight

## Copy Paste URLs
map yy copyCurrentUrl
map yf LinkHints.activateModeToCopyLinkUrl
map p openCopiedUrlInCurrentTab
map P openCopiedUrlInNewTab

map f LinkHints.activateMode
map F LinkHints.activateModeToOpenInNewTab
# LinkHints.activateModeToOpenInNewForegroundTab

## Modes
# map i enterInsertMode
map v enterVisualMode
map V enterVisualLineMode

## Search text
map / enterFindMode
map n performFind
map N performBackwardsFind

## Vomnibar
map o Vomnibar.activate
map O Vomnibar.activateInNewTab
map ge Vomnibar.activateEditUrlInNewTab

## Create and Jump to Mark
map M Marks.activateCreateMode
map m Marks.activateGotoMode

## History Movement
map H goBack
map L goForward

## Tab Movement
map h previousTab
map l nextTab
map 0 firstTab
map $ lastTab
map ^ visitPreviousTab
map < moveTabLeft
map > moveTabRight

map W moveTabToNewWindow

## Create/Kill Tab
map t createTab
map yt duplicateTab
map x removeTab
map X restoreTab
map r reload

map <a-p> togglePinTab
map <a-m> toggleMuteTab

## Miscellaneous
map ? showHelp
map gs toggleViewSource

# closeTabsOnLeft, closeTabsOnRight, closeOtherTabs, passNextKey
gu goUp
gU goToRoot
gi focusInput


