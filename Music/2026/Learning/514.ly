\version "2.24.4"

\header {
    title = "thing"
}

\relative {
    a4 b c d
    \override NoteHead.color = "red"
    a b c d
    \override NoteHead.color = "blue"
    a b c d
    \revert NoteHead.color
    a b c d

    \override NoteHead.color = "red"
    a
    \once \override NoteHead.color = "green"
    b
    \once \override NoteHead.color = "blue"
    c
    \once \revert NoteHead.color
    d8 d8

    \revert NoteHead.color
    \override Slur.thickness = #10
    a b c( d)
}

\relative {
    { a2 b c d }
    \addlyrics {
        \override LyricText.font-shape = #'italic % note that this is a symbol ('italic)
        \override LyricText.color = "red"
        he -- llo to thee
    }
}

\layout {
    \override Staff.TimeSignature.rotation = #'(45 0 0)
}
