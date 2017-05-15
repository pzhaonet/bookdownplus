#
# $Id: chordbox.tcl,v 1.4 2002/08/28 15:39:51 t16 Exp $
#
# Graphical helper tool for gchords.sty, written by David R. Lovell, 
# with additions by Kasper Peeters.
#
upvar #0 ChordBoxInfo cb
upvar #0 BlotArray blot
upvar #0 DampArray damp
wm title . "Chord Box"

frame .top
frame .middle
frame .bottom

set strings 6
set frets [lindex $argv 0]
if {$frets == ""} {
  puts "Usage: wish chordbox.tcl \[number of frets\]"
  exit
}
set dx 0.5
set dy 1.0
set left $dx
set right [expr $left + ($strings - 1) * $dx]
set width [expr $right + $left]
set bottom [expr 0.3 * $dy]
set top [expr $bottom + ($frets - 1) * $dy]
set height [expr $top + $bottom]
set xgrid [expr $dx]
set ygrid [expr $dy]
canvas .c -width ${width}c -height ${height}c
.c config -cursor dot

set cb(rad) [winfo fpixels .c [expr 0.3 * $dx]c]
set cb(gridx) [winfo fpixels .c ${dx}c]
set cb(gridy) [winfo fpixels .c ${dy}c]
set cb(left) [winfo fpixels .c ${left}c]
set cb(right) [winfo fpixels .c ${right}c]
set cb(top) [winfo fpixels .c [expr  ($frets - 1) * $dy]c]
set cb(bottom) [winfo fpixels .c ${dy}c]
set cb(nut) [winfo fpixels .c ${bottom}c]
set cb(damp) [winfo fpixels .c [expr $bottom / 2]c]

#label .name -text "Name: "
#entry .nameentry -width 15 -relief sunken -bd 2 -textvariable name
label .spell -text "Name: "
entry .spellentry -width 15 -relief sunken -bd 2 -textvariable spelling
scale .zerofret -from -1 -to 24 -length ${height}c -width 0.3c -orient vertical -variable zerofret
#set zerofret -1
button .print -text Print -command print
button .quit -text Quit -command exit

pack .print .quit         -in .top    -side left -fill x -expand 1
pack .zerofret .c         -in .middle -side left -fill y -expand 1
pack .spellentry .spell   -in .bottom -side bottom -padx 1m -pady 1m
#pack .nameentry  .name    -in .bottom -side bottom -padx 1m -pady 1m
pack .top .middle .bottom             -side top -fill x -expand 1

for {set i 0} {$i < $strings} {incr i} {
	set x [expr $left + $i * $dx]
	.c create line ${x}c ${bottom}c ${x}c ${top}c
}
for {set i 0} {$i < [expr $frets - 1]} {incr i} {
	set y [expr $bottom + $i * $dy]
	.c create line ${left}c ${y}c ${right}c ${y}c
}

bind .c <1>  "mkBlot .c %x %y"


proc mkBlot { c x y } {
	upvar #0 ChordBoxInfo cb
	upvar #0 BlotArray blot
	upvar #0 DampArray damp

	set cx [$c canvasx $x $cb(gridx)]
	set cy [$c canvasy $y $cb(gridy)]
	if {($cx < $cb(left))} {
		set cx $cb(left)
	}
	if {($cx > $cb(right))} {
		set cx $cb(right)
	}
	if {($cy < $cb(nut))} {
		set s [expr round($cx / $cb(gridx))]
		if [info exists damp($s)] {
			$c delete $damp($s)
			unset damp($s)
		} else {
			set damp($s) [$c create line \
					[expr $cx - $cb(rad)] [expr $cb(damp) - $cb(rad)]\
					[expr $cx + $cb(rad)] [expr $cb(damp) + $cb(rad)]\
					$cx $cb(damp) \
					[expr $cx - $cb(rad)] [expr $cb(damp) + $cb(rad)]\
					[expr $cx + $cb(rad)] [expr $cb(damp) - $cb(rad)]\
				]
		}
		return
	}
	
	if {($cy < $cb(bottom))} {
		set cy $cb(bottom)
	}
	if {($cy > $cb(top))} {
		set cy $cb(top)
	}
	set f [expr round($cy / $cb(gridy))]
	set s [expr round($cx / $cb(gridx))]

#	puts "$x, $y = ($cx,$cy), $s, $f"
	
	if [info exists blot($s,$f)] {
		$c delete $blot($s,$f)
		unset blot($s,$f)
	} else {
		set blot($s,$f) [$c create oval\
				[expr $cx - $cb(rad)] [expr $cy - $cb(rad)] \
				[expr $cx + $cb(rad)] [expr $cy + $cb(rad)] -fill black]
	}
}

proc print {} {
	upvar #0 ChordBoxInfo cb
	upvar #0 frets frets
	upvar #0 strings strings
	upvar #0 zerofret zerofret
#	upvar #0 name name
	upvar #0 spelling spelling
	upvar #0 BlotArray blot
	upvar #0 DampArray damp

	puts "\\def\\numfrets\{$frets\}"
	puts -nonewline "\\chord\{"
	if {$zerofret == 0} {
		puts -nonewline "t"
	}
	if {$zerofret > 0} {
		puts -nonewline $zerofret
	}
	puts -nonewline "\}\{"

	for {set s 1} {$s <= $strings} {incr s} {
		set nmarks 0
		for {set f 0} {$f < $frets} {incr f} {
			if [info exists blot($s,$f)] {
				puts -nonewline "p\{$f\}"
				incr nmarks
			}
		}
		if {$nmarks == 0} {
			if [info exists damp($s)] {
				puts -nonewline "x"
			} else {
				puts -nonewline "n"
			}
		}
		if {$s < $strings} {
			puts -nonewline ","
		}
	}

	puts -nonewline "\}\{"

#	if { $name != "" } {
#		puts -nonewline "$name"
#	}
#
#	puts -nonewline "\}\{"

	if { $spelling != "" } {
		regsub -all , $spelling \},\{ texspelling
		regsub -all b $texspelling  \\ensuremath\{\\flat\} texspelling		
		regsub -all \# $texspelling \\ensuremath\{\\sharp\} texspelling		
		puts -nonewline "\{$texspelling\}"
	}
	puts "\}"
}
