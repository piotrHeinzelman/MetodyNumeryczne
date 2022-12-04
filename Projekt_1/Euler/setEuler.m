function setEuler( EulerMode )
    global CFG
    switch EulerMode
        case "normal"
            set_Euler(0);
        case "extend"
            set_Euler(1);
    end
end
