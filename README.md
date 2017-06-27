# EmbeddedSystem Exercises
Group IV Sistemi Embedded 2016/2017
Ing. Colella Gianni
Ing. Guida Ciro 
Ing. Lombardi Daniele

In questo repository sono caricati tutti gli elaborati previsti per il Corso di Sistemi Embedded del prof. Antonino Mazzeo, Università degli Studi di Napoli Federico II, anno accademico 2016/2017, eseguiti dal gruppo IV.
Di seguito si presenta la lista di tutti gli elaborati con una breve descrizione di riferimento.

## Exercise 1
Rifare l’esercizio visto a lezione del GPIO custom e corredarlo dei relativi driver in C.
Rifare lo stesso esercizio ma arricchendolo con una logica custom per la gestione delle interruzioni.
+ Opzionale: scrivere gli stessi driver in C orientato agli oggetti. 
 
## Exercise 2
Rifare l’esercizio del bsp della STM visto a lezione facendone uno custom.

## Exercise 3
Implemntare un esercizio che utilizza interruzioni su GPIO a livello bare metal e HAL.

## Exercise 4
Implementare sulla STM i bus seriali SPI ed I2C facendo comunicare due o più board. I prof ha aggiuto anche UART , ma poi ha chiesto di farne 2/3,

## Exercise 5
Rifare l’esercizio fatto a lezione su USB.
Implementare un altro usb a piacere, host o device.

## Exercise 6
Compilare Linux in due flavour: la prima senza attivare la UIO, la seconda a piacimento, basta che stia tutto in un solo kernel.

## Exercise 7
Scrivere i driver per Linux nelle tre modalità:
  1.  No driver, tramite la funzione mmap accedere direttamente con indirizzo fisico al GPIO.
  2.  Utilizzando le UIO, usando ancora le mmap ma questa volta usando il puntatore a file: /dev/UIO0, /dev/UIO1, etc.
  3.  UIO bloccanti, quindi facendo uso delle interruzioni.

## Exercise 8
FreeRTOS, fare un esercizio a piacere.
È consigliato che tutti facciano lo stesso esercizio: ci sono due task ed entrambi fanno una printf. Vedere come si accavallano modificando le priorità, i tempi di attesa, etc. 
+ Opzionale: implementare ECOS.

Per una documentazione accurata esterna ed interna di ogni elaborato si rimanda al repository "Embedded System Documentation".
