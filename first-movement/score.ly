\include "./common.ly"
\include "flute.ly"
\include "oboe.ly"
\include "clarinet.ly"
\include "horn.ly"
\include "bassoon.ly"


first_movement_score_layout = \layout {
    indent = \Common_Main_Indent
    short-indent = \Common_Short_Indent
    \numericTimeSignature
}

first_movement_score_header = \header {
    title = "I."
    instrument = ""
    composer = ""
    subtitle = ""
}

First_Movement_Score_Transposing_Score = \score {
    \first_movement_score_header
    \first_movement_score_layout

    \new StaffGroup <<
        \First_Movement_Flute_Staff
        \First_Movement_Oboe_Staff
        \transpose c ees \First_Movement_Clarinet_Staff
        \First_Movement_Bassoon_Staff
        \transpose c g \First_Movement_Horn_Staff
    >>
}

First_Movement_Score_Sounding_Score = \score {
    \first_movement_score_header
    \first_movement_score_layout
    \midi {
        \set Staff.midiInstrument = "synthbrass 2"
        \set Staff.midiInstrument = "electric piano 1"
        % \set Staff.midiInstrument = "acoustic grand"
    }

    \new StaffGroup <<
        \First_Movement_Flute_Staff
        \First_Movement_Oboe_Staff
        \First_Movement_Clarinet_Staff
        \First_Movement_Bassoon_Staff
        \First_Movement_Horn_Staff
    >>
}


First_Movement_Score_Flute_Part = \score {
    \first_movement_score_header
    \First_Movement_Flute_Part
}
First_Movement_Score_Oboe_Part = \score {
    \first_movement_score_header
    \First_Movement_Oboe_Part
}
First_Movement_Score_Clarinet_Part = \score {
    \first_movement_score_header
    \First_Movement_Clarinet_Part
}
First_Movement_Score_Bassoon_Part = \score {
    \first_movement_score_header
    \First_Movement_Bassoon_Part
}
First_Movement_Score_Horn_Part = \score {
    \first_movement_score_header
    \First_Movement_Horn_Part
}
