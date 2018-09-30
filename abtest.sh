for i in {100..500}
        do

        for j in {40..500}
         do
                 if [ $j -le  $i ]
                 then

                                ab -n $i -c $j -k   http://wordpress-elb-1166882670.us-west-2.elb.amazonaws.com:80/
                                sleep 2
                        else
                                break
                        fi

        done
done

