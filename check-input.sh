n=0
      until [ $n -ge 3 ] 
      do 
      read line

        if [ "$line" = "XYZ" ]; then 
            echo "Accepted" 
            break
        else
            n=$[$n+1]
            echo " trying " $n "times "   
        fi;
      done