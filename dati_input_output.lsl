
float num_ricevuto;
float risultato;
string testo;
integer ascolto;
default {
    touch_start(integer num_detected) 
    {    
        ascolto = llListen(0, "", NULL_KEY, "");
              
    }
    listen(integer channel, string name, key id, string message) 
    {
        num_ricevuto = (float) message;
        risultato = num_ricevuto * 2;
        testo = "Il valore di input è uguale a " + message + " l'operazione eseguita è: "+ message + " per 2" + " e il risultato è: " + (string) risultato;
        llSay(0, testo);
        llListenRemove(ascolto);
    }
        }
