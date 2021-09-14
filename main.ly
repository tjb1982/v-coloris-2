\version "2.22"
\include "./common.ly"
\include "./first-movement/score.ly"

\paper {
    print-all-headers = ##t
    #(set-paper-size "b4")
}

\header {
    tagline = ""
    title = "Quintet"
    subtitle = #(instrument-listing 'common)
    composer = "Tom Brennan"
}

\layout {
    \override TextSpanner.bound-details.right.text = \markup {
        \whiteout \textSpannerEnd
    }
    \override TextSpanner.bound-details.left-broken.text = ##f
    \override TextSpanner.bound-details.right-broken.text = ##f
    indent = \Common_Main_Indent
    short-indent = \Common_Short_Indent
    \numericTimeSignature
}

\book {
    
    \paper {
        #(set-paper-size "b4" 'landscape)
    }

    % score -- transposing
    \bookpart {
        \header {
            instrument = "score (transposing)"
        }
        \First_Movement_Score_Transposing_Score
    }

    % score -- concert-pitch
    \bookpart {
        \header {
            instrument = "score (sounding)"
        }
        \First_Movement_Score_Sounding_Score
    }
}


\book {
    \bookOutputName "parts"

    % parts
    % flute
    \bookpart {
        \header {
            instrument = #(instrument-name 'flute 'title)
        }
        \First_Movement_Score_Flute_Part
    }
    
    % oboe
    \bookpart {
        \header {
            instrument = #(instrument-name 'oboe 'title)
        }
        \First_Movement_Score_Oboe_Part
    }
    
    % oboe
    \bookpart {
        \header {
            instrument = #(instrument-name 'clarinet 'title)
        }
        \First_Movement_Score_Clarinet_Part
    }

    % bassoon
    \bookpart {
        \header {
            instrument = #(instrument-name 'bassoon 'title)
        }
        \First_Movement_Score_Bassoon_Part
    }

    % horn
    \bookpart {
        \header {
            instrument = #(instrument-name 'horn 'title)
        }
        \First_Movement_Score_Horn_Part
    }
}

\book {
    \bookOutputName "midi-score"
    \bookpart {
        \First_Movement_Score_MIDI_Score
    }
}
