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
  \override Fingering.outside-staff-priority = #100
  \override TupletBracket.outside-staff-priority = #99
}

guitarOne = \relative c'' {
  \voiceOneCust

  \repeat volta 2 {
    a16 b d( b) c a |
    e8[_2 gs16_1 b e8] |
  
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

    e8-0 fs-1 gs-3 |
    a8-1 b-3 c-4 |
    d8[-4 c16(-2 b)-1 c8-2] |

    \break
 
    {
      \override Slur.ratio = #0.5
      r8 b16-1 c-2 d(-4 c)-2 |
      b8[-1 a16(-2 gs)-1 a8]-2 |
      r8 \tuplet 3/2 { g16[^1 a g] } \tuplet 3/2 { f16[^1 g f] } |
      \revert Voice.Fingering.padding
      \set stringNumberOrientations = #'(down)
      e16-0 b'-4 gs(-1 e)-0 b-0 gs-2\5 |
      \revert Slur.ratio
    }
    
    <<
      { \stemUp e'4 r8 }
      \\
      { 
        \set stringNumberOrientations = #'(left)
        \once \override StringNumber.self-alignment-Y = #4
        \stemDown e,4\5 r8 
      }
    >>
  }

  \barNumberCheck 17

  \relative c''' \repeat volta 2 {
    c8-4 a-1  b-3 |
    c8-4 \glissando d-4  c-2 |
    \break
    b8[-1 a16-2 gs-1 \glissando a8]-1~ |
    a8 b-3 c-4 \glissando | 
    b8[-4 a16(-2 gs)-1 a8]~ |
    a8 \noBeam \tuplet 3/2 { g16[-1 a g] } \tuplet 3/2 { f16[-1 g f] } |
    \once \override Voice.Fingering.parent-alignment-X = #-0.5
    e4.-0~ |
    e4 r8 |
    \break
  }

  \barNumberCheck 25

  \relative \repeat volta 2 {
    a'16 b d( b) c a |
    e8[ gs16 b e8] |

    a,16 b d( b) c a |
    e8[ gs16 b e8] |

    a,16 b d( b) c a |
    g8[ b16 d g8] |    

    \break
    
    e,16 f g a g f |
    e8[ gs16 b e8] |

  }

  \barNumberCheck 33

  \relative c''' \repeat volta 2 {
    r8 e8.[-3 f16-4] |
    \once \override Voice.Fingering.parent-alignment-X = #-0.5
    e4-3 
    \once \override Voice.Fingering.parent-alignment-X = #-0.5
    d8-1 |
    r8 c8.[ b16] |
    a8[ g16 f e8] |
  }

  \break

  \barNumberCheck 37

  \relative c''' \repeat volta 2 {
    \set stringNumberOrientations = #'(left)
    r8 e8.[-3 f16]-4 |
    e8[-3 d16(-1 c)-4 b8]-3 |
    a16-1\2 b-3 c-4 d-1 e-3 f-4 |
    e8[-3 d16(-4 c)-2 b8]-1 |
    \break
    \once \override Voice.Fingering.parent-alignment-X = #-0.5
    \once \override Voice.Fingering.parent-alignment-Y = #1
    a8-4\2
    \tuplet 3/2 {b16[(-1 c b])} \tuplet 3/2 {a16[(-1 b a])} |
    g8 \tuplet 3/2 {a16[(-1 b a])} \tuplet 3/2 {g16[(-1 a g])} |
    f8 \tuplet 3/2 {g16[(-1 a g])} \tuplet 3/2 {f16[(-1 g f])} |
    \override Voice.Fingering.parent-alignment-X = #-0.5
    e4.-0 |
    \unset stringNumberOrientations
    \revert Voice.Fingering.parent-alignment-X
    \revert Voice.Fingering.parent-alignment-Y
  }

  \barNumberCheck 45

  \repeat volta 2 {

    \set fingeringOrientations = #'(left)
    \revert Voice.Fingering.outside-staff-priority
    r8 <b-2 d-1 g-1> q |
    r8 <c-3 e-4 g-1> q |
    \break
    g16-0 a-1 b-3 c-4 d-1 e-4 | 
    <<
      {
        \voiceOneCust
        c8
        \set fingeringOrientations = #'(left)
        \revert Voice.Fingering.outside-staff-priority
        <c-4 e-3 g-1> q |
      }
      \\
      {
        \voiceTwoCust
        c4.
      }
    >>

    r8 <b-2 d-1 g-1> q |
    r8 <c-3 e-4 g-1> q |
    d16-4 c-1 b-0 a-2 g-0 f-2 |

    <<
      {e4.-2} \\ {e4.}
    >>
  }

  \break

  \barNumberCheck 53

  \relative c''' \repeat volta 2 {
    r8 c8.[-4 c16] |
    \once \override Voice.Fingering.parent-alignment-X = #-0.5
    c4-4 
    \once \override Voice.Fingering.parent-alignment-X = #-0.5
    b8-3 |
    r8 a8.[-2 gs16]-1 |
    \once \override Voice.Fingering.parent-alignment-X = #-0.5
    e4.-0 |
  }
  
  \barNumberCheck 57
  
  \repeat volta 2 {
    
    r16 e'16-2\2 fs-4 gs-1\1 a-2 b-4 |
    c8-2 c c |
    \override Voice.Fingering.outside-staff-priority = #100
    \tuplet 3/2 {c16[(-2 d-4 c])-2}
    b8-1 c-2 | 
    d8.[-4 c16-2 b8]-1 |
    c8.[-2 b16-1 a8]-4 |
    b8.[-1 a16-4 g8]-2 |
    a8.[-4 g16-2 f8]-1 |

    \set stringNumberOrientations = #'(right)
    \override Voice.StringNumber.parent-alignment-Y = #-6
    \alternative {
      {
        \once \override Voice.Fingering.parent-alignment-X = #-0.5
        e4.-1 |
      }
      {
        \barNumberCheck 65
        \voiceTwoCust
        e8 
        \voiceOneCust
        \revert Voice.Fingering.outside-staff-priority
        b8 \rest <b-3 d-2 gs-4\3>8 |
      }
    }
 
  }


  {
    <c-3 e-2 a-4\3>8 b4\rest^\markup { "Fine" } | 
  }

  \bar "|."

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
      e8 b'8 \rest e,8 |
      a8 a4 \rest |
    }
    \new Voice {
      \voiceTwoCust
      e8 \omit r8 e,8 |
      a8 a4\rest^\markup { "Fine" }|
    }
  >>

}


\paper {
  top-system-spacing = #'((minimum-distance . 20))
  system-system-spacing = #'((minimum-distance . 30))
  last-bottom-spacing = #'((minimum-distance . 20))
}
\score {
  \new StaffGroup <<
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
    \context {
      \StaffGroup \override SystemStartBracket.stencil = ##f
    }
    
    \override TupletBracket.bracket-visibility = ##t
    \override Score.VoltaBracket.edge-height = #'(4 . 4)
    
    \set Score.finalFineTextVisibility = ##t
    \set Score.doubleRepeatBarType = ":|.:"
    \override Voice.Dots.font-size = #-1
    \override Voice.Dots.direction = #UP
    \override Voice.Slur.thickness = #3
    \override Voice.Glissando.thickness = #2
  }
}