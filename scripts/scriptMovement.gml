hsp = argument0;

//LEFT AND RIGHT
move = keyRight + -keyLeft;  //determines direction and multiplies by move speed
if(move < 0){   //if movement is to the left
    image_xscale = -1;  //look left
    if(hspeed > -8){
        hspeed -= horizontalAcceleration;   //accelerate movement if not too fast
    }
}else if(move > 0){ //if movement is to the right
    image_xscale = 1;   //look right
    if(hspeed < 8){
        hspeed += horizontalAcceleration;   //accelerate movement if not too fast
    }
}else{
    if((hspeed <= 0.2 && hspeed > 0) || (hspeed >= -0.2 && hspeed < 0)){ //check if below math does not remove all speed
        hspeed = 0;
    }else if(hspeed < 0){ //if moving left
        hspeed += hsp; //slow down rapidly
    }else if(hspeed > 0){   //if moving right
        hspeed -= hsp; //slow down rapidly
    }
}