#!/bin/bash
# dilonoume to for gia na ele3oume an to years.sh tha trexei apo to forEach.sh
export varfor=1
# dilonoume to max=0 gia na mporesoume na 3ekinisoume ton elexo gia na vroume to megalitero
export Max=0
# dilonoume to min=300 gia na mporesoume na 3ekinisoume ton elexo oste na vroume to mikrotero
export Min=300
# to for mas tha 3ekinisi apo to 1 mexri to 2050
for i in $(seq 1 2050); do
	# trexoume to Years.sh dinontastou os anonimi metavliti to ${i}
	source Years.sh "${i}"
    #elexos gia to max
	if [ $Max -le $p ]; then
       Max=$p
       YearMax=${i}
       dateMax=${date}
       monthMax=${month}
	fi
	#elexos gia to min	
	if [ $Min -gt $p ]; then
       Min=$p
       YearMin=${i}
       dateMin=${date}
       monthMin=${month}
	fi	
done

#kanoume show ta apotelesmata mas.
echo "το μεγαλύτερο offset p ειναι $Max και η χρονια του ειναι $YearMax με Κυριακή του Πάσχα στης $dateMax/$monthMax/$YearMax"
echo "το μικρότερο offset p ειναι $Min και η χρονια του ειναι $YearMin με Κυριακή του Πάσχα στης $dateMin/$monthMin/$YearMin"

