module Helper exposing (..)

-- 1.0


type GradeStatus
    = Approved
    | Failed
    | Pending


categoricalGrade : List Float -> List GradeStatus
categoricalGrade grades =
    List.map
        (\grade ->
            if grade < 0 then
                Pending

            else if grade >= 7 then
                Approved

            else
                Failed
        )
        grades



-- 2.1


type AirplaneStatus
    = OnTime
    | Boarding
    | Delayed
    | Cancelled



-- 2.2 (según el diagrama)


airplaneScheduleAction : AirplaneStatus -> String
airplaneScheduleAction status =
    case status of
        Cancelled ->
            "Pedir reembolso"

        Delayed ->
            "Esperar"

        OnTime ->
            "Esperar"

        Boarding ->
            "Buscar boleto"



-- 2.3


airportAction : List AirplaneStatus -> List String
airportAction statuses =
    List.map airplaneScheduleAction statuses
