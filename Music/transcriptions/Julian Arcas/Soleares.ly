%{ 

Transcribed by Roman Bureacov

%}

\version "2.24.4"
\language "english"

\header {
  title = "Soleares"
  composer = "Julian Arcas"
}


voiceTwoCust = {
  \voiceTwo
  \override Dots.direction = #UP % note that voiceTwo overwrites this
}
voiceOneCust = {
  \voiceOne
  \override Voice.Slur.direction = #DOWN
}

guitarOne = \relative c'' {
  \voiceOneCust

  \repeat volta 2 {
    a16 b d( b) c a |
    e8[ gs16 b e8] |
  
    a,16 b d( b) c a |
    e8[ gs16 b e8] |
    
    a,16 b d b c a |
    g8[ b16 d g8] |
    
    \break

    e,16 f g a g f |
    e8[ gs16 b e8] |
  }

  \barNumberCheck 9

  \relative c'' \repeat volta 2 {
    e8 fs gs |
    a8 b c |
    d8[ c16( b) c8] |

    \break
 
    r8 b16 c d( c) |
    b8[ a16 gs a8] |
    r8 \tuplet 3/2 { g16[ a g] } \tuplet 3/2 { f16[ g f] } |
    e16 b' gs( e) b gs |
    
    <<
      { \stemUp e'4 r8 }
      \\
      { \stemDown e,4 r8 }
    >>
  }

  \barNumberCheck 17

  \relative c''' \repeat volta 2 {
    c8 a  b |
    c8 \glissando d  c |
    \break
    b8[ a16 gs a8]~ |
    a8 b c \glissando | 
    b8[ a16( gs) a8]~ |
    a8 \noBeam \tuplet 3/2 { g16[ a g] } \tuplet 3/2 { f16[ g f] } |
    e4.~ |
    e4 r8 |
    \break
  }

  \barNumberCheck 25

  \relative \repeat volta 2 {
    a'16 b d b c a |
    e8[ gs16 b e8] |

    a,16 b d b c a |
    e8[ gs16 b e8] |

    a,16 b d b c a |
    g8[ b16 d g8] |    

    \break
    
    e,16 f g a g f |
    e8[ gs16 b e8] |

  }

  \barNumberCheck 33

  \relative c''' \repeat volta 2 {
    r8 e8.[ f16] |
    e4 d8 |
    r8 c8.[ b16] |
    a8[ g16 f e8] |
  }

  \break

  \barNumberCheck 37

  \relative c''' \repeat volta 2 {
    r8 e8.[ f16] |
    e8[ d16( c) b8] |
    a16 b c d e f |
    e8[ d16( c) b8] |
    \break
    a8 \tuplet 3/2 {b16[( c b])} \tuplet 3/2 {a16[( b a])} |
    g8 \tuplet 3/2 {a16[( b a])} \tuplet 3/2 {g16[( a g])} |
    f8 \tuplet 3/2 {g16[( a g])} \tuplet 3/2 {f16[( g f])} |
    e4. |
  }

  \barNumberCheck 45

  \repeat volta 2 {

    % TODO: how to do chord lines(?)?

    r8 <b d g> q |
    r8 <c e g> q |
    \break
    g16 a b c d e |
    <<
      {
        \voiceOneCust
        c8 <c e g> q |
      }
      \\
      {
        \voiceTwoCust
        c4.
      }
    >>

    r8 <b d g> q |
    r8 <c e g> q |
    d16 c b a g f |

    <<
      {e4.} \\ {e4.}
    >>
  }

  \break

  \barNumberCheck 53

  \relative c''' \repeat volta 2 {
    r8 c8.[ c16] |
    c4 b8 |
    r8 a8.[ gs16] |
    e4.
  }
  
  \barNumberCheck 57
  
  \repeat volta 2 {
    r16 e'16 fs gs a b |
    c8 c c |
    \tuplet 3/2 {c16[( d c])} b8 c |
    d8.[ c16 b8] |
    c8.[ b16 a8] |
    b8.[ a16 g8] |
    a8.[ g16 f8] |
    e4. |
  }

  \barNumberCheck 65

  {
    e8 r8 <b d gs>8 |
    <c e a>8 r4 |
  }
 
}

guitarTwo = \relative c' {
  \voiceTwoCust

  a8 c e |
  e,8[ gs16 b e8] |
  
  a,8 c e |
  e,8[ gs16 b e8] |
  
  a,8 c e |
  g,8[ b16 d g8] |

  d,8 f a |
  e8[ gs16 b e8] | 

  \barNumberCheck 9

  \fixed c {
    <<
      \new Voice {
        \voiceOneCust
        e8 <d'' b' gs'>8 q |
        e8 <d'' b' gs'>8 q |
        
        a8 <c'' a' e'>8 q |
        a8 <c'' a' e'>8 q |
        
        f'8 <a' d''> q |
        d8 <f' b'> q |
        
        e8 <gs' b' d''> q |
        e8 <gs' b' d''> q |
      }
      \new Voice {
        \voiceTwoCust
        e4. |
        e4. |
        
        a4. | 
        a4. |
        
        f'4. |
        d4. |
        
        e4. |
        e4. |
      }
    >>
  }
  
  \barNumberCheck 17

  \fixed c {
    <<
      \new Voice {
        \voiceOneCust
        \repeat unfold 4 {
          a8 <e' a' c''> q |
        }
        f'8 <a' d''> q | 
        d'8 <f' b'> q |
        e8 <gs b e'> q |
        e8 <gs b e'> q |
      }
      \new Voice {
        \voiceTwoCust
        a4. | a4. | a4. | a4. |
        f'4. | d'4. | e4. | e4. |
      }
    >>
  }
  
  \barNumberCheck 25

  % TODO: maybe append missing slurs here?

  a,8 c e |
  e,8[ gs16 b e8] |

  a,8 c e |
  e,8[ gs16 b e8] |
  
  a,8 c e |
  g,8[ b16 d g8] |

  d,8 e a |
  e8[ gs16 b e8] |

  \barNumberCheck 33

  \fixed c' {
    <<
      \new Voice {
        \voiceOneCust
        e8 <gs b e'> q |
        e8 <gs b e'> q |
        f8 <a d'> q |
        e8 <gs b e'> q |
      }
      \new Voice {
        \voiceTwoCust
        e4. | e4. | f4. | e4. |
      }
    >>
  }

  \barNumberCheck 37

  \fixed c' {
    <<
      \new Voice {
        \voiceOneCust
        e8 <gs b e'> q |
        e8 <gs b e'> q |
        
        a8 <c' e'> q |
        e8 <gs b e'> q |
        
        a8 <c' e'> q |
        g8 <b d'> q |

        f8 <a d'> q |
        e8 <gs b e'> q |
      }
      \new Voice {
        \voiceTwoCust
        e4. | e4. | a4. | e4. |
        a4. | g4. | f4. | e4. |
      }
    >>
  }

  \barNumberCheck 45
  
  <<
    \relative c'' \new Voice {
      \voiceOneCust
      g8 b d |
      c4. |

      g,8 <b d g> q |
      c'4. |

      g8 b d |
      c4. |

      f,8 <a d> q |

      e,8 <gs' b e> q |
      
    }
    \relative c' \new Voice {
      \voiceTwoCust
      g8 b d |
      c4. |

      g4. |
      c4. |

      g8 b d |
      c4. |

      f4. |
      e,4. |
    }
  >>

  \barNumberCheck 53

  \fixed c
  <<
    \new Voice {
      \voiceOneCust
      a8 <e' a' c''> q |
      d'8 <a' d''> q |
      d'8 <a' d''> q |
      e'8 <gs' b' e''> q |
    }
    \new Voice {
      \voiceTwoCust
      a4. | d'4. | d'4. | e'4. |
    }
  >>

  \barNumberCheck 57

  \fixed c' {
    <<
      \new Voice {
        \voiceOneCust
        e8 <gs b e'> q |
        a8 <a c'> q |
        a8 <a c'> q |
        d'4. |
        c'4. |
        b4. |
        a4. |
        e8 <gs b e'> q |
      }
      \new Voice {
        \voiceTwoCust
        e4. | a4. | a4. |
        b4. | a4. | g4. | f4. |
        e4. |
      }
    >>
  }
  
  \barNumberCheck 65

  <<
    \new Voice {
      \voiceOneCust
      e8 r8 e8 |
      a8 r4 |
    }
    \new Voice {
      \voiceTwoCust
      e8 \omit r8 e,8 |
      a8 r4 |
    }
  >>

}



\score {
  <<
    \new Staff = "guitar1" {
      \time 3/8
      \mergeDifferentlyDottedOn
      \mergeDifferentlyHeadedOn
      \guitarOne
    }
    \new Staff = "guitar2" {
      \time 3/8
      \mergeDifferentlyDottedOn
      \mergeDifferentlyHeadedOn
      \guitarTwo
    }
  >>
  \layout {
    \override TupletBracket.bracket-visibility = ##t
    
    % TODO: repeats should be :.:, not :..:
    \override Voice.Dots.font-size = #-1
    \override Voice.Dots.direction = #UP
    \override Voice.Slur.thickness = #3
  }
}