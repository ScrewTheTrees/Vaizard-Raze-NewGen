min_height=96;
max_height=(room_height/2)-192

startx=(-768);
starty=round(irandom_range(min_height,max_height)/96)*96;

endx=0;
endy=0;

finalx=room_width+768; //Final X we want to reach


//first loop
while (startx<finalx)
    {      
    
    
    
    module=choose(MODULE.FLAT,MODULE.FLAT,MODULE.FLAT,MODULE.EMPTY);
    
        switch(module)
        {
        case MODULE.FLAT:
        scr_type1_ceiling_module_flat(startx,starty,endx,endy);
        break;
        case MODULE.EMPTY:
        scr_type1_ceiling_module_empty(startx,starty,endx,endy);
        break;
        }//Switch module
    
    
    startx+=96;
    
    
        
    }//Startx<finalX
    
    
scr_debug_generator_add(10,startx,starty);//End debug drawing for this section
