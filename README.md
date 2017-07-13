# Embedded System Exercises
Group IV Sistemi Embedded 2016/2017
Ing. Colella Gianni
Ing. Guida Ciro 
Ing. Lombardi Daniele

In questo repository sono caricati tutti gli elaborati previsti per il Corso di Sistemi Embedded del prof. Antonino Mazzeo, Università degli Studi di Napoli Federico II, anno accademico 2016/2017, eseguiti dal gruppo IV.
Di seguito si presenta la lista di tutte le tracce.

## Exercise 1
In questo elaborato viene mostrato come utilizzare un General Purpose Input/Output per pilotare i led della board Digilent Zybo Zynq-7000. Per la realizzazione di tale obiettivo, si divide il lavoro in due parti. Nella prima parte, dopo aver definito manualmente un componente GPIO lo si impacchetta in un IP-Core e lo si utilizza insieme al Processing System Zinq. Nella seconda parte, invece, in aggiunta all'architettura già creata, viene introdotto uno strato driver, utile al controllo dei led.
Successivamente a partire dall'IP core creato, si aggiunge un supporto custom che permette alla periferica di lanciare interruzioni verso il PS.
 
## Exercise 2
Si definisca e si implementi una BSP custom per il controllo dei led e del bottone utente per un microcontrollore STM32 F4 Discovery.

## Exercise 3
Si mostrino degli esempi di utilizzo delle interruzioni su board STM.

## Exercise 4
Si realizzino degli esempi di trasmissione e ricezione di messaggi tra 2 board STM32 Discovery, utilizzando i seguenti bus di comunicazione seriale:

1. SPI;

2. I2C;

3. UART. 

## Exercise 5
Si mostri come è possibile inviare dati serialmente, da una board STM Discovery ad un terminale virtuale, utilizzando un collegamento USB. Successivamente, si implementi un device o host USB.

## Exercise 6
Si mostri come eseguire il booting su board Zybo Zynq 7000 attraverso una SD-card. In particolare, a partire da un componente GPIO e il Processing System Zinq, si inserisca lo strato di Sistema Operativo per poi scrivere un driver, al fine di pilotare i led della board.

## Exercise 7
Si scriva un driver Linux in grado di pilotare una periferica GPIO di lettura o scrittura. Si esegua la traccia utilizzando le 3 diverse modalità di seguito elencate:

1. Accedere ai registri della periferica tramite indirizzo fisico della stessa;

2. Accedere alla GPIO come device uio, senza utilizzare il meccanismo delle interruzioni;

3. Accedere alla GPIO come device uio, utilizzando il meccanismo delle interruzioni.

In un primo momento, si utilizzi la periferica GPIO fornita dalla Xilinx e messa a disposizione come IP-core nell'ambiente Vivado; in un secondo momento, si ripeta l'esercizio utilizzando la GPIO custom sviluppata per il Capitolo 1.

## Exercise 8
Si implementi una versione del Sistema Operativo RealTime FreeRTOS su board STMicroeletronic STM32F4Discovery e, implementando vari task con priorità diverse, si facciano valutazioni sul meccanismo di scheduling dei vari task.

Per una documentazione accurata (esterna ed interna) di ogni elaborato si rimanda al repository Embedded System Documentation, disponibile al link https://github.com/F3CDG/Embedded-System-Documentation.
