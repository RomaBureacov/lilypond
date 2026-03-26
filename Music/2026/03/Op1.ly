\version "2.24.4"
\language english

\header {
    title = "Something Something"
    composer = "Roman Bureacov"
}

\paper {
    min-systems-per-page = #10
}

\new Staff \fixed c' {
    \clef treble \time 3/4

    \key c \major
    % pars unum
    <c e g>4 e g |
    <c e g>4 e g |
    <g b d'>4 d' b |
    g, a, b, |

    <c e g>4 e g |
    <c e g>4 e g |
    <g b d'>4 d' b |
    g, a, b, |

    <c e g>4 e g |
    <c e g>4 e g |
    <f a c'>4 d' e' | 
    d'2.

    \repeat segno 2 {
        g'4 g a |
        f'4 f g |
        e'4 e g |
        d'4 d g |
        c' c e |
        g e c~ |
        c2.

        \volta 2 \fine
        
        \break

        % pars duo
        \volta 1 {
            \key a \minor

            \repeat unfold 2 {
                <a, a>4-. c e |
                g8( f) e4 d |
            }

            \break

            \repeat unfold 4 {
                <d f a>4 d'8( c') b4
            }

            \break

            \repeat unfold 2 {
                <a, e a>4-. c e |
                g'8( f') e'4 d'
            }
            
            \break

            \repeat unfold 2 {
                <d f a>4 d'8( c') b4
                <e g e'>4 g,8( f,) e,4
            }
            
            \break

            \repeat unfold 2 {
                <a, e a c'> c e |
                e,8( f,) g,4 g,
            }

            \break

            \repeat unfold 4 {
                <d f a>4 <g, b, e g>8( f,) e,4
            }

            <a, e a c'>8 c
            <d f a>8 b 
            <f a c' e'>8 f'
        }
    }
}