\version "2.24.4"

\header {
    title = "the most piece ever"
    composer = "me"
    % opus = "Opus 0"
}

% this is a comment

%{

but this is also a comment,
known as the block comment

What's curous is the syntax for it,
compared to programming languages.

%}

{
    % note that note names are lowercase
    c' g' e' c' 

    % this would be incorrect
    % C' G' E' C'
} % lilypond input is enclosed inside of curly braces

% it is also possible to have a single command and an expression inside of curly braces



{
    % an example of writing in bars
    c' g' g'' \bar "||" c' \bar "|" a'
    b' \bar ":|." \break
    \bar ".|:-|"
    a' b' c' b'
    \break
    % it is also possible to do bar checks
    % if the parser sees that bars do not align, a warning is thrown
    a b | d e'
}

{
    % note that the default language is nederlands
    ais bes c d
    % change the language specification
    \language "italiano"
    do re mi fa
    \language "english"
    af bs c-flat' d-sharp'
}

{ % set key signature
    \key a \major
    a4 b c d % note that the number is the note duration
    \key b \minor
    a b c df
}

{ 
    % ties
    a~\( 4 b~ b\) % the parentheses are phrasing
    % slurs
    a( b c' d')
    % slurs with phrasing
    a\( b(\) c' d')
}

\relative c'' {
    % articulations are noted by a dash
    a-. b-> c-! d-+
    % fingerings may be specified by the dash as well
    a-.-5 b->-5 c-!-3 d-+-0
}

\relative c'' {
    % (de)crescendo end on next articulation or \!
    c\< b c d \!
    c\ff b c\> d\ppppp
}

\relative c'' {
    % text may be added using quotes
    c^"this is a note" d e f_\markup { \italic "and this in another one" }
}

\relative c' {
    % beams
    c8[ d e] f
}

\relative c' {
    % pickup
    \partial 2 a4 b |
    a b c d
}

\relative c' {
    % tuplets
    % the fraction: number of notes / number of notes usually there
    a \tuplet 3/2 { a8 b c } d4 e |
    a \tuplet 5/3 { a b c d e } | d e
}

\relative c' {
    a \grace { b32 c } b4 c d |
    a \appoggiatura b32 c4 \acciaccatura d32 e4 f
}

<<
    % polyphony is enclposed inside of <<>>
    \relative { a'2 b }
    \relative { c'2 d }
    \relative { e'2 f }

>>

<<
    % staves are determined by the layout of expressions
    % here it's multiple notes on one staff
    \relative {
        a'2 <<b c,4>> c c
    }
>>

<<
    \new Staff { \clef treble c''4 } % introduce a new notation context.
    \new Staff { \clef alto c4 }
    \new Staff { \clef bass c4 }
>>

<<
    % note that the time signature is copied over, but key is not
    \new Staff { \clef treble \key d \minor \time 3/4 c''4}^\markup { "example of default" }
    \new Staff { \clef bass c''4}
>>

\new PianoStaff <<
    \new Staff { \clef treble \time 4/4 a'1 }^"example of piano music"
    \new Staff { \clef alto \time 4/4 a'1}
>>

\new Staff \relative {
    \clef treble 
    % all
    r4^"chord example"
    <a' c e> <c e g>2 | % note that duration is after the bracket
    r4 <a c e>~ <a c g'> <e g> | % you can essentially treat chords as single notes
    r4 <a c e>8. q q q e,8 q <a c e> q q q q q| % q repeats chords
    r4 <<a2 e,4>> e e e
}

<<
    \relative {
        \key g \major
        \time 6/8
        d''4^"lyrics example" b8 c4 a8 | d4 b8 g4
    }
    \addlyrics { % note that the syllables are separated by spaces
        ya de da doodoo sym ba doo
    }
>>

% below, note the two ways to show lyrics where one syllable extends
% over multiple notes

<<
    \relative {
        \key c \major
        \time 6/8
        c''4 d a8 a |
        b4. c8( e g) |
        c,8 c c4 c8 
    }
    \addlyrics {
        there once was a man, 
        he __ % extender line
        said you sti -- nk
    }
>>

<<
    \relative {
        \key c \major
        \time 6/8
        c''4 d a8 a |
        b4. c8 e g |
        c,8 c c4 c8 
    }
    \addlyrics {
        there once was a man, 
        he _ _
        said you sti -- nk
    }
>>

lead = \new Staff { \clef treble 
    \relative {
        a4 b c d
    }
}

backing = \new Staff { \clef bass
    \relative {
        c4 d e f 
    }
}

<<
    \lead^"variable example"
    \backing
>>

rise = \relative { \tuplet 3/2 { a8 c e } \tuplet 3/2 { g e c } }
bar = { \rise \rise }
\relative { \bar \bar }

% nesting of relative and fixed
% note that absolute mode is relative to middle c
\relative { c d \fixed c' { e8 f } g4 a }