    F1::main()
    F3::exitapp
     
     
    main(){
    	loop{
    		if(menuDetection()=true){
    		Send {Esc}
    		sleep 100
    		Send {Space}
    		}else{
    		defaultMovement()
    		}
    	}
    }
     
    menuDetection(){
    	PixelGetColor, color1, 1827, 984
    	PixelGetColor, color2, 40, 1040
    	if(color1=0x313131 or color2=0x313131)
    	{
    	return true
    	}else{
    	return false
    	}
    }
     
    randSleep(){
    	Random, rand, 232, 863
    	sleep rand	
    }
     
    defaultMovement(){
    	Random, k, 0, 9
    	Random, r, 0, 2
    	if(k!=5){
    	Send {w down}
    	}
    	if(r=0){
    	Send {space}
    	} 
    	tekitouMovement(0, k)
    	randSleep()
    	tekitouMovement(1, k)
    	Send {w up}
    }
     
    tekitouMovement(n, k){
    	if(n=0){
    		Switch k{
    		Case 0:
    			Send {d down}
    		Case 1:
    			Send {a down}
    		Case 2:
    			click down
    		Case 3:
    			click right
    		}
    	}else{
    		Switch k{
    		Case 0:
    			Send {d up}
    		Case 1:
    			Send {a up}
    		Case 2:
    			click up
    		}
    	}
    }
     
    ;Made by DenctoPR