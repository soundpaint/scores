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
    \lower #4 { Arr.: Jürgen Reuter (1997) }
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
  \key e \dorian
  \time 4/4
  \tempo 4 = 96
  \set Score.voltaSpannerDuration = #(ly:make-moment 4/4)
  \skip 1 * 16
  % NOTE: "\unfoldRepeats" requires the MIDI tempo change
  % effectively being performed in bar 17 (rather than
  % in bar 9, as one might expect from looking at the
  % printed score).
  \tempo 4 = 120
  \skip 1 * 1
  s1^\fermata
  \bar "|."
}

sopranoINotes = {
  \transpose c' c'' {
    \set Staff.instrumentName = "Soprano I "
    \set Staff.shortInstrumentName = " "
    \set Staff.midiInstrument = "soprano sax"
    \override Script.direction = #UP
    \clef "treble"
    \repeat volta 2 {
      e4^\mp b8 b b4. ais8 |
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
        e2. b,4^\f |
      }
    }
    \repeat volta 2 {
      d b b4. b8 |
      d'4 cis' b2 |
    }
    \alternative {
      {
        cis'4 a a a |
        r8 a4 b8 a g fis e |
      }
      {
        cis'4 a a cis' |
        b1 |
      }
    }
  }
}

sopranoIINotes = {
  \transpose c' c'' {
    \set Staff.instrumentName = "Soprano II "
    \set Staff.shortInstrumentName = " "
    \set Staff.midiInstrument = "soprano sax"
    \override Script.direction = #UP
    \clef "treble"
    \repeat volta 2 {
      e4^\mp g8 g g4. fis8 |
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
        b,1~ |
        b,2. b,4^\f |
      }
    }
    \repeat volta 2 {
      d fis fis4. fis8 |
      b4 a gis2 |
    }
    \alternative {
      {
        a4 fis fis fis |
        d d cis8 cis cis cis |
      }
      {
        a4 fis fis a |
        fis1 |
      }
    }
  }
}

altoNotes = {
  \transpose c' c'' {
    \set Staff.instrumentName = "Alto "
    \set Staff.shortInstrumentName = " "
    \set Staff.midiInstrument = "alto sax"
    \override Script.direction = #UP
    \clef "treble"
    \repeat volta 2 {
      e4^\mp e8 e e4. e8 |
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
        b,2. b,4^\f |
      }
    }
    \repeat volta 2 {
      d d d4. d8 |
      fis4 fis fis2 |
    }
    \alternative {
      {
        fis4 e dis d |
        b, b, a,8 a, a, a, |
      }
      {
        fis4 e dis d |
        b,1
      }
    }
  }
}

tenorINotes = {
  \transpose c' c' {
    \set Staff.instrumentName = "Tenor I "
    \set Staff.shortInstrumentName = " "
    \set Staff.midiInstrument = "tenor sax"
    \override Script.direction = #UP
    \clef "treble_8"
    \repeat volta 2 {
      r1 |
      e4^\mp b8 b b4. ais8 |
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
        e1~ |
        e2. b4^\f |
      }
    }
    \repeat volta 2 {
      b b b2~ |
      b8 b d' d' d'2 |
    }
    \alternative {
      {
        e'4 cis' cis' cis' |
        r4 a8 a a a a a |
      }
      {
        e'4 cis' cis' cis' |
        b1 |
      }
    }
  }
}

tenorIINotes = {
  \transpose c' c' {
    \set Staff.instrumentName = "Tenor II "
    \set Staff.shortInstrumentName = " "
    \set Staff.midiInstrument = "tenor sax"
    \override Script.direction = #UP
    \clef "treble_8"
    \repeat volta 2 {
      r1 |
      e4^\mp g8 g g4. fis8 |
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
        e1~ |
        e2. b4^\f |
      }
    }
    \repeat volta 2 {
      g g g2~ |
      g8 g a a b4( gis) |
    }
    \alternative {
      {
        fis4 fis fis fis |
        r4 fis8 fis fis fis fis fis |
      }
      {
        fis4 fis fis fis |
        fis1 |
      }
    }
  }
}

bassNotes = {
  \transpose c' c' {
    \set Staff.instrumentName = "Bass "
    \set Staff.shortInstrumentName = " "
    \set Staff.midiInstrument = "baritone sax"
    \override Script.direction = #UP
    \clef "bass"
    \repeat volta 2 {
      r1 |
      e4^\mp e8 e e4. e8 |
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
        e1~ |
        e2. b,4^\f |
      }
    }
    \repeat volta 2 {
      g, g, g,2~ |
      g,8 g, b, b, b,2 |
    }
    \alternative {
      {
        fis,4 fis, fis, fis, |
        r4 b,8 b, b, b, b, b, |
      }
      {
        fis,4 fis, fis, fis, |
        b,1 |
      }
    }
  }
}

upperLyrics = \lyricmode {
  Kol ha' o- lam ku- |
  lo1 |
  ge- sher tzar me' |
  od |
  % volta 1.1
  ge- sher tzar me' |
  od |
  ge- sher tzar me' |
  od |
  % volta 1.2
  ge- sher |
  tzar me' |
  od v' |
  ha' i- kar v' |
  ha' i- kar |
  % volta 2.1
  lo l' fa- chet
  lo l' fa- chet klal v' |
  % volta 2.2
  lo l' fa- chet |
  klal. |
}

lowerLyrics = \lyricmode {
  Kol ha' o- lam ku- |
  lo1 |
  ge- sher tzar me' |
  % volta 1.1
  od |
  ge- sher tzar me' |
  od |
  ge- sher tzar me' od |
  % volta 1.2
  od ge- sher ge- sher |
  ge- sher tzar me' |
  od v' |
  ha' i- kar
  v' ha' i- kar |
  % volta 2.1
  lo l' fa- chet
  lo l' fa- chet klal v' |
  % volta 2.2
  lo l' fa- chet |
  klal. |
}

theMusic =
  {
    \override Score.BarNumber.break-visibility = #all-invisible
    \context ChoirStaff = choirStaff <<
      \context Voice = sopranoI <<
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
  \theMusic
  \midi {
    \context {
      \Score
      midiMinimumVolume = 0.5
      midiMaximumVolume = 0.5
    }
  }
}

%  Local Variables:
%    coding:utf-8
%  End:
