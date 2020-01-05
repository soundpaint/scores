\version "2.18.2"

\header {
  title = "Ding Dong Bells"
  subtitle = "Four Part Round"
  composer = "Traditional"
  filename = "ding-dong-bells.ly"
  %meter = "144 BPM"
  date = "19th century (?)"
  source = "unknown manuscript"
  enteredby = "Jürgen Reuter"
  copyright = "Song melody and text are in the public domain."
}

#(set-global-staff-size 20)

global = {
  \key g \major
  \time 4/4
  \tempo 4 = 144
  \repeat volta 1 {
    \skip 1*4 |
    \bar "||"
    \break
    \skip 1*4 |
    \bar "||"
    \break
    \skip 1*4 |
    \bar "||"
    \break
    \skip 1*4 |
  }
}

theChords = {
  \chordmode {
    g2 d4:sus4 d |
    e2:m
    b4:sus4 b:m |
    c2:/e d |
    g1 |
  }
}

melodyNotes = {
  \transpose c' c'' {
    \autoBeamOff
    g4%^\markup \rounded-box { "1" }
    g g( fis) |
    e e e( d) |
    e e fis fis |
    g1-\fermata |
    b4.%^\markup \rounded-box { "2" }
    b8 a4 d' |
    g a8( g) fis4 b |
    e g c'8 b a4 |
    b1-\fermata |
    g4%^\markup \rounded-box { "3" }
    d'4. e'8 d' c' |
    b4 b4. c'8 b a |
    g fis e4 d4. d8 |
    d1-\fermata |
    g2%^\markup \rounded-box { "4" }
    d |
    e b, |
    c d |
    g1-\fermata
  }
}

melodyLyrics = \lyricmode {
  \set stanza = "1."
  Ding dong bells, __ |
  ding dong bells, __ |
  ding dong, ding dong |
  bells. |
  \set stanza = "2."
  Hear the mer -- ry, |
  mer -- ry __ bells, o |
  hear the din -- gle -- dong |
  bells. |
  \set stanza = "3."
  I hear the mer -- ry |
  bells, hear the mer -- ry, |
  mer -- ry bells, ding dong |
  bells. |
  \set stanza = "4."
  Ding dong, |
  ding dong, |
  ding dong |
  bells. |
}

melodyStaff = \context Staff = melodyStaff <<
  \global
  \clef "treble"
  \context Voice = melodyNotes { \melodyNotes }
>>

\score {
  <<
    \context ChordNames = chordNames <<
      \theChords
    \melodyStaff
    \context Lyrics = melodyLyrics
    \lyricsto melodyNotes \melodyLyrics
    >>
  >>
  \layout {
    \context {
      \Score
    }
  }
  \midi {
    \context {
      \Score
      midiInstrument = #"acoustic grand"
      tempoWholesPerMinute = #(ly:make-moment 108 4)
    }
  }
}

\layout {
  inputencoding = "utf-8"
  raggedright = ##f
}

\paper {
  print-page-number = ##f
  oddFooterMarkup = \markup{ \fill-line{ \line{" "} } }
  evenFooterMarkup = \markup{ \fill-line{ \line{" "} } }
}

%  Local Variables:
%    coding:utf-8
%  End:
