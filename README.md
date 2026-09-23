# Cressi UCI - Windows 11 USB Fix

Patch per risolvere il blocco **"Collegare l'interfaccia USB"** sul software **Cressi UCI** (v1.1.1) su **Windows 11**.

---

## Italiano

### Il Problema
Su Windows 11, Microsoft ha deprecato e rimosso lo strumento di sistema `wmic`.
Il software ufficiale Cressi UCI utilizza uno script interno (`listDevice.bat`) basato su `wmic` per scansionare le porte COM. Senza questo comando, il software fallisce la scansione, azzera il file di configurazione delle porte e non rileva mai la basetta USB (anche se i driver sono corretti e la basetta funziona).

### Come Risolvere in 3 Passaggi

1. **Installa ed esegui una prima volta il software ufficiale:**
   Scarica e installa la versione ufficiale [Cressi UCI 1.1.1 per Windows](https://s3-eu-west-1.amazonaws.com/cressielettronica/software/Cressi_UCI_1_1_1_win.zip).
   > ⚠️ **Importante:** Avvia l'applicazione almeno una volta per permetterle di creare la struttura iniziale dei file in `C:\Cressi`, poi chiudila.

2. **Scarica ed esegui la patch:**
   * Scarica il file: [**Fix-CressiUCI.bat (Download Diretto)**](../../releases/latest/download/Fix-CressiUCI.bat)
   * Fai doppio clic sul file `Fix-CressiUCI.bat` per applicare la correzione.

3. **Riavvia e collega:**
   * **Chiudi e riapri** l'applicazione **Cressi UCI**.
   * **Scollega e ricollega** il cavo USB della basetta al PC (potrebbe volerci qualche istante prima che l'applicazione recepisca la modifica e interroghi la porta).
   * Posiziona il computer subacqueo (es. Goa, Cartesio, Neon, Leonardo) assicurandoti che sul display compaia la scritta `PC`. L'interfaccia verrà rilevata correttamente.

---

## English

### The Issue
On Windows 11, Microsoft deprecated and removed the legacy `wmic` utility.
Official Cressi UCI software relies on an internal script (`listDevice.bat`) using `wmic` to enumerate serial COM ports. Without `wmic`, the script fails and wipes the port config file, causing the software to stay permanently stuck on **"Connect USB interface"** even when drivers are properly installed.

### Quick Fix in 3 Steps

1. **Install and run the official software once:**
   Download and install the official [Cressi UCI 1.1.1 for Windows](https://s3-eu-west-1.amazonaws.com/cressielettronica/software/Cressi_UCI_1_1_1_win.zip).
   > ⚠️ **Note:** Launch the application at least once so it initializes `C:\Cressi`, then close it.

2. **Download and run the patch:**
   * Download: [**Fix-CressiUCI.bat (Direct Download)**](../../releases/latest/download/Fix-CressiUCI.bat)
   * Double-click `Fix-CressiUCI.bat` to apply the fix.

3. **Restart and connect:**
   * **Close and reopen** the **Cressi UCI** application.
   * **Unplug and replug** the USB cradle cable (it may take a few moments for the software to refresh and bind the COM port).
   * Seat your dive computer (Goa, Cartesio, Neon, Leonardo, etc.) making sure `PC` appears on the screen. The interface will now be recognized.

---

### Licenza / License
MIT License. Non affiliato con Cressi Sub S.p.A. / Not affiliated with Cressi Sub S.p.A.
