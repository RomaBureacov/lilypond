%{
Following the chapter 4 tutorial
%}

% basic structure of a lilypond file
\version "2.24.4" 
\language english

\header {
    % header stuff...
    title = "tutorial"
    composer = "Roman Bureacov"
}

% melodies
melody = \relative { r4 d''8\noBeam g, c4 r}
text = \lyricmode { opp -- i -- dum }
upper = \relative { 
        <<
            { c''' d e d }
            \\ % <-- 4.2.1, fragments may be separated by 
               % a backwards slash to make voices
               % (useful for long sections of homophony with brief polyphony)
            \relative c'' { <g' d g,>2 <g d g,> }
        >>
    }
lower = \relative { b,2 e }

\score {
    % music...
    <<
        \new Staff = "singer" <<
            \new Voice = "vocal" {
                \melody
            }
            \addlyrics { \text }
        >>
        \new PianoStaff = "piano" <<
            \new Staff = "upper" {
                \upper
            }
            \new Staff = "lower" {
                \clef "bass"
                \lower
            }
        >>
    >>
    \layout { }
}