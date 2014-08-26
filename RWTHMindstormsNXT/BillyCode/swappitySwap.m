function [x,y,z,speed1,speed2,speed3] = swappitySwap(degrees)
    
    degx = degrees(1,1);
    degy = degrees(1,2);
    degz = degrees(1,3);
    time = 2.1;
    
    if(abs(degx) < 84)
        if degx<0
            speed1 = -40;
        else
            speed1 = 40;
        end
        %degx = -int16(degx);
    elseif(abs(degx)>99)
        if degx<0
            speed1 = -99;
        else
            speed1 = 99;
        end
    else
        speed1 = int16(degx/time);
    end
    if(abs(degy) < 84)
        if degy<0
            speed2 = -40;
        else
            speed2 = 40;
        end
        %degy = -int16(degy);
    elseif(abs(degy)>99)
        if degy<0
            speed2 = -99;
        else
            speed2 = 99;
        end
    else 
        speed2 = int16(degy/time);
    end
   if(abs(degz) < 84)
        if degz<0
            speed3 = -40;
        else
            speed3 = 40;
        end
        %degz = -int16(degz);
   elseif(abs(degz)>99)
        if degz<0
            speed3 = -99;
        else
            speed3 = 99;
        end
   else
        speed3 = int16(degz/time);
    end
    disp([speed1,speed2,speed3]);
    x = uint16(abs(degx));
    y = uint16(abs(degy));
    z = uint16(abs(degz));
end
