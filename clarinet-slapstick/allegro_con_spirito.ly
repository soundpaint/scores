\header{

% ly2dvi headers
title = "Ouvertüre"
subtitle = "Allegro con spirito"
subsubtitle = "ma non troppo"
% opus = "Op. 20/12/2001"
date = "Dezember 2001"
% composer = "Jürgen Reuter (*1971)"
% poet = ""
enteredby = "Jürgen Reuter"
% copyright = "public domain"
instrument = "Pianoforte zu 2 Händen"
footer = ""
tagline = ""

% mutopia headers
mutopiatitle = "Ouvertüre"
mutopiasubtitle = "Allegro Majestoso (ma non troppo)"
mutopiacomposer = "Jürgen Reuter"
mutopiaopus = "20/12/2001"
style = "pseudo classical"
source = "autograph"
maintainer = "Jürgen Reuter"
maintainerEmail = "reuter@ipd.uka.de"
lastupdated = "2001/Dec/12"
}

\version "1.3.146"

\include "paper20.ly"

global = \notes {
    \key es \major
    \time 3/4
    \partial 16 \skip 16*1
    \skip 2.*11
%   \bar "|:"
    \skip 2.*12
%   \bar ":|"
    \skip 2.*98
    \bar "|."
}

rightHand = \context Voice = rightHand <
    \notes \transpose c'' {
	\property Voice.instrument = "Piano right hand"
	\stemBoth
	es16 |
%% bar 1
	es4.. bes,16 bes,8 r16 g16 |
%% bar 2
	g4.. es16 es8 r16 bes16 |
%% bar 3
	bes4 <es bes es'> <es bes es'> |
%% bar 4
	<f2 bes d'> r8. <d'16 as'> |
%% bar 5
	<
	    { as'4.. g'16 f'8. f'16 }
	    { d'4.. d'16 d'8. d'16 }
	> |
%% bar 6
	<
	    { f'8 r es' r r8. es'16 }
	    { d'8 r c' r r8. c'16 }
	> |
%% bar 7
	<es'8 c'> r8 r8. es'16 d'8. c'16 |
%% bar 8
	[as'8-- g'-.] [d'-- f'-.] [b-- d'-.] |
%% bar 9
	[as-- g-- f-.] [es-. d-. c-.] |
%% bar 10
	\property Voice . TextScript \override #'font-shape = #'italic
	[bes,--^"rit." d-. f-. as-.] [d'--
	\property Voice . TextScript \revert #'font-shape
	c'-.] |
%% bar 11
	[a-- bes-.] [as-. f-.] [es-- d--] |
%% bar 12
	\property Voice . TextScript \override #'font-shape = #'italic
	es2^"a tempo" g4 |
	\property Voice . TextScript \revert #'font-shape
%% bar 13
	g16 f es f es8 bes c'16 bes as g |
%% bar 14
	f2 as4 |
%% bar 15
	as16 g f g f4 r4 |
%% bar 16
	bes2 as16 g f es |
%% bar 17
	d f es g f as g bes as8 r |
%% bar 18
	g16 bes as g as bes c' d' es' bes g es |
%% bar 19
	d f es g f as g bes as8 r |
%% bar 20
	g8 bes es' d' c' bes |
%% bar 21
	a2 bes8 f |
%% bar 22
	<
	    \context Voice = up { \stemUp g8 c' bes a16 g a8 bes }
	    \context Voice = down { \stemDown es4 <f2 c> }
	> |
%% bar 23
	<bes2. f d> |
%% bar 24
	d'2 f'4 |
%% bar 25
	f'16 es' d' es' c'8 g c'16 bes a g |
%% bar 26
	f8 g a bes c' es' |
%% bar 27
	es'16 d' c' d' bes4 r |
%% bar 28
	d16 f es g f as g bes as8 r |
%% bar 29
	g16 es f g as bes c' d' es' bes g es |
%% bar 30
	d16 f es g f as g bes as8 r |
%% bar 31
	g16 es f g as bes c' d' es'8 es' |
%% bar 32
	<g'4 d' g> r r8. <g'16 d' g> |
%% bar 33
	<
	    \context Voice = up { \stemUp [c'8 b] [c' a] [as b] }
	    \context Voice = down { \stemDown <es'4 g> <es' fis> <d' f> }
	> |
%% bar 34
	c'8 g es' c' as g |
%% bar 35
	<
	    \context Voice = up { \stemUp [b8 c'] [d' f'] [es' d'] }
	    \context Voice = down { \stemDown <g4 d> <b g> <b g> }
	> |
%% bar 36
	f'8 b d' as g b |
%% bar 37
	<
	    \context Voice = up { \stemUp g4 g f8 g }
	    \context Voice = down { \stemDown <c'4 es> <c' es> <c' es> }
	> |
%% bar 38
	<
	    \context Voice = up { \stemUp as4 c' d' }
	    \context Voice = down { \stemDown <c'4 f> g <f as> }
	> |
%% bar 39
	<
	    \context Voice = up
		 {
		   \stemUp \tieUp <f'4 d'> <f'8 d'> <es' c'> d'4 ~
		 }
	    \context Voice = down { \stemDown b4 g <g8 b> as }
	> |
	\property Staff.SlurEngraver \revert #'direction
%% bar 40
	<
	    \context Voice = up
		 {
		   \property Voice.SlurEngraver \override #'direction = #1
		   \stemUp d'8 c' d'4 es'
		 }
	    \context Voice = down { \stemDown g4 g g }
	> |
%% bar 41
	<as'4 f' d'> <g' f' d'> <g' f' d'> |
%% bar 42
	<g'2 es' c'> r4 |
%% bar 43
	<as'4 f' d'> <g' f' d'> <g' f' d'> |
%% bar 44
	<g'2 es' c'> r4 |
%% bar 45
	<as'4 f' d'> <g' f' d'> <g' f' d'> |
%% bar 46
	<g'4 es' c'> r4 r4 |
%% bar 47
	<es'4 c' a'> r4 r4 |
%% bar 48
	es2 g4 |
%% bar 49
	g16 f es f es8 bes es'16 d' c' bes |
%% bar 50
	a2. |
%% bar 51
	as2. |
%% bar 52
	<
	    \context Voice = up { \stemUp g8 \times 2/3 { d'16 c' bes }
				  c'8 d' c' g }
	    \context Voice = down { \stemDown es8 }
	> |
%% bar 53
	<
	    \context Voice = up { \stemUp c'8. bes32 a bes4 r4 }
	    \context Voice = down { \stemDown <f8 d> <f d> <f d> <f d>
				    <f d> <f d>	}
	> |
%% bar 54
	<
	    \context Voice = up { \stemUp es8 \times 2/3 { bes16 as g }
				  as8 bes as es }
	    \context Voice = down { \stemDown c8 }
	> |
%% bar 55
	as8. g32 fis g4 r4 |
%% bar 56
	r8 \times 2/3 { g16 f e } f8 g f c |
%% bar 57
	f8. es32 d es4. es8 |
%% bar 58
	<
	    \context Voice = up { \stemUp c'8 bes as g f es }
	    \context Voice = down { \stemDown f4 c2 }
	> |
%% bar 59
	<
	    \context Voice = up { \stemUp g2. }
	    \context Voice = down { \stemDown es2. }
	> |
%% bar 60
	<
	    \context Voice = up { \stemUp f8. bes16 bes4 }
	    \context Voice = down { \stemDown d4 d }
	> r4 |
%% bar 61
	<
	    \context Voice = up { \stemUp g8. d'16 d'4 }
	    \context Voice = down { \stemDown f4 f }
	> r4 |
%% bar 62
	es2 g4 |
%% bar 63
	g16 f es f es8 g c'16 bes as g |
%% bar 64
	f2 as4 |
%% bar 65
	as16 g fis g f2 |
%% bar 66
	<
	    \context Voice = up { \stemUp es2 fis4 }
	    \context Voice = down { \stemDown es2 es4 }
	> |
%% bar 67
	<
	    \context Voice = up { \stemUp g16 f e f f2 }
	    \context Voice = down { \stemDown d2. }
	> |
%% bar 68
	<
	    \context Voice = up { \stemUp g4 c' c' }
	    \context Voice = down { \stemDown <g c> <g c> <g c> }
	> |
%% bar 69
	<
	    \context Voice = up { \stemUp c' b b }
	    \context Voice = down { \stemDown <as f> <as f> <as f> }
	> |
%% bar 70
	<c'8 g es> [es16 g] f as g bes <a4 fis> |
%% bar 71
	<bes8 g>
	\context Voice = follow { \translator Voice = leftHand { bes,16 d } }
	c es d f <c4 e> |
%% bar 72
	f8 g32 as g16 f8 es d c |
%% bar 73
	r8
	<
	    \context Voice = up { \stemUp g g f es c }
	    \context Voice = down { \stemDown <d8 g,> <d4 g,> <c g,> }
	> |
%% bar 74
	r8
	<
	    \context Voice = up { \stemUp g g f es c }
	    \context Voice = down { \stemDown <d8 g,> <d4 g,> <c g,> }
	> |
%% bar 75
	r8
	<
	    \context Voice = up { \stemUp d' d' c' bes g }
	    \context Voice = down { \stemDown <a8 d> <a4 d> <g d> }
	> |
%% bar 76
	r8
	<
	    \context Voice = up { \stemUp d' d' c' bes g }
	    \context Voice = down { \stemDown <a8 d> <a4 d> <g d> }
	> |
%% bar 77
	cis16 e d f e g f a g8 r |
%% bar 78
	<
	    \context Voice = up { \stemUp cis'8 cis' cis' cis' cis'
				  d'32 cis' b cis' }
	    \context Voice = down { \stemDown g8 r g r g }
	> |
%% bar 79
	<
	    \context Voice = up { \stemUp d'4 }
	    \context Voice = down { \stemDown fis }
	> r4 r |
%% bar 80
	<
	    \context Voice = up { \stemUp d' }
	    \context Voice = down { \stemDown <as f> }
	> r4 r |
%% bar 81
	es2 g4 |
%% bar 82
	g16 f es f es8 bes c'16 bes as g |
%% bar 83
	f2 as4 |
%% bar 84
	as16 g f g f4 r4 |
%% bar 85
	bes2 as16 g f es |
%% bar 86
	d f es g f as g bes as8 r |
%% bar 87
	g16 bes as g as bes c' d' es' bes g es |
%% bar 88
	d f es g f as g bes as8 r |
%% bar 89
	g8 bes es' d' c' bes |
%% bar 90
	a2 bes8 f |
%% bar 91
	<
	    \context Voice = up { \stemUp g8 c' bes a16 g a8 bes }
	    \context Voice = down { \stemDown es4 <f2 c> }
	> |
%% bar 92
	<bes2. f d> |
%% bar 93
	bes2 bes4 |
%% bar 94
	b8 c' c'4. d'32 c' b c' |
%% bar 95
	f'8 es' d' c' bes a |
%% bar 96
	[a bes] bes [g'16 f'] es' d' c' bes |
%% bar 97
	[bes8 as] as [f'16 es'] d' c' bes as |
%% bar 98
	[as8 g] g [es'16 d'] c' bes as g |
%% bar 99
	<
	    \context Voice = up { \stemUp f8 c' bes as g es }
	    \context Voice = down { \stemDown d4 f es }
	> |
%% bar 100
	<
	    \context Voice = up { \stemUp g4. as16 g f8 }
	    \context Voice = down { \stemDown es2 d8 }
	> r8 |
%% bar 101
	<
	    \context Voice = up { \stemUp g8 bes es' es' es' es' }
	    \context Voice = down { \stemDown <g es> <g es> <g es>
				    <g es> <g es> <g es> }
	> |
%% bar 102
	<
	    \context Voice = up { \stemUp es'4. d'16 c' d'4 }
	    \context Voice = down { \stemDown <as8 f> <as f> <as f>
				    <as f> <as f> <as f> }
	> |
%% bar 103
	<
	    \context Voice = up { \stemUp bes8 es' g' g' g' g' }
	    \context Voice = down { \stemDown <bes g> <bes g> <bes g>
				    <bes g> <bes g> <bes g> }
	> |
%% bar 104
	<
	    \context Voice = up { \stemUp g'4. f'16 e' f'4 }
	    \context Voice = down { \stemDown <c'8 as> <c' as> <c' as>
				    <c' as> <c' as> <c' as> }
	> |
%% bar 105
	<
	    \context Voice = up { \stemUp r8 es' d' c' bes g }
	    \context Voice = down { \stemDown a2 g4 }
	> |
%% bar 106
	<
	    \context Voice = up { \stemUp r8 bes a g fis d }
	    \context Voice = down { \stemDown e2 d4 }
	> |
%% bar 107
	<
	    \context Voice = up { \stemUp r8 es' d' c' bes g }
	    \context Voice = down { \stemDown a2 g4 }
	> |
%% bar 108
	<
	    \context Voice = up { \stemUp r8 bes a g fis d }
	    \context Voice = down { \stemDown e2 d4 }
	> |
%% bar 109
	<
	    \context Voice = up { \stemUp fis2 fis8. g16 }
	    \context Voice = down { \stemDown <d2 c> <d8. c> <d16 bes,> }
	> |
%% bar 110
	<
	    \context Voice = up { \stemUp g2 g8. cis'16 }
	    \context Voice = down { \stemDown <d2 bes,> <d8. bes,> <g16 e> }
	> |
%% bar 111
	<
	    \context Voice = up { \stemUp cis'2 cis'8. d'16 }
	    \context Voice = down { \stemDown <g2 e> <g8. e> <a16 fis> }
	> |
%% bar 112
	<
	    \context Voice = up { \stemUp d'2 c'4 }
	    \context Voice = down { \stemDown <a2. fis> }
	> |
%% bar 113
	<
	    \context Voice = up { \stemUp bes4 }
	    \context Voice = down { \stemDown g }
	>
	r8
	<
	    \context Voice = up { \stemUp bes bes as }
	    \context Voice = down { \stemDown s8 f4 }
	> |
%% bar 114
	<
	    \context Voice = up { \stemUp g es es8 bes, }
	    \context Voice = down { \stemDown es2 bes,4 }
	> |
%% bar 115
	<
	    \context Voice = up { \stemUp f8 c' bes as g f }
	    \context Voice = down { \stemDown c4 d es8 d }
	> |
%% bar 116
	<
	    \context Voice = up { \stemUp es4 }
	    \context Voice = down { \stemDown es4 }
	>
	r8
	<
	    \context Voice = up { \stemUp d' d' d' }
	    \context Voice = down { \stemDown <as f> <as f> <as f> }
	> |
%% bar 117
	<
	    \context Voice = up { \stemUp es'4 }
	    \context Voice = down { \stemDown <bes g> }
	>
	r8
	<
	    \context Voice = up { \stemUp d'' d'' d'' }
	    \context Voice = down { \stemDown <as' f'> <as' f'> <as' f'> }
	> |
%% bar 118
	<
	    \context Voice = up { \stemUp es''4 }
	    \context Voice = down { \stemDown <bes'4 g'> }
	>
	r8
	<
	    \context Voice = up { \stemUp d''' d''' d'''
	    }
	    \context Voice = down { \stemDown <as'' f''> <as'' f''>
				    <as'' f''> }
	> |
%% bar 119
	<
	    \context Voice = up { \stemUp es'''2. }
	    \context Voice = down { \stemDown <bes'' g''> }
	> |
%% bar 120
	r2
	<
	    \context Voice = up {
		\property Voice . TextScript \override #'font-shape = #'italic
		\stemUp es8.^"rit."
		\property Voice . TextScript \revert #'font-shape
		es16
	    }
	    \context Voice = down { \stemDown <bes,8. g,> <bes,16 g,> }
	> |
%% bar 121
	<
	    \context Voice = up { \stemUp es2 }
	    \context Voice = down { \stemDown <bes, g,> }
	> r8.^\fermata
    }
>

leftHand = \context Voice = leftHand <
    \notes \transpose c {
	\property Voice.instrument = "Piano left hand"
	\stemBoth
	<
	    { es'16 } { es16 }
	> |
%% bar 1
	<
	    { es'4.. bes16 bes8 r16 g'16 }
	    { es4.. bes,16 bes,8 r16 g16 }
	> |
%% bar 2
	<
	    { g'4.. es'16 es'8 }
	    { g4.. es16 es8 }
	> r8 |
%% bar 3
	r4 <g' g> <g' g> |
%% bar 4
	<bes' bes> <bes bes,> r |
%% bar 5
	<b2. b,> |
%% bar 6
	<c'2 c> r4 |
%% bar 7
	<fis'2. fis> |
%% bar 8
	<g' g> ~ |
%% bar 9
	<g' g> |
%% bar 10
	R2. |
%% bar 11
	R2. |
%% bar 12
	es'8 bes' g' bes' es' bes' |
%% bar 13
	d' bes' es' bes' g' bes' |
%% bar 14
	d' bes' f' bes' d' bes' |
%% bar 15
	es' bes' d' bes' f' bes' |
%% bar 16
	es' bes' g' bes' es' bes' |
%% bar 17
	d' bes' f' bes' d' bes' |
%% bar 18
	es' bes' g' bes' es' bes' |
%% bar 19
	d' bes' f' bes' d' bes' |
%% bar 20
	es' bes' g' bes' es' bes' |
%% bar 21
	f' es'' c'' es'' d''4 |
%% bar 22
	es' f' f |
%% bar 23
	bes'-- f'-. bes-. |
%% bar 24
	b'8 g'' f'' g'' b' g'' |
%% bar 25
	c'' g'' es'' g'' c'' es'' |
%% bar 26
	f' c'' a' c'' f'' a' |
%% bar 27
	bes' f'' d'' f'' bes' f' |
%% bar 28
	<bes' bes> r r4 r8 <bes' bes> |
%% bar 29
	es' r r4 es'8 g' |
%% bar 30
	<bes' bes> r r4 r |
%% bar 31
	g'16 es' f' g' as' bes' c'' d'' es''8 es'' |
%% bar 32
	<b'4 d> r r8. b'16 |
%% bar 33
	g'4 g' g' |
%% bar 34
	es'2. |
%% bar 35
	f'4 f' f' |
%% bar 36
	d'2. |
%% bar 37
	[es'8 c'] [g' es'] [as' g'] |
%% bar 38
	c'' d'' es'' c'' b' d'' |
%% bar 39
	[as' g'] [b' c''] [d'' f'] |
%% bar 40
	es'4 d'8 es' c'4 |
%% bar 41
	<b'8 b> <b' b> <b' b> <b' b> <b' b> <b' b>
%% bar 42
	<c'' c'> [<es'' es'> <es'' es'> <f'' f'>] <g''4 g'> |
%% bar 43
	<b'8 b> <b' b> <b' b> <b' b> <b' b> <b' b>
%% bar 44
	<c'' c'> [<es'' es'> <es'' es'> <f'' f'>] <g''4 g'> |
%% bar 45
	<b'8 b> <b' b> <b' b> <b' b> <b' b> <b' b>
%% bar 46
	<c''4 c'> r r |
%% bar 47
	<fis' fis> r r |
%% bar 48
	es'8 bes' g' bes' es' bes' |
%% bar 49
	d' bes' es' bes' g' bes' |
%% bar 50
	f' es'' c'' es'' a' c'' |
%% bar 51
	bes' f'' d'' f'' bes' f'' |
%% bar 52
	R2. |
%% bar 53
	R2. |
%% bar 54
	R2. |
%% bar 55
	<d''8 bes'> <d'' bes'> <d'' bes'> <d'' bes'> <d'' bes'> <d''
    bes'> |
%% bar 56
	<c'' as'> r r4 r |
%% bar 57
	<bes'8 g'> <bes' g'> <bes' g'> <bes' g'> <bes' g'> r |
%% bar 58
	<
	    \context Voice = up { \stemUp as'2 a'4 }
	    \context Voice = down { \stemDown as2 a4 }
	> |
%% bar 59
	<
	    \context Voice = up { \stemUp bes'8 bes' [a' bes'] [a' bes'] }
	    \context Voice = down { \stemDown bes8 }
	> |
%% bar 60
	bes'4 bes r |
%% bar 61
	b' b r |
%% bar 62
	c'8 g' es' g' c' g' |
%% bar 63
	b g' c' g' es' g' |
%% bar 64
	b g' d' g' b g' |
%% bar 65
	<
	    \context Voice = up { \stemUp c''4 g'2 }
	    \context Voice = down { \stemDown c'4 b8 [g a b] }
	> |
%% bar 66
	<
	    \context Voice = up { \stemUp r8 as' as' as' as' as' }
	    \context Voice = down { \stemDown c'2. }
	> |
%% bar 67
	<
	    \context Voice = up { \stemUp g'2. }
	    \context Voice = down { \stemDown b4. b8 c' d' }
	> |
%% bar 68
	es' es' es' es' es' es' |
%% bar 69
	d' d' d' d' d' d' |
%% bar 70
	c' r r4
	<
	    \context Voice = up { \stemUp c'' }
	    \context Voice = down { \stemDown d' }
	> |
%% bar 71
	<
	    \context Voice = up { \stemUp d''8 }
	    \context Voice = down { \stemDown g'8 }
	>
	r8 r4
	<
	    \context Voice = up { \stemUp bes' }
	    \context Voice = down { \stemDown c' }
	> |
%% bar 72
	<as'8 f'> <as' f'> <as' f'> <as' f'> <as' f'> <as' f'> |
%% bar 73
	<b2 b,> <c'4 c> |
%% bar 74
	<b2 b,> <c'4 c> |
%% bar 75
	<fis'2 fis> <g'4 g> |
%% bar 76
	<fis'2 fis> <g'4 g> |
%% bar 77
	a'8-. b'-. cis''-. d''-. e''-. r |
%% bar 78
	<
	    \context Voice = up { \stemUp e'' }
	    \context Voice = down { \stemDown a' r e' r a r }
	> |
%% bar 79
	<
	    \context Voice = up { \stemUp a'4 }
	    \context Voice = down { \stemDown d' }
	> r4 r |
%% bar 80
	<
	    \context Voice = up { \stemUp bes' }
	    \context Voice = down { \stemDown bes }
	> r r |
%% bar 81
	es'8 bes' g' bes' es' bes' |
%% bar 82
	d' bes' es' bes' g' bes' |
%% bar 83
	d' bes' f' bes' d' bes' |
%% bar 84
	es' bes' d' bes' f' bes' |
%% bar 85
	es' bes' g' bes' es' bes' |
%% bar 86
	d' bes' f' bes' d' bes' |
%% bar 87
	es' bes' g' bes' es' bes' |
%% bar 88
	d' bes' f' bes' d' bes' |
%% bar 89
	es' bes' g' bes' es' bes' |
%% bar 90
	f' es'' c'' es'' d''4 |
%% bar 91
	es' f' f |
%% bar 92
	bes'-- f'-. bes-. |
%% bar 93
	es'8 bes' g' bes' es' bes' |
%% bar 94
	es' c'' as' c'' es' c'' |
%% bar 95
	es' c'' as' c'' es' c'' |
%% bar 96
	<
	    \context Voice = up { \stemUp g'2 }
	    \context Voice = down { \stemDown es'2 }
	> r4 |
%% bar 97
	<
	    \context Voice = up { \stemUp f'2 }
	    \context Voice = down { \stemDown d'2 }
	> r4 |
%% bar 98
	<
	    \context Voice = up { \stemUp bes'2 }
	    \context Voice = down { \stemDown es'2 }
	> r4 |
%% bar 99
	bes4 d' es' |
%% bar 100
	<
	    \context Voice = up { \stemUp \tieUp bes'2 ~ bes'8 }
	    \context Voice = down { \stemDown \tieDown bes2 ~ bes8 }
	> r8 |
%% bar 101
	R2.
%% bar 102
	R2.
%% bar 103
	R2.
%% bar 104
	R2.
%% bar 105
	fis'2 g'4 |
%% bar 106
	cis'2 d'4 |
%% bar 107
	fis'2 g'4 |
%% bar 108
	cis'2 d'4 |
%% bar 109
	<
	    \context Voice = up { \stemUp d'8 d' d' d' d' d' }
	    \context Voice = down { \stemDown d d d d d d }
	> |
%% bar 110
	<
	    \context Voice = up { \stemUp d' d' d' d' d' d' }
	    \context Voice = down { \stemDown d d d d d d }
	> |
%% bar 111
	<
	    \context Voice = up { \stemUp d' d' d' d' d' d' }
	    \context Voice = down { \stemDown d d d d d d }
	> |
%% bar 112
	<
	    \context Voice = up { \stemUp d' d' d' d' d' d' }
	    \context Voice = down { \stemDown d d d d d d }
	> |
%% bar 113
	<
	    \context Voice = up { \stemUp g'4 }
	    \context Voice = down { \stemDown g }
	>
	r
	<
	    \context Voice = up { \stemUp d' }
	    \context Voice = down { \stemDown d }
	> |
%% bar 114
	<
	    \context Voice = up { \stemUp es'4 }
	    \context Voice = down { \stemDown es }
	>
	r
	<
	    \context Voice = up { \stemUp g' }
	    \context Voice = down { \stemDown g }
	> |
%% bar 115
	<
	    \context Voice = up { \stemUp as' bes' bes }
	    \context Voice = down { \stemDown as bes bes, }
	> |
%% bar 116
	r8
	<
	    \context Voice = up { \stemUp es' es'2 }
	    \context Voice = down { \stemDown es8 es2 }
	> |
%% bar 117
	r8
	<
	    \context Voice = up { \stemUp es' es'2 }
	    \context Voice = down { \stemDown es8 es2 }
	> |
%% bar 118
	r8
	<
	    \context Voice = up { \stemUp es'8 es'2 }
	    \context Voice = down { \stemDown es8 es2 }
	> |
%% bar 119
	r8
	<
	    \context Voice = up { \stemUp bes'' g'' bes'' es'' bes' }
	    \context Voice = down { \stemDown bes' g' bes' es' bes }
	> |
%% bar 120
	<
	    \context Voice = up { \stemUp es'2 es'4 }
	    \context Voice = down { \stemDown es2 es4 }
	> |
%% bar 121
	<
	    \context Voice = up { \stemUp es'2 }
	    \context Voice = down { \stemDown es }
	> r8.^\fermata
    }
>

ottava = \context Voice = leftHand <
    \notes {
	\skip 16*1
	\skip 2.*117
	\property Voice.TextSpanner \set #'type = #'dotted-line
	\property Voice.TextSpanner \set #'edge-height = #'(6.0 . 6.0)
	\property Voice.TextSpanner \set #'edge-text = #'("8va " . "")
	s4 s8
	\spanrequest \start "text"
	\property Staff.centralCPosition = #-13
	s4. | s2.
	\spanrequest \stop "text"
	\property Staff.centralCPosition = #-6
    }
>

upperStaff = \context Staff = upperStaff <
    \global
%   \property Staff.instrument = "S/A  "
%   \property Staff.instr = " "
%   \property Staff.midiInstrument = "flute"
    \clef "treble"
    \ottava
    \rightHand
>

lowerStaff = \context Staff = lowerStaff <
    \global
%   \property Staff.instrument = "T/B  "
%   \property Staff.instr = " "
%   \property Staff.midiInstrument = "bassoon"
    \clef "bass"
    \leftHand
>

\score {
    \context PianoStaff <
	\upperStaff
	\lowerStaff
    >
    \paper {
	\paperTwenty
	linewidth = 17.25 \cm
	textheight = 26.0 \cm
	% gourlay_maxmeasures = 12.0 // what happened to this?
	\translator {
	    \StaffContext
	    % \consists Staff_margin_engraver
	}
    }
    \midi {
	\tempo 4 = 84
    }
}

% EOF
	
