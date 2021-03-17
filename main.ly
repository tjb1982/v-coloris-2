\version "2.22"
\include "./common.ly"
\include "./first-movement/score.ly"

\book {
    \paper {
        print-all-headers = ##t
    }
    \header {
        tagline = ""
        title = "Quintet"
        subtitle = #(instrument-listing 'common)
        composer = "Tom Brennan"
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

    % parts
    % flute
    \bookpart {
        \header {
            instrument = #(instrument-name 'flute 'full)
        }
        \First_Movement_Score_Flute_Part
    }
    
    % oboe
    \bookpart {
        \header {
            instrument = #(instrument-name 'oboe 'full)
        }
        \First_Movement_Score_Oboe_Part
    }
    
    % oboe
    \bookpart {
        \header {
            instrument = #(instrument-name 'clarinet 'full)
        }
        \First_Movement_Score_Clarinet_Part
    }

    % bassoon
    \bookpart {
        \header {
            instrument = #(instrument-name 'bassoon 'full)
        }
        \First_Movement_Score_Bassoon_Part
    }

    % horn
    \bookpart {
        \header {
            instrument = #(instrument-name 'horn 'full)
        }
        \First_Movement_Score_Horn_Part
    }

}

\First_Movement_Score_MIDI_Score