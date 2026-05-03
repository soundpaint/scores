\version "2.24.3"

\header {
  filename   = "kol-ha-olam-kulo.ly"
  title      = "כל העולם כולו"
  subtitle   = "(Kol Ha'Olam Kulo)"
  instrument = "SSATTB"
  % meter    = ""
  date       = "1997-12-11"
  source     = "autograph"
  poet       = \markup {
    Lyrics: \column {
      \line { רַבִּי נַחְמָן מִבְּרֶסְלֶב }
      \line { (Nachman of Breslov) }
    }
  }
  composer   = \markup {
    Melody: \column {
      \line { ברוך חייט }
      \line { (Baruch Chait) }
    }
  }
  arranger   = \markup {
    \lower #4 { Arr.: Jürgen Reuter (1997 / 2026) }
  }
  enteredby  = "Jürgen Reuter"
  copyright  = "All Rights Reserved."
  % subtitle = ""
  % opus     = ""
  source     = "Autograph"
  tagline    = ""
}

%#(ly:set-option 'clip-systems)
%#(set-global-staff-size 20)

\layout {
  inputencoding = "utf-8"
}

global = {
  \key e \minor
  \time 4/4
  \set Score.voltaSpannerDuration = #(ly:make-moment 4/4)
  \skip 1 * 17
  s1^\fermata
  \bar "|."
}

% NOTE: "\unfoldRepeats" requires the MIDI tempo change
% effectively being performed in bar 17 (rather than
% in bar 9, as one might expect from looking at the
% printed score).  Therefore, we define disting
% "globalScore" and "globalMidi" tempo definitions.

globalScore = {
  s1^\markup { \italic dolente }
  \skip 1 * 11
  s1^\markup { \italic accel. / \italic affrettando }
  \skip 1 * 4
  s4
  s2.^\markup { repeat \italic { ad lib. } }
}

globalMidi = {
  \tempo 4 = 96
  \skip 1 * 16
  \tempo 4 = 120
}

sopranoINotes = {
  \transpose c' c'' {
    \set Staff.instrumentName = "Soprano I "
    \set Staff.shortInstrumentName = " "
    %\set Staff.midiInstrument = "acoustic grand"
    %\set Staff.midiInstrument = "violin"
    \set Staff.midiInstrument = "flute"
    \set Staff.midiMinimumVolume = #0.5
    \set Staff.midiMaximumVolume = #0.8
    \override Script.direction = #UP
    \clef "treble"
    \repeat volta 2 {
      e4\mp b8 b b4. ais8 |
      b2 r |
      b4 b a4. fis8 |
      a2 r |
    }
    \alternative {
      {
        a4 a g4. e8 |
        g2 r |
        g4 e g4. a8 |
        b1 |
      }
      {
        a2 b |
        g2. fis4 |
        e1~ |
        e |
      }
    }
    \repeat volta 2 {
      b4\f e' e' e' |
      b8 g'4 fis'8 e'2 |
    }
    \alternative {
      {
        fis'4 d' d' d' |
        r8 d'4 e'8 d' c' b( a) |
      }
      {
        fis'4 d' d' fis' |
        e'1 |
      }
    }
  }
}

sopranoIINotes = {
  \transpose c' c'' {
    \set Staff.instrumentName = "Soprano II "
    \set Staff.shortInstrumentName = " "
    %\set Staff.midiInstrument = "acoustic grand"
    %\set Staff.midiInstrument = "violin"
    \set Staff.midiInstrument = "oboe"
    \set Staff.midiMinimumVolume = #0.3
    \set Staff.midiMaximumVolume = #0.6
    \override Script.direction = #UP
    \clef "treble"
    \repeat volta 2 {
      e4\mp g8 g g4. fis8 |
      g2 r |
      g4 g fis4. e8 |
      fis2 r |
    }
    \alternative {
      {
        fis4 fis e4. cis8 |
        e2 r |
        e4 e e4. e8 |
        dis1 |
      }
      {
        fis2 g |
        e2. dis4 |
        e1~ |
        e |
      }
    }
    \repeat volta 2 {
      g4\f b4 c' b |
      b8 e'4 dis'8 e'2 |
    }
    \alternative {
      {
        d'4 a a a |
        r8 a4 a8 a a g( fis) |
      }
      {
        d'4 d' d' b |
        b1 |
      }
    }
  }
}

altoNotes = {
  \transpose c' c'' {
    \set Staff.instrumentName = "Alto "
    \set Staff.shortInstrumentName = " "
    %\set Staff.midiInstrument = "acoustic grand"
    %\set Staff.midiInstrument = "viola"
    \set Staff.midiInstrument = "bassoon"
    \set Staff.midiMinimumVolume = #0.3
    \set Staff.midiMaximumVolume = #0.6
    \override Script.direction = #UP
    \clef "treble"
    \repeat volta 2 {
      e4\mp e8 e e4. e8 |
      e2 r |
      e4 e e4. c8 |
      e2 r |
    }
    \alternative {
      {
        e4 c ais,4. ais,8 |
        ais,2 r |
        b,4 b, c4. c8 |
        b,1
      }
      {
        e2 e |
        c2. b,4 |
        b,1~ |
        b, |
      }
    }
    \repeat volta 2 {
      e4\f e fis g |
      b8 b4 c'8 b2 |
    }
    \alternative {
      {
        a4 fis fis fis |
        r8 fis4 g8 fis e fis( g) |
      }
      {
        a4 e fis d |
        e1 |
      }
    }
  }
}

tenorINotes = {
  \transpose c' c' {
    \set Staff.instrumentName = "Tenor I "
    \set Staff.shortInstrumentName = " "
    %\set Staff.midiInstrument = "acoustic grand"
    %\set Staff.midiInstrument = "cello"
    \set Staff.midiInstrument = "trumpet"
    \set Staff.midiMinimumVolume = #0.3
    \set Staff.midiMaximumVolume = #0.6
    \override Script.direction = #UP
    \clef "treble_8"
    \repeat volta 2 {
      r1 |
      e4\mp b8 b b4. ais8 |
      b2 r |
      b4 b a4. fis8 |
    }
    \alternative {
      {
        a2 r |
        g4 g g4. e8 |
        g2 r |
        b4 b b8 c' b4 |
      }
      {
        a4 fis8 fis r4 g8 g |
        e4 fis g fis |
        r2 g4 fis |
        e1 |
      }
    }
    \repeat volta 2 {
      e4\f b ais b |
      e b c' b |
    }
    \alternative {
      {
        d' d' e' d' |
        a a a8 a a4 |
      }
      {
        d'4 a b b |
        e'1 |
      }
    }
  }
}

tenorIINotes = {
  \transpose c' c' {
    \set Staff.instrumentName = "Tenor II "
    \set Staff.shortInstrumentName = " "
    %\set Staff.midiInstrument = "acoustic grand"
    %\set Staff.midiInstrument = "cello"
    \set Staff.midiInstrument = "trombone"
    \set Staff.midiMinimumVolume = #0.3
    \set Staff.midiMaximumVolume = #0.6
    \override Script.direction = #UP
    \clef "treble_8"
    \repeat volta 2 {
      r1 |
      e4\mp g8 g g4. fis8 |
      g2 r |
      fis4 fis fis4. e8 |
    }
    \alternative {
      {
        fis2 r |
        e4 e e4. cis8 |
        e2 r |
        fis4 fis fis8 fis fis4 |
      }
      {
        fis4 e8 e r4 e8 e |
        c4 c c b, |
        r2 c4 d |
        e1 |
      }
    }
    \repeat volta 2 {
      e4\f g fis g |
      e g a g |
    }
    \alternative {
      {
        a b d' a |
        d d e8 e fis4 |
      }
      {
        fis4 fis fis fis |
        b1 |
      }
    }
  }
}

bassNotes = {
  \transpose c' c' {
    \set Staff.instrumentName = "Bass "
    \set Staff.shortInstrumentName = " "
    %\set Staff.midiInstrument = "acoustic grand"
    %\set Staff.midiInstrument = "contrabass"
    \set Staff.midiInstrument = "tuba"
    \set Staff.midiMinimumVolume = #0.3
    \set Staff.midiMaximumVolume = #0.6
    \override Script.direction = #UP
    \clef "bass"
    \repeat volta 2 {
      r1 |
      e4\mp e8 e e4. e8 |
      e2 r |
      e4 e e4. c8 |
    }
    \alternative {
      {
        e2 r |
        cis4 b, ais,4. ais,8 |
        b,2 r |
        b,4 b, b,8 b, b,4 |
      }
      {
        e4 c8 c r4 b,8 b, |
        a,4 a, a, a, |
        r2 a,4 b, |
        e1 |
      }
    }
    \repeat volta 2 {
      e4\f e e e |
      e e e e |
    }
    \alternative {
      {
        d d d d |
        d d d8 d d4 |
      }
      {
        d4 d fis b, |
        e1 |
      }
    }
  }
}

upperLyrics = \lyricmode {
  Kol ha' o- lam ku- |
  lo1 |
  ge- sher tzar me' |
  od, |
  % volta 1.1
  ge- sher tzar me' |
  od, |
  ge- sher tzar me' |
  od. |
  % volta 1.2
  ge- sher |
  tzar me' |
  od. |
  V' ha' i- kar, |
  v' ha' i- kar |
  % volta 2.1
  lo l' fa- chet,
  lo l' fa- chet klal. |
  % volta 2.2
  lo l' fa- chet |
  klal. |
}

lowerLyrics = \lyricmode {
  Kol ha' o- lam ku- |
  lo1 |
  ge- sher tzar me' |
  % volta 1.1
  od, |
  ge- sher tzar me' |
  od, |
  ge- sher tzar me' od. |
  % volta 1.2
  od, ge- sher, ge- sher, |
  ge- sher, ge- sher |
  tzar me' |
  od. |
  V' ha' i- kar,
  v' ha' i- kar |
  % volta 2.1
  lo l' fa- chet,
  lo l' fa- chet klal. |
  % volta 2.2
  lo l' fa- chet |
  klal. |
}

theMusic =
  {
    \context ChoirStaff = choirStaff <<
      \context Voice = sopranoI <<
        { \globalScore }
        { \global } { \sopranoINotes }
      >>
      \context Lyrics = sopranoILyrics \lyricsto sopranoI { \upperLyrics }
      \context Voice = sopranoII <<
        { \global } { \sopranoIINotes }
      >>
      \context Lyrics = sopranoIILyrics \lyricsto sopranoII { \upperLyrics }
      \context Voice = alto <<
        { \global } { \altoNotes }
      >>
      \context Lyrics = altoLyrics \lyricsto alto { \upperLyrics }
      \context Voice = tenorI <<
        { \global } { \tenorINotes }
      >>
      \context Lyrics = tenorILyrics \lyricsto tenorI { \lowerLyrics }
      \context Voice = tenorII <<
        { \global } { \tenorIINotes }
      >>
      \context Lyrics = tenorIILyrics \lyricsto tenorII { \lowerLyrics }
      \context Voice = bass <<
        { \global } { \bassNotes }
      >>
      \context Lyrics = bassLyrics \lyricsto bass { \lowerLyrics }
    >>
  }

\score {
  \theMusic
}

% For MIDI output, we need "\unfoldRepeats" to get it sound right.
% Unfortunately, "\unfoldRepeats" only considers the notes, but
% does not unfold lyrics as well such that many failed barchecks
% will be reported if even they are fully OK.  (That is, either
% "\unfoldRepeats" should also unfold the lyrics, or the barchecks
% should be performed _before_ the repeats are unfolded.)
% As a workaround, we try to turn off barchecks for the score
% block that creates the MIDI output:
"|" = { }
% FIXME: Turning off barchecks like in the above line for the
% following score block basically works.  However, turining them off
% obviously has an effect **only** on barchecks that are specified
% in notes text, but not on barchecks that are specified in the
% lyrics.  To temporarily get rid of the many failed barcheck
% warnings, comment out the "\unfoldRepeats" in the following
% score block.  Grrmpf...

\score {
  \unfoldRepeats
  <<
    \globalMidi
    \theMusic
  >>
  \midi { }
}

%  Local Variables:
%    coding:utf-8
%  End:
