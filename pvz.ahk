originalX := 800
originalY := 600
calculateX(screenX, windowX, windowY) {
	scaleFactor := Min(windowX / originalX, windowY / originalY)
	return (screenX * scaleFactor) + ((windowX - (originalX * scaleFactor))/2)
}
~+2::{
	if WinActive("Plants vs. Zombies") {
	WinGetPos &a, &a, &x, &y
	ControlClick "x" String(calculateX(65, x, y)) " y" String((60/originalY)*y), "A"
	}
}
~1::{
	if WinActive("Plants vs. Zombies") {
	WinGetPos &a, &a, &x, &y
	ControlClick "x" String(calculateX(115, x, y)) " y" String((60/originalY)*y), "A"
	}
}
~2::{
	if WinActive("Plants vs. Zombies") {
	WinGetPos &a, &a, &x, &y
	ControlClick "x" String(calculateX(165, x, y)) " y" String((60/originalY)*y), "A"
	}
}
~3::{
	if WinActive("Plants vs. Zombies") {
	WinGetPos &a, &a, &x, &y
	ControlClick "x" String(calculateX(215, x, y)) " y" String((60/originalY)*y), "A"
	}
}
~4::{
	if WinActive("Plants vs. Zombies") {
	WinGetPos &a, &a, &x, &y
	ControlClick "x" String(calculateX(265, x, y)) " y" String((60/originalY)*y), "A"
	}
}
~5::{
	if WinActive("Plants vs. Zombies") {
	WinGetPos &a, &a, &x, &y
	ControlClick "x" String(calculateX(315, x, y)) " y" String((60/originalY)*y), "A"
	}
}
~6::{
	if WinActive("Plants vs. Zombies") {
	WinGetPos &a, &a, &x, &y
	ControlClick "x" String(calculateX(365, x, y)) " y" String((60/originalY)*y), "A"
	}
}
~7::{
	if WinActive("Plants vs. Zombies") {
	WinGetPos &a, &a, &x, &y
	ControlClick "x" String(calculateX(415, x, y)) " y" String((60/originalY)*y), "A"
	}
}
~8::{
	if WinActive("Plants vs. Zombies") {
	WinGetPos &a, &a, &x, &y
	ControlClick "x" String(calculateX(465, x, y)) " y" String((60/originalY)*y), "A"
	}
}
~9::{
	if WinActive("Plants vs. Zombies") {
	WinGetPos &a, &a, &x, &y
	ControlClick "x" String(calculateX(515, x, y)) " y" String((60/originalY)*y), "A"
	}
}
~0::{
	if WinActive("Plants vs. Zombies") {
	WinGetPos &a, &a, &x, &y
	ControlClick "x" String(calculateX(565, x, y)) " y" String((60/originalY)*y), "A"
	}
}
~+1::{
	if WinActive("Plants vs. Zombies") {
	WinGetPos &a, &a, &x, &y
	ControlClick "x" String(calculateX(625, x, y)) " y" String((60/originalY)*y), "A"
	}
}

