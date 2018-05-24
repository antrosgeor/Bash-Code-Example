#!/bin/bash

if [ $1 ]; then
	#ανώνυμη μεταβλητή για το έτος (κατά τη διαδικασία επίκλησης του script).
    Years=$1
    # to sigkekrimeno if elexei apo pou 3ekinise na trexei o kodikas mas
 	if [ -z "$varfor" ]; then
        echo "Το ετος που εχετε ζητηση για να υπολογίσουμε την ημερομηνία της Κυριακής του Πάσχα για τους ορθόδοξους ειναι $Years "
	fi
else 
	#επώνυμη μεταβλητή (μέσω εντολής read )
    echo "παρακαλω εισαγετε την χρονολογια που επιθυμείτε για να υπολογίσουμε την ημερομηνία της Κυριακής του Πάσχα για τους ορθόδοξους?"
    #perimeni na pari tin timi years.
    read Years
	echo "Το ετος που εχετε ζητηση για να υπολογίσουμε την ημερομηνία της Κυριακής του Πάσχα για τους ορθόδοξους ειναι $Years "
fi

(( m19 = 19 * (Years % 19) ))
(( m4 = 4 * (Years % 7) ))
(( m2 = 2 * (Years % 4) ))
(( v2 =  (16 + m19) % 30 ))
(( v1 =  (6 * v2 + m4 + m2) % 7 ))
(( p = v1 + v2 ))
(( date = p + 3))
((month = 4))
# an to date einai megalitero apo 30 tote simeni pros prepi na ala3oume mina.
if [ $date -gt 30 ]; then
   (( date = date - 30))
   ((month = 5))
fi	

if [ -z "$varfor" ]; then
       echo "H Κυριακής του Πάσχα για τους ορθόδοξους ειναι στης $date/$month/$Years"
fi
		
