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
-Stažení Windows Serveru s GUI od Microsoftu v ISO formátu.  
-Instalace Windows Server (Standard Evaluation)  
-Nastavení účtu admina  
<img src="https://github.com/Marvcloud/it-infrastruktura-projekt/blob/Obrazky/instalaceVM1.png?raw=true" width="700" height="500">  
<img src="https://github.com/Marvcloud/it-infrastruktura-projekt/blob/Obrazky/instalaceVM4.png?raw=true" width="700" height="500">  

#### **Krok 2:** *Active Directory*  
-Přidání role Active Directory Domain Services  
-Vytvoření domény: domaci.server  
-Proměna serverů na Domain Controller  
