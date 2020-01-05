\version "2.18.0"

\header {
  title = "We Wish You a Merry Christmas"
  composer = "Traditional"
  arranger = "Jürgen Reuter (2018)"
  filename = "we-wish-you-a-merry-christmas.ly"
  meter = "Allegretto"
  source = "traditional"
  enteredby = "Jürgen Reuter"
  copyright = "public domain"
}

#(set-global-staff-size 20)

global = {
  \key g \major
  \time 3/4
  \tempo 2. = 42
  \partial 4
  s4^\markup { \italic "Intro" }
  \skip 2.*3
  s2
  s4^\markup { \italic "Soli" }
  s2.^\markup { \dynamic p }
  \skip 2.*6
  s2
  s4^\markup { \italic "Tutti" }
  s2.^\markup { \dynamic f }
  \skip 2.*6
  s2
  s4^\markup { \italic "Soli" }
  s2.^\markup { \dynamic p }
  \skip 2.*6
  s2
  s4^\markup { \italic "Tutti" }
  s2.^\markup { \dynamic f }
  \skip 2.*15
  \bar "|."
}

subglobal = {
  \key g \major
  \time 3/4
  \tempo 2. = 42
  \partial 4
  \skip 2.*44
  \skip 4*1
  \bar "|."
}

sopranoNotes = {
  \transpose c' c'' {
    \set instrumentName = "Soprano"
    r4 |
    R2.*3 |
    r2 d4 |
    g g8 a g fis | e4 e e | a a8 b a g |
    fis4 d d | b b8 c' b a | g4 e d8 d |
    e4 a fis |
    g2 d4 |
    g g8 a g fis | e4 e e | a a8 b a g |
    fis4 d d | b b8 c' b a | g4 e d8 d |
    e4 a fis |
    g2 d4 |
    g g g | fis2 fis4 | g fis e | d2 a4 |
    b a g | d' d d8 d | e4 a fis | g2 d4 |
    g g8 a g fis | e4 e e | a a8 b a g |
    fis4 d d | b b8 c' b a | g4 e d8 d |
    e4 a fis | g2 d4 |
    g g8 a g fis | e4 e e | a a8 b a g |
    fis4 d d | b b8 c' b a | g4 e d8 d |
    e4 a fis | g2\fermata
  }
}

altoNotes = {
  \transpose c' c'' {
    \set instrumentName = "Alto"
    r4 |
    R2.*3 |
    r2 d4 |
    g g8 a g fis | e4 e e | a a8 b a g |
    fis4 d d | b b8 c' b a | g4 e d8 d |
    e4 a fis |
    g2 d4 |
    g g8 a g fis | e4 e e | a a8 b a g |
    fis4 d d | b b8 c' b a | g4 e d8 d |
    e4 a fis |
    g2 d4 |
    d d d | d2 d4 | d d cis | d2 fis4 |
    g fis g | fis d d8 d | e4 e d | d2 d4 |
    g g8 a g fis | e4 e e | a a8 b a g |
    fis4 d d | b b8 c' b a | g4 e d8 d |
    e4 a fis | g2 d4 |

%{
    b, b, d | c c8 c c c | a,4 a, a, | d d8 d d d |
    b,4 b, b, | g, g, g, | c4 d d | d2\fermata
%}

    g g d | g g8 a g fis | e4 e e | a a8 b a g |
    fis4 d d | b b8( c') b( a) |
    a4 fis a | b2\fermata
  }
}

tenoreNotes = {
  \transpose c' c' {
    \set instrumentName = "Tenore"
    r4 |
    R2.*3 |
    r2 d4 |
    g g8 a g fis | e4 e e | a a8 b a g |
    fis4 d d | b b8 c' b a | g4 e d8 d |
    e4 a fis |
    g2 d4 |
    g g8 a g fis | e4 e e | a a8 b a g |
    fis4 d d | b b8 c' b a | g4 e d8 d |
    e4 a fis |
    g2 d'4 |
    b b b | a2 a4 | b b a8( g) | fis2 d'4 |
    d' d' d' | d' a b8 a | g4 c' a | b2 d4 |
    g g8 a g fis | e4 e e | a a8 b a g |
    fis4 d d | b b8 c' b a | g4 e d8 d |
    e4 a fis | g2 d'4 |

%{
    g g d | g g8 a g fis | e4 e e | a a8 b a g |
    fis4 d d | b b8( c') b( a) |
    a4 fis a | b2\fermata
%}

    b b d' | c' c'8 c' c' c' | a4 a a | d' d'8 d' d' d' |
    b4 b b | g g g | c'4 d' d' | d'2\fermata
  }
}

bassoNotes = {
  \transpose c' c' {
    \set instrumentName = "Basso"
    r4 |
    R2.*3 |
    r2 d4 |
    g g8 a g fis | e4 e e | a a8 b a g |
    fis4 d d | b b8 c' b a | g4 e d8 d |
    e4 a fis |
    g2 d4 |
    g g8 a g fis | e4 e e | a a8 b a g |
    fis4 d d | b b8 c' b a | g4 e d8 d |
    e4 a fis |
    g2 d4 |
    g b g | d'2 d4 | g g a | d2 a4 |
    g d g | a fis d8 d | c4 a, d | g2 d4 |
    g g8 a g fis | e4 e e | a a8 b a g |
    fis4 d d | b b8 c' b a | g4 e d8 d |
    e4 a fis | g2 d4 |
    b, b,8 b, b, b, | c4 c c | cis cis8 cis cis cis |
    d4 d d | d d8 d d d | e4 c b,8 b, |
    c4 d d | g2\fermata
  }
}

sharedLyrics = \lyricmode {
  \set stanza = #"1. "
  We |
  wish you a mer -- ry |
  Christ -- mas, we |
  wish you a mer -- ry |
  Christ -- mas, we |
  wish you a mer -- ry |
  Christ -- mas and a |
  hap -- py New |
  Year!  We |
  wish you a mer -- ry |
  Christ -- mas, we |
  wish you a mer -- ry |
  Christ -- mas, we |
  wish you a mer -- ry |
  Christ -- mas and a |
  hap -- py New |
  Year!  Good
  tid -- ings we |
  bring to |
  you and your |
  kin; good |
  tid -- ings for |
  Christ -- mas and a |
  hap -- py New |
  Year!  We |
  wish you a mer -- ry |
  Christ -- mas, we |
  wish you a mer -- ry |
  Christ -- mas, we |
  wish you a mer -- ry |
  Christ -- mas and a |
  hap -- py New |
  Year!  We |
}

aheadLyrics = {
  \sharedLyrics
  \lyricmode {
    wish you a mer -- ry |
    Christ -- mas, we |
    wish you a mer -- ry |
    Christ -- mas, we |
    wish you a mer -- ry |
    Christ -- mas and a |
    hap -- py New |
    Year!
  }
}

echoLyrics = {
  \sharedLyrics
  \lyricmode {
    wish you, we |
    wish you a mer -- ry |
    Christ -- mas, we |
    wish you a mer -- ry |
    Christ -- mas and |
    wish you a |
    hap -- py New |
    Year!
  }
}

symbolicChords = {
  \chordmode {
    g2. |
    d |
    g2 a4 |
    d2. |
    g |
    d |
    a2:m d4 |
    g2. |
  }
}

emptySymbolicChords = {
  \chordmode {
    s2. |
    s |
    s |
    s |
    s |
    s |
    s |
    s |
  }
}

theChords = {
  \chordmode {
    s4 |
    g2. |
    c2 g4 |
    a4:m d2 |
    g2. |

    g |
    c |
    a:7 |
    d |
    b:m |
    e2:m g4 |
    a4:m d2:7 |
    g2. |

    g |
    c |
    a:7 |
    d |
    b:m |
    e2:m g4 |
    a4:m d2:7 |
    g2. |

    \emptySymbolicChords

    g2. |
    c |
    a:7 |
    d |
    b:m |
    e2:m g4 |
    a4:m d2:7 |
    g2. |

    g |
    c |
    a:7 |
    d |
    b:m |
    e2:m g4 |
    a4:m d2:7 |
    g2. |
  }
}

sopranoStaff = \context Staff = sopranoStaff <<
  \global
  \set Staff.instrumentName = "Sopran  "
  \set Staff.shortInstrumentName = " "
  \set Staff.midiInstrument = "violin"
  \clef "treble"
  \context Voice = sopranoNotes { \sopranoNotes }
>>

altoStaff = \context Staff = altoStaff <<
  \global
  \set Staff.instrumentName = "Alt  "
  \set Staff.shortInstrumentName = " "
  \set Staff.midiInstrument = "viola"
  \clef "treble"
  \context Voice = altoNotes { \altoNotes }
>>

tenoreStaff = \context Staff = tenoreStaff <<
  \global
  \set Staff.instrumentName = "Tenor  "
  \set Staff.shortInstrumentName = " "
  \set Staff.midiInstrument = "cello"
  \clef "G_8"
  \context Voice = tenoreNotes { \tenoreNotes }
>>

bassoStaff = \context Staff = bassoStaff <<
  \global
  \set Staff.instrumentName = "Bass  "
  \set Staff.shortInstrumentName = " "
  \set Staff.midiInstrument = "contrabass"
  %\set Staff.midiInstrument = "grand piano"
  \clef "bass"
  \context Voice = bassoNotes { \bassoNotes }
>>

soloUpperChords = {
  <g b d'>2. |
  <fis a d'> |
  <g b d'>2 <e a c'>4 |
  <fis a d'>2. |
  <g b d'> |
  <fis a d'> |
  <e a c'>2 <fis a d'>4 |
  <g b d'>2. |
}

emptySoloUpperChords = {
  R2. |
  R |
  R |
  R |
  R |
  R |
  R |
  R |
}

introUpper = \new Voice = "RH" {
  <<
    \context Voice = pianoRHVoiceOne {
      \voiceOne
      d4 |
      g4 g8 a g fis | e4 e d | e4 a fis | g2
    }
    \context Voice = pianoRHVoiceTwo {
      \voiceTwo
      d4 |
      d4 d d | c c d | c d d | d2
    }
  >>
  r4 |
}

pianoUpperStaff = \context Staff = pianoUpperStaff <<
  \global
  \clef "treble"
  \transpose c' c'' {
    \introUpper

    <g b d'>2. |
    <g c' e'> |
    <g a e'> |
    <fis a d'> |
    <fis b d'> |
    <g b e'>2 <g b d'>4 |
    <a c' e'>4 <d a c'>2 |
    <g b d'>2. |

    <g b d'> |
    <g c' e'> |
    <g a e'> |
    <fis a d'> |
    <fis b d'> |
    <g b e'>2 <g b d'>4 |
    <a c' e'>4 <d a c'>2 |
    <g b d'>2. |

    \emptySoloUpperChords

    <g b d'>2. |
    <g c' e'> |
    <g a e'> |
    <fis a d'> |
    <fis b d'> |
    <g b e'>2 <g b d'>4 |
    <a c' e'>4 <d a c'>2 |
    <g b d'>2. |

    <g b d'> |
    <g c' e'> |
    <g a e'> |
    <fis a d'> |
    <fis b d'> |
    <g b e'>2 <g b d'>4 |
    <a c' e'>4 <d a c'>2 |
    <g b d'>2. |
  }
>>

soloLowerChords = {
    b2. |
    d' |
    b2 a4 |
    d'2. |
    b |
    d' |
    a2. |
    g |
}

emptySoloLowerChords = {
    R2. |
    R |
    R |
    R |
    R |
    R |
    R |
    R |
}

introLower = \new Voice = "LH" {
  <<
    \context Voice = pianoLHVoiceOne {
      \voiceOne
      d'4 |
      b4 b b | g g b | a fis a | b2
    }
    \context Voice = pianoLHVoiceTwo {
      \voiceTwo
      d4 |
      g,4 b, d | c e g | c d d | g2
    }
  >>
  r4 |
}

pianoLowerStaff = \context Staff = pianoLowerStaff <<
  \subglobal
  \clef "bass"
  \transpose c' c' {
    \introLower

    b2. |
    c' |
    cis' |
    d' |
    d' |
    e'2 b4 |
    a2. |
    g |

    b |
    c' |
    cis' |
    d' |
    d' |
    e'2 b4 |
    a2. |
    g |

    \emptySoloLowerChords

    b2. |
    c' |
    cis' |
    d' |
    d' |
    e'2 b4 |
    a2. |
    g |

    b |
    c' |
    cis' |
    d' |
    d' |
    e'2 b4 |
    a2. |
    g |
  }
>>

\score {
  \context ChoirStaff <<
    \sopranoStaff

    \context Lyrics = germanSopranoLyrics
    \lyricsto sopranoNotes \aheadLyrics

    \altoStaff

    \context Lyrics = germanAltoLyrics
    \lyricsto altoNotes \echoLyrics

    \tenoreStaff

    \context Lyrics = germanTenoreLyrics
    \lyricsto tenoreNotes \echoLyrics

    \bassoStaff

    \context Lyrics = germanLyrics
    \lyricsto bassoNotes \aheadLyrics

    \context ChordNames = chordNames <<
      \subglobal
      \theChords
    >>

    \context PianoStaff <<
      \pianoUpperStaff
      \pianoLowerStaff
    >>

  %{
    \context PianoStaff <<
      \subglobal
      \transpose c,, c'' {
        \introUpper
      }
      \transpose c,, c' {
        \introLower
      }
    >>
  %}

  >>
  \layout {
    \context {
      \Score
    }
  }
  \midi {
    \context {
      \Score
      midiInstrument = #"music box"
      %midiInstrument = #"glockenspiel"
      %midiInstrument = #"acoustic grand"
      tempoWholesPerMinute = #(ly:make-moment 56 2)
    }
  }
}

\layout {
  inputencoding = "utf-8"
  raggedright = ##f
}

\markup {
  \fill-line {
    \hspace #0.1 % moves the column off the left margin;
     % can be removed if space on the page is tight
     \column {
      \line { \bold "2."
        \column {
          "Now bring us some figgy pudding,"
          "Now bring us some figgy pudding,"
          "Now bring us some figgy pudding,"
          "And a cup of good cheer!"
        }
      }
      \combine \null \vspace #0.1 % adds vertical spacing between verses
      \line { \bold "3."
        \column {
          "We all like our figgy pudding,"
          "We all like our figgy pudding,"
          "We all like our figgy pudding,"
          "With all its good cheer."
        }
      }
    }
    \hspace #0.1 % adds horizontal spacing between columns;
    \column {
      \line { \bold "4."
        \column {
          "We won't go until we get some,"
          "We won't go until we get some,"
          "We won't go until we get some,"
          "So bring it out here!"
        }
      }
      \combine \null \vspace #0.1 % adds vertical spacing between verses
      \line { \bold "5."
        \column {
          "We wish you a merry Christmas,"
          "We wish you a merry Christmas,"
          "We wish you a merry Christmas,"
          "And a Happy New Year!"
        }
      }
    }
  \hspace #0.1 % gives some extra space on the right margin;
  % can be removed if page space is tight
  }
}

\paper {
  system-separator-markup = \slashSeparator
  print-page-number = ##f
  oddFooterMarkup = \markup{ \fill-line{ \line{" "} } }
  evenFooterMarkup = \markup{ \fill-line{ \line{" "} } }
}

%  Local Variables:
%    coding:utf-8
%  End:
