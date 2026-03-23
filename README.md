# it-infrastruktura-projekt

### **Popis projektu**  
-Instalování Windows serveru  
-Nastavení Active Directory Domain Services a DNS a následná správa  
-Vytvoření Organizačních jednotek, uživatelů, skupin  
-Přiřazení uživatelů a automatizace  
-Mírný troubleshooting  

### **Použité technologie**  
Windows Server 2022 s GUI (.iso)  
Oracle VirtualBox  
PowerShell ISE  
Active Directory Domain Services  

________________________________________________________________
#### **Krok 1:** *Instalace Windows Serveru*  
-Stažení Windows Serveru s GUI (rozhraní) od Microsoftu v ISO formátu  
-Instalace Windows Server (Standard Evaluation)  
-Nastavení účtu admina  
<img src="https://raw.githubusercontent.com/Marvcloud/it-infrastruktura-projekt/refs/heads/Obrazky/instalaceVM1.png" width="700" height="500">  
<img src="https://github.com/Marvcloud/it-infrastruktura-projekt/blob/Obrazky/instalaceVM4.png?raw=true" width="700" height="500">  

#### **Krok 2:** *Active Directory*  
-Přidání role Active Directory Domain Services  
-Vytvoření domény: domaci.server  
-Proměna serverů na Domain Controller (DC)  
<img src="https://github.com/Marvcloud/it-infrastruktura-projekt/blob/Obrazky/instalace_activedirectory.png?raw=true" width="700" height="500">  
<img src="https://github.com/Marvcloud/it-infrastruktura-projekt/blob/Obrazky/instalace_activedirectory3.png?raw=true" width="700" height="500">  
<img src="https://github.com/Marvcloud/it-infrastruktura-projekt/blob/Obrazky/servermanager_po_nastaveni_ad2.png?raw=true" width="700" height="500">

#### **Krok 3:** *Organizační jednotky*  
-Spustil jsem Powershell ISE jako Administrátor a vytvořil organizační  
jednotky pro které později přidám uživatele  
<img src="https://github.com/Marvcloud/it-infrastruktura-projekt/blob/Obrazky/OrganizacniJednotky1.png?raw=true" width="700" height="500">  
<img src="https://github.com/Marvcloud/it-infrastruktura-projekt/blob/Obrazky/OrganizacniJednotkyGUI.png?raw=true" width="700" height="500">  

#### **Krok 4:** *Uživatelé*  
-Vytvoření uživatelů a přidání cesty podle toho v jakém odvětví pracují  
-Zde jsem dokonce dostal chybu špatného hesla, které nesplňovalo kritéria  
které by heslo mělo mít, potom co jsem heslo opravil přišla zpráva, že  
uživatel již existuje, takže se uživatel propsal jen z půlky. Celého  
uživatele jsem tedy smazal příkazem Remove-ADUser a zkusil vytvořit znovu  
stejného uživatele, který už chybu nezobrazoval.
<img src="https://github.com/Marvcloud/it-infrastruktura-projekt/blob/Obrazky/Uzivatele.png?raw=true" width="700" height="500">  
<img src="https://github.com/Marvcloud/it-infrastruktura-projekt/blob/Obrazky/UzivateleGUI.png?raw=true" width="700" height="500">  

#### **Krok 5:** *Skupiny a Přiřazení uživatelů*  
-Zde jsem vyrobil skupiny pro různé odvětví ve firmě a přiřadil k nim  
již existujicí uživatele, které jsem vytvořil  
<img src="https://github.com/Marvcloud/it-infrastruktura-projekt/blob/Obrazky/Skupiny_uzivatele_prirazeniavytvoreni.png?raw=true" width="700" height="500">  
<img src="https://github.com/Marvcloud/it-infrastruktura-projekt/blob/Obrazky/Skupiny_a_uzivatele_GUI.png?raw=true" width="700" height="500">  

#### **Krok 6:** *Vytváření složek a automatizace*  
-Složky se zde vytvoří pomocí těchto příkazů pro celý konkrétní tým  
-Např. Marketing má 2 uživatele a díky tomuto kódu se vytvoří složka pro  
oba dva naráz, kdyby tým marketingu měl 20 zaměstnanců/uživatelů, stačil  
by tento kód pro vytvoření složek pro všech 20 zaměstnanců  
-Přidal jsem i příkaz Write-Host ze zvědavosti, který trochu "zlidští"  
konzoli a přidá zprávu, že se složka pro někoho vytvořila
<img src="https://github.com/Marvcloud/it-infrastruktura-projekt/blob/Obrazky/VytvoreniSlozkyProCelouSkupinu.png?raw=true" width="700" height="500">  
<img src="https://github.com/Marvcloud/it-infrastruktura-projekt/blob/Obrazky/SlozkyProUzivateleGUI.png?raw=true" width="700" height="500">  
