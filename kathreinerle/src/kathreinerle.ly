\version "2.22.1"

\header {
  filename   = "kathreinerle.ly"
  title      = "Heißa, Kathreinerle"
  instrument = "SATB"
% meter      = ""
  date       = "2025-04-24"
  source     = "autograph"
  poet       = "Text: Klemens Neumann (1873-1928)"
  composer   = "Weise: Anonymous (ca. 14. Jahrh.)"
  arranger   = "Arr.: Jürgen Reuter (*1971)"
  enteredby  = "Jürgen Reuter"
  copyright  = "All Rights Reserved."
  subtitle   = "aus dem Liederbuch „Der Spielmann“"
}

#(ly:set-option 'clip-systems)
#(set-global-staff-size 20)

\layout {
    inputencoding = "utf-8"
}

\paper {
%   system-system-spacing.basic-distance = #80
    system-separator-markup = \slashSeparator
    print-page-number = ##f
    oddFooterMarkup = \markup{ \fill-line{ \line{" "} } }
    evenFooterMarkup = \markup{ \fill-line{ \line{" "} } }
    #(define fonts
        (set-global-fonts
        #:music "lilyjazz"
        #:brace "lilyjazz"
        #:roman "LilyJAZZText"
        #:sans "LilyJAZZChord"
        #:factor (/ staff-height pt 20)
    ))
    score-system-spacing =
    #'((basic-distance . 12)
       (minimum-distance . 6)
       (padding . 1)
       (stretchability . 0))
    print-page-number = ##t
}

rhythmMarkStaffReduce = #-3
rhythmMarkLabelFontSize = #-2

rhythmMark = #(define-music-function (parser location label musicI musicII ) (string? ly:music? ly:music?)
   #{
      \mark \markup {
        \line \general-align #Y #DOWN {
          \combine
            \italic \fontsize #rhythmMarkLabelFontSize $label
            \transparent \italic \fontsize #rhythmMarkLabelFontSize f

          "("
          \score {                     % 2nd column in line
            \new Staff \with {
              fontSize = #rhythmMarkStaffReduce
              \override StaffSymbol.staff-space = #(magstep rhythmMarkStaffReduce)
              \override StaffSymbol.line-count = #0
              \override VerticalAxisGroup.Y-extent = #'(-0.85 . 4)
            }

            {
              \relative c' { \stemUp $musicI }

%             \override Score.SpacingSpanner.strict-note-spacing = ##t
              \once \override Score.TextScript.Y-offset = #-0.4
              s4.^\markup{ \halign #-1 \italic "=" }
              \relative c' { \stemUp $musicII }
            }

            \layout {
              ragged-right= ##t
              indent = 0
              \context {
                \Staff
                \remove "Clef_engraver"
                \remove "Time_signature_engraver"
              }
            } % layout end

          } % Score end
          ")"

        } % line end
      } % markup end
   #})

rhyMarkIIEighths = {
  % \override Score.SpacingSpanner.common-shortest-duration = #(ly:make-moment 1/4) % tight
  \override Score.SpacingSpanner.common-shortest-duration = #(ly:make-moment 3/16) % even
  b'8[ b8]
}


rhyMarkSlurredTriplets = {
  % \override Score.SpacingSpanner.common-shortest-duration = #(ly:make-moment 1/4) % tight
  % \override Score.SpacingSpanner.common-shortest-duration = #(ly:make-moment 5/32) % slighty tighter as even
  \override Score.SpacingSpanner.common-shortest-duration = #(ly:make-moment 1/8) % even
  %\tuplet 3/2 { b'8 ~ b8 b8 }
  \tuplet 3/2 { b'4 b8 }
}

directionUp = { \stemUp \tieUp \slurUp }
directionDown = { \stemDown \tieDown \slurDown }
directionNeutral = { \stemNeutral \tieNeutral \slurNeutral }

global_Intro = {
  \key f \major
  \time 4/4
  \set Timing.beamExceptions = #'()
  \set Timing.baseMoment = #(ly:make-moment 1/4)
  \set Timing.beatStructure = #'(1 1 1 1)
  \skip 1*4
}

global_I = {
  \key f \major
% \override Staff.TimeSignature.style = #'C
  \skip 1*4
% \bar "S"
  \skip 1*8
}

global_Soli = {
  \key f \major
  \bar "[|:"
  \skip 1*16
  \bar ":|]"
}

global_Coda = {
  \key f \major
  \skip 1*18
  \bar "|."
}

sopranoNotes_Intro = {
  \transpose c' c'' {
    \set Staff.instrumentName = "Soprano  "
    \set Staff.shortInstrumentName = " "
    \set Staff.midiInstrument = "soprano sax"
    \override Script.direction = #UP
    \clef "treble"
    c'4.-> c'8-^ r2 |
    c'4.-> c'8-^ r2 |
    d'4.-> d'8-^ r4 c'8-- c'-^ |
    R1 |
  }
}

sopranoNotes_I = {
  \transpose c' c'' {
    \override Script.direction = #UP
    \clef "treble"
    r8 f'4.-> c'4-^ c'-^ |
    c'-- bes8-- a->~ a2 |
    r8 bes4.-> a4-^ as8-- a->~ |
    a2 r |
    r8 f'4.-> c'4-^ c'-^ |
    c'-- bes8-- a->~ a2 |
    r8 bes4.-> a4-^ as8-- a->~ |
    a2 r |
    r8 e4-^ e8-- g-- g-- e-- e-- |
    f4-^ c'8-- c'~-> c'4 r |
    r8 e4.-> g4-^ e-^ |
    f-- c'8-- c'~-> c'4 r |
    r8 f'4.-> c'4-^ c'-^ |
    c'-- bes8-- a->~ a2 |
    r8 bes4.-> a4-^ g8-- f->~ |
    f4 r4 r2 |

    r8 f'4.-> c'4-^ c'-^ |
    c'-- bes8-- a->~ a2 |
    r8 bes4.-> a4-^ as8-- a->~ |
    a2 r |
    r8 f'4.-> c'4-^ c'-^ |
    c'-- bes8-- a->~ a2 |
    r8 bes4.-> a4-^ as8-- a->~ |
    a2 r |
    r8 e4-^ e8-- g-- g-- e-- e-- |
    f4-^ c'8-- c'~-> c'4 r |
    r8 e4.-> g4-^ e-^ |
    f-- c'8-- c'~-> c'4 r |
    r8 f'4.-> c'4-^ c'-^ |
    c'-- bes8-- a->~ a2 |
    r8 bes4.-> a4-^ g8-- f->~ |
    f4 r4 r2 |
  }
}

sopranoNotes_Soli = {
  \transpose c' c' {
    \override Script.direction = #UP
    \clef "treble_(8)"
%    f'2\mark \markup { \rounded-box \tiny "Open for Jazz Solos" } c' |
%    c' a |
%    bes a4 as |
%    a2 r |
%    f' c' |
%    c' a |
%    bes a4 as |
%    a2 r |
%    e g |
%    f c' |
%    e g |
%    f c' |
%    f' c' |
%    c' a |
%    bes a |
%    f r |
%    ^\markup \center-align {
%      \rounded-box \column { \center-align \tiny "After all Solos"
%                              \center-align \tiny \line { \fontsize #-2 \raise #1 {
%                                             \musicglyph #"scripts.varcoda"
%                                             \musicglyph #"scripts.tenuto"
%                                             \musicglyph #"scripts.varcoda"
%                                             } } } } |
  }
}

sopranoNotes_Coda = {
  \transpose c' c'' {
    \override Script.direction = #UP
    \clef "treble"
    \break \mark \markup {
      \line {
	\musicglyph #"scripts.coda"
	\musicglyph #"scripts.tenuto"
	\musicglyph #"scripts.coda"
      }
    }
    r8 f'4.-> c'4-^ c'-^ |
    c'-- bes8-- a->~ a2 |
    r8 bes4.-> a4-^ as8-- a->~ |
    a2 r |
    r8 f'4.-> c'4-^ c'-^ |
    c'-- bes8-- a->~ a2 |
    r8 bes4.-> a4-^ as8-- a->~ |
    a2 r |
    r8 e4-^ e8-- g-- g-- e-- e-- |
    f4-^ c'8-- c'~-> c'4 r |
    r8 e4.-> g4-^ e-^ |
    f-- c'8-- c'~-> c'4 r |
    r8 f'4.-> c'4-^ c'-^ |
    c'-- bes8-- a->~ a2 |
    r8 bes4.-> a4-^ g8-- f->~ |
    f4 r4 r2 |

    r2 r4 r8 g8~-> |
    g1\fermata |
  }
}

sopranoLyrics_Intro = \lyricmode {
  Hei -- ßa, |
  hei -- ßa, |
  hei -- ßa, schrum, schrum! |
  \skip 1 |
}

sopranoLyrics_I = \lyricmode {
  |
  Hei -- ßa, Ka -- |
  threi -- ner -- le, |
  schnür' dir die Schuh', |
  schürz' dir dein |
  Rö -- cke -- le, |
  gönn' dir kein' Ruh'. |
  Di -- dl, du -- dl, da --dl, |
  schrum, schrum, schrum, |
  geht schon der |
  Hop -- ser 'rum, |
  hei -- ßa, Ka -- |
  threi -- ner -- le, |
  frisch im -- mer zu! |

  Dreh' wie ein |
  Rä -- de -- le |
  flink dich im Tanz! |
  Flie -- gen die |
  Zö -- pfe -- le, |
  wir -- belt der Kranz. |
  Di -- dl, du -- dl, da -- dl, |
  schrum, schrum, schrum, |
  lus -- tig im |
  Kreis he -- rum |
  dreh dich, mein |
  Mä -- del, im |
  fest -- li -- chen Glanz. |
}

sopranoLyrics_Soli = \lyricmode {
  bah dah bah dah bah dah dee dup
  dup dup dee |
  bah dah bah dah bah dah dee daah
  bah dee |
  bah dah bah dah bah dah bee daah
  daay |
  bah dah bah dah bah dah dee daah |
  bah dah bah dah bah dah dee dup
  dup dup dee |
  bah dah bah dah bah dah dee daah
  bah dee |
  bah dah bah dah bah dah bee daah
  daay |
  bah dah bah dah bah dah dee daah |
}

sopranoLyrics_Coda = \lyricmode {
  Heu -- te heißt’s |
  lus -- tig sein, |
  mor -- gen ist’s aus. |
  Sin -- ket der |
  Lich -- ter Schein, |
  geh’n wir nach Haus. |
  Di -- dl, du -- dl, da -- dl, |
  schrum, schrum, schrum, |
  Mor -- gen mit |
  viel Ge -- brumm |
  Fegt die Frau |
  Wir -- tin den |
  Tanz -- bo -- den aus. |
  |
  Schrum!
}

altoNotes_Intro = {
  \transpose c' c'' {
    \set Staff.instrumentName = "Alto  "
    \set Staff.shortInstrumentName = " "
    \set Staff.midiInstrument = "alto sax"
    \override Script.direction = #UP
    \clef "treble"
    a4.-> a8-^ r2 |
    as4.-> as8-^ r2 |
    g4.-> g8-^ r4 g8-- f-^ |
    R1 |
  }
}

altoNotes_I = {
  \transpose c' c'' {
    \override Script.direction = #UP
    \clef "treble"
    r8 a4.-> as4-^ as-^ |
    a?-- g8-- g->~( g4 f) |
    r8 <<
      { g4->^( f8) e4-^ f8-- g->~ |
        g4^( f) }
      { d4.-> c4-^ d8-- c->~ |
        c2 }
    >> r2 |
    r8 a4.-> as4-^ as-^ |
    a?-- g8-- g->~( g4 f) |
    r8 <<
      { g4->^( f8) e4-^ f8-- g->~ |
        g4^( f) }
      { d4.-> c4-^ d8-- c->~ |
        c2 }
    >> r2 |
%    r8 g4->( f8) e4-^ f8-- g(~ |
%    g4 f) r2 |
    r8 bes,4-^ bes,8-- c-- c-- c-- c-- |
    << { d4-^ d-^ f( e) } { bes,4-^ bes,-^ d( cis) } >> |

%    << { d2 cis4. c8-- } { b,2 bes,4-^ bes,-^ } >> |
    << { d2 cis4. c8-- } { b,2 bes,4. bes,8-- } >> |

    << { f4-- f8-- e->~ e4 } { d4-- d8-- c->~ c4 } >> r4 |
    r8 a4.-> as4-^ as-^ |
    a?-- g8-- g->~( fis4 d) |
    r8 << { d4.-> e4-^ e8-- d~-> } { bes,4.-> c4-^ c8-- c-> } >> |
    << { d4 } { c4 } >> r4 r2 |

    r8 a4.-> as4-^ as-^ |
    a?-- g8-- g->~( g4 f) |
    r8 <<
      { g4->^( f8) e4-^ f8-- g->~ |
        g4^( f) }
      { d4.-> c4-^ d8-- c->~ |
        c2 }
    >> r2 |
    r8 a4.-> as4-^ as-^ |
    a?-- g8-- g->~( g4 f) |
    r8 <<
      { g4->^( f8) e4-^ f8-- g->~ |
        g4^( f) }
      { d4.-> c4-^ d8-- c->~ |
        c2 }
    >> r2 |
%    r8 g4->( f8) e4-^ f8-- g(~ |
%    g4 f) r2 |
    r8 bes,4-^ bes,8-- c-- c-- c-- c-- |
    << { d4-^ d-^ f( e) } { bes,4-^ bes,-^ d( cis) } >> |

%    << { d2 cis4. c8-- } { b,2 bes,4-^ bes,-^ } >> |
    << { d2 cis4. c8-- } { b,2 bes,4. bes,8-- } >> |

    << { f4-- f8-- e->~ e4 } { d4-- d8-- c->~ c4 } >> r4 |
    r8 a4.-> as4-^ as-^ |
    a?-- g8-- g->~( fis4 d) |
    r8 << { d4.-> e4-^ e8-- d~-> } { bes,4.-> c4-^ c8-- c-> } >> |
    << { d4 } { c4 } >> r4 r2 |
  }
}

altoNotes_Soli = {
  \transpose c' c'' {
    \override Script.direction = #UP
    \clef "treble"
%    r8 <g bes>-^ r4 q-^ r |
%    q-^ r8 <f a>~-> q2 |
%    r8 q-^ r4 q-^ r |
%    <g bes>-^ r8 q~-> q2 |
%    << \new Voice { \directionUp bes1(~ | bes2 as4 f) }
%       { \directionDown g2(\p as | g\cresc f) } >>
%    \directionNeutral r8\! q-^ r4 <g a>-^ <f a>8-- <g bes>~-> |
%    q2. r4 |
%    r8 <g bes>-^ r4 q-^ r |
%    q-^ r8 <f a>~-> q2 |
%    r8 q-^ r4 q-^ r |
%    <g bes>-^ r8 q~-> q2 |
%    << \new Voice { \directionUp bes1(~ | bes2 as4 f) }
%       { \directionDown g2(\p as | g\cresc f) } >>
%    \directionNeutral r8\! q-^ r4 <g a>-^ <f a>8-- <g bes>~-> |
%    q2. r4 |
  }
}

altoNotes_Coda = {
  \transpose c' c'' {
    \override Script.direction = #UP
    \clef "treble"
    r8 a4.-> as4-^ as-^ |
    a?-- g8-- g->~( g4 f) |
    r8 <<
      { g4->^( f8) e4-^ f8-- g->~ |
        g4^( f) }
      { d4.-> c4-^ d8-- c->~ |
        c2 }
    >> r2 |
    r8 a4.-> as4-^ as-^ |
    a?-- g8-- g->~( g4 f) |
    r8 <<
      { g4->^( f8) e4-^ f8-- g->~ |
        g4^( f) }
      { d4.-> c4-^ d8-- c->~ |
        c2 }
    >> r2 |
%    r8 g4->( f8) e4-^ f8-- g(~ |
%    g4 f) r2 |
    r8 bes,4-^ bes,8-- c-- c-- c-- c-- |
    << { d4-^ d-^ f( e) } { bes,4-^ bes,-^ d( cis) } >> |

%    << { d2 cis4. c8-- } { b,2 bes,4-^ bes,-^ } >> |
    << { d2 cis4. c8-- } { b,2 bes,4. bes,8-- } >> |

    << { f4-- f8-- e->~ e4 } { d4-- d8-- c->~ c4 } >> r4 |
    r8 a4.-> as4-^ as-^ |
    a?-- g8-- g->~( fis4 d) |
    r8 << { d4.-> e4-^ e8-- d~-> } { bes,4.-> c4-^ c8-- c-> } >> |
    << { d4 } { c4 } >> r4 r2 |

    r2 r4 r8 <e c>8~-> |
    <e c>1\fermata |
  }
}

altoLyrics_Intro = \lyricmode {
  Hei -- ßa, |
  hei -- ßa, |
  hei -- ßa, schrum, schrum! |
  \skip 1 |
}

altoLyrics_I = \lyricmode {
  Hei -- ßa, Ka -- |
  threi -- ner -- le, __ |
  schnür' dir die Schuh', __ |
  schürz' dir dein |
  Rö -- cke -- le, __ |
  gönn' dir kein' Ruh'. __ |
  Di -- dl, du -- dl, da --dl, |
  schrum, schrum, schrum, |
  geht schon der |
  Hop -- ser 'rum, |
  hei -- ßa, Ka -- |
  threi -- ner -- le, |
  frisch im -- mer zu! |

  Dreh' wie ein |
  Rä -- de -- le |
  flink dich im Tanz! |
  Flie -- gen die |
  Zö -- pfe -- le, |
  wir -- belt der Kranz. |
  Di -- dl, du -- dl, da -- dl, |
  schrum, schrum, schrum, |
  lus -- tig im |
  Kreis he -- rum |
  dreh dich, mein |
  Mä -- del, im |
  fest -- li -- chen Glanz.
}

altoLyrics_Soli = \lyricmode {
  Dup buck |
  buck daah
  dup buck |
  dup daah
  waah __
  dup buck dee daah
  Dup buck |
  buck daah
  dup buck |
  dup daah
  waah __
  dup buck dee daah
}

altoLyrics_Coda = \lyricmode {
  Heu -- te heißt’s |
  lus -- tig sein, |
  mor -- gen ist’s aus. |
  Sin -- ket der |
  Lich -- ter Schein, |
  geh’n wir nach Haus. |
  Di -- dl, du -- dl, da -- dl, |
  schrum, schrum, schrum, |
  Mor -- gen mit |
  viel Ge -- brumm |
  Fegt die Frau |
  Wir -- tin den |
  Tanz -- bo -- den aus. |
  |
  Schrum! |
}

tenoreNotes_Intro = {
  \transpose c' c' {
    \set Staff.instrumentName = "Tenore  "
    \set Staff.shortInstrumentName = " "
    \set Staff.midiInstrument = "tenor sax"
    \override Script.direction = #UP
    \clef "treble_8"
    es'4.-> es'8-^ r2 |
    d'4.-> d'8-^ r2 |
    bes4.-> bes8-^ r4 a8-- a-^ |
    R1 |
  }
}

tenoreNotes_I = {
  \transpose c' c' {
    \override Script.direction = #UP
    \clef "treble_8"
    r8 es'4.-> d'4-^ d'-^ |
    e'?4-- e'8-- c'->~ c'2 |
    r8 as4.-> bes4-^ bes8-- c'8->~ |
    c'2 r |
    r8 es'4.-> d'4-^ d'-^ |
    e'?4-- e'8-- c'->~ c'2 |
    r8 as4.-> bes4-^ bes8-- c'8->~ |
    c'2 r |
    r8 g4-^ g8-- a-- a-- bes-- bes-- |
    as4-^ as-^ as( g) |
    f2 f4-^ g-^ |
    as4-- as8-- g->~ g4 r4 |
    r8 es'4.-> d'4-^ d'-^ |
    e'?4-- e'8-- c'->~ c'2 |
    r8 f4.-> bes4-^ bes8-- a~-> |
    a4 r4 r2 |

    r8 es'4.-> d'4-^ d'-^ |
    e'?4-- e'8-- c'->~ c'2 |
    r8 as4.-> bes4-^ bes8-- c'8->~ |
    c'2 r |
    r8 es'4.-> d'4-^ d'-^ |
    e'?4-- e'8-- c'->~ c'2 |
    r8 as4.-> bes4-^ bes8-- c'8->~ |
    c'2 r |
    r8 g4-^ g8-- a-- a-- bes-- bes-- |
    as4-^ as-^ as( g) |
    f2 f4-^ g-^ |
    as4-- as8-- g->~ g4 r4 |
    r8 es'4.-> d'4-^ d'-^ |
    e'?4-- e'8-- c'->~ c'2 |
    r8 f4.-> bes4-^ bes8-- a~-> |
    a4 r4 r2 |
  }
}

tenoreNotes_Soli = {
  \transpose c' c' {
    \override Script.direction = #UP
    \clef "treble_8"
%    r8 <d' f'>-^ r4 q-^ r |
%    q-^ r8 <c' d'>~-> q2 |
%    r8 q-^ r4 q-^ r |
%    <des' es'>-^ r8 <d' f'>~-> q2 |
%    << \new Voice { \directionUp f'1(\p | es') }
%       { \directionDown d'( | c')\cresc } >>
%    \directionNeutral r8\! <d' f'>-^ r4 <c' es'>-^ q8-- <d' f'>~-> |
%    q2. r4 |
%    r8 <d' f'>-^ r4 q-^ r |
%    q-^ r8 <c' d'>~-> q2 |
%    r8 q-^ r4 q-^ r |
%    <des' es'>-^ r8 <d' f'>~-> q2 |
%    << \new Voice { \directionUp f'1(\p | es') }
%       { \directionDown d'( | c')\cresc } >>
%    \directionNeutral r8\! <d' f'>-^ r4 <c' es'>-^ q8-- <d' f'>~-> |
%    q2. r4 |
  }
}

tenoreNotes_Coda = {
  \transpose c' c' {
    \override Script.direction = #UP
    \clef "treble_8"
    r8 es'4.-> d'4-^ d'-^ |
    e'?4-- e'8-- c'->~ c'2 |
    r8 as4.-> bes4-^ bes8-- c'8->~ |
    c'2 r |
    r8 es'4.-> d'4-^ d'-^ |
    e'?4-- e'8-- c'->~ c'2 |
    r8 as4.-> bes4-^ bes8-- c'8->~ |
    c'2 r |
    r8 g4-^ g8-- a-- a-- bes-- bes-- |
    as4-^ as-^ as( g) |
    f2 f4-^ g-^ |
    as4-- as8-- g->~ g4 r4 |
    r8 es'4.-> d'4-^ d'-^ |
    e'?4-- e'8-- c'->~ c'2 |
    r8 f4.-> bes4-^ bes8-- a~-> |
    a4 r4 r2 |

    r2 r4 r8 as8~-> |
    as1\fermata |
  }
}

tenoreLyrics_Intro = \lyricmode {
  Hei -- ßa, |
  hei -- ßa, |
  hei -- ßa, schrum, schrum! |
  \skip 1 |
}

tenoreLyrics_I = \lyricmode {
  Hei -- ßa, Ka -- |
  threi -- ner -- le, |
  schnür' dir die Schuh', |
  schürz' dir dein |
  Rö -- cke -- le, |
  gönn' dir kein' Ruh'. |
  Di -- dl, du -- dl, da --dl, |
  schrum, schrum, schrum, |
  geht schon der |
  Hop -- ser 'rum, |
  hei -- ßa, Ka -- |
  threi -- ner -- le, |
  frisch im -- mer zu! |

  Dreh' wie ein |
  Rä -- de -- le |
  flink dich im Tanz! |
  Flie -- gen die |
  Zö -- pfe -- le, |
  wir -- belt der Kranz. |
  Di -- dl, du -- dl, da -- dl, |
  schrum, schrum, schrum, |
  lus -- tig im |
  Kreis he -- rum |
  dreh dich, mein |
  Mä -- del, im |
  fest -- li -- chen Glanz.
}

tenoreLyrics_Soli = \lyricmode {
  Dup buck
  buck daah
  dup buck
  dup daah
  waah __
  dup buck dee daah
  Dup buck
  buck daah
  dup buck
  dup daah
  waah __
  dup buck dee daah
}

tenoreLyrics_Coda = \lyricmode {
  Heu -- te heißt’s |
  lus -- tig sein, |
  mor -- gen ist’s aus. |
  Sin -- ket der |
  Lich -- ter Schein, |
  geh’n wir nach Haus. |
  Di -- dl, du -- dl, da -- dl, |
  schrum, schrum, schrum, |
  Mor -- gen mit |
  viel Ge -- brumm |
  Fegt die Frau |
  Wir -- tin den |
  Tanz -- bo -- den aus. |
  |
  Schrum! |
}

bassoNotes_Intro = {
  \transpose c' c' {
    \set Staff.instrumentName = "Basso  "
    \set Staff.shortInstrumentName = " "
    \set Staff.midiInstrument = "baritone sax"
    \override Script.direction = #UP
    \clef "bass"
    f4.-> f8-^ r2 |
    f4.-> f8-^ r2 |
    e4.-> e8-^ r4 e8-- f-^ |
    r8 c'4-^ c'8-- c8-- c8-- d-- e-- |
  }
}

bassoNotes_I = {
  \transpose c' c' {
    \override Script.direction = #UP
    \clef "bass"
    f4-^ f,-^ bes,-^ bes-^ |
    f8-- f,4.-> f4( d) |
    bes,( f,) c-^ d8-- f->(~ |
    f4 c a,8) c-- \tuplet 3/2 4 { c8-- d-- e-- } |
    f4-^ f,-^ bes,-^ bes-^ |
    f8-- f,4.-> f4( d) |
    bes,( f,) c-^ d8-- f->(~ |
    f4 c f8) f-- e-- d-- |
    c4-^ c-^ c8-- c-- d-- e-- |
    f4-^ f-^ bes,( a,) |
    g,2 g,4-^ c-^ |
    bes,4-- bes,8-- c8~-> c c-- d-- e-- |
    f4-^ f,-^ bes,-^ bes-^ |
    f8-- f,4.-> d4( fis) |
    g2 c4-^ c8-- f-^ |
    r a,4.-> d8-- c-- \tuplet 3/2 4 { c8-- d-- e-- } |

    f4-^ f,-^ bes,-^ bes-^ |
    f8-- f,4.-> f4( d) |
    bes,( f,) c-^ d8-- f->(~ |
    f4 c a,8) c-- \tuplet 3/2 4 { c8-- d-- e-- } |
    f4-^ f,-^ bes,-^ bes-^ |
    f8-- f,4.-> f4( d) |
    bes,( f,) c-^ d8-- f->(~ |
    f4 c f8) f-- e-- d-- |
    c4-^ c-^ c8-- c-- d-- e-- |
    f4-^ f-^ bes,( a,) |
    g,2 g,4-^ c-^ |
    bes,4-- bes,8-- c8~-> c c-- d-- e-- |
    f4-^ f,-^ bes,-^ bes-^ |
    f8-- f,4.-> d4( fis) |
    g2 c4-^ c8-- f-^ |
    r a,4.-> d8-- c-- \tuplet 3/2 4 { c8-- d-- e-- } |
  }
}

bassoNotes_Soli = {
  \transpose c' c' {
    \override Script.direction = #UP
    \clef "bass"
    a4 es d bes, |
    a, c d f |
    as f d bes, |
    d c bes, g, |

    f, es d bes, |
    a, c d f |
    as f d bes, |
    d c a, f, |

    r r r r |
    r r r r |
    r r r r |
    r r r r |

    f es d bes, |
    c a, fis, d, |
    g, bes, c e |
    f d c bes, |
  }
}

bassoNotes_Coda = {
  \transpose c' c' {
    \override Script.direction = #UP
    \clef "bass"
    f4-^ f,-^ bes,-^ bes-^ |
    f8-- f,4.-> f4( d) |
    bes,( f,) c-^ d8-- f->(~ |
    f4 c a,8) c-- \tuplet 3/2 4 { c8-- d-- e-- } |
    f4-^ f,-^ bes,-^ bes-^ |
    f8-- f,4.-> f4( d) |
    bes,( f,) c-^ d8-- f->(~ |
    f4 c f8) f-- e-- d-- |
    c4-^ c-^ c8-- c-- d-- e-- |
    f4-^ f-^ bes,( a,) |
    g,2 g,4-^ c-^ |
    bes,4-- bes,8-- c8~-> c c-- d-- e-- |
    f4-^ f,-^ bes,-^ bes-^ |
    f8-- f,4.-> d4( fis) |
    g2 c4-^ c8-- f-^ |
    r es4.-> d8-- d-- cis-- cis-- |

    c-- as,-- a,-- f,-- r4 r8 f->~ |
    f1\fermata
  }
}

bassoLyrics_Intro = \lyricmode {
  Hei -- ßa, |
  hei -- ßa, |
  hei -- ßa, schrum, schrum! |
  Di -- dl da -- dl du -- dl |
}

bassoLyrics_I = \lyricmode {
  dum, hei -- ßa, Ka -- |
  threi -- ner -- le, __ |
  schnür' dir die Schuh', __ |
  di da -- dl di |
  dum, schürz' dir dein |
  Rö -- cke -- le, __ |
  gönn' dir kein' Ruh'.  Di da -- dl, |
  di -- dl, du -- dl, da --dl, |
  schrum, schrum, schrum, |
  geht schon der |
  Hop -- ser 'rum, di da -- dl |
  dum, hei -- ßa, Ka -- |
  threi -- ner -- le, |
  frisch im -- mer zu! |
  Schrum, du -- dl, da -- dl, di |

  dum, dreh' wie ein |
  Rä -- de -- le |
  flink dich im Tanz! __
  di da -- dl di |
  dum, flie -- gen die |
  Zö -- pfe -- le, |
  wir -- belt der Kranz. __
  Di da -- dl, |
  di -- dl, du -- dl, da -- dl, |
  schrum, schrum, schrum, |
  lus -- tig im |
  Kreis he -- rum, di da -- dl |
  dum, dreh dich, mein |
  Mä -- del, im |
  fest -- li -- chen Glanz. |
  Schrum, du -- dl, da -- dl, di |
}

bassoLyrics_Soli = \lyricmode {
  Dm dm dm dm |
  dm dm dm dm |
  dm dm dm dm |
  dm dm dm dm |
  dm dm dm dm |
  dm dm dm dm |
  dm dm dm dm |
  dm dm dm dm |
  Dm dm dm dm |
  dm dm dm dm |
  dm dm dm dm |
  dm dm dm dm |
  dm dm dm dm |
  dm dm dm dm |
  dm dm dm dm |
  dm dm dm dm |
}

bassoLyrics_Coda = \lyricmode {
  dum, heu -- te heißt’s |
  lus -- tig sein, |
  mor -- gen ist’s aus. __
  di da -- dl di |
  dum, sin -- ket der |
  Lich -- ter Schein, |
  geh’n wir nach Haus. __
  Di da -- dl, |
  di -- dl, du -- dl, da -- dl, |
  schrum, schrum, schrum, |
  Mor -- gen mit |
  viel Ge -- brumm, di da -- dl |
  dum, fegt die Frau |
  Wir -- tin den |
  Tanz -- bo -- den aus. |
  Schrum, di -- dl, da -- dl, |
  du -- dl, schrum, schrum, schrum. |
}

chords_Soli = {
  \chordmode {
    \set majorSevenSymbol = \markup { maj7 }
    f2:7 bes,:7 |
    f:maj7 f,:9 |
    bes,:9 c:6 |
    f:6 c:7 |
    f:7 bes,:7 |
    f:maj7 f,:9 |
    bes,:9 c:6 |
    f:6 f |
    c:7 c:9 |
    bes,:9 c:6 |
    g,:7 c:7 |
    bes,:9 c:6 |
    f:7 bes,:7 |
    f:maj7 d:7 |
    g,:m7 c:9 |
    f:6 c:7 |
  }
}

\score {
  {
    \override Score.RehearsalMark.self-alignment-X = #LEFT
    \override Score.BarNumber.break-visibility = #all-invisible
%   \override Score.RehearsalMark.padding = #-2
    \once \override Score.RehearsalMark.X-offset = #5 % td

    % Section Intro
    \context ChoirStaff = choirStaff <<
      \context Voice = soprano_Intro <<
        \tempo 4 = 120 - 132
	{ \rhythmMark #"Swing" \rhyMarkIIEighths \rhyMarkSlurredTriplets } { \global_Intro } { \sopranoNotes_Intro}
      >>
      \context Lyrics = sopranoLyrics_Intro \lyricsto soprano_Intro { \sopranoLyrics_Intro }
      \context Voice = alto_Intro << { \global_Intro } { \altoNotes_Intro } >>
      \context Lyrics = altoLyrics_Intro \lyricsto alto_Intro { \altoLyrics_Intro }
      \context Voice = tenore_Intro << { \global_Intro } { \tenoreNotes_Intro } >>
      \context Lyrics = tenoreLyrics_Intro \lyricsto tenore_Intro { \tenoreLyrics_Intro }
      \context Voice = basso_Intro << { \global_Intro } { \bassoNotes_Intro } >>
      \context Lyrics = bassoLyrics_Intro \lyricsto basso_Intro { \bassoLyrics_Intro }
    >>
  }
  \layout {
    indent = 3.8\cm
  }
  \midi {
  }
}

\score {
  {
    % Section #1
    \override Score.TimeSignature.stencil = ##f
    \set Score.currentBarNumber = #5
    \context ChoirStaff = choirStaff <<
      \context Voice = soprano_I << { \global_I } { \sopranoNotes_I} >>
      \context Lyrics = sopranoLyrics_I \lyricsto soprano_I { \sopranoLyrics_I }
      \context Voice = alto_I << { \global_I } { \altoNotes_I } >>
      \context Lyrics = altoLyrics_I \lyricsto alto_I { \altoLyrics_I }
      \context Voice = tenore_I << { \global_I } { \tenoreNotes_I } >>
      \context Lyrics = tenoreLyrics_I \lyricsto tenore_I { \tenoreLyrics_I }
      \context Voice = basso_I << { \global_I } { \bassoNotes_I } >>
      \context Lyrics = bassoLyrics_I \lyricsto basso_I { \bassoLyrics_I }
    >>
  }
  \layout {
    indent = 0\cm
  }
  \midi {
    \tempo 4 = 120
  }
}

\score {
  {
    % Section Soli
    \override Score.TimeSignature.stencil = ##f
    \set Score.currentBarNumber = #37
    \context ChoirStaff = choirStaff <<
      \context ChordNames = chordNames << { \global_Soli } { \chords_Soli } >>
      \context Voice = soprano_Soli << { \global_Soli } { \sopranoNotes_Soli } >>
      \context Lyrics = sopranoLyrics_Soli \lyricsto soprano_Soli { \sopranoLyrics_Soli }
      \context Voice = alto_Soli << { \global_Soli } { \altoNotes_Soli } >>
      \context Lyrics = altoLyrics_Soli \lyricsto alto_Soli { \altoLyrics_Soli }
      \context Voice = tenore_Soli << { \global_Soli } { \tenoreNotes_Soli } >>
      \context Lyrics = tenoreLyrics_Soli \lyricsto tenore_Soli { \tenoreLyrics_Soli }
      \context Voice = basso_Soli << { \global_Soli } { \bassoNotes_Soli } >>
      \context Lyrics = bassoLyrics_Soli \lyricsto basso_Soli { \bassoLyrics_Soli }
    >>
  }
  \layout {
    indent = 0\cm
  }
  \midi {
    \tempo 4 = 96
  }
}

\score {
  {
    % Section Coda
    \override Score.TimeSignature.stencil = ##f
    \set Score.currentBarNumber = #53
    \context ChoirStaff = choirStaff <<
      \context Voice = soprano_Coda << { \global_Coda } { \sopranoNotes_Coda} >>
      \context Lyrics = sopranoLyrics_Coda \lyricsto soprano_Coda { \sopranoLyrics_Coda }
      \context Voice = alto_Coda << { \global_Coda } { \altoNotes_Coda } >>
      \context Lyrics = altoLyrics_Coda \lyricsto alto_Coda { \altoLyrics_Coda }
      \context Voice = tenore_Coda << { \global_Coda } { \tenoreNotes_Coda } >>
      \context Lyrics = tenoreLyrics_Coda \lyricsto tenore_Coda { \tenoreLyrics_Coda }
      \context Voice = basso_Coda << { \global_Coda } { \bassoNotes_Coda } >>
      \context Lyrics = bassoLyrics_Coda \lyricsto basso_Coda { \bassoLyrics_Coda }
    >>
  }
  \layout {
    indent = 0\cm
  }
  \midi {
    \tempo 4 = 120
  }
}

%  Local Variables:
%    coding:utf-8
%  End:
