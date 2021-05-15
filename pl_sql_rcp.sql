-- ERRBASE 35300,35599

select ASWAddMessage(35300, 'Záznam je skrytý - chcete ho spolu s odpovídajícím záznamem ve skladových položkách vrátit do běžného stavu?|FYC;RSUNHIDE');
select ASWAddMessage(35301, 'Receptura už je skladovou položkou. Chcete vazbu zrušit?|FYC;RSUNTIE');
select ASWAddMessage(35302, 'Název musí být vyplněný!|RNAZEV');
select ASWAddMessage(35303, 'Název "%1!" už je přiřazen jiné receptuře!|RNAZEV');
select ASWAddMessage(35304, 'Název "%1!" už je přiřazen jiné receptuře (skrytý záznam)!|RNAZEV');
select ASWAddMessage(35305, 'Receptura - skladová položka musí mít právě jednu ingredienci!');
select ASWAddMessage(35306, 'Receptura tvořící obal "%1!" neexistuje!|ROBALRECNAZEV');
select ASWAddMessage(35307, 'Skupina receptur pro odpisy ze skladu "%1!" neexistuje!|RSKUPREC1');
select ASWAddMessage(35308, 'Chcete vytvořit recepturu - skladovou položku?|FYC;RSTIE');
select ASWAddMessage(35309, 'Skupina receptur pro tisk objednávek "%1!" neexistuje!|RSKUPREC2');
select ASWAddMessage(35310, 'Slave skladová položka se nemůže stát recepturou!');
select ASWAddMessage(35311, 'Skupina receptur 3 "%1!" neexistuje!|RSKUPREC3');
select ASWAddMessage(35312, 'Skladová položka už je recepturou!');
select ASWAddMessage(35313, 'Skupina receptur 4 "%1!" neexistuje!|RSKUPREC4');
select ASWAddMessage(35314, 'Skrytá skladová položka se nemůže stát recepturou!');
select ASWAddMessage(35315, 'Klíč "%1!" už je přiřazen jiné receptuře!|RKLIC');
select ASWAddMessage(35316, 'Musí být vybrán jenom jeden záznam!');
select ASWAddMessage(35317, 'Změní se hodnota čárového kódu u odpovídající skladové položky!|FOC;RSCHANGEBARCODE');
select ASWAddMessage(35318, 'Receptura s názvem "%1!" již má přiřazenu recepturu typu "Poloviční porce". Chcete existující recepturu přepsat?|F[Přepsat|POLPORCEPREPSAT_%2!+][Založit další|POLPORCEZALOZIT_%2!+][Beze změny|POLPORCEPREPSAT_%2!-][Přepsat vše|POLPORCEPREPSATALL+][Všem založit další|POLPORCEZALOZITALL+][Vše beze změny|POLPORCEPREPSATALL-]');
select ASWAddMessage(35319, 'Pro generování polovičních porcí musí být zadaná položka "Předpona pro název" nebo "Přípona pro název"!|RPREFNAZEV');
select ASWAddMessage(35320, 'Pro poloviční porci musí být hlavní receptura typu "Standardní". Vybraná receptura "%1!" nesplňuje tuto podmínku!');
select ASWAddMessage(35321, 'Poloviční porci nejde namarkovat, protože k vybrané receptuře "%1!" neexistuje receptura typu "Poloviční porce"!');
select ASWAddMessage(35322, 'Poloviční porci lze markovat jen pro "Standardní" recepturu!');
select ASWAddMessage(35323, 'Receptura s PLU %1! nebyla nalezena!');
select ASWAddMessage(35324, 'Ingredience pro recepturu "%1!" nejdou odepsat ze skladu, protože pro ni není definováno, ze kterého skladu se mají ingredience receptury při namarkování na pokladně "%2!" odepsat.');
select ASWAddMessage(35325, 'Ingredience pro recepturu "%1!" nejdou odepsat ze skladu, protože není definovaná skupina v položce "Skupina pro odpisy ze skladu"!');
select ASWAddMessage(35326, 'Identifikační kód "%1!" už je přiřazen jiné receptuře!|RIDCODE');
select ASWAddMessage(35327, 'PLU kód "%1!" už je přiřazen jiné receptuře!|RPLUCODE');
select ASWAddMessage(35328, 'Obal musí být standardní receptura!|ROBALRECNAZEV');
select ASWAddMessage(35329, E'Receptura nejde smazat, protože se na ni odkazují záznamy z tabulek %1!.\nChcete ji skrýt?|FYC;HIDERECEPT');
select ASWAddMessage(35330, 'Název "%1!" odpovídá Zkratce jiné receptury!|RNAZEV');
select ASWAddMessage(35331, 'Název "%1!" odpovídá Zkratce jiné receptury (skrytý záznam)!|RNAZEV');
select ASWAddMessage(35332, 'Zkratka "%1!" odpovídá Názvu jiné receptury!|RZKRATKA');
select ASWAddMessage(35333, 'Zkratka "%1!" odpovídá Názvu jiné receptury (skrytý záznam)!|RZKRATKA');
select ASWAddMessage(35334, 'Položka Číslo L musí být vyplněná!|RCISLOL');
select ASWAddMessage(35335, 'Položka Číslo H musí být vyplněná!|RCISLOH');
select ASWAddMessage(35336, 'Položka Porce musí být vyplněná!|RPORCI');
select ASWAddMessage(35337, 'Změní se hodnoty u odpovídající skladové položky!|FOC;RSCHANGE');
select ASWAddMessage(35338, 'Receptura s klíčem "%1!" nebyla nalezena!');
select ASWAddMessage(35339, 'Receptura typu "Vkládání zákazníka" musí mít vyplněný klíč (jeho posledním znakem musí být "+" nebo "-", pro vložení nebo vyjmutí ze skupiny)!|RKLIC');
select ASWAddMessage(35340, 'Receptura "%1!" není receptura typu "%2!"!');
select ASWAddMessage(35341, 'U receptury typu "%1!" se cena nezadává!');
select ASWAddMessage(35342, 'Pro recepturu typu "%1!" není možné zadat dotaci!');
select ASWAddMessage(35343, 'Receptura nemůže být svým vlastním obalem!|ROBALRECNAZEV');
select ASWAddMessage(35344, 'Skupina receptur %1! musí být vyplněná!|R%2!');
select ASWAddMessage(35345, 'Skladová položka musí být zadána!|RSKLADPOL');
select ASWAddMessage(35346, 'Receptura typu "Logo na stůl" musí mít vyplněný klíč, který se použije pro vyhledání souboru loga!|RKLIC');
select ASWAddMessage(35349, 'Receptura je skladovou položkou. Bude smazána i odpovídající skladová položka!|FOC;RSDELETE');
select ASWAddMessage(35350, 'Nelze pracovat s druhou DPH (omezení limitů)!');
select ASWAddMessage(35351, 'Základní cena musí být zadaná!|R%1!');
select ASWAddMessage(35352, 'DPH musí být vyplněná!|RDPH');
select ASWAddMessage(35353, 'DPH "%1!" neexistuje!|RDPH');
select ASWAddMessage(35354, 'U receptury - skladové položky nelze měnit ingredience!');
select ASWAddMessage(35355, 'Položka "Minimální množství" musí být vyplněná!|RMINMNOZSTVI');
select ASWAddMessage(35356, 'Zkratka "%1!" už je přiřazena jiné receptuře!|RZKRATKA');
select ASWAddMessage(35357, 'Zkratka "%1!" už je přiřazena jiné receptuře (skrytý záznam)!|RZKRATKA');
select ASWAddMessage(35358, 'Položka "Receptura pro doplatek" musí být vyplněná!|RDOPLATEKRECEPT');
select ASWAddMessage(35359, 'Receptura "%1!", která je přiřazena jako doplatek, nebyla nalezena!|RDOPLATEKRECEPT');
select ASWAddMessage(35360, 'Pokoušíte se namarkovat recepturu s dotací, ale zákazník "%1!" (kterému markujete) nevyhovuje ani jedné z definic umožňujících dotaci a není povolen odběr bez dotace.');
select ASWAddMessage(35361, 'Dotovaná cena musí být zadána!|R%1!');
select ASWAddMessage(35362, 'V denních odběrech existuje záznam, podle kterého zákazník  "%1!" vyčerpal všechny dotace popřípadě markované množství převyšuje počet dotací, na které má zákazník právo, ale v definicích pro dotace neexistuje pravidlo, podle kterého jde určit jestli má popřípadě nemá oprávnění k odběru bez dotace. K této situaci mohlo dojit změnou nastavení dotací - doporučujeme udělat přepočet uzavřených účtů za aktuální období.');
select ASWAddMessage(35363, 'Pokoušíte se namarkovat recepturu s dotací, ale zákazník "%1!" nevyhovuje ani jedné definici určující počet dotovaných jídel na %2!.');
select ASWAddMessage(35364, 'Nebyl nalezen záznam v tabulce denních odběrů!|APPERROR');
select ASWAddMessage(35365, 'Zákazník "%1!" vyčerpal všechny dotace a není oprávněn k odběru bez dotace!');
select ASWAddMessage(35366, 'Markované množství převyšuje počet dotací a zákazník "%1!" není oprávněn k odběru bez dotace. Zákazníkovi zbývá "%2!" dotace(í)!');
select ASWAddMessage(35367, 'Zákazník "%1!" nemá nárok na dotaci u markované receptury!|');
select ASWAddMessage(35368, 'Receptura již má přiřazen jiný čárový kód. Chcete tento kód přidat nebo přepsat stávající|F[Přidat|ADDBARCODE+][Přepsat|ADDBARCODE-]C');
select ASWAddMessage(35369, 'Receptura již má přiřazen tento čárový kód!');
select ASWAddMessage(35370, 'Skupina musí být vyplněna!|R%1!');
select ASWAddMessage(35371, 'Skupina "%1!" neexistuje!|R%2!');
select ASWAddMessage(35372, 'Záznam je skrytý - chcete ho vrátit do běžného stavu?|FYC;UNHIDE');
select ASWAddMessage(35373, 'Recepturu není možné smazat ani skrýt, protože je použitá v nesmazané skladové operaci zadané na pokladně.');
select ASWAddMessage(35374, E'Receptura nejde smazat, protože na ní odkazují neskryté záznamy z tabulek %1! a skryté záznamy z tabulek %2!.\nChcete ji skrýt?|FYC;HIDERECEPT');
select ASWAddMessage(35375, E'Receptura nejde smazat, protože na ní odkazují skryté záznamy z tabulek %1!.\nChcete ji skrýt?|FYC;HIDERECEPT');
select ASWAddMessage(35376, 'Nelze pracovat s bonusem (omezení limitů)!');
select ASWAddMessage(35377, 'Lze použít pouze typ receptury "standardní" a "korunová" (omezení limitů)!');
select ASWAddMessage(35378, 'Typ receptury musí být vyplněný!|RRECEPTTYP');
select ASWAddMessage(35379, 'Typ receptury "%1!" neexistuje|RRECEPTTYP');
select ASWAddMessage(35380, 'Hodnota v položce "Minimální množství" nesmí být záporná!|RMINMNOZSTVI');

--- RECEPTCOPYINGRED:
select ASWAddMessage(35381, 'Opravdu chcete v receptuře "%1!" smazat stávající ingredience a vložit ingredience z receptury "%2!"?|FYN;RRECEPTCOPYINGREDOVEWRITE');
select ASWAddMessage(35382, 'Opravdu chcete do receptury "%1!" přidat ingredience z receptury "%2!"?|FYN;RRECEPTCOPYINGREDMERGE');
select ASWAddMessage(35383, 'Prosím zadejte zdrojovou recepturu!|RRECEPTURA');
select ASWAddMessage(35384, 'Zadaná zdrojová receptura nebyla nalezena!|RRECEPTURA');
select ASWAddMessage(35385, 'Výsledná receptura není ani standardní receptura ani receptura pro normování. Chcete přesto pokračovat?|FYC;%1!');
select ASWAddMessage(35386, 'Zdrojová receptura musí být jiná než cílová|RRECEPTURA');
select ASWAddInError(35387, 'Chybně zadaná hodnota pro parametr s klíčem USEDCENAZTYP v sekci MARKOVANI!','DTT');
select ASWAddMessage(35388, 'Hlavní receptura "%1!" neexistuje!|R%2!');
select ASWAddMessage(35389, 'Pro recepturu typu "Poloviční porce" musí být vyplněná položka "Hlavní receptura"!|R%1!');
select ASWAddMessage(35390, 'Pro recepturu typu "Poloviční porce" musí být vyplněná položka "Koeficient pro cenu"!|R%1!');
select ASWAddMessage(35391, 'Pro recepturu typu "Poloviční porce" musí být vyplněná položka "Koef. pro ingredience"!|R%1!');
select ASWAddMessage(35392, 'Nelze použít u recepturu typu "Alergen do účtu"!');
select ASWAddMessage(35393, 'Receptura s klíčem "%1!" nebyla nalezena nebo se nejedná o recepturu typu "%2!"!');
select ASWAddMessage(35394, 'U receptury typu "Poloviční porce" musí být přiřazeny stejné skupiny receptur jako u hlavní receptury!');
select ASWAddMessage(35395, 'Hlavní receptura musí být standardní receptura!|RPPMASTERRECNAZEV');
select ASWAddMessage(35396, 'Během přepočtu cen účtů je zakázáno markovat!');
select ASWAddMessage(35397, 'Je zakázáno měnit typ receptury!');
select ASWAddMessage(35398, 'Receptura "%1!" nemůže být přiřazená jako obal, protože už má sama přiřazený obal!|ROBALRECNAZEV');
select ASWAddMessage(35399, 'Receptuře "%1!" nemůže být přiřazen obal, protože je sama přiřazena jako obal k jiné receptuře!|ROBALRECNAZEV');
select ASWAddMessage(35400, 'Receptura "%1!" nemůže být přiřazená jako doplatek, protože už má sama přiřazený doplatek!|RDOPLATEKRECEPT');
select ASWAddMessage(35401, 'Receptura "%1!" nemůže mít přiřazen doplatek, protože je přiřazená jako doplatek jiné receptury!|RDOPLATEKRECEPT');
select ASWAddMessage(35402, 'Na zadání poplatků nemáte licenci!|RPOUZTIDOPL');
select ASWAddMessage(35403, 'Doplatek musí být standardní receptura!|RDOPLATEKRECEPT');
select ASWAddMessage(35404, 'Receptura nemůže být svým vlastním doplatkem!|RDOPLATEKRECEPT');
select ASWAddMessage(35405, 'Receptura "%1!" nemůže být přiřazena jako obal, protože má přiřazen doplatek!|ROBALRECNAZEV');
select ASWAddMessage(35406, 'Receptura "%1!" nemůže být přiřazena jako doplatek, protože má přiřazen obal!|RDOPLATEKRECEPT');
-- receptuře nemůže být přiřazen obal, protože je již přiřazena jako doplatek
select ASWAddMessage(35407, 'Receptuře "%1!" nemůže být přiřazen obal, protože je již přiřazena jako doplatek!|ROBALRECNAZEV');
-- receptuře nemůže být přiřazen doplatek, protože je již přiřazena jako obal
select ASWAddMessage(35408, 'Receptuře "%1!" nemůže být přiřazen doplatek, protože je již přiřazena jako obal!|RDOPLATEKRECEPT');
select ASWAddMessage(35409, 'Nemůže být stejná receptura přiřazena jako obal i jako doplatek!|RDOPLATEKRECEPT');
select ASWAddMessage(35410, 'Receptura "%1!" nemůže být přiřazená jako doplatek, protože je ingrediencí jiné receptury!|RDOPLATEKRECEPT');
select ASWAddMessage(35411, 'Receptura "%1!" vytváří normováním více než jednu skladovou položku!');
select ASWAddMessage(35412, 'Doplatek se může přiřadit jen standardní receptuře!|RDOPLATEKRECEPT');
select ASWAddMessage(35413, 'Počet porcí nesmí být menší ani rovný nule!|RPORCI');

select ASWAddMessage(35414, 'V denních odběrech existují pro zákazníka "%1!" záznamy, které neodpovídají nastavením dotací. K této situaci mohlo dojit změnou nastavení dotací - doporučujeme udělat přepočet uzavřených účtů za aktuální období.');

select ASWAddMessage(35415, 'Skupina pro odpisy ze skladu "%1!" neexistuje!|RSKUPREC1');
select ASWAddMessage(35416, 'Skupina pro odpisy ze skladu musí být vyplněná!|RSKUPREC1');
select ASWAddMessage(35417, 'Skupina pro tisk objednávek "%1!" neexistuje!|RSKUPREC2');
select ASWAddMessage(35418, 'Skupina pro tisk objednávek musí být vyplněná!|RSKUPREC2');
select ASWAddMessage(35419, 'Skupina receptur 3 "%1!" neexistuje!|RSKUPREC3');
select ASWAddMessage(35420, 'Skupina receptur 3 musí být vyplněná!|RSKUPREC3');
select ASWAddMessage(35421, 'Skupina receptur 4 "%1!" neexistuje!|RSKUPREC4');
select ASWAddMessage(35422, 'Skupina receptur 4 musí být vyplněná!|RSKUPREC4');
select ASWAddMessage(35423, 'Receptura "%1!" je již přiřazena do jiné skupiny receptur, chcete přiřazení změnit?|F[Ano|PRIRADSKR_%2!+][Ne|PRIRADSKR_%2!-][Ano všem|PRIRADSKRALL+][Ne všem|PRIRADSKRALL-]C');
select ASWAddMessage(35424, 'Receptura "%1!" je přiřazena do skupiny receptur, chcete přiřazení odstranit?|F[Ano|UNSETSKR_%2!+][Ne|UNSETSKR_%2!-][Ano všem|UNSETSKRALL+][Ne všem|UNSETSKRALL-]C');
select ASWAddMessage(35425, 'Recepturu není možné smazat ani skrýt, protože je použitá v otevřeném účtu.');
select ASWAddMessage(35426, 'Recepturu není možné smazat ani skrýt, protože pro ní existuje namarkovaný kredit, který není ještě odeslán na výčepní zařízení.');
select ASWAddMessage(35427, 'Recepturu není možné smazat ani skrýt, protože je použitá v otevřené objednávce.');
select ASWAddMessage(35428, 'Recepturu není možné smazat ani skrýt, protože je použitá v jídelníčku v položce, která je aktuálně platná nebo je nastavená do budoucnosti.');
select ASWAddMessage(35429, 'Recepturu není možné smazat ani skrýt, protože receptura je skladovou položkou a jsou v ní nenulové zásoby.');
select ASWAddMessage(35430, 'Receptura je skladovou položkou. Záznamy není možné smazat ani skrýt, protože na ně odkazují záznamy z tabulek %1!.');
select ASWAddMessage(35431, 'Receptura je skladovou položkou. Záznamy není možné smazat ani skrýt, protože na ně odkazují neskryté záznamy z tabulek %1! a skryté záznamy z tabulek %2!.');
select ASWAddMessage(35432, E'Receptura je skladovou položkou. Záznamy není možné smazat, protože na ně odkazují skryté záznamy z tabulek %1!.\nChcete recepturu i skladovou položku skrýt?|FYC;HIDERECEPT');
select ASWAddMessage(35433, 'Receptura nejde smazat ani skrýt, protože na ní odkazují záznamy z tabulek %1!.');
select ASWAddMessage(35434, 'Receptura nejde smazat ani skrýt, protože na ní odkazují neskryté záznamy z tabulek %1! a skryté záznamy z tabulek %2!.');
select ASWAddMessage(35435, E'Recepturu není možné smazat, protože receptura je skladovou položkou a ta je použitá minimálně v inventuře "%1!".\nChcete recepturu i skladovou položku skrýt?|FYC;HIDERECEPT');
select ASWAddMessage(35436, E'Receptura je skladovou položkou. Záznamy není možné smazat, protože na ně odkazují záznamy z tabulek %1!.\nChcete recepturu i skladovou položku skrýt?|FYC;HIDERECEPT');
select ASWAddMessage(35437, E'Receptura je skladovou položkou. Záznamy není možné smazat, protože na ně odkazují neskryté záznamy z tabulek %1! a skryté záznamy z tabulek %2!.\nChcete recepturu i skladovou položku skrýt?|FYC;HIDERECEPT');
select ASWAddMessage(35438, 'Receptura obsahuje %1!, skutečně chcete pokračovat?|FYC;%2!');
select ASWAddMessage(35439, 'Skladová položka "%1!" je již svázána s jinou recepturou!');
select ASWAddMessage(35440, 'Neplatný identifikátor receptury - "%1!"!');
select ASWAddMessage(35441, 'Receptura s názvem "%1!" neexistuje!');
select ASWAddMessage(35442, 'Receptura s klíčem "%1!" neexistuje!');
select ASWAddMessage(35443, 'Receptura s identifikačním kódem "%1!" neexistuje!');
select ASWAddMessage(35444, 'Receptura "%1!" obsahuje ingredience, které mají přiřazenou porci. Tyto ingredience se budou ignorovat. Pokračovat?|FYC;%2!');
select ASWAddMessage(35445, 'Receptura se zkratkou "%1!" neexistuje!');
select ASWAddMessage(35450, 'Receptuře typu bonusová, logo na stůl nebo alergen do účtu nelze přiřadit recepturu tvořící obal!');
select ASWAddMessage(35451, 'Receptuře typu bonusová, logo na stůl nebo alergen do účtu nelze přiřadit doplatkovou recepturu!');
select ASWAddMessage(35452, 'Receptura typu bonusová, logo na stůl nebo alergen do účtu musí mít nastaven počet porcí na 1!');
select ASWAddMessage(35453, 'Receptura typu bonusová, logo na stůl nebo alergen do účtu musí mít nastavenej bonus na 0!');
select ASWAddMessage(35454, 'Receptura nesmí být typu Bonusová, Logo na stůl, Modifikátor - výrobní nebo Alergen do účtu!|R%1!');
select ASWAddMessage(35455, 'Položka Přepočet musí být vyplněná!|R%1!');
select ASWAddMessage(35456, 'Přepočet cen receptur s názvem "%1!" nebyl nalezen!|R%2!');
select ASWAddMessage(35457, 'Nelze používat dotace (omezení limitů)!');
select ASWAddMessage(35458, 'Recepturu tohoto typu nelze použít (omezení limitů)!');
select ASWAddMessage(35459, 'Nelze zvolit zda se má vyžadovat popis objednávky při namarkování receptury (omezení limitů)!');
select ASWAddMessage(35460, 'Nelze zadat předvolené popisy objednávky receptury (omezení limitů)!');
select ASWAddMessage(35461, 'Do receptury typu "Složené menu" lze vložit jenom ingredience z receptury stejného typu!');
select ASWAddMessage(35462, 'Ingredience receptury typu "Složené menu" lze vložit jenom do receptury stejného typu!');
-- select ASWAddMessage(35463, '');
select ASWAddMessage(35464, 'Doba musí být zadaná!|R%1!');
select ASWAddMessage(35465, 'Záporná doba může být jenom u modifikátorů!|R%1!');
select ASWAddMessage(35466, 'Receptuře typu "Modifikátor - výrobní" nelze přiřadit ingredience!');
select ASWAddMessage(35467, 'Nelze zadat předvolený chod receptury (omezení limitu Vlastnosti 2011)!');
select ASWAddMessage(35468, 'U receptury typu "Bonusová" nebo "Modifikátor" se předvolený chod nezadává!');
select ASWAddMessage(35469, 'Chod "%1!" neexistuje!|R%2!');
select ASWAddMessage(35470, 'Položka Druh jídla musí být vyplněná!|R%1!');
select ASWAddMessage(35471, 'Druh jídla "%1!" neexistuje!|R%2!');
select ASWAddMessage(35472, 'Receptura "%1!" je již vložena do skupiny "%2!", ale některé uložené hodnoty se liší od nově zadaných. Opravdu chcete stávající údaje přepsat novými hodnotami?|FY[Ano všem|%4!+]N[Ne všem|%4!-]C;%3!');
select ASWAddMessage(35473, 'Recepturu není možné smazat ani skrýt, protože je použitá v otevřené objednávce systému řízení kuchyně.');
select ASWAddMessage(35474, 'Odebrání a zpětné přidání do stejné skupiny postrádá logiku!|R%1!');
select ASWAddMessage(35475, 'Skladovou operaci nelze uzavřít, protože obsahuje recepturu "%1!", která nemá žádnou ingredienci!');
select ASWAddMessage(35476, 'Skladovou operaci typu "Dodací list" nelze uzavřít, protože obsahuje recepturu "%1!", která má vice než právě jednu ingredienci typu skladová položka pro skladové operace!');
select ASWAddMessage(35480, 'Nelze provést import - receptury "%1!" není možné naimportovat z důvodu kolize názvu s existujícími recepturami!');
select ASWAddMessage(35481, 'Nelze provést import - receptury s názvy "%2!" v jazyce "%1!" není možné naimportovat z důvodu kolize názvu v daném jazyce s existujícími recepturami!');
select ASWAddMessage(35482, 'Nelze provést import - receptury se zkratkou "%1!" není možné naimportovat z důvodu kolize zkratky s existujícími recepturami!');
select ASWAddMessage(35483, 'Nelze provést import - receptury s klíčem "%1!" není možné naimportovat z důvodu kolize klíče s existujícími recepturami!');
select ASWAddMessage(35484, 'Nelze provést import - receptury s PLU "%1!" není možné naimportovat z důvodu kolize PLU s existujícími recepturami!');
select ASWAddMessage(35485, 'Nelze provést import - receptury s identifikačním kódem "%1!" není možné naimportovat z důvodu kolize identifikačního kódu s existujícími recepturami!');
select ASWAddMessage(35486, 'Nelze provést import - receptury s čárovým kódem "%1!" není možné naimportovat z důvodu kolize čárového kódu s existujícími recepturami!');
select ASWAddMessage(35487, 'Receptura s ID %1! neexistuje!');
select ASWAddMessage(35488, 'Ingredienci, která má přiřazenou porci, nelze svázat s recepturou!');
select ASWAddMessage(35489, 'Nelze provést import - obecné skupiny s názvem "%1!" již v databázi existují, ale nejsou určeny pro receptury!');
select ASWAddMessage(35490, 'Nelze provést import - receptury "%1!" jsou v tabulce RECEPTEASYIMPORTTEMP vícekrát!');
select ASWAddMessage(35491, 'Nelze provést import - receptury s názvy "%2!" v jazyce "%1!" jsou v importním souboru vícekrát!');
select ASWAddMessage(35492, 'Nelze provést import - receptury se zkratkou "%1!" jsou v tabulce RECEPTEASYIMPORTTEMP vícekrát!');
select ASWAddMessage(35493, 'Nelze provést import - receptury s klíčem "%1!" jsou v tabulce RECEPTEASYIMPORTTEMP vícekrát!');
select ASWAddMessage(35494, 'Nelze provést import - receptury s PLU "%1!" jsou v tabulce RECEPTEASYIMPORTTEMP vícekrát!');
select ASWAddMessage(35495, 'Nelze provést import - receptury s identifikačním kódem "%1!" jsou v tabulce RECEPTEASYIMPORTTEMP vícekrát!');
select ASWAddMessage(35496, 'Nelze provést import - receptury s čárovým kódem "%1!" jsou v tabulce RECEPTEASYIMPORTTEMP vícekrát!');
select ASWAddMessage(35497, 'Recepturám typu poloviční porce nelze měnit zařazení do skupin receptur 1-4, jsou zařazeny dle hlavní receptury!');
select ASWAddMessage(35498, 'Receptura obsahuje ingredienci, které je přiřazena skrytá porce! Recepturu nelze vrátit do běžného stavu bez předchozího vrácení skryté porce do běžného stavu.');
select ASWAddMessage(35499, 'Jazyk "%1!" nebyl nalezen!');
select ASWAddMessage(35500, 'Složení výsledné receptury se pro jednotlivé porce liší. Chcete přesto pokračovat?|FYC;%1!');
select ASWAddMessage(35501, 'Výsledná receptura neobsahuje ingredience pro všechny aktivní porce. Chcete přesto pokračovat?|FYC;%1!');
select ASWAddMessage(35502, 'Obecná skupina s klíčem "%1!" neexistuje nebo není určena pro receptury! Nelze získat poloviční porci k receptuře "%2!".');
select ASWAddMessage(35503, 'Pro recepturu "%1!" existuje více receptur typu poloviční porce! Pro používání je nutné tyto poloviční porce vložit do obecných skupin a hledání poloviční porce omezit na konkrétní obecnou skupinu.');
select ASWAddMessage(35504, 'Pro recepturu "%1!" existuje více receptur typu poloviční porce vložených do skupiny "%2!"! Pro používání je nutné, aby byla ve skupině vložena pouze jedna receptura typu poloviční porce dané hlavní receptury.');
select ASWAddMessage(35505, 'Receptura s názvem "%1!" již má přiřazeno více receptur typu "Poloviční porce". Chcete založit další poloviční porci?|F[Ano|POLPORCEZALOZIT_%2!+][Ne|POLPORCEZALOZIT_%2!-][Ano všem|POLPORCEZALOZITALL+][Ne všem|POLPORCEZALOZITALL-]');
select ASWAddMessage(35506, 'Poloviční porci nejde namarkovat, protože k vybrané receptuře "%1!" neexistuje receptura typu "Poloviční porce" vložená do skupiny "%2!"!');
select ASWAddMessage(35507, 'Zapnutím parametru "Generovat identifikátor do Číslo H" se přepíšou staré hodnoty CISLOH, které nejsou shodné s RCPTID na hodnotu RCPTID! Chcete pokračovat?|FYC;CISLOHGENIDENTREPLACE');
select ASWAddMessage(35508, E'Alergeny skladové položky "%1!" vyráběně přes recepturu "%2!" se liší od alergenů skladových položek receptury, ze kterých se vyráběná skladová položka vyrábí.\nAktualizovat alergeny vyráběné skladové položky?|FY[Ano všem|%4!+]N[Ne všem|%4!-]C;%3!');
select ASWAddMessage(35509, 'Alergeny skladových položek vyráběných přes recepturu "%1!" se liší od alergenů, ze kterých se vyrábí, ale receptura vyrábí více různých skladových položek, takže není možné aktualizovat seznam alergenů výrobků! Pokračovat?|FY[Ano všem|%3!+]C;%2!');
select ASWAddMessage(35510, 'Výsledná receptura vyrábí více různých skladových položek. Chcete přesto pokračovat?|FYC;%1!');
select ASWAddMessage(35511, 'Výsledná receptura vyrábí skladové položky přímo i přes vloženou recepturu. Chcete přesto pokračovat?|FYC;%1!');
select ASWAddMessage(35512, 'Receptura vyrábí skladovou položku, která se vyrábí i přes jinou neskrytou recepturu. Pokračovat?|FYC;%1!');
select ASWAddInError(35513, 'V proceduře RECEPT_CheckMasterPerm nesmí být současně vyplněno ID receptury i ID typu receptury!', 'PGM');
select ASWAddInError(35514, 'V proceduře RECEPT_CheckMasterPerm nesmí být současně ID receptury i ID typu receptury null!', 'PGM');
select ASWAddMessage(35515, 'Receptura "%1!" obsahuje ingredience pro skladové operace s přiřazenými porcemi, ale porce nebyla zvolena. Ingredience s porcemi se budou ignorovat. Pokračovat?|FYC;%2!');
select ASWAddMessage(35516, 'Receptura "%1!" obsahuje ingredience vyráběné normováním s přiřazenými porcemi, ale porce nebyla zvolena. Ingredience s porcemi se budou ignorovat. Pokračovat?|FYC;%2!');
select ASWAddMessage(35517, 'Byla zvolena porce, ale receptura "%1!" neobsahuje ingredience používané v skladových operacích s přiřazenými porcemi. Pokračovat?|FYC;%2!');
select ASWAddMessage(35518, 'Byla zvolena porce, ale receptura "%1!" neobsahuje ingredience vyráběné normováním s přiřazenými porcemi. Pokračovat?|FYC;%2!');
select ASWAddMessage(35519, 'Byla zvolena porce "%2!", ale receptura "%1!" neobsahuje ingredience pro skladové operace, které mají přiřazenou zvolenou porci. Ingredience s porcemi se budou ignorovat. Pokračovat?|FYC;%3!');
select ASWAddMessage(35520, 'Byla zvolena porce "%2!", ale receptura "%1!" neobsahuje ingredience pro výrobu normováním, které mají přiřazenou zvolenou porci. Ingredience s porcemi se budou ignorovat. Pokračovat?|FYC;%3!');
select ASWAddMessage(35521, 'Receptura "%1!" není konzistentní z pohledu porcí - složení jednotlivých porcí se liší. Pokračovat?|FYC;%2!');
select ASWAddMessage(35522, 'Receptura "%1!" není konzistentní z pohledu porcí - neobsahuje ingredience všech aktivních porcí. Pokračovat?|FYC;%2!');
select ASWAddMessage(35523, 'Ani jedna zvolená receptura neobsahuje ingredience bez porce!|R%1!');
select ASWAddMessage(35524, 'Musí být zadána zdrojová nebo cílová porce, případě obě!|R%1!');
select ASWAddMessage(35525, 'U zvoleného způsobu kopírování musí být zadána zdrojová i cílová porce!|R%1!');
select ASWAddMessage(35526, 'Koeficient musí být vyplněn!|R%1!');
select ASWAddMessage(35527, 'Neaktivní nebo skrytou porci nelze použít!|R%1!');
select ASWAddMessage(35528, 'Zdrojová a cílová porce se musí lišit!|R%1!');
select ASWAddMessage(35529, 'Koeficient nesmí být záporný nebo nulový!|R%1!');
select ASWAddMessage(35530, 'Ani jedna zvolená receptura neobsahuje ingredience s porcí "%1!"!|R%2!');
select ASWAddMessage(35531, 'V seznamu se nacházejí i receptury, které neobsahují ingredience s porcí "%1!". Tyto receptury budou vynechány. Pokračovat?|FYC;%2!');
select ASWAddMessage(35532, 'Nahradit stávající ingredience s porcí "%1!" u zvolených receptur?|FYC;%2!');
select ASWAddMessage(35533, 'Nahradit stávající ingredience bez porce u zvolených receptur?|FYC;%1!');
select ASWAddMessage(35534, 'Nelze pracovat s porcemi - omezení limitu "Výrobna jídel"!');
select ASWAddMessage(35535, 'Zdrojová porce "%1!" nebyla nalezena!|R%2!');
select ASWAddMessage(35536, 'Cílová porce "%1!" nebyla nalezena!|R%2!');
select ASWAddMessage(35537, 'V seznamu se nacházejí i receptury, které neobsahují ingredience bez porce. Tyto receptury budou vynechány. Pokračovat?|FYC;%1!');
select ASWAddMessage(35538, 'Ve výběru se nacházejí i receptury, které jsou skryté nebo se u nich nezadává cena. Tyto receptury budou vynechány. Pokračovat?|FYC;%1!');
select ASWAddMessage(35539, 'Tato databáze má nastaven režim importovaných receptur (globální parametr "Globální parametry SEPTIM / DB s importovanými recepturami"), takže neumožňuje zakládat či modifikovat receptury jinak než pomocí importu receptur!');
select ASWAddMessage(35540, 'Zapnutí parametru "DB s importovanými recepturami" v databázi, kde existují nesynchronizované receptury není možné! Proveďte synchronizaci se zapnutou podporou EXTID a smažte všechny receptury, které nebudou po importu synchronizovány!');
select ASWAddMessage(35541, 'Import receptur nelze provést, protože je databáze v režimu "DB s importovanými recepturami", nicméně v databázi existují nespárované receptury!');
select ASWAddMessage(35542, 'Pokud je přepočet omezen pouze na určité skupiny receptur nebo obecné skupiny, receptury nesplňující podmínky budou z přepočtu vynechány. Provést přepočet cen "%1!" ?|FYC;%2!');
select ASWAddMessage(35543, 'Položka Trvanlivost musí být vyplněna!|RDURABILITY');
select ASWAddMessage(35544, 'Trvanlivost nesmí být záporná!|RDURABILITY');
select ASWAddMessage(35545, 'Není možné zároveň přidat a odebrat stejný text!');
select ASWAddMessage(35546, 'Není možné zároveň přidat a odebrat stejný soubor!');
select ASWAddMessage(35547, 'Text s názvem "%1!" nebyl nalezen!|R%2!');
select ASWAddMessage(35548, 'Soubor s názvem "%1!" nebyl nalezen!|R%2!');
select ASWAddMessage(35549, 'Sklad "%1!" nebyl nalezen.|R%2!');
select ASWAddMessage(35550, 'Sklad pro odpisy není možné zadat, protože se používá standardní konfigurace odpisů pomocí skupin!|RSKLAD');
select ASWAddInError(35551, 'In the function RECEPT_StockItemPriceUpdated specified store ID does not belong to the required unit ID!', 'PGM');
select ASWAddMessage(35552, 'Zjednodušenou konfiguraci odpisů není možné používat spolu s replikacemi ... Použijte standardní konfiguraci odpisů pomocí skupin.|RSKLAD');
select ASWAddMessage(35553, 'Typ KMS položky "%1!" neexistuje|RKMSITEMTYPE');
select ASWAddMessage(35554, 'Jednotky musí být vyplněné!...Výchozí jednotky je možné nastavit globálním parametrem "Výchozí hodnota pro pole "Jednotky" ve formuláři receptury" v sekci "Globální parametry SEPTIM."|R%1!');
select ASWAddMessage(35555, 'Jednotky s názvem "%1!" nebyly nalezeny!|R%1!');
select ASWAddMessage(35556, 'Země s názvem "%1!" nebyly nalezeny!|R%1!');
select ASWAddMessage(35557, 'Pokud je zadaný Obsah musí být vyplněné i související jednotky!|R%1!');
select ASWAddMessage(35558, 'Jednotky obsau s názvem "%1!" nebyly nalezeny!|R%1!');
select ASWAddMessage(35559, 'Pokud je zadaný pevný podíl musí být zadané i související jednotky!|R%1!');
select ASWAddMessage(35560, 'Jednotky pro pevný podíl s názvem "%1!" nebyly nalezeny!|R%1!');
select ASWAddMessage(35561, 'Pokud jsou zadané jednotky obsahu, musí být zadaná i související hodnota Obsah!|R%1!');
select ASWAddMessage(35562, 'Pokud jsou zadané jednotky pro pevný podíl, musí být zadaná i související hodnota Pevný podíl!|R%1!');
select ASWAddMessage(35563, 'Množství obsahu nesmí být záporné!|RCONTENTAMOUNT');
select ASWAddMessage(35564, 'Hodnota pro "Pevné množství" nesmí být záporná!|RSOLIDAMOUNT');
select ASWAddMessage(35565, 'Výrobce s názvem "%1!" nebyl nalezen!|R%1!');
select ASWAddMessage(35566, '"Koeficient pro cenu" musí být větší než 0!|RCENAKOEF');
select ASWAddMessage(35567, '"Koeficient pro ingredience" musí být větší než 0!|RINGREDKOEF');
select ASWAddMessage(35568, 'Kategorie KMS položky "%1!" neexistuje|RKMSCATEGORY');
--select ASWAddMessage(35569, '');
select ASWAddMessage(35570, 'Předvolenou táru je možné použít jen pro chráněné vážené položky!');
select ASWAddMessage(35571, 'Předvolená tára nesmí být záporná!|RTARE');
select ASWAddMessage(35572, 'Recepturu "%1!" není možné použít, protože je neaktivní!');
select ASWAddMessage(35573, 'Položka "Aktivní" musí být vyplněná!');
select ASWAddMessage(35574, 'Importovaná receptura s identifikačními údaji "%1!" = "%2!" již existuje! Co se má v takovém případě udělat? Odpověď se aplikuje na všechny podobné případy v celém importu.|F[Skončit|RCPTIMONUPDATE=ERROR][Přeskočit|RCPTIMONUPDATE=SKIP][Aktualizovat|RCPTIMONUPDATE=UPDATE]C');
select ASWAddMessage(35575, 'Není možné pokračovat v importu, protože receptura již existuje! Identifikace receptury v importu: %1!');
select ASWAddMessage(35576, 'Není možné pokračovat v importu, protože odkazovaná receptura s klíčem "%2!" nebyla nalezena!');
select ASWAddMessage(35577, 'Není možné pokračovat v importu, protože odkazovaná receptura s názvem "%2!" nebyla nalezena!');
--select ASWAddMessage(35578, '');
select ASWAddInError(35579, 'Neplatný identifikátor importní akce: "%1!".', 'PGM');
select ASWAddMessage(35580, 'Není možné pokračovat v importu, protože pro předané identifikační "%1!" = "%2!" údaje bylo nalezeno více platných receptur!');
select ASWAddMessage(35581, 'Nepodařilo převést zdrojová data na požadovaný datový typ. Chyba: "%2!"!');
select ASWAddMessage(35582, 'Příznak "Vážená" musí být vyplněný!|RWEIGHTED');

select ASWAddMessage(35583, 'Není možné pokračovat v importu, protože záznam receptury s identifikačními údaji "%1!" = "%2!" nebyl nalezen!');
select ASWAddMessage(35585, 'Není možné pokračovat v importu, protože pro identifikačními údaje "%1!" = "%2!" bylo nalezeno více receptur!');
select ASWAddMessage(35586, 'Záznam receptury s identifikačními údaji "%1!" = "%2!" nebyl nalezen. Co chcete udělat? Pokud zvolíte "Přeskočit", tento i všechny další záznamy s neplatnou recepturou budou při importu přeskočeny.|F[Přeskočit|IMPORTRECIPENOTFOUND=SKIP]C');
select ASWAddMessage(35587, 'Pro recepturu s identifikačními údaji "%1!" = "%2!" bylo nalezeno více záznamů. Co chcete udělat? Pokud zvolíte "Přeskočit", tento i všechny další záznamy s neplatnou recepturou budou při importu přeskočeny.|F[Přeskočit|IMPORTRECIPEFOUNDMORE=SKIP]C');


-- Vytvoreni textu
select ASWAddTxt('SEPTIMAPP', 'RECEPT', 'PODLEPARAMS', 'Podle parametrů');
select ASWAddTxt('SEPTIMAPP', 'RECEPT', 'CENABALL', 'Cena bez DPH, celé množství');
select ASWAddTxt('SEPTIMAPP', 'RECEPT', 'CENASALL', 'Cena s DPH, celé množství');
select ASWAddTxt('SEPTIMAPP', 'RECEPT', 'CENABJEDNOT', 'Cena bez DPH, jednot. množství');
select ASWAddTxt('SEPTIMAPP', 'RECEPT', 'CENASJEDNOT', 'Cena s DPH, jednot. množství');
select ASWAddTxt('SEPTIMAPP', 'RECEPT', 'JEDNOTCENYZREC', 'Jednot.ceny z receptury');

select ASWAddTxt('SEPTIMAPP', 'RECEPT', 'ZAOKRHALERE', 'Na haléře');
select ASWAddTxt('SEPTIMAPP', 'RECEPT', 'ZAOKRDESETIHALERE', 'Na desetihaléře');
select ASWAddTxt('SEPTIMAPP', 'RECEPT', 'ZAOKRKORUNY', 'Na koruny');
select ASWAddTxt('SEPTIMAPP', 'RECEPT', 'ZAOKRDESETIKORUNY', 'Na desetikoruny');
select ASWAddTxt('SEPTIMAPP', 'RECEPT', 'ZAOKRSTOVKY', 'Na stovky');

select ASWAddTxt('SEPTIMAPP', 'RECEPT', 'TISKOBJEDNAV', 'pro tisk objednávek');
select ASWAddTxt('SEPTIMAPP', 'RECEPT', 'ODPISYSKLAD', 'pro odpisy ze skladu');

select ASWAddTxt('SEPTIMAPP', 'RECEPT', 'HROMADPRIRAZRECDOSKUP', 'Hromadné přiřazení receptur do skupin');

select ASWAddTxt('SEPTIMAPP', 'RECEPT', 'POLPORCE_DOPL_OBAL', 'poloviční porce, doplatek, obal');
select ASWAddTxt('SEPTIMAPP', 'RECEPT', 'RCPTINGRED', 'receptura-ingredience');
select ASWAddTxt('SEPTIMAPP', 'RECEPT', 'OUPOLSTORNO', 'stornovaná položka');
select ASWAddTxt('SEPTIMAPP', 'RECEPT', 'OLDJIDELNICEK', 'záznam z minulosti');
select ASWAddTxt('SEPTIMAPP', 'RECEPT', 'HIDERECEPT', 'skrytá receptura');
select ASWAddTxt('SEPTIMAPP', 'RECEPT', 'INGREDIENCE', 'ingredience');
select ASWAddTxt('SEPTIMAPP', 'RECEPT', 'KASASKLADOPERACEDELETED', 'smazané operace');

select ASWAddTxt('SEPTIMAPP', 'RECEPT', 'TESTKONZISTENCERECEPT', '-- Test konzistence receptur --');
select ASWAddTxt('SEPTIMAPP', 'RECEPT', 'OBSAHUJEINGREDOBOUTYPU', 'obsahuje ingredience obou typů');
select ASWAddTxt('SEPTIMAPP', 'RECEPT', 'CHYJEJICIINGREDSPECRECEPT', 'chybějící ingredience speciální receptury');
select ASWAddTxt('SEPTIMAPP', 'RECEPT', 'NEOBSAHUJESTEJNEPORCE', 'neobsahuje stejné složení pro všechny porce');
select ASWAddTxt('SEPTIMAPP', 'RECEPT', 'NEOBSAHUJEVSECHNYAKTPORCE', 'neobsahuje ingredience pro všechny aktivní porce');
select ASWAddTxt('SEPTIMAPP', 'RECEPT', 'VYRABISKLADPOLPRIMOIPRESSUBRECEPT', 'vyrábí skladové položky přímo i přes subreceptury');
select ASWAddTxt('SEPTIMAPP', 'RECEPT', 'VYRABIVICERUZNYCHSKLADPOL', 'vyrábí více různých skladových položek');
select ASWAddTxt('SEPTIMAPP', 'RECEPT', 'VYROBASKLADPOLPRESVICERECEPTUR', 'vyrábí skladovou položku vyráběnou i přes jiné (neskryté) receptury');
select ASWAddTxt('SEPTIMAPP', 'RECEPT', 'TESTKONZISTENCECHYBA', '%s: %s');
select ASWAddTxt('SEPTIMAPP', 'RECEPT', 'VRECEPTNEJSOUZADNEZAZNAMY', 'V recepturách nejsou žádné záznamy.');
select ASWAddTxt('SEPTIMAPP', 'RECEPT', 'CELKOVYPOCETRECEPTUR', 'Celkem receptur: %s');
select ASWAddTxt('SEPTIMAPP', 'RECEPT', 'POCETPODEZRELYCH', 'Podezřelých: %s');

select ASWAddTxt('SEPTIMAPP', 'RECEPT', 'IMPORTROWIMPORTSTART', 'Importing recipe in order %s');
select ASWAddTxt('SEPTIMAPP', 'RECEPT', 'IMPORTUPDATESKIPPED',  'Recipe already exists, skipped. (%s)');
select ASWAddTxt('SEPTIMAPP', 'RECEPT', 'IMPORTINSERT',         'Recipe "%s" inserted.');
select ASWAddTxt('SEPTIMAPP', 'RECEPT', 'IMPORTUPDATE',         'Recipe "%s" updated.');
select ASWAddTxt('SEPTIMAPP', 'RECEPT', 'IMPORTNOUPDATE',       'Recipe "%s" found and not updated.');
select ASWAddTxt('SEPTIMAPP', 'RECEPT', 'IMPORTNOCHANGES',      'No changes detected for recipe "%s".');
select ASWAddTxt('SEPTIMAPP', 'RECEPT', 'IMPORTFOUND',          'Recipe "%s" found (%s).');
select ASWAddTxt('SEPTIMAPP', 'RECEPT', 'IMPORTNOTFOUNDSKIP',   'Záznam receptury pro zadané údaje nebyl nalezen. Všechny záznamy, pro které se nepodaří nalézt recepturu, budou přeskočeny (%s).');
select ASWAddTxt('SEPTIMAPP', 'RECEPT', 'IMPORTFOUNDMORESKIP',  'Bylo nalezeno více receptur. Všechny záznamy, pro které se nepodařilo jednoznačně určit recepturu, budou přeskočeny (%s).');


-- prepocet DPH - probehne jen pokud je zadana Kategorie DPH a pokud je zadana
-- cena s DPH ci bez DPH. Dopocitaji se jen ty polozky, ktere nejsou vyplneny nebo rovne 0
-- RECEPTHandleTypCeny
select ASWDropProcedure('RECEPT_H_TypRec');
drop type if exists admin_septim.RECEPT_H_TypRec_rs cascade;

create type admin_septim.RECEPT_H_TypRec_rs as (
  CENAB                       CENAFLT,
  "~CENAB"                    BOOLBIT,
  "#CENAB"                    INTEGER,
  "~#CENAB"                   BOOLBIT,
  CENAS                       CENAFLT,
  "~CENAS"                    BOOLBIT,
  "#CENAS"                    INTEGER,
  "~#CENAS"                   BOOLBIT,
  DPHA                        CENAFLT,
  "~DPHA"                     BOOLBIT,
  "#DPHA"                     INTEGER,
  "~#DPHA"                    BOOLBIT,
  CENAB_DPHB                  CENAFLT,
  "~CENAB_DPHB"               BOOLBIT,
  "#CENAB_DPHB"               INTEGER,
  "~#CENAB_DPHB"              BOOLBIT,
  DPHA_DPHB                   CENAFLT,
  "~DPHA_DPHB"                BOOLBIT,
  "#DPHA_DPHB"                INTEGER,
  "~#DPHA_DPHB"               BOOLBIT,
  DPHB_DPHB                   CENAFLT,
  "~DPHB_DPHB"                BOOLBIT,
  "#DPHB_DPHB"                INTEGER,
  "~#DPHB_DPHB"               BOOLBIT,
  CENAS_DPHB                  CENAFLT,
  "~CENAS_DPHB"               BOOLBIT,
  "#CENAS_DPHB"               INTEGER,
  "~#CENAS_DPHB"              BOOLBIT,
  "@DOTACE"                   INTEGER,
  "~@DOTACE"                  BOOLBIT,
  "@ReceptRecalcHandler"      INTEGER,
  "~@ReceptRecalcHandler"     BOOLBIT,
  "@ReceptRecalcHandlerDphB"  INTEGER,
  "~@ReceptRecalcHandlerDphB" BOOLBIT,
  "@CENY"                     INTEGER,
  "~@CENY"                    BOOLBIT,
  VZDYCENA                    BOOLBIT,
  "~VZDYCENA"                 BOOLBIT,
  "#VZDYCENA"                 INTEGER,
  "~#VZDYCENA"                BOOLBIT,
  CENAB1                      CENAFLT,
  "~CENAB1"                   BOOLBIT,
  DPHA1                       CENAFLT,
  "~DPHA1"                    BOOLBIT,
  CENAS1                      CENAFLT,
  "~CENAS1"                   BOOLBIT,
  CENAB2                      CENAFLT,
  "~CENAB2"                   BOOLBIT,
  DPHA2                       CENAFLT,
  "~DPHA2"                    BOOLBIT,
  CENAS2                      CENAFLT,
  "~CENAS2"                   BOOLBIT,
  CENAB1_DPHB                 CENAFLT,
  "~CENAB1_DPHB"              BOOLBIT,
  DPHA1_DPHB                  CENAFLT,
  "~DPHA1_DPHB"               BOOLBIT,
  DPHB1_DPHB                  CENAFLT,
  "~DPHB1_DPHB"               BOOLBIT,
  CENAS1_DPHB                 CENAFLT,
  "~CENAS1_DPHB"              BOOLBIT,
  CENAB2_DPHB                 CENAFLT,
  "~CENAB2_DPHB"              BOOLBIT,
  DPHA2_DPHB                  CENAFLT,
  "~DPHA2_DPHB"               BOOLBIT,
  DPHB2_DPHB                  CENAFLT,
  "~DPHB2_DPHB"               BOOLBIT,
  CENAS2_DPHB                 CENAFLT,
  "~CENAS2_DPHB"              BOOLBIT,
  BONUS                       CISLOINT,
  "~BONUS"                    BOOLBIT,
  "#BONUS"                    INTEGER,
  "~#BONUS"                   BOOLBIT,
  "@TABPOLPORCEDATA"          INTEGER,
  "~@TABPOLPORCEDATA"         BOOLBIT,
  "@TABOSTATNIUDAJE"          INTEGER,
  "~@TABOSTATNIUDAJE"         BOOLBIT,
  "@TABPOSTUP"                INTEGER,
  "~@TABPOSTUP"               BOOLBIT,
  "@TABVYPOCETCEN"            INTEGER,
  "~@TABVYPOCETCEN"           BOOLBIT,
  "@TABPOPISYOBJ"             INTEGER,
  "~@TABPOPISYOBJ"            BOOLBIT,
  "@TABDOPLATKY"              INTEGER,
  "~@TABDOPLATKY"             BOOLBIT,
  OBALRECNAZEV                NAZEVSTR,
  "~OBALRECNAZEV"             BOOLBIT,
  "#OBALRECNAZEV"             INTEGER,
  "~#OBALRECNAZEV"            BOOLBIT,
  PORCI                       MNOZSTVIFLT,
  "~PORCI"                    BOOLBIT,
  "#PORCI"                    INTEGER,
  "~#PORCI"                   BOOLBIT,
  GRAMAZ                      GRAMAZTXT,
  "~GRAMAZ"                   BOOLBIT,
  "#GRAMAZ"                   INTEGER,
  "~#GRAMAZ"                  BOOLBIT,
  CHOD                        NAZEVSTR,
  "~CHOD"                     BOOLBIT,
  "#CHOD"                     INTEGER,
  "~#CHOD"                    BOOLBIT,
  DRUHJIDLA                   NAZEVSTR,
  "~DRUHJIDLA"                BOOLBIT,
  "#DRUHJIDLA"                INTEGER,
  "~#DRUHJIDLA"               BOOLBIT,
  SKUPREC1                    NAZEVSTR,
  "~SKUPREC1"                 BOOLBIT,
  SKUPREC2                    NAZEVSTR,
  "~SKUPREC2"                 BOOLBIT,
  SKUPREC3                    NAZEVSTR,
  "~SKUPREC3"                 BOOLBIT,
  SKUPREC4                    NAZEVSTR,
  "~SKUPREC4"                 BOOLBIT,
  CISLOL                      CISLOINT,
  "~CISLOL"                   BOOLBIT,
  CISLOH                      CISLOINT,
  "~CISLOH"                   BOOLBIT,
  POSTUP                      POSTUPTXT,
  "~POSTUP"                   BOOLBIT,
  VCTYP                       TYPINT,
  "~VCTYP"                    BOOLBIT,
  VCZAOKRC                    CISLOINT,
  "~VCZAOKRC"                 BOOLBIT,
  VCZAOKRD                    CISLOINT,
  "~VCZAOKRD"                 BOOLBIT
);


create or replace function admin_septim.RECEPT_H_TypRec(
  in    a_DPH              NAZEVSTR,
  in    a_RECEPTTYP        NAZEVSTR,
  in    a_ID               IDINT,
  in    a_MASTERID         IDINT,
  in    a_COMMAND          E_HNDLParam,
  in    a_FOCUSED          E_HNDLParam,
  in    a_PARAMS           E_HNDLParam
) returns setof RECEPT_H_TypRec_rs
language plpgsql security definer as $$
declare
  l_VISIBLE                TYPINT;
  l_CENAS                  CENAFLT;
  l_DPHA                   CENAFLT;
  l_DPHB                   CENAFLT;
  l_CENAB                  CENAFLT;
  l_MNOZSTVI               CENAFLT;
  l_DOTACE                 TYPINT;
  l_BONUS                  TYPINT;
  l_RECTID                 REFIDINT;
  l_RECEPTTYP              NAZEVSTR;
  l_POVOLDOPLATKY          BOOLBIT;
  l_VZDYCENA               TYPINT;
  l_TABPOPISYOBJLIC        TYPINT;
  cr_prepocet              RECORD;
begin
  l_DOTACE := admin_base.B_LIMITS_GetLicence('SEPTIMAPP','DOTACE',0);
  l_BONUS := admin_base.B_LIMITS_GetLicence('SEPTIMAPP','BONUS',0);
  l_POVOLDOPLATKY := RECEPT_PovolitDoplatky();
  if admin_base.B_LIMITS_GetLicence('BASE','VLASTNOSTI2011',0) = 1 then
    l_TABPOPISYOBJLIC := 1;
  else
    l_TABPOPISYOBJLIC := -1;
  end if;
  select B_REFTABLE.a_ID into l_RECTID from admin_base.B_REFTABLE('SEPTIMAPP','RECEPTTYP','NAZEV',a_RECEPTTYP,-1,'');
  --- test licence
  --if a_TYP>1 then
  begin
    select KLIC into strict l_RECEPTTYP from RECEPTTYP where RECTID = l_RECTID;
  exception
    when NO_DATA_FOUND then
  end;
  l_VZDYCENA := case when l_RECEPTTYP = 'STANDARDNI' then 1 else 0 end;
  case l_RECEPTTYP when 'KORUNOVA' then
    --korunova
      l_MNOZSTVI := 1;
      for cr_prepocet in SELECT CENAB,DPHA,DPHB,CENAS,"$MODIFIED" FROM DPH_H_Prepocet(a_DPH,0,0,0,1,0,0,'PREPOCET','cenas',a_PARAMS)
      loop --into l_CENAB,l_DPHA,l_DPHB,l_CENAS;
        l_CENAB := cr_prepocet.CENAB;
        l_DPHA := cr_prepocet.DPHA;
        l_DPHB := cr_prepocet.DPHB;
        l_CENAS := cr_prepocet.CENAS;
      end loop;
      return query select
        cast(l_CENAB as CENAFLT) as CENAB,
        cast(true as BOOLBIT) as "~CENAB",
        0 as "#CENAB",
        cast(true as BOOLBIT) as "~#CENAB",
        cast(l_CENAS as CENAFLT) as CENAS,
        cast(true as BOOLBIT) as "~CENAS",
        0 as "#CENAS",
        cast(true as BOOLBIT) as "~#CENAS",
        cast(l_DPHA as CENAFLT) as DPHA,
        cast(true as BOOLBIT) as "~DPHA",
        0 as "#DPHA",
        cast(true as BOOLBIT) as "~#DPHA",
        cast(l_CENAB as CENAFLT) as CENAB_DPHB,
        cast(true as BOOLBIT) as "~CENAB_DPHB",
        0 as "#CENAB_DPHB",
        cast(true as BOOLBIT) as "~#CENAB_DPHB",
        cast(l_DPHA as CENAFLT) as DPHA_DPHB,
        cast(true as BOOLBIT) as "~DPHA_DPHB",
        0 as "#DPHA_DPHB",
        cast(true as BOOLBIT) as "~#DPHA_DPHB",
        cast(l_DPHB as CENAFLT) as DPHB_DPHB,
        cast(true as BOOLBIT) as "~DPHB_DPHB",
        0 as "#DPHB_DPHB",
        cast(true as BOOLBIT) as "~#DPHB_DPHB",
        cast(l_CENAS as CENAFLT) as CENAS_DPHB,
        cast(true as BOOLBIT) as "~CENAS_DPHB",
        0 as "#CENAS_DPHB",
        cast(true as BOOLBIT) as "~#CENAS_DPHB",
        -1 as "@DOTACE",
        cast(true as BOOLBIT) as "~@DOTACE",
        0 as "@ReceptRecalcHandler",
        cast(true as BOOLBIT) as "~@ReceptRecalcHandler",
        0 as "@ReceptRecalcHandlerDphB",
        cast(true as BOOLBIT) as "~@ReceptRecalcHandlerDphB",
        1 as "@CENY",
        cast(true as BOOLBIT) as "~@CENY",
        cast(false as BOOLBIT) as VZDYCENA,
        cast(true as BOOLBIT) as "~VZDYCENA",
        0 as "#VZDYCENA",
        cast(true as BOOLBIT) as "~#VZDYCENA",
        cast(0 as CENAFLT) as CENAB1,
        cast(true as BOOLBIT) as "~CENAB1",
        cast(0 as CENAFLT) as DPHA1,
        cast(true as BOOLBIT) as "~DPHA1",
        cast(0 as CENAFLT) as CENAS1,
        cast(true as BOOLBIT) as "~CENAS1",
        cast(0 as CENAFLT) as CENAB2,
        cast(true as BOOLBIT) as "~CENAB2",
        cast(0 as CENAFLT) as DPHA2,
        cast(true as BOOLBIT) as "~DPHA2",
        cast(0 as CENAFLT) as CENAS2,
        cast(true as BOOLBIT) as "~CENAS2",
        cast(0 as CENAFLT) as CENAB1_DPHB,
        cast(true as BOOLBIT) as "~CENAB1_DPHB",
        cast(0 as CENAFLT) as DPHA1_DPHB,
        cast(true as BOOLBIT) as "~DPHA1_DPHB",
        cast(0 as CENAFLT) as DPHB1_DPHB,
        cast(true as BOOLBIT) as "~DPHB1_DPHB",
        cast(0 as CENAFLT) as CENAS1_DPHB ,
        cast(true as BOOLBIT) as "~CENAS1_DPHB",
        cast(0 as CENAFLT) as CENAB2_DPHB,
        cast(true as BOOLBIT) as "~CENAB2_DPHB",
        cast(0 as CENAFLT) as DPHA2_DPHB,
        cast(true as BOOLBIT) as "~DPHA2_DPHB",
        cast(0 as CENAFLT) as DPHB2_DPHB,
        cast(true as BOOLBIT) as "~DPHB2_DPHB",
        cast(0 as CENAFLT) as CENAS2_DPHB,
        cast(true as BOOLBIT) as "~CENAS2_DPHB",
        cast(0 as CISLOINT) as BONUS,
        cast(false as BOOLBIT) as "~BONUS",
        (case when l_BONUS > 0 then 1 else 0 end) as "#BONUS",
        cast(true as BOOLBIT) as "~#BONUS",
        -1 as "@TABPOLPORCEDATA",
        cast(true as BOOLBIT) as "~@TABPOLPORCEDATA",
        1 as "@TABOSTATNIUDAJE",
        cast(true as BOOLBIT) as "~@TABOSTATNIUDAJE",
        1 as "@TABPOSTUP",
        cast(true as BOOLBIT) as "~@TABPOSTUP",
        1 as "@TABVYPOCETCEN",
        cast(true as BOOLBIT) as "~@TABVYPOCETCEN",
        cast(cm_MIN(1,l_TABPOPISYOBJLIC) as INTEGER) as "@TABPOPISYOBJ",
        cast(true as BOOLBIT) as "~@TABPOPISYOBJ",
        -1 as "@TABDOPLATKY",
        cast(true as BOOLBIT) as "~@TABDOPLATKY",
        cast('' as NAZEVSTR) as OBALRECNAZEV,
        cast(false as BOOLBIT) as "~OBALRECNAZEV",
        1 as "#OBALRECNAZEV",
        cast(true as BOOLBIT) as "~#OBALRECNAZEV",
        cast(0 as MNOZSTVIFLT) as PORCI,
        cast(false as BOOLBIT) as "~PORCI",
        1 as "#PORCI",
        cast(true as BOOLBIT) as "~#PORCI",
        cast('' as GRAMAZTXT) as GRAMAZ,
        cast(false as BOOLBIT) as "~GRAMAZ",
        1 as "#GRAMAZ",
        cast(true as BOOLBIT) as "~#GRAMAZ",
        cast('' as NAZEVSTR ) as CHOD,
        cast(false as BOOLBIT) as "~CHOD",
        1 as "#CHOD",
        cast(true as BOOLBIT) as "~#CHOD",
        cast('' as NAZEVSTR) as DRUHJIDLA,
        cast(false as BOOLBIT) as "~DRUHJIDLA",
        1 as "#DRUHJIDLA",
        cast(true as BOOLBIT) as "~#DRUHJIDLA",
        cast('' as NAZEVSTR) as SKUPREC1,
        cast(false as BOOLBIT) as "~SKUPREC1",
        cast('' as NAZEVSTR) as SKUPREC2,
        cast(false as BOOLBIT) as "~SKUPREC2",
        cast('' as NAZEVSTR) as SKUPREC3,
        cast(false as BOOLBIT) as "~SKUPREC3",
        cast('' as NAZEVSTR) as SKUPREC4,
        cast(false as BOOLBIT) as "~SKUPREC4",
        cast(0 as CISLOINT) as CISLOL,
        cast(false as BOOLBIT) as "~CISLOL",
        cast(0 as CISLOINT) as CISLOH,
        cast(false as BOOLBIT) as "~CISLOH",
        cast('' as POSTUPTXT) as POSTUP,
        cast(false as BOOLBIT) as "~POSTUP",
        cast(0 as TYPINT) as VCTYP,
        cast(false as BOOLBIT) as "~VCTYP",
        cast(0 as CISLOINT) as VCZAOKRC,
        cast(false as BOOLBIT) as "~VCZAOKRC",
        cast(0 as CISLOINT) as VCZAOKRD,
        cast(false as BOOLBIT) as "~VCZAOKRD";
    when 'LOGONASTUL' then
    --logo na stul
      return query select
        cast(0 as CENAFLT) as CENAB,
        cast(false as BOOLBIT) as "~CENAB",
        0 as "#CENAB",
        cast(false as BOOLBIT) as "~#CENAB",
        cast(0 as CENAFLT) as CENAS,
        cast(false as BOOLBIT) as "~CENAS",
        0 as "#CENAS",
        cast(false as BOOLBIT) as "~#CENAS",
        cast(0 as CENAFLT) as DPHA,
        cast(false as BOOLBIT) as "~DPHA",
        0 as "#DPHA",
        cast(false as BOOLBIT) as "~#DPHA",
        cast(0 as CENAFLT) as CENAB_DPHB,
        cast(false as BOOLBIT) as "~CENAB_DPHB",
        0 as "#CENAB_DPHB",
        cast(false as BOOLBIT) as "~#CENAB_DPHB",
        cast(0 as CENAFLT) as DPHA_DPHB,
        cast(false as BOOLBIT) as "~DPHA_DPHB",
        0 as "#DPHA_DPHB",
        cast(false as BOOLBIT) as "~#DPHA_DPHB",
        cast(0 as CENAFLT) as DPHB_DPHB,
        cast(false as BOOLBIT) as "~DPHB_DPHB",
        0 as "#DPHB_DPHB",
        cast(false as BOOLBIT) as "~#DPHB_DPHB",
        cast(0 as CENAFLT) as CENAS_DPHB,
        cast(false as BOOLBIT) as "~CENAS_DPHB",
        0 as "#CENAS_DPHB",
        cast(false as BOOLBIT) as "~#CENAS_DPHB",
        -1 as "@DOTACE",
        cast(true as BOOLBIT) as "~@DOTACE",
        0 as "@ReceptRecalcHandler",
        cast(false as BOOLBIT) as "~@ReceptRecalcHandler",
        0 as "@ReceptRecalcHandlerDphB",
        cast(false as BOOLBIT) as "~@ReceptRecalcHandlerDphB",
        -1 as "@CENY",
        cast(true as BOOLBIT) as "~@CENY",
        cast(false as BOOLBIT) as VZDYCENA,
        cast(true as BOOLBIT) as "~VZDYCENA",
        0 as "#VZDYCENA",
        cast(true as BOOLBIT) as "~#VZDYCENA",
        cast(0 as CENAFLT) as CENAB1,
        cast(true as BOOLBIT) as "~CENAB1",
        cast(0 as CENAFLT) as DPHA1,
        cast(true as BOOLBIT) as "~DPHA1",
        cast(0 as CENAFLT) as CENAS1,
        cast(true as BOOLBIT) as "~CENAS1",
        cast(0 as CENAFLT) as CENAB2,
        cast(true as BOOLBIT) as "~CENAB2",
        cast(0 as CENAFLT) as DPHA2,
        cast(true as BOOLBIT) as "~DPHA2",
        cast(0 as CENAFLT) as CENAS2,
        cast(true as BOOLBIT) as "~CENAS2",
        cast(0 as CENAFLT) as CENAB1_DPHB,
        cast(true as BOOLBIT) as "~CENAB1_DPHB",
        cast(0 as CENAFLT) as DPHA1_DPHB,
        cast(true as BOOLBIT) as "~DPHA1_DPHB",
        cast(0 as CENAFLT) as DPHB1_DPHB,
        cast(true as BOOLBIT) as "~DPHB1_DPHB",
        cast(0 as CENAFLT) as CENAS1_DPHB ,
        cast(true as BOOLBIT) as "~CENAS1_DPHB",
        cast(0 as CENAFLT) as CENAB2_DPHB,
        cast(true as BOOLBIT) as "~CENAB2_DPHB",
        cast(0 as CENAFLT) as DPHA2_DPHB,
        cast(true as BOOLBIT) as "~DPHA2_DPHB",
        cast(0 as CENAFLT) as DPHB2_DPHB,
        cast(true as BOOLBIT) as "~DPHB2_DPHB",
        cast(0 as CENAFLT) as CENAS2_DPHB,
        cast(true as BOOLBIT) as "~CENAS2_DPHB",
        cast(0 as CISLOINT) as BONUS,
        cast(true as BOOLBIT) as "~BONUS",
        0 as "#BONUS",
        cast(true as BOOLBIT) as "~#BONUS",
        -1 as "@TABPOLPORCEDATA",
        cast(true as BOOLBIT) as "~@TABPOLPORCEDATA",
        1 as "@TABOSTATNIUDAJE",
        cast(true as BOOLBIT) as "~@TABOSTATNIUDAJE",
        -1 as "@TABPOSTUP",
        cast(true as BOOLBIT) as "~@TABPOSTUP",
        -1 as "@TABVYPOCETCEN",
        cast(true as BOOLBIT) as "~@TABVYPOCETCEN",
        cast(cm_MIN(-1,l_TABPOPISYOBJLIC) as INTEGER) as "@TABPOPISYOBJ",
        cast(true as BOOLBIT) as "~@TABPOPISYOBJ",
        -1 as "@TABDOPLATKY",
        cast(true as BOOLBIT) as "~@TABDOPLATKY",
        cast('' as NAZEVSTR) as OBALRECNAZEV,
        cast(true as BOOLBIT) as "~OBALRECNAZEV",
        0 as "#OBALRECNAZEV",
        cast(true as BOOLBIT) as "~#OBALRECNAZEV",
        cast(1 as MNOZSTVIFLT) as PORCI,
        cast(true as BOOLBIT) as "~PORCI",
        0 as "#PORCI",
        cast(true as BOOLBIT) as "~#PORCI",
        cast('' as GRAMAZTXT) as GRAMAZ,
        cast(true as BOOLBIT) as "~GRAMAZ",
        0 as "#GRAMAZ",
        cast(true as BOOLBIT) as "~#GRAMAZ",
        cast('' as NAZEVSTR ) as CHOD,
        cast(false as BOOLBIT) as "~CHOD",
        1 as "#CHOD",
        cast(true as BOOLBIT) as "~#CHOD",
        cast(DRUHJIDLA_GetZakladniNazev() as NAZEVSTR) as DRUHJIDLA,
        cast(true as BOOLBIT) as "~DRUHJIDLA",
        0 as "#DRUHJIDLA",
        cast(true as BOOLBIT) as "~#DRUHJIDLA",
        cast('' as NAZEVSTR) as SKUPREC1,
        cast(false as BOOLBIT) as "~SKUPREC1",
        cast('' as NAZEVSTR) as SKUPREC2,
        cast(false as BOOLBIT) as "~SKUPREC2",
        cast('' as NAZEVSTR) as SKUPREC3,
        cast(false as BOOLBIT) as "~SKUPREC3",
        cast('' as NAZEVSTR) as SKUPREC4,
        cast(false as BOOLBIT) as "~SKUPREC4",
        cast(0 as CISLOINT) as CISLOL,
        cast(false as BOOLBIT) as "~CISLOL",
        cast(0 as CISLOINT) as CISLOH,
        cast(false as BOOLBIT) as "~CISLOH",
        cast('' as POSTUPTXT) as POSTUP,
        cast(false as BOOLBIT) as "~POSTUP",
        cast(0 as TYPINT) as VCTYP,
        cast(false as BOOLBIT) as "~VCTYP",
        cast(0 as CISLOINT) as VCZAOKRC,
        cast(false as BOOLBIT) as "~VCZAOKRC",
        cast(0 as CISLOINT) as VCZAOKRD,
        cast(false as BOOLBIT) as "~VCZAOKRD";
    when 'EVIDENCNI' then
    --evidencni
      return query select
        cast(0 as CENAFLT) as CENAB,
        cast(false as BOOLBIT) as "~CENAB",
        0 as "#CENAB",
        cast(false as BOOLBIT) as "~#CENAB",
        cast(0 as CENAFLT) as CENAS,
        cast(false as BOOLBIT) as "~CENAS",
        0 as "#CENAS",
        cast(false as BOOLBIT) as "~#CENAS",
        cast(0 as CENAFLT) as DPHA,
        cast(false as BOOLBIT) as "~DPHA",
        0 as "#DPHA",
        cast(false as BOOLBIT) as "~#DPHA",
        cast(0 as CENAFLT) as CENAB_DPHB,
        cast(false as BOOLBIT) as "~CENAB_DPHB",
        0 as "#CENAB_DPHB",
        cast(false as BOOLBIT) as "~#CENAB_DPHB",
        cast(0 as CENAFLT) as DPHA_DPHB,
        cast(false as BOOLBIT) as "~DPHA_DPHB",
        0 as "#DPHA_DPHB",
        cast(false as BOOLBIT) as "~#DPHA_DPHB",
        cast(0 as CENAFLT) as DPHB_DPHB,
        cast(false as BOOLBIT) as "~DPHB_DPHB",
        0 as "#DPHB_DPHB",
        cast(false as BOOLBIT) as "~#DPHB_DPHB",
        cast(0 as CENAFLT) as CENAS_DPHB,
        cast(false as BOOLBIT) as "~CENAS_DPHB",
        0 as "#CENAS_DPHB",
        cast(false as BOOLBIT) as "~#CENAS_DPHB",
        -1 as "@DOTACE",
        cast(true as BOOLBIT) as "~@DOTACE",
        0 as "@ReceptRecalcHandler",
        cast(false as BOOLBIT) as "~@ReceptRecalcHandler",
        0 as "@ReceptRecalcHandlerDphB",
        cast(false as BOOLBIT) as "~@ReceptRecalcHandlerDphB",
        -1 as "@CENY",
        cast(true as BOOLBIT) as "~@CENY",
        cast(false as BOOLBIT) as VZDYCENA,
        cast(true as BOOLBIT) as "~VZDYCENA",
        0 as "#VZDYCENA",
        cast(true as BOOLBIT) as "~#VZDYCENA",
        cast(0 as CENAFLT) as CENAB1,
        cast(true as BOOLBIT) as "~CENAB1",
        cast(0 as CENAFLT) as DPHA1,
        cast(true as BOOLBIT) as "~DPHA1",
        cast(0 as CENAFLT) as CENAS1,
        cast(true as BOOLBIT) as "~CENAS1",
        cast(0 as CENAFLT) as CENAB2,
        cast(true as BOOLBIT) as "~CENAB2",
        cast(0 as CENAFLT) as DPHA2,
        cast(true as BOOLBIT) as "~DPHA2",
        cast(0 as CENAFLT) as CENAS2,
        cast(true as BOOLBIT) as "~CENAS2",
        cast(0 as CENAFLT) as CENAB1_DPHB,
        cast(true as BOOLBIT) as "~CENAB1_DPHB",
        cast(0 as CENAFLT) as DPHA1_DPHB,
        cast(true as BOOLBIT) as "~DPHA1_DPHB",
        cast(0 as CENAFLT) as DPHB1_DPHB,
        cast(true as BOOLBIT) as "~DPHB1_DPHB",
        cast(0 as CENAFLT) as CENAS1_DPHB ,
        cast(true as BOOLBIT) as "~CENAS1_DPHB",
        cast(0 as CENAFLT) as CENAB2_DPHB,
        cast(true as BOOLBIT) as "~CENAB2_DPHB",
        cast(0 as CENAFLT) as DPHA2_DPHB,
        cast(true as BOOLBIT) as "~DPHA2_DPHB",
        cast(0 as CENAFLT) as DPHB2_DPHB,
        cast(true as BOOLBIT) as "~DPHB2_DPHB",
        cast(0 as CENAFLT) as CENAS2_DPHB,
        cast(true as BOOLBIT) as "~CENAS2_DPHB",
        cast(0 as CISLOINT) as BONUS,
        cast(false as BOOLBIT) as "~BONUS",
        (case when l_BONUS > 0 then 1 else 0 end) as "#BONUS",
        cast(true as BOOLBIT) as "~#BONUS",
        -1 as "@TABPOLPORCEDATA",
        cast(true as BOOLBIT) as "~@TABPOLPORCEDATA",
        1 as "@TABOSTATNIUDAJE",
        cast(true as BOOLBIT) as "~@TABOSTATNIUDAJE",
        1 as "@TABPOSTUP",
        cast(true as BOOLBIT) as "~@TABPOSTUP",
        1 as "@TABVYPOCETCEN",
        cast(true as BOOLBIT) as "~@TABVYPOCETCEN",
        cast(cm_MIN(1,l_TABPOPISYOBJLIC) as INTEGER) as "@TABPOPISYOBJ",
        cast(true as BOOLBIT) as "~@TABPOPISYOBJ",
        -1 as "@TABDOPLATKY",
        cast(true as BOOLBIT) as "~@TABDOPLATKY",
        cast('' as NAZEVSTR) as OBALRECNAZEV,
        cast(false as BOOLBIT) as "~OBALRECNAZEV",
        1 as "#OBALRECNAZEV",
        cast(true as BOOLBIT) as "~#OBALRECNAZEV",
        cast(0 as MNOZSTVIFLT) as PORCI,
        cast(false as BOOLBIT) as "~PORCI",
        1 as "#PORCI",
        cast(true as BOOLBIT) as "~#PORCI",
        cast('' as GRAMAZTXT) as GRAMAZ,
        cast(false as BOOLBIT) as "~GRAMAZ",
        1 as "#GRAMAZ",
        cast(true as BOOLBIT) as "~#GRAMAZ",
        cast('' as NAZEVSTR ) as CHOD,
        cast(false as BOOLBIT) as "~CHOD",
        1 as "#CHOD",
        cast(true as BOOLBIT) as "~#CHOD",
        cast(DRUHJIDLA_GetZakladniNazev() as NAZEVSTR) as DRUHJIDLA,
        cast(true as BOOLBIT) as "~DRUHJIDLA",
        0 as "#DRUHJIDLA",
        cast(true as BOOLBIT) as "~#DRUHJIDLA",
        cast('' as NAZEVSTR) as SKUPREC1,
        cast(false as BOOLBIT) as "~SKUPREC1",
        cast('' as NAZEVSTR) as SKUPREC2,
        cast(false as BOOLBIT) as "~SKUPREC2",
        cast('' as NAZEVSTR) as SKUPREC3,
        cast(false as BOOLBIT) as "~SKUPREC3",
        cast('' as NAZEVSTR) as SKUPREC4,
        cast(false as BOOLBIT) as "~SKUPREC4",
        cast(0 as CISLOINT) as CISLOL,
        cast(false as BOOLBIT) as "~CISLOL",
        cast(0 as CISLOINT) as CISLOH,
        cast(false as BOOLBIT) as "~CISLOH",
        cast('' as POSTUPTXT) as POSTUP,
        cast(false as BOOLBIT) as "~POSTUP",
        cast(0 as TYPINT) as VCTYP,
        cast(false as BOOLBIT) as "~VCTYP",
        cast(0 as CISLOINT) as VCZAOKRC,
        cast(false as BOOLBIT) as "~VCZAOKRC",
        cast(0 as CISLOINT) as VCZAOKRD,
        cast(false as BOOLBIT) as "~VCZAOKRD";
    when 'BONUSOVA' then
    --bonusová
      return query select
        cast(0 as CENAFLT) as CENAB,
        cast(false as BOOLBIT) as "~CENAB",
        -1 as "#CENAB",
        cast(false as BOOLBIT) as "~#CENAB",
        cast(0 as CENAFLT) as CENAS,
        cast(false as BOOLBIT) as "~CENAS",
        -1 as "#CENAS",
        cast(false as BOOLBIT) as "~#CENAS",
        cast(0 as CENAFLT) as DPHA,
        cast(false as BOOLBIT) as "~DPHA",
        -1 as "#DPHA",
        cast(false as BOOLBIT) as "~#DPHA",
        cast(0 as CENAFLT) as CENAB_DPHB,
        cast(false as BOOLBIT) as "~CENAB_DPHB",
        -1 as "#CENAB_DPHB",
        cast(false as BOOLBIT) as "~#CENAB_DPHB",
        cast(0 as CENAFLT) as DPHA_DPHB,
        cast(false as BOOLBIT) as "~DPHA_DPHB",
        -1 as "#DPHA_DPHB",
        cast(false as BOOLBIT) as "~#DPHA_DPHB",
        cast(0 as CENAFLT) as DPHB_DPHB,
        cast(false as BOOLBIT) as "~DPHB_DPHB",
        -1 as "#DPHB_DPHB",
        cast(false as BOOLBIT) as "~#DPHB_DPHB",
        cast(0 as CENAFLT) as CENAS_DPHB,
        cast(false as BOOLBIT) as "~CENAS_DPHB",
        -1 as "#CENAS_DPHB",
        cast(false as BOOLBIT) as "~#CENAS_DPHB",
        -1 as "@DOTACE",
        cast(true as BOOLBIT) as "~@DOTACE",
        -1 as "@ReceptRecalcHandler",
        cast(false as BOOLBIT) as "~@ReceptRecalcHandler",
        -1 as "@ReceptRecalcHandlerDphB",
        cast(false as BOOLBIT) as "~@ReceptRecalcHandlerDphB",
        -1 as "@CENY",
        cast(true as BOOLBIT) as "~@CENY",
        cast(false as BOOLBIT) as VZDYCENA,
        cast(true as BOOLBIT) as "~VZDYCENA",
        0 as "#VZDYCENA",
        cast(true as BOOLBIT) as "~#VZDYCENA",
        cast(0 as CENAFLT) as CENAB1,
        cast(true as BOOLBIT) as "~CENAB1",
        cast(0 as CENAFLT) as DPHA1,
        cast(true as BOOLBIT) as "~DPHA1",
        cast(0 as CENAFLT) as CENAS1,
        cast(true as BOOLBIT) as "~CENAS1",
        cast(0 as CENAFLT) as CENAB2,
        cast(true as BOOLBIT) as "~CENAB2",
        cast(0 as CENAFLT) as DPHA2,
        cast(true as BOOLBIT) as "~DPHA2",
        cast(0 as CENAFLT) as CENAS2,
        cast(true as BOOLBIT) as "~CENAS2",
        cast(0 as CENAFLT) as CENAB1_DPHB,
        cast(true as BOOLBIT) as "~CENAB1_DPHB",
        cast(0 as CENAFLT) as DPHA1_DPHB,
        cast(true as BOOLBIT) as "~DPHA1_DPHB",
        cast(0 as CENAFLT) as DPHB1_DPHB,
        cast(true as BOOLBIT) as "~DPHB1_DPHB",
        cast(0 as CENAFLT) as CENAS1_DPHB ,
        cast(true as BOOLBIT) as "~CENAS1_DPHB",
        cast(0 as CENAFLT) as CENAB2_DPHB,
        cast(true as BOOLBIT) as "~CENAB2_DPHB",
        cast(0 as CENAFLT) as DPHA2_DPHB,
        cast(true as BOOLBIT) as "~DPHA2_DPHB",
        cast(0 as CENAFLT) as DPHB2_DPHB,
        cast(true as BOOLBIT) as "~DPHB2_DPHB",
        cast(0 as CENAFLT) as CENAS2_DPHB,
        cast(true as BOOLBIT) as "~CENAS2_DPHB",
        cast(0 as CISLOINT) as BONUS,
        cast(true as BOOLBIT) as "~BONUS",
        -1 as "#BONUS",
        cast(true as BOOLBIT) as "~#BONUS",
        -1 as "@TABPOLPORCEDATA",
        cast(true as BOOLBIT) as "~@TABPOLPORCEDATA",
        1 as "@TABOSTATNIUDAJE",
        cast(true as BOOLBIT) as "~@TABOSTATNIUDAJE",
        -1 as "@TABPOSTUP",
        cast(true as BOOLBIT) as "~@TABPOSTUP",
        -1 as "@TABVYPOCETCEN",
        cast(true as BOOLBIT) as "~@TABVYPOCETCEN",
        cast(cm_MIN(-1,l_TABPOPISYOBJLIC) as INTEGER) as "@TABPOPISYOBJ",
        cast(true as BOOLBIT) as "~@TABPOPISYOBJ",
        -1 as "@TABDOPLATKY",
        cast(true as BOOLBIT) as "~@TABDOPLATKY",
        cast('' as NAZEVSTR) as OBALRECNAZEV,
        cast(true as BOOLBIT) as "~OBALRECNAZEV",
        0 as "#OBALRECNAZEV",
        cast(true as BOOLBIT) as "~#OBALRECNAZEV",
        cast(1 as MNOZSTVIFLT) as PORCI,
        cast(true as BOOLBIT) as "~PORCI",
        0 as "#PORCI",
        cast(true as BOOLBIT) as "~#PORCI",
        cast('' as GRAMAZTXT) as GRAMAZ,
        cast(true as BOOLBIT) as "~GRAMAZ",
        0 as "#GRAMAZ",
        cast(true as BOOLBIT) as "~#GRAMAZ",
        cast('' as NAZEVSTR ) as CHOD,
        cast(true as BOOLBIT) as "~CHOD",
        0 as "#CHOD",
        cast(true as BOOLBIT) as "~#CHOD",
        cast(DRUHJIDLA_GetZakladniNazev() as NAZEVSTR) as DRUHJIDLA,
        cast(true as BOOLBIT) as "~DRUHJIDLA",
        0 as "#DRUHJIDLA",
        cast(true as BOOLBIT) as "~#DRUHJIDLA",
        cast('' as NAZEVSTR) as SKUPREC1,
        cast(false as BOOLBIT) as "~SKUPREC1",
        cast('' as NAZEVSTR) as SKUPREC2,
        cast(false as BOOLBIT) as "~SKUPREC2",
        cast('' as NAZEVSTR) as SKUPREC3,
        cast(false as BOOLBIT) as "~SKUPREC3",
        cast('' as NAZEVSTR) as SKUPREC4,
        cast(false as BOOLBIT) as "~SKUPREC4",
        cast(0 as CISLOINT) as CISLOL,
        cast(false as BOOLBIT) as "~CISLOL",
        cast(0 as CISLOINT) as CISLOH,
        cast(false as BOOLBIT) as "~CISLOH",
        cast('' as POSTUPTXT) as POSTUP,
        cast(false as BOOLBIT) as "~POSTUP",
        cast(0 as TYPINT) as VCTYP,
        cast(false as BOOLBIT) as "~VCTYP",
        cast(0 as CISLOINT) as VCZAOKRC,
        cast(false as BOOLBIT) as "~VCZAOKRC",
        cast(0 as CISLOINT) as VCZAOKRD,
        cast(false as BOOLBIT) as "~VCZAOKRD";
    when 'SPECIALNI' then
    --specialni
      return query select
        cast(0 as CENAFLT) as CENAB,
        cast(false as BOOLBIT) as "~CENAB",
        -1 as "#CENAB",
        cast(false as BOOLBIT) as "~#CENAB",
        cast(0 as CENAFLT) as CENAS,
        cast(false as BOOLBIT) as "~CENAS",
        -1 as "#CENAS",
        cast(false as BOOLBIT) as "~#CENAS",
        cast(0 as CENAFLT) as DPHA,
        cast(false as BOOLBIT) as "~DPHA",
        -1 as "#DPHA",
        cast(false as BOOLBIT) as "~#DPHA",
        cast(0 as CENAFLT) as CENAB_DPHB,
        cast(false as BOOLBIT) as "~CENAB_DPHB",
        -1 as "#CENAB_DPHB",
        cast(false as BOOLBIT) as "~#CENAB_DPHB",
        cast(0 as CENAFLT) as DPHA_DPHB,
        cast(false as BOOLBIT) as "~DPHA_DPHB",
        -1 as "#DPHA_DPHB",
        cast(false as BOOLBIT) as "~#DPHA_DPHB",
        cast(0 as CENAFLT) as DPHB_DPHB,
        cast(false as BOOLBIT) as "~DPHB_DPHB",
        -1 as "#DPHB_DPHB",
        cast(false as BOOLBIT) as "~#DPHB_DPHB",
        cast(0 as CENAFLT) as CENAS_DPHB,
        cast(false as BOOLBIT) as "~CENAS_DPHB",
        -1 as "#CENAS_DPHB",
        cast(false as BOOLBIT) as "~#CENAS_DPHB",
        -1 as "@DOTACE",
        cast(true as BOOLBIT) as "~@DOTACE",
        -1 as "@ReceptRecalcHandler",
        cast(false as BOOLBIT) as "~@ReceptRecalcHandler",
        -1 as "@ReceptRecalcHandlerDphB",
        cast(false as BOOLBIT) as "~@ReceptRecalcHandlerDphB",
        -1 as "@CENY",
        cast(true as BOOLBIT) as "~@CENY",
        cast(false as BOOLBIT) as VZDYCENA,
        cast(true as BOOLBIT) as "~VZDYCENA",
        0 as "#VZDYCENA",
        cast(true as BOOLBIT) as "~#VZDYCENA",
        cast(0 as CENAFLT) as CENAB1,
        cast(true as BOOLBIT) as "~CENAB1",
        cast(0 as CENAFLT) as DPHA1,
        cast(true as BOOLBIT) as "~DPHA1",
        cast(0 as CENAFLT) as CENAS1,
        cast(true as BOOLBIT) as "~CENAS1",
        cast(0 as CENAFLT) as CENAB2,
        cast(true as BOOLBIT) as "~CENAB2",
        cast(0 as CENAFLT) as DPHA2,
        cast(true as BOOLBIT) as "~DPHA2",
        cast(0 as CENAFLT) as CENAS2,
        cast(true as BOOLBIT) as "~CENAS2",
        cast(0 as CENAFLT) as CENAB1_DPHB,
        cast(true as BOOLBIT) as "~CENAB1_DPHB",
        cast(0 as CENAFLT) as DPHA1_DPHB,
        cast(true as BOOLBIT) as "~DPHA1_DPHB",
        cast(0 as CENAFLT) as DPHB1_DPHB,
        cast(true as BOOLBIT) as "~DPHB1_DPHB",
        cast(0 as CENAFLT) as CENAS1_DPHB ,
        cast(true as BOOLBIT) as "~CENAS1_DPHB",
        cast(0 as CENAFLT) as CENAB2_DPHB,
        cast(true as BOOLBIT) as "~CENAB2_DPHB",
        cast(0 as CENAFLT) as DPHA2_DPHB,
        cast(true as BOOLBIT) as "~DPHA2_DPHB",
        cast(0 as CENAFLT) as DPHB2_DPHB,
        cast(true as BOOLBIT) as "~DPHB2_DPHB",
        cast(0 as CENAFLT) as CENAS2_DPHB,
        cast(true as BOOLBIT) as "~CENAS2_DPHB",
        cast(0 as CISLOINT) as BONUS,
        cast(false as BOOLBIT) as "~BONUS",
        (case when l_BONUS > 0 then 1 else -1 end) as "#BONUS",
        cast(true as BOOLBIT) as "~#BONUS",
        -1 as "@TABPOLPORCEDATA",
        cast(true as BOOLBIT) as "~@TABPOLPORCEDATA",
        1 as "@TABOSTATNIUDAJE",
        cast(true as BOOLBIT) as "~@TABOSTATNIUDAJE",
        1 as "@TABPOSTUP",
        cast(true as BOOLBIT) as "~@TABPOSTUP",
        1 as "@TABVYPOCETCEN",
        cast(true as BOOLBIT) as "~@TABVYPOCETCEN",
        cast(cm_MIN(1,l_TABPOPISYOBJLIC) as INTEGER) as "@TABPOPISYOBJ",
        cast(true as BOOLBIT) as "~@TABPOPISYOBJ",
        -1 as "@TABDOPLATKY",
        cast(true as BOOLBIT) as "~@TABDOPLATKY",
        cast('' as NAZEVSTR) as OBALRECNAZEV,
        cast(false as BOOLBIT) as "~OBALRECNAZEV",
        1 as "#OBALRECNAZEV",
        cast(true as BOOLBIT) as "~#OBALRECNAZEV",
        cast(0 as MNOZSTVIFLT) as PORCI,
        cast(false as BOOLBIT) as "~PORCI",
        1 as "#PORCI",
        cast(true as BOOLBIT) as "~#PORCI",
        cast('' as GRAMAZTXT) as GRAMAZ,
        cast(false as BOOLBIT) as "~GRAMAZ",
        1 as "#GRAMAZ",
        cast(true as BOOLBIT) as "~#GRAMAZ",
        cast('' as NAZEVSTR ) as CHOD,
        cast(false as BOOLBIT) as "~CHOD",
        1 as "#CHOD",
        cast(true as BOOLBIT) as "~#CHOD",
        cast('' as NAZEVSTR) as DRUHJIDLA,
        cast(false as BOOLBIT) as "~DRUHJIDLA",
        1 as "#DRUHJIDLA",
        cast(true as BOOLBIT) as "~#DRUHJIDLA",
        cast('' as NAZEVSTR) as SKUPREC1,
        cast(false as BOOLBIT) as "~SKUPREC1",
        cast('' as NAZEVSTR) as SKUPREC2,
        cast(false as BOOLBIT) as "~SKUPREC2",
        cast('' as NAZEVSTR) as SKUPREC3,
        cast(false as BOOLBIT) as "~SKUPREC3",
        cast('' as NAZEVSTR) as SKUPREC4,
        cast(false as BOOLBIT) as "~SKUPREC4",
        cast(0 as CISLOINT) as CISLOL,
        cast(false as BOOLBIT) as "~CISLOL",
        cast(0 as CISLOINT) as CISLOH,
        cast(false as BOOLBIT) as "~CISLOH",
        cast('' as POSTUPTXT) as POSTUP,
        cast(false as BOOLBIT) as "~POSTUP",
        cast(0 as TYPINT) as VCTYP,
        cast(false as BOOLBIT) as "~VCTYP",
        cast(0 as CISLOINT) as VCZAOKRC,
        cast(false as BOOLBIT) as "~VCZAOKRC",
        cast(0 as CISLOINT) as VCZAOKRD,
        cast(false as BOOLBIT) as "~VCZAOKRD";
    when 'POLOVICNIPORCE' then
      return query select
        cast(0 as CENAFLT) as CENAB,
        cast(false as BOOLBIT) as "~CENAB",
        -1 as "#CENAB",
        cast(false as BOOLBIT) as "~#CENAB",
        cast(0 as CENAFLT) as CENAS,
        cast(false as BOOLBIT) as "~CENAS",
        -1 as "#CENAS",
        cast(false as BOOLBIT) as "~#CENAS",
        cast(0 as CENAFLT) as DPHA,
        cast(false as BOOLBIT) as "~DPHA",
        -1 as "#DPHA",
        cast(false as BOOLBIT) as "~#DPHA",
        cast(0 as CENAFLT) as CENAB_DPHB,
        cast(false as BOOLBIT) as "~CENAB_DPHB",
        -1 as "#CENAB_DPHB",
        cast(false as BOOLBIT) as "~#CENAB_DPHB",
        cast(0 as CENAFLT) as DPHA_DPHB,
        cast(false as BOOLBIT) as "~DPHA_DPHB",
        -1 as "#DPHA_DPHB",
        cast(false as BOOLBIT) as "~#DPHA_DPHB",
        cast(0 as CENAFLT) as DPHB_DPHB,
        cast(false as BOOLBIT) as "~DPHB_DPHB",
        -1 as "#DPHB_DPHB",
        cast(false as BOOLBIT) as "~#DPHB_DPHB",
        cast(0 as CENAFLT) as CENAS_DPHB,
        cast(false as BOOLBIT) as "~CENAS_DPHB",
        -1 as "#CENAS_DPHB",
        cast(false as BOOLBIT) as "~#CENAS_DPHB",
        -1 as "@DOTACE",
        cast(true as BOOLBIT) as "~@DOTACE",
        -1 as "@ReceptRecalcHandler",
        cast(false as BOOLBIT) as "~@ReceptRecalcHandler",
        -1 as "@ReceptRecalcHandlerDphB",
        cast(false as BOOLBIT) as "~@ReceptRecalcHandlerDphB",
        -1 as "@CENY",
        cast(true as BOOLBIT) as "~@CENY",
        cast(false as BOOLBIT) as VZDYCENA,
        cast(true as BOOLBIT) as "~VZDYCENA",
        0 as "#VZDYCENA",
        cast(true as BOOLBIT) as "~#VZDYCENA",
        cast(0 as CENAFLT) as CENAB1,
        cast(true as BOOLBIT) as "~CENAB1",
        cast(0 as CENAFLT) as DPHA1,
        cast(true as BOOLBIT) as "~DPHA1",
        cast(0 as CENAFLT) as CENAS1,
        cast(true as BOOLBIT) as "~CENAS1",
        cast(0 as CENAFLT) as CENAB2,
        cast(true as BOOLBIT) as "~CENAB2",
        cast(0 as CENAFLT) as DPHA2,
        cast(true as BOOLBIT) as "~DPHA2",
        cast(0 as CENAFLT) as CENAS2,
        cast(true as BOOLBIT) as "~CENAS2",
        cast(0 as CENAFLT) as CENAB1_DPHB,
        cast(true as BOOLBIT) as "~CENAB1_DPHB",
        cast(0 as CENAFLT) as DPHA1_DPHB,
        cast(true as BOOLBIT) as "~DPHA1_DPHB",
        cast(0 as CENAFLT) as DPHB1_DPHB,
        cast(true as BOOLBIT) as "~DPHB1_DPHB",
        cast(0 as CENAFLT) as CENAS1_DPHB ,
        cast(true as BOOLBIT) as "~CENAS1_DPHB",
        cast(0 as CENAFLT) as CENAB2_DPHB,
        cast(true as BOOLBIT) as "~CENAB2_DPHB",
        cast(0 as CENAFLT) as DPHA2_DPHB,
        cast(true as BOOLBIT) as "~DPHA2_DPHB",
        cast(0 as CENAFLT) as DPHB2_DPHB,
        cast(true as BOOLBIT) as "~DPHB2_DPHB",
        cast(0 as CENAFLT) as CENAS2_DPHB,
        cast(true as BOOLBIT) as "~CENAS2_DPHB",
        cast(0 as CISLOINT) as BONUS,
        cast(false as BOOLBIT) as "~BONUS",
        (case when l_BONUS > 0 then 1 else -1 end) as "#BONUS",
        cast(true as BOOLBIT) as "~#BONUS",
        1 as "@TABPOLPORCEDATA",
        cast(true as BOOLBIT) as "~@TABPOLPORCEDATA",
        -1 as "@TABOSTATNIUDAJE",
        cast(true as BOOLBIT) as "~@TABOSTATNIUDAJE",
        -1 as "@TABPOSTUP",
        cast(true as BOOLBIT) as "~@TABPOSTUP",
        -1 as "@TABVYPOCETCEN",
        cast(true as BOOLBIT) as "~@TABVYPOCETCEN",
        cast(cm_MIN(1,l_TABPOPISYOBJLIC) as INTEGER) as "@TABPOPISYOBJ",
        cast(true as BOOLBIT) as "~@TABPOPISYOBJ",
        -1 as "@TABDOPLATKY",
        cast(true as BOOLBIT) as "~@TABDOPLATKY",
        cast('' as NAZEVSTR) as OBALRECNAZEV,
        cast(false as BOOLBIT) as "~OBALRECNAZEV",
        1 as "#OBALRECNAZEV",
        cast(true as BOOLBIT) as "~#OBALRECNAZEV",
        cast(1 as MNOZSTVIFLT) as PORCI,
        cast(true as BOOLBIT) as "~PORCI",
        1 as "#PORCI",
        cast(true as BOOLBIT) as "~#PORCI",
        cast('' as GRAMAZTXT) as GRAMAZ,       -- původně se vracelo null
        cast(true as BOOLBIT) as "~GRAMAZ",
        1 as "#GRAMAZ",
        cast(true as BOOLBIT) as "~#GRAMAZ",
        cast('' as NAZEVSTR ) as CHOD,
        cast(true as BOOLBIT) as "~CHOD",
        -1 as "#CHOD",
        cast(false as BOOLBIT) as "~#CHOD",
        cast(DRUHJIDLA_GetZakladniNazev() as NAZEVSTR) as DRUHJIDLA,
        cast(false as BOOLBIT) as "~DRUHJIDLA",
        -1 as "#DRUHJIDLA",
        cast(true as BOOLBIT) as "~#DRUHJIDLA",
        cast('' as NAZEVSTR) as SKUPREC1,
        cast(true as BOOLBIT) as "~SKUPREC1",
        cast('' as NAZEVSTR) as SKUPREC2,
        cast(true as BOOLBIT) as "~SKUPREC2",
        cast('' as NAZEVSTR) as SKUPREC3,
        cast(true as BOOLBIT) as "~SKUPREC3",
        cast('' as NAZEVSTR) as SKUPREC4,
        cast(true as BOOLBIT) as "~SKUPREC4",
        cast(1 as CISLOINT) as CISLOL,
        cast(true as BOOLBIT) as "~CISLOL",
        cast(1 as CISLOINT) as CISLOH,
        cast(true as BOOLBIT) as "~CISLOH",
        cast('' as POSTUPTXT) as POSTUP,       -- původně se vracelo null
        cast(true as BOOLBIT) as "~POSTUP",
        cast(0 as TYPINT) as VCTYP,
        cast(true as BOOLBIT) as "~VCTYP",
        cast(1 as CISLOINT) as VCZAOKRC,
        cast(true as BOOLBIT) as "~VCZAOKRC",
        cast(2 as CISLOINT) as VCZAOKRD,
        cast(true as BOOLBIT) as "~VCZAOKRD";
    when 'STANDARDNISTORNO' then
      return query select
        cast(0 as CENAFLT) as CENAB,
        cast(false as BOOLBIT) as "~CENAB",
        1 as "#CENAB",
        cast(true as BOOLBIT) as "~#CENAB",
        cast(0 as CENAFLT) as CENAS,
        cast(false as BOOLBIT) as "~CENAS",
        1 as "#CENAS",
        cast(true as BOOLBIT) as "~#CENAS",
        cast(0 as CENAFLT) as DPHA,
        cast(false as BOOLBIT) as "~DPHA",
        1 as "#DPHA",
        cast(true as BOOLBIT) as "~#DPHA",
        cast(0 as CENAFLT) as CENAB_DPHB,
        cast(false as BOOLBIT) as "~CENAB_DPHB",
        -1 as "#CENAB_DPHB",
        cast(false as BOOLBIT) as "~#CENAB_DPHB",
        cast(0 as CENAFLT) as DPHA_DPHB,
        cast(false as BOOLBIT) as "~DPHA_DPHB",
        -1 as "#DPHA_DPHB",
        cast(false as BOOLBIT) as "~#DPHA_DPHB",
        cast(0 as CENAFLT) as DPHB_DPHB,
        cast(false as BOOLBIT) as "~DPHB_DPHB",
        -1 as "#DPHB_DPHB",
        cast(false as BOOLBIT) as "~#DPHB_DPHB",
        cast(0 as CENAFLT) as CENAS_DPHB,
        cast(false as BOOLBIT) as "~CENAS_DPHB",
        -1 as "#CENAS_DPHB",
        cast(false as BOOLBIT) as "~#CENAS_DPHB",
        -1 as "@DOTACE",
        cast(true as BOOLBIT) as "~@DOTACE",
        1 as "@ReceptRecalcHandler",
        cast(true as BOOLBIT) as "~@ReceptRecalcHandler",
        -1 as "@ReceptRecalcHandlerDphB",
        cast(false as BOOLBIT) as "~@ReceptRecalcHandlerDphB",
        1 as "@CENY",
        cast(true as BOOLBIT) as "~@CENY",
        cast(false as BOOLBIT) as VZDYCENA,
        cast(true as BOOLBIT) as "~VZDYCENA",
        0 as "#VZDYCENA",
        cast(true as BOOLBIT) as "~#VZDYCENA",
        cast(0 as CENAFLT) as CENAB1,
        cast(true as BOOLBIT) as "~CENAB1",
        cast(0 as CENAFLT) as DPHA1,
        cast(true as BOOLBIT) as "~DPHA1",
        cast(0 as CENAFLT) as CENAS1,
        cast(true as BOOLBIT) as "~CENAS1",
        cast(0 as CENAFLT) as CENAB2,
        cast(true as BOOLBIT) as "~CENAB2",
        cast(0 as CENAFLT) as DPHA2,
        cast(true as BOOLBIT) as "~DPHA2",
        cast(0 as CENAFLT) as CENAS2,
        cast(1as BOOLBIT) as "~CENAS2",
        cast(0 as CENAFLT) as CENAB1_DPHB,
        cast(false as BOOLBIT) as "~CENAB1_DPHB",
        cast(0 as CENAFLT) as DPHA1_DPHB,
        cast(false as BOOLBIT) as "~DPHA1_DPHB",
        cast(0 as CENAFLT) as DPHB1_DPHB,
        cast(false as BOOLBIT) as "~DPHB1_DPHB",
        cast(0 as CENAFLT) as CENAS1_DPHB ,
        cast(false as BOOLBIT) as "~CENAS1_DPHB",
        cast(0 as CENAFLT) as CENAB2_DPHB,
        cast(false as BOOLBIT) as "~CENAB2_DPHB",
        cast(0 as CENAFLT) as DPHA2_DPHB,
        cast(false as BOOLBIT) as "~DPHA2_DPHB",
        cast(0 as CENAFLT) as DPHB2_DPHB,
        cast(false as BOOLBIT) as "~DPHB2_DPHB",
        cast(0 as CENAFLT) as CENAS2_DPHB,
        cast(false as BOOLBIT) as "~CENAS2_DPHB",
        cast(0 as CISLOINT) as BONUS,
        cast(false as BOOLBIT) as "~BONUS",
        (case when l_BONUS > 0 then 1 else -1 end) as "#BONUS",
        cast(true as BOOLBIT) as "~#BONUS",
        -1 as "@TABPOLPORCEDATA",
        cast(true as BOOLBIT) as "~@TABPOLPORCEDATA",
        1 as "@TABOSTATNIUDAJE",
        cast(true as BOOLBIT) as "~@TABOSTATNIUDAJE",
        1 as "@TABPOSTUP",
        cast(true as BOOLBIT) as "~@TABPOSTUP",
        1 as "@TABVYPOCETCEN",
        cast(true as BOOLBIT) as "~@TABVYPOCETCEN",
        cast(cm_MIN(1,l_TABPOPISYOBJLIC) as INTEGER) as "@TABPOPISYOBJ",
        cast(true as BOOLBIT) as "~@TABPOPISYOBJ",
        -1 as "@TABDOPLATKY",
        cast(true as BOOLBIT) as "~@TABDOPLATKY",
        cast('' as NAZEVSTR) as OBALRECNAZEV,
        cast(false as BOOLBIT) as "~OBALRECNAZEV",
        1 as "#OBALRECNAZEV",
        cast(true as BOOLBIT) as "~#OBALRECNAZEV",
        cast(0 as MNOZSTVIFLT) as PORCI,
        cast(false as BOOLBIT) as "~PORCI",
        1 as "#PORCI",
        cast(true as BOOLBIT) as "~#PORCI",
        cast('' as GRAMAZTXT) as GRAMAZ,
        cast(false as BOOLBIT) as "~GRAMAZ",
        1 as "#GRAMAZ",
        cast(true as BOOLBIT) as "~#GRAMAZ",
        cast('' as NAZEVSTR ) as CHOD,
        cast(false as BOOLBIT) as "~CHOD",
        1 as "#CHOD",
        cast(true as BOOLBIT) as "~#CHOD",
        cast('' as NAZEVSTR) as DRUHJIDLA,
        cast(false as BOOLBIT) as "~DRUHJIDLA",
        1 as "#DRUHJIDLA",
        cast(true as BOOLBIT) as "~#DRUHJIDLA",
        cast('' as NAZEVSTR) as SKUPREC1,
        cast(false as BOOLBIT) as "~SKUPREC1",
        cast('' as NAZEVSTR) as SKUPREC2,
        cast(false as BOOLBIT) as "~SKUPREC2",
        cast('' as NAZEVSTR) as SKUPREC3,
        cast(false as BOOLBIT) as "~SKUPREC3",
        cast('' as NAZEVSTR) as SKUPREC4,
        cast(false as BOOLBIT) as "~SKUPREC4",
        cast(0 as CISLOINT) as CISLOL,
        cast(false as BOOLBIT) as "~CISLOL",
        cast(0 as CISLOINT) as CISLOH,
        cast(false as BOOLBIT) as "~CISLOH",
        cast('' as POSTUPTXT) as POSTUP,
        cast(false as BOOLBIT) as "~POSTUP",
        cast(0 as TYPINT) as VCTYP,
        cast(false as BOOLBIT) as "~VCTYP",
        cast(0 as CISLOINT) as VCZAOKRC,
        cast(false as BOOLBIT) as "~VCZAOKRC",
        cast(0 as CISLOINT) as VCZAOKRD,
        cast(false as BOOLBIT) as "~VCZAOKRD";
    when 'SLOZENEMENU' then
      return query select
        cast(0 as CENAFLT) as CENAB,
        cast(false as BOOLBIT) as "~CENAB",
        1 as "#CENAB",
        cast(true as BOOLBIT) as "~#CENAB",
        cast(0 as CENAFLT) as CENAS,
        cast(false as BOOLBIT) as "~CENAS",
        1 as "#CENAS",
        cast(true as BOOLBIT) as "~#CENAS",
        cast(0 as CENAFLT) as DPHA,
        cast(false as BOOLBIT) as "~DPHA",
        1 as "#DPHA",
        cast(true as BOOLBIT) as "~#DPHA",
        cast(0 as CENAFLT) as CENAB_DPHB,
        cast(false as BOOLBIT) as "~CENAB_DPHB",
        1 as "#CENAB_DPHB",
        cast(true as BOOLBIT) as "~#CENAB_DPHB",
        cast(0 as CENAFLT) as DPHA_DPHB,
        cast(false as BOOLBIT) as "~DPHA_DPHB",
        1 as "#DPHA_DPHB",
        cast(true as BOOLBIT) as "~#DPHA_DPHB",
        cast(0 as CENAFLT) as DPHB_DPHB,
        cast(false as BOOLBIT) as "~DPHB_DPHB",
        1 as "#DPHB_DPHB",
        cast(true as BOOLBIT) as "~#DPHB_DPHB",
        cast(0 as CENAFLT) as CENAS_DPHB,
        cast(false as BOOLBIT) as "~CENAS_DPHB",
        1 as "#CENAS_DPHB",
        cast(true as BOOLBIT) as "~#CENAS_DPHB",
        (case when l_DOTACE > 0 then 1 else -1 end) as "@DOTACE",
        cast(true as BOOLBIT) as "~@DOTACE",
        1 as "@ReceptRecalcHandler",
        cast(true as BOOLBIT) as "~@ReceptRecalcHandler",
        1 as "@ReceptRecalcHandlerDphB",
        cast(true as BOOLBIT) as "~@ReceptRecalcHandlerDphB",
        1 as "@CENY",
        cast(true as BOOLBIT) as "~@CENY",
        cast(false as BOOLBIT) as VZDYCENA,
        cast(true as BOOLBIT) as "~VZDYCENA",
        0 as "#VZDYCENA",
        cast(true as BOOLBIT) as "~#VZDYCENA",
        cast(0 as CENAFLT) as CENAB1,
        cast(false as BOOLBIT) as "~CENAB1",
        cast(0 as CENAFLT) as DPHA1,
        cast(false as BOOLBIT) as "~DPHA1",
        cast(0 as CENAFLT) as CENAS1,
        cast(false as BOOLBIT) as "~CENAS1",
        cast(0 as CENAFLT) as CENAB2,
        cast(false as BOOLBIT) as "~CENAB2",
        cast(0 as CENAFLT) as DPHA2,
        cast(false as BOOLBIT) as "~DPHA2",
        cast(0 as CENAFLT) as CENAS2,
        cast(false as BOOLBIT) as "~CENAS2",
        cast(0 as CENAFLT) as CENAB1_DPHB,
        cast(false as BOOLBIT) as "~CENAB1_DPHB",
        cast(0 as CENAFLT) as DPHA1_DPHB,
        cast(false as BOOLBIT) as "~DPHA1_DPHB",
        cast(0 as CENAFLT) as DPHB1_DPHB,
        cast(false as BOOLBIT) as "~DPHB1_DPHB",
        cast(0 as CENAFLT) as CENAS1_DPHB ,
        cast(false as BOOLBIT) as "~CENAS1_DPHB",
        cast(0 as CENAFLT) as CENAB2_DPHB,
        cast(false as BOOLBIT) as "~CENAB2_DPHB",
        cast(0 as CENAFLT) as DPHA2_DPHB,
        cast(false as BOOLBIT) as "~DPHA2_DPHB",
        cast(0 as CENAFLT) as DPHB2_DPHB,
        cast(false as BOOLBIT) as "~DPHB2_DPHB",
        cast(0 as CENAFLT) as CENAS2_DPHB,
        cast(false as BOOLBIT) as "~CENAS2_DPHB",
        cast(0 as CISLOINT) as BONUS,
        cast(false as BOOLBIT) as "~BONUS",
        (case when l_BONUS > 0 then 1 else -1 end) as "#BONUS",
        cast(true as BOOLBIT) as "~#BONUS",
        -1 as "@TABPOLPORCEDATA",
        cast(true as BOOLBIT) as "~@TABPOLPORCEDATA",
        1 as "@TABOSTATNIUDAJE",
        cast(true as BOOLBIT) as "~@TABOSTATNIUDAJE",
        1 as "@TABPOSTUP",
        cast(true as BOOLBIT) as "~@TABPOSTUP",
        1 as "@TABVYPOCETCEN",
        cast(true as BOOLBIT) as "~@TABVYPOCETCEN",
        cast(cm_MIN(-1,l_TABPOPISYOBJLIC) as INTEGER) as "@TABPOPISYOBJ",
        cast(true as BOOLBIT) as "~@TABPOPISYOBJ",
        (case when l_POVOLDOPLATKY then 1 else -1 end) as "@TABDOPLATKY",
        cast(true as BOOLBIT) as "~@TABDOPLATKY",
        cast('' as NAZEVSTR) as OBALRECNAZEV,
        cast(false as BOOLBIT) as "~OBALRECNAZEV",
        1 as "#OBALRECNAZEV",
        cast(true as BOOLBIT) as "~#OBALRECNAZEV",
        cast(0 as MNOZSTVIFLT) as PORCI,
        cast(false as BOOLBIT) as "~PORCI",
        1 as "#PORCI",
        cast(true as BOOLBIT) as "~#PORCI",
        cast('' as GRAMAZTXT) as GRAMAZ,
        cast(false as BOOLBIT) as "~GRAMAZ",
        1 as "#GRAMAZ",
        cast(true as BOOLBIT) as "~#GRAMAZ",
        cast('' as NAZEVSTR ) as CHOD,
        cast(false as BOOLBIT) as "~CHOD",
        1 as "#CHOD",
        cast(true as BOOLBIT) as "~#CHOD",
        cast('' as NAZEVSTR) as DRUHJIDLA,
        cast(false as BOOLBIT) as "~DRUHJIDLA",
        1 as "#DRUHJIDLA",
        cast(true as BOOLBIT) as "~#DRUHJIDLA",
        cast('' as NAZEVSTR) as SKUPREC1,
        cast(false as BOOLBIT) as "~SKUPREC1",
        cast('' as NAZEVSTR) as SKUPREC2,
        cast(false as BOOLBIT) as "~SKUPREC2",
        cast('' as NAZEVSTR) as SKUPREC3,
        cast(false as BOOLBIT) as "~SKUPREC3",
        cast('' as NAZEVSTR) as SKUPREC4,
        cast(false as BOOLBIT) as "~SKUPREC4",
        cast(0 as CISLOINT) as CISLOL,
        cast(false as BOOLBIT) as "~CISLOL",
        cast(0 as CISLOINT) as CISLOH,
        cast(false as BOOLBIT) as "~CISLOH",
        cast('' as POSTUPTXT) as POSTUP,
        cast(false as BOOLBIT) as "~POSTUP",
        cast(0 as TYPINT) as VCTYP,
        cast(false as BOOLBIT) as "~VCTYP",
        cast(0 as CISLOINT) as VCZAOKRC,
        cast(false as BOOLBIT) as "~VCZAOKRC",
        cast(0 as CISLOINT) as VCZAOKRD,
        cast(false as BOOLBIT) as "~VCZAOKRD";
    when 'MODIFIKATORCENOVY' then
      return query select
        cast(0 as CENAFLT) as CENAB,
        cast(false as BOOLBIT) as "~CENAB",
        1 as "#CENAB",
        cast(true as BOOLBIT) as "~#CENAB",
        cast(0 as CENAFLT) as CENAS,
        cast(false as BOOLBIT) as "~CENAS",
        1 as "#CENAS",
        cast(true as BOOLBIT) as "~#CENAS",
        cast(0 as CENAFLT) as DPHA,
        cast(false as BOOLBIT) as "~DPHA",
        1 as "#DPHA",
        cast(true as BOOLBIT) as "~#DPHA",
        cast(0 as CENAFLT) as CENAB_DPHB,
        cast(false as BOOLBIT) as "~CENAB_DPHB",
        1 as "#CENAB_DPHB",
        cast(true as BOOLBIT) as "~#CENAB_DPHB",
        cast(0 as CENAFLT) as DPHA_DPHB,
        cast(false as BOOLBIT) as "~DPHA_DPHB",
        1 as "#DPHA_DPHB",
        cast(true as BOOLBIT) as "~#DPHA_DPHB",
        cast(0 as CENAFLT) as DPHB_DPHB,
        cast(false as BOOLBIT) as "~DPHB_DPHB",
        1 as "#DPHB_DPHB",
        cast(true as BOOLBIT) as "~#DPHB_DPHB",
        cast(0 as CENAFLT) as CENAS_DPHB,
        cast(false as BOOLBIT) as "~CENAS_DPHB",
        1 as "#CENAS_DPHB",
        cast(true as BOOLBIT) as "~#CENAS_DPHB",
        (case when l_DOTACE > 0 then 1 else -1 end) as "@DOTACE",
        cast(true as BOOLBIT) as "~@DOTACE",
        1 as "@ReceptRecalcHandler",
        cast(true as BOOLBIT) as "~@ReceptRecalcHandler",
        1 as "@ReceptRecalcHandlerDphB",
        cast(true as BOOLBIT) as "~@ReceptRecalcHandlerDphB",
        1 as "@CENY",
        cast(true as BOOLBIT) as "~@CENY",
        cast(false as BOOLBIT) as VZDYCENA,
        cast(true as BOOLBIT) as "~VZDYCENA",
        0 as "#VZDYCENA",
        cast(true as BOOLBIT) as "~#VZDYCENA",
        cast(0 as CENAFLT) as CENAB1,
        cast(false as BOOLBIT) as "~CENAB1",
        cast(0 as CENAFLT) as DPHA1,
        cast(false as BOOLBIT) as "~DPHA1",
        cast(0 as CENAFLT) as CENAS1,
        cast(false as BOOLBIT) as "~CENAS1",
        cast(0 as CENAFLT) as CENAB2,
        cast(false as BOOLBIT) as "~CENAB2",
        cast(0 as CENAFLT) as DPHA2,
        cast(false as BOOLBIT) as "~DPHA2",
        cast(0 as CENAFLT) as CENAS2,
        cast(false as BOOLBIT) as "~CENAS2",
        cast(0 as CENAFLT) as CENAB1_DPHB,
        cast(false as BOOLBIT) as "~CENAB1_DPHB",
        cast(0 as CENAFLT) as DPHA1_DPHB,
        cast(false as BOOLBIT) as "~DPHA1_DPHB",
        cast(0 as CENAFLT) as DPHB1_DPHB,
        cast(false as BOOLBIT) as "~DPHB1_DPHB",
        cast(0 as CENAFLT) as CENAS1_DPHB ,
        cast(false as BOOLBIT) as "~CENAS1_DPHB",
        cast(0 as CENAFLT) as CENAB2_DPHB,
        cast(false as BOOLBIT) as "~CENAB2_DPHB",
        cast(0 as CENAFLT) as DPHA2_DPHB,
        cast(false as BOOLBIT) as "~DPHA2_DPHB",
        cast(0 as CENAFLT) as DPHB2_DPHB,
        cast(false as BOOLBIT) as "~DPHB2_DPHB",
        cast(0 as CENAFLT) as CENAS2_DPHB,
        cast(false as BOOLBIT) as "~CENAS2_DPHB",
        cast(0 as CISLOINT) as BONUS,
        cast(false as BOOLBIT) as "~BONUS",
        (case when l_BONUS > 0 then 1 else -1 end) as "#BONUS",
        cast(true as BOOLBIT) as "~#BONUS",
        -1 as "@TABPOLPORCEDATA",
        cast(true as BOOLBIT) as "~@TABPOLPORCEDATA",
        1 as "@TABOSTATNIUDAJE",
        cast(true as BOOLBIT) as "~@TABOSTATNIUDAJE",
        1 as "@TABPOSTUP",
        cast(true as BOOLBIT) as "~@TABPOSTUP",
        1 as "@TABVYPOCETCEN",
        cast(true as BOOLBIT) as "~@TABVYPOCETCEN",
        cast(cm_MIN(1,l_TABPOPISYOBJLIC) as INTEGER) as "@TABPOPISYOBJ",
        cast(true as BOOLBIT) as "~@TABPOPISYOBJ",
        -1 as "@TABDOPLATKY",
        cast(true as BOOLBIT) as "~@TABDOPLATKY",
        cast('' as NAZEVSTR) as OBALRECNAZEV,
        cast(true as BOOLBIT) as "~OBALRECNAZEV",
        0 as "#OBALRECNAZEV",
        cast(true as BOOLBIT) as "~#OBALRECNAZEV",
        cast(1 as MNOZSTVIFLT) as PORCI,
        cast(true as BOOLBIT) as "~PORCI",
        0 as "#PORCI",
        cast(true as BOOLBIT) as "~#PORCI",
        cast('' as GRAMAZTXT) as GRAMAZ,
        cast(true as BOOLBIT) as "~GRAMAZ",
        0 as "#GRAMAZ",
        cast(true as BOOLBIT) as "~#GRAMAZ",
        cast('' as NAZEVSTR ) as CHOD,
        cast(true as BOOLBIT) as "~CHOD",
        0 as "#CHOD",
        cast(true as BOOLBIT) as "~#CHOD",
        cast('' as NAZEVSTR) as DRUHJIDLA,
        cast(false as BOOLBIT) as "~DRUHJIDLA",
        1 as "#DRUHJIDLA",
        cast(true as BOOLBIT) as "~#DRUHJIDLA",
        cast('' as NAZEVSTR) as SKUPREC1,
        cast(false as BOOLBIT) as "~SKUPREC1",
        cast('' as NAZEVSTR) as SKUPREC2,
        cast(false as BOOLBIT) as "~SKUPREC2",
        cast('' as NAZEVSTR) as SKUPREC3,
        cast(false as BOOLBIT) as "~SKUPREC3",
        cast('' as NAZEVSTR) as SKUPREC4,
        cast(false as BOOLBIT) as "~SKUPREC4",
        cast(0 as CISLOINT) as CISLOL,
        cast(false as BOOLBIT) as "~CISLOL",
        cast(0 as CISLOINT) as CISLOH,
        cast(false as BOOLBIT) as "~CISLOH",
        cast('' as POSTUPTXT) as POSTUP,
        cast(false as BOOLBIT) as "~POSTUP",
        cast(0 as TYPINT) as VCTYP,
        cast(false as BOOLBIT) as "~VCTYP",
        cast(0 as CISLOINT) as VCZAOKRC,
        cast(false as BOOLBIT) as "~VCZAOKRC",
        cast(0 as CISLOINT) as VCZAOKRD,
        cast(false as BOOLBIT) as "~VCZAOKRD";
    when 'MODIFIKATORSKLADOVY' then
      return query select
        cast(0 as CENAFLT) as CENAB,
        cast(false as BOOLBIT) as "~CENAB",
        -1 as "#CENAB",
        cast(false as BOOLBIT) as "~#CENAB",
        cast(0 as CENAFLT) as CENAS,
        cast(false as BOOLBIT) as "~CENAS",
        -1 as "#CENAS",
        cast(false as BOOLBIT) as "~#CENAS",
        cast(0 as CENAFLT) as DPHA,
        cast(false as BOOLBIT) as "~DPHA",
        -1 as "#DPHA",
        cast(false as BOOLBIT) as "~#DPHA",
        cast(0 as CENAFLT) as CENAB_DPHB,
        cast(false as BOOLBIT) as "~CENAB_DPHB",
        -1 as "#CENAB_DPHB",
        cast(false as BOOLBIT) as "~#CENAB_DPHB",
        cast(0 as CENAFLT) as DPHA_DPHB,
        cast(false as BOOLBIT) as "~DPHA_DPHB",
        -1 as "#DPHA_DPHB",
        cast(false as BOOLBIT) as "~#DPHA_DPHB",
        cast(0 as CENAFLT) as DPHB_DPHB,
        cast(false as BOOLBIT) as "~DPHB_DPHB",
        0 as "#DPHB_DPHB",
        cast(false as BOOLBIT) as "~#DPHB_DPHB",
        cast(0 as CENAFLT) as CENAS_DPHB,
        cast(false as BOOLBIT) as "~CENAS_DPHB",
        -1 as "#CENAS_DPHB",
        cast(false as BOOLBIT) as "~#CENAS_DPHB",
        -1 as "@DOTACE",
        cast(true as BOOLBIT) as "~@DOTACE",
        -1 as "@ReceptRecalcHandler",
        cast(false as BOOLBIT) as "~@ReceptRecalcHandler",
        -1 as "@ReceptRecalcHandlerDphB",
        cast(false as BOOLBIT) as "~@ReceptRecalcHandlerDphB",
        -1 as "@CENY",
        cast(true as BOOLBIT) as "~@CENY",
        cast(false as BOOLBIT) as VZDYCENA,
        cast(true as BOOLBIT) as "~VZDYCENA",
        0 as "#VZDYCENA",
        cast(true as BOOLBIT) as "~#VZDYCENA",
        cast(0 as CENAFLT) as CENAB1,
        cast(true as BOOLBIT) as "~CENAB1",
        cast(0 as CENAFLT) as DPHA1,
        cast(true as BOOLBIT) as "~DPHA1",
        cast(0 as CENAFLT) as CENAS1,
        cast(true as BOOLBIT) as "~CENAS1",
        cast(0 as CENAFLT) as CENAB2,
        cast(true as BOOLBIT) as "~CENAB2",
        cast(0 as CENAFLT) as DPHA2,
        cast(true as BOOLBIT) as "~DPHA2",
        cast(0 as CENAFLT) as CENAS2,
        cast(true as BOOLBIT) as "~CENAS2",
        cast(0 as CENAFLT) as CENAB1_DPHB,
        cast(true as BOOLBIT) as "~CENAB1_DPHB",
        cast(0 as CENAFLT) as DPHA1_DPHB,
        cast(true as BOOLBIT) as "~DPHA1_DPHB",
        cast(0 as CENAFLT) as DPHB1_DPHB,
        cast(true as BOOLBIT) as "~DPHB1_DPHB",
        cast(0 as CENAFLT) as CENAS1_DPHB ,
        cast(true as BOOLBIT) as "~CENAS1_DPHB",
        cast(0 as CENAFLT) as CENAB2_DPHB,
        cast(true as BOOLBIT) as "~CENAB2_DPHB",
        cast(0 as CENAFLT) as DPHA2_DPHB,
        cast(true as BOOLBIT) as "~DPHA2_DPHB",
        cast(0 as CENAFLT) as DPHB2_DPHB,
        cast(true as BOOLBIT) as "~DPHB2_DPHB",
        cast(0 as CENAFLT) as CENAS2_DPHB,
        cast(true as BOOLBIT) as "~CENAS2_DPHB",
        cast(0 as CISLOINT) as BONUS,
        cast(false as BOOLBIT) as "~BONUS",
        (case when l_BONUS > 0 then 1 else -1 end) as "#BONUS",
        cast(true as BOOLBIT) as "~#BONUS",
        -1 as "@TABPOLPORCEDATA",
        cast(true as BOOLBIT) as "~@TABPOLPORCEDATA",
        1 as "@TABOSTATNIUDAJE",
        cast(true as BOOLBIT) as "~@TABOSTATNIUDAJE",
        1 as "@TABPOSTUP",
        cast(true as BOOLBIT) as "~@TABPOSTUP",
        -1 as "@TABVYPOCETCEN",
        cast(true as BOOLBIT) as "~@TABVYPOCETCEN",
        cast(cm_MIN(1,l_TABPOPISYOBJLIC) as INTEGER) as "@TABPOPISYOBJ",
        cast(true as BOOLBIT) as "~@TABPOPISYOBJ",
        -1 as "@TABDOPLATKY",
        cast(true as BOOLBIT) as "~@TABDOPLATKY",
        cast('' as NAZEVSTR) as OBALRECNAZEV,
        cast(true as BOOLBIT) as "~OBALRECNAZEV",
        0 as "#OBALRECNAZEV",
        cast(true as BOOLBIT) as "~#OBALRECNAZEV",
        cast(1 as MNOZSTVIFLT) as PORCI,
        cast(true as BOOLBIT) as "~PORCI",
        0 as "#PORCI",
        cast(true as BOOLBIT) as "~#PORCI",
        cast('' as GRAMAZTXT) as GRAMAZ,
        cast(true as BOOLBIT) as "~GRAMAZ",
        0 as "#GRAMAZ",
        cast(true as BOOLBIT) as "~#GRAMAZ",
        cast('' as NAZEVSTR ) as CHOD,
        cast(true as BOOLBIT) as "~CHOD",
        0 as "#CHOD",
        cast(true as BOOLBIT) as "~#CHOD",
        cast('' as NAZEVSTR) as DRUHJIDLA,
        cast(false as BOOLBIT) as "~DRUHJIDLA",
        1 as "#DRUHJIDLA",
        cast(true as BOOLBIT) as "~#DRUHJIDLA",
        cast('' as NAZEVSTR) as SKUPREC1,
        cast(false as BOOLBIT) as "~SKUPREC1",
        cast('' as NAZEVSTR) as SKUPREC2,
        cast(false as BOOLBIT) as "~SKUPREC2",
        cast('' as NAZEVSTR) as SKUPREC3,
        cast(false as BOOLBIT) as "~SKUPREC3",
        cast('' as NAZEVSTR) as SKUPREC4,
        cast(false as BOOLBIT) as "~SKUPREC4",
        cast(0 as CISLOINT) as CISLOL,
        cast(false as BOOLBIT) as "~CISLOL",
        cast(0 as CISLOINT) as CISLOH,
        cast(false as BOOLBIT) as "~CISLOH",
        cast('' as POSTUPTXT) as POSTUP,
        cast(false as BOOLBIT) as "~POSTUP",
        cast(0 as TYPINT) as VCTYP,
        cast(false as BOOLBIT) as "~VCTYP",
        cast(0 as CISLOINT) as VCZAOKRC,
        cast(false as BOOLBIT) as "~VCZAOKRC",
        cast(0 as CISLOINT) as VCZAOKRD,
        cast(false as BOOLBIT) as "~VCZAOKRD";
    when 'MODIFIKATORVYROBNI' then
      return query select
        cast(0 as CENAFLT) as CENAB,
        cast(false as BOOLBIT) as "~CENAB",
        -1 as "#CENAB",
        cast(false as BOOLBIT) as "~#CENAB",
        cast(0 as CENAFLT) as CENAS,
        cast(false as BOOLBIT) as "~CENAS",
        -1 as "#CENAS",
        cast(false as BOOLBIT) as "~#CENAS",
        cast(0 as CENAFLT) as DPHA,
        cast(false as BOOLBIT) as "~DPHA",
        -1 as "#DPHA",
        cast(false as BOOLBIT) as "~#DPHA",
        cast(0 as CENAFLT) as CENAB_DPHB,
        cast(false as BOOLBIT) as "~CENAB_DPHB",
        -1 as "#CENAB_DPHB",
        cast(false as BOOLBIT) as "~#CENAB_DPHB",
        cast(0 as CENAFLT) as DPHA_DPHB,
        cast(false as BOOLBIT) as "~DPHA_DPHB",
        -1 as "#DPHA_DPHB",
        cast(false as BOOLBIT) as "~#DPHA_DPHB",
        cast(0 as CENAFLT) as DPHB_DPHB,
        cast(false as BOOLBIT) as "~DPHB_DPHB",
        -1 as "#DPHB_DPHB",
        cast(false as BOOLBIT) as "~#DPHB_DPHB",
        cast(0 as CENAFLT) as CENAS_DPHB,
        cast(false as BOOLBIT) as "~CENAS_DPHB",
        -1 as "#CENAS_DPHB",
        cast(false as BOOLBIT) as "~#CENAS_DPHB",
        -1 as "@DOTACE",
        cast(true as BOOLBIT) as "~@DOTACE",
        -1 as "@ReceptRecalcHandler",
        cast(false as BOOLBIT) as "~@ReceptRecalcHandler",
        -1 as "@ReceptRecalcHandlerDphB",
        cast(false as BOOLBIT) as "~@ReceptRecalcHandlerDphB",
        -1 as "@CENY",
        cast(true as BOOLBIT) as "~@CENY",
        cast(false as BOOLBIT) as VZDYCENA,
        cast(true as BOOLBIT) as "~VZDYCENA",
        0 as "#VZDYCENA",
        cast(true as BOOLBIT) as "~#VZDYCENA",
        cast(0 as CENAFLT) as CENAB1,
        cast(true as BOOLBIT) as "~CENAB1",
        cast(0 as CENAFLT) as DPHA1,
        cast(true as BOOLBIT) as "~DPHA1",
        cast(0 as CENAFLT) as CENAS1,
        cast(true as BOOLBIT) as "~CENAS1",
        cast(0 as CENAFLT) as CENAB2,
        cast(true as BOOLBIT) as "~CENAB2",
        cast(0 as CENAFLT) as DPHA2,
        cast(true as BOOLBIT) as "~DPHA2",
        cast(0 as CENAFLT) as CENAS2,
        cast(true as BOOLBIT) as "~CENAS2",
        cast(0 as CENAFLT) as CENAB1_DPHB,
        cast(true as BOOLBIT) as "~CENAB1_DPHB",
        cast(0 as CENAFLT) as DPHA1_DPHB,
        cast(true as BOOLBIT) as "~DPHA1_DPHB",
        cast(0 as CENAFLT) as DPHB1_DPHB,
        cast(true as BOOLBIT) as "~DPHB1_DPHB",
        cast(0 as CENAFLT) as CENAS1_DPHB ,
        cast(true as BOOLBIT) as "~CENAS1_DPHB",
        cast(0 as CENAFLT) as CENAB2_DPHB,
        cast(true as BOOLBIT) as "~CENAB2_DPHB",
        cast(0 as CENAFLT) as DPHA2_DPHB,
        cast(true as BOOLBIT) as "~DPHA2_DPHB",
        cast(0 as CENAFLT) as DPHB2_DPHB,
        cast(true as BOOLBIT) as "~DPHB2_DPHB",
        cast(0 as CENAFLT) as CENAS2_DPHB,
        cast(true as BOOLBIT) as "~CENAS2_DPHB",
        cast(0 as CISLOINT) as BONUS,
        cast(false as BOOLBIT) as "~BONUS",
        (case when l_BONUS > 0 then 1 else -1 end) as "#BONUS",
        cast(true as BOOLBIT) as "~#BONUS",
        -1 as "@TABPOLPORCEDATA",
        cast(true as BOOLBIT) as "~@TABPOLPORCEDATA",
        1 as "@TABOSTATNIUDAJE",
        cast(true as BOOLBIT) as "~@TABOSTATNIUDAJE",
        1 as "@TABPOSTUP",
        cast(true as BOOLBIT) as "~@TABPOSTUP",
        -1 as "@TABVYPOCETCEN",
        cast(true as BOOLBIT) as "~@TABVYPOCETCEN",
        cast(cm_MIN(1,l_TABPOPISYOBJLIC) as INTEGER) as "@TABPOPISYOBJ",
        cast(true as BOOLBIT) as "~@TABPOPISYOBJ",
        -1 as "@TABDOPLATKY",
        cast(true as BOOLBIT) as "~@TABDOPLATKY",
        cast('' as NAZEVSTR) as OBALRECNAZEV,
        cast(true as BOOLBIT) as "~OBALRECNAZEV",
        0 as "#OBALRECNAZEV",
        cast(true as BOOLBIT) as "~#OBALRECNAZEV",
        cast(1 as MNOZSTVIFLT) as PORCI,
        cast(true as BOOLBIT) as "~PORCI",
        0 as "#PORCI",
        cast(true as BOOLBIT) as "~#PORCI",
        cast('' as GRAMAZTXT) as GRAMAZ,
        cast(true as BOOLBIT) as "~GRAMAZ",
        0 as "#GRAMAZ",
        cast(true as BOOLBIT) as "~#GRAMAZ",
        cast('' as NAZEVSTR ) as CHOD,
        cast(true as BOOLBIT) as "~CHOD",
        0 as "#CHOD",
        cast(true as BOOLBIT) as "~#CHOD",
        cast('' as NAZEVSTR) as DRUHJIDLA,
        cast(false as BOOLBIT) as "~DRUHJIDLA",
        1 as "#DRUHJIDLA",
        cast(true as BOOLBIT) as "~#DRUHJIDLA",
        cast('' as NAZEVSTR) as SKUPREC1,
        cast(false as BOOLBIT) as "~SKUPREC1",
        cast('' as NAZEVSTR) as SKUPREC2,
        cast(false as BOOLBIT) as "~SKUPREC2",
        cast('' as NAZEVSTR) as SKUPREC3,
        cast(false as BOOLBIT) as "~SKUPREC3",
        cast('' as NAZEVSTR) as SKUPREC4,
        cast(false as BOOLBIT) as "~SKUPREC4",
        cast(0 as CISLOINT) as CISLOL,
        cast(false as BOOLBIT) as "~CISLOL",
        cast(0 as CISLOINT) as CISLOH,
        cast(false as BOOLBIT) as "~CISLOH",
        cast('' as POSTUPTXT) as POSTUP,
        cast(false as BOOLBIT) as "~POSTUP",
        cast(0 as TYPINT) as VCTYP,
        cast(false as BOOLBIT) as "~VCTYP",
        cast(0 as CISLOINT) as VCZAOKRC,
        cast(false as BOOLBIT) as "~VCZAOKRC",
        cast(0 as CISLOINT) as VCZAOKRD,
        cast(false as BOOLBIT) as "~VCZAOKRD";
    when 'ALERGENDOUCTU' then
      return query select
        cast(0 as CENAFLT) as CENAB,
        cast(false as BOOLBIT) as "~CENAB",
        -1 as "#CENAB",
        cast(false as BOOLBIT) as "~#CENAB",
        cast(0 as CENAFLT) as CENAS,
        cast(false as BOOLBIT) as "~CENAS",
        -1 as "#CENAS",
        cast(false as BOOLBIT) as "~#CENAS",
        cast(0 as CENAFLT) as DPHA,
        cast(false as BOOLBIT) as "~DPHA",
        -1 as "#DPHA",
        cast(false as BOOLBIT) as "~#DPHA",
        cast(0 as CENAFLT) as CENAB_DPHB,
        cast(false as BOOLBIT) as "~CENAB_DPHB",
        -1 as "#CENAB_DPHB",
        cast(false as BOOLBIT) as "~#CENAB_DPHB",
        cast(0 as CENAFLT) as DPHA_DPHB,
        cast(false as BOOLBIT) as "~DPHA_DPHB",
        -1 as "#DPHA_DPHB",
        cast(false as BOOLBIT) as "~#DPHA_DPHB",
        cast(0 as CENAFLT) as DPHB_DPHB,
        cast(false as BOOLBIT) as "~DPHB_DPHB",
        -1 as "#DPHB_DPHB",
        cast(false as BOOLBIT) as "~#DPHB_DPHB",
        cast(0 as CENAFLT) as CENAS_DPHB,
        cast(false as BOOLBIT) as "~CENAS_DPHB",
        -1 as "#CENAS_DPHB",
        cast(false as BOOLBIT) as "~#CENAS_DPHB",
        -1 as "@DOTACE",
        cast(true as BOOLBIT) as "~@DOTACE",
        -1 as "@ReceptRecalcHandler",
        cast(false as BOOLBIT) as "~@ReceptRecalcHandler",
        -1 as "@ReceptRecalcHandlerDphB",
        cast(false as BOOLBIT) as "~@ReceptRecalcHandlerDphB",
        -1 as "@CENY",
        cast(true as BOOLBIT) as "~@CENY",
        cast(false as BOOLBIT) as VZDYCENA,
        cast(true as BOOLBIT) as "~VZDYCENA",
        0 as "#VZDYCENA",
        cast(true as BOOLBIT) as "~#VZDYCENA",
        cast(0 as CENAFLT) as CENAB1,
        cast(true as BOOLBIT) as "~CENAB1",
        cast(0 as CENAFLT) as DPHA1,
        cast(true as BOOLBIT) as "~DPHA1",
        cast(0 as CENAFLT) as CENAS1,
        cast(true as BOOLBIT) as "~CENAS1",
        cast(0 as CENAFLT) as CENAB2,
        cast(true as BOOLBIT) as "~CENAB2",
        cast(0 as CENAFLT) as DPHA2,
        cast(true as BOOLBIT) as "~DPHA2",
        cast(0 as CENAFLT) as CENAS2,
        cast(true as BOOLBIT) as "~CENAS2",
        cast(0 as CENAFLT) as CENAB1_DPHB,
        cast(true as BOOLBIT) as "~CENAB1_DPHB",
        cast(0 as CENAFLT) as DPHA1_DPHB,
        cast(true as BOOLBIT) as "~DPHA1_DPHB",
        cast(0 as CENAFLT) as DPHB1_DPHB,
        cast(true as BOOLBIT) as "~DPHB1_DPHB",
        cast(0 as CENAFLT) as CENAS1_DPHB ,
        cast(true as BOOLBIT) as "~CENAS1_DPHB",
        cast(0 as CENAFLT) as CENAB2_DPHB,
        cast(true as BOOLBIT) as "~CENAB2_DPHB",
        cast(0 as CENAFLT) as DPHA2_DPHB,
        cast(true as BOOLBIT) as "~DPHA2_DPHB",
        cast(0 as CENAFLT) as DPHB2_DPHB,
        cast(true as BOOLBIT) as "~DPHB2_DPHB",
        cast(0 as CENAFLT) as CENAS2_DPHB,
        cast(true as BOOLBIT) as "~CENAS2_DPHB",
        cast(0 as CISLOINT) as BONUS,
        cast(true as BOOLBIT) as "~BONUS",
        0 as "#BONUS",
        cast(true as BOOLBIT) as "~#BONUS",
        -1 as "@TABPOLPORCEDATA",
        cast(true as BOOLBIT) as "~@TABPOLPORCEDATA",
        1 as "@TABOSTATNIUDAJE",
        cast(true as BOOLBIT) as "~@TABOSTATNIUDAJE",
        -1 as "@TABPOSTUP",
        cast(true as BOOLBIT) as "~@TABPOSTUP",
        -1 as "@TABVYPOCETCEN",
        cast(true as BOOLBIT) as "~@TABVYPOCETCEN",
        cast(cm_MIN(-1,l_TABPOPISYOBJLIC) as INTEGER) as "@TABPOPISYOBJ",
        cast(true as BOOLBIT) as "~@TABPOPISYOBJ",
        -1 as "@TABDOPLATKY",
        cast(true as BOOLBIT) as "~@TABDOPLATKY",
        cast('' as NAZEVSTR) as OBALRECNAZEV,
        cast(true as BOOLBIT) as "~OBALRECNAZEV",
        0 as "#OBALRECNAZEV",
        cast(true as BOOLBIT) as "~#OBALRECNAZEV",
        cast(1 as MNOZSTVIFLT) as PORCI,
        cast(true as BOOLBIT) as "~PORCI",
        0 as "#PORCI",
        cast(true as BOOLBIT) as "~#PORCI",
        cast('' as GRAMAZTXT) as GRAMAZ,
        cast(true as BOOLBIT) as "~GRAMAZ",
        0 as "#GRAMAZ",
        cast(true as BOOLBIT) as "~#GRAMAZ",
        cast('' as NAZEVSTR ) as CHOD,
        cast(false as BOOLBIT) as "~CHOD",
        1 as "#CHOD",
        cast(true as BOOLBIT) as "~#CHOD",
        cast(DRUHJIDLA_GetZakladniNazev() as NAZEVSTR) as DRUHJIDLA,
        cast(true as BOOLBIT) as "~DRUHJIDLA",
        0 as "#DRUHJIDLA",
        cast(true as BOOLBIT) as "~#DRUHJIDLA",
        cast('' as NAZEVSTR) as SKUPREC1,
        cast(false as BOOLBIT) as "~SKUPREC1",
        cast('' as NAZEVSTR) as SKUPREC2,
        cast(false as BOOLBIT) as "~SKUPREC2",
        cast('' as NAZEVSTR) as SKUPREC3,
        cast(false as BOOLBIT) as "~SKUPREC3",
        cast('' as NAZEVSTR) as SKUPREC4,
        cast(false as BOOLBIT) as "~SKUPREC4",
        cast(0 as CISLOINT) as CISLOL,
        cast(false as BOOLBIT) as "~CISLOL",
        cast(0 as CISLOINT) as CISLOH,
        cast(false as BOOLBIT) as "~CISLOH",
        cast('' as POSTUPTXT) as POSTUP,
        cast(false as BOOLBIT) as "~POSTUP",
        cast(0 as TYPINT) as VCTYP,
        cast(false as BOOLBIT) as "~VCTYP",
        cast(0 as CISLOINT) as VCZAOKRC,
        cast(false as BOOLBIT) as "~VCZAOKRC",
        cast(0 as CISLOINT) as VCZAOKRD,
        cast(false as BOOLBIT) as "~VCZAOKRD";
    else --standardni
      return query select
        cast(0 as CENAFLT) as CENAB,
        cast(false as BOOLBIT) as "~CENAB",
        1 as "#CENAB",
        cast(true as BOOLBIT) as "~#CENAB",
        cast(0 as CENAFLT) as CENAS,
        cast(false as BOOLBIT) as "~CENAS",
        1 as "#CENAS",
        cast(true as BOOLBIT) as "~#CENAS",
        cast(0 as CENAFLT) as DPHA,
        cast(false as BOOLBIT) as "~DPHA",
        1 as "#DPHA",
        cast(true as BOOLBIT) as "~#DPHA",
        cast(0 as CENAFLT) as CENAB_DPHB,
        cast(false as BOOLBIT) as "~CENAB_DPHB",
        1 as "#CENAB_DPHB",
        cast(true as BOOLBIT) as "~#CENAB_DPHB",
        cast(0 as CENAFLT) as DPHA_DPHB,
        cast(false as BOOLBIT) as "~DPHA_DPHB",
        1 as "#DPHA_DPHB",
        cast(true as BOOLBIT) as "~#DPHA_DPHB",
        cast(0 as CENAFLT) as DPHB_DPHB,
        cast(false as BOOLBIT) as "~DPHB_DPHB",
        1 as "#DPHB_DPHB",
        cast(true as BOOLBIT) as "~#DPHB_DPHB",
        cast(0 as CENAFLT) as CENAS_DPHB,
        cast(false as BOOLBIT) as "~CENAS_DPHB",
        1 as "#CENAS_DPHB",
        cast(true as BOOLBIT) as "~#CENAS_DPHB",
        (case when l_DOTACE > 0 then 1 else -1 end) as "@DOTACE",
        cast(true as BOOLBIT) as "~@DOTACE",
        1 as "@ReceptRecalcHandler",
        cast(true as BOOLBIT) as "~@ReceptRecalcHandler",
        1 as "@ReceptRecalcHandlerDphB",
        cast(true as BOOLBIT) as "~@ReceptRecalcHandlerDphB",
        1 as "@CENY",
        cast(true as BOOLBIT) as "~@CENY",
        cast(false as BOOLBIT) as VZDYCENA,
        cast(true as BOOLBIT) as "~VZDYCENA",
        (case when l_VZDYCENA > 0 then 1 else 0 end) as "#VZDYCENA",
        cast(true as BOOLBIT) as "~#VZDYCENA",
        cast(0 as CENAFLT) as CENAB1,
        cast(false as BOOLBIT) as "~CENAB1",
        cast(0 as CENAFLT) as DPHA1,
        cast(false as BOOLBIT) as "~DPHA1",
        cast(0 as CENAFLT) as CENAS1,
        cast(false as BOOLBIT) as "~CENAS1",
        cast(0 as CENAFLT) as CENAB2,
        cast(false as BOOLBIT) as "~CENAB2",
        cast(0 as CENAFLT) as DPHA2,
        cast(false as BOOLBIT) as "~DPHA2",
        cast(0 as CENAFLT) as CENAS2,
        cast(false as BOOLBIT) as "~CENAS2",
        cast(0 as CENAFLT) as CENAB1_DPHB,
        cast(false as BOOLBIT) as "~CENAB1_DPHB",
        cast(0 as CENAFLT) as DPHA1_DPHB,
        cast(false as BOOLBIT) as "~DPHA1_DPHB",
        cast(0 as CENAFLT) as DPHB1_DPHB,
        cast(false as BOOLBIT) as "~DPHB1_DPHB",
        cast(0 as CENAFLT) as CENAS1_DPHB,
        cast(false as BOOLBIT) as "~CENAS1_DPHB",
        cast(0 as CENAFLT) as CENAB2_DPHB,
        cast(false as BOOLBIT) as "~CENAB2_DPHB",
        cast(0 as CENAFLT) as DPHA2_DPHB,
        cast(false as BOOLBIT) as "~DPHA2_DPHB",
        cast(0 as CENAFLT) as DPHB2_DPHB,
        cast(false as BOOLBIT) as "~DPHB2_DPHB",
        cast(0 as CENAFLT) as CENAS2_DPHB,
        cast(false as BOOLBIT) as "~CENAS2_DPHB",
        cast(0 as CISLOINT) as BONUS,
        cast(false as BOOLBIT) as "~BONUS",
        (case when l_BONUS > 0 then 1 else -1 end) as "#BONUS",
        cast(true as BOOLBIT) as "~#BONUS",
        -1 as "@TABPOLPORCEDATA",
        cast(true as BOOLBIT) as "~@TABPOLPORCEDATA",
        1 as "@TABOSTATNIUDAJE",
        cast(true as BOOLBIT) as "~@TABOSTATNIUDAJE",
        1 as "@TABPOSTUP",
        cast(true as BOOLBIT) as "~@TABPOSTUP",
        1 as "@TABVYPOCETCEN",
        cast(true as BOOLBIT) as "~@TABVYPOCETCEN",
        cast(cm_MIN(1,l_TABPOPISYOBJLIC) as INTEGER) as "@TABPOPISYOBJ",
        cast(true as BOOLBIT) as "~@TABPOPISYOBJ"            ,
        (case when l_POVOLDOPLATKY and (l_RECEPTTYP = 'STANDARDNI') then 1 else -1 end) as "@TABDOPLATKY",
        cast(true as BOOLBIT) as "~@TABDOPLATKY",
        cast('' as NAZEVSTR) as OBALRECNAZEV,
        cast(false as BOOLBIT) as "~OBALRECNAZEV",
        1 as "#OBALRECNAZEV",
        cast(true as BOOLBIT) as "~#OBALRECNAZEV",
        cast(0 as MNOZSTVIFLT) as PORCI,
        cast(false as BOOLBIT) as "~PORCI",
        1 as "#PORCI",
        cast(true as BOOLBIT) as "~#PORCI",
        cast('' as GRAMAZTXT) as GRAMAZ,
        cast(false as BOOLBIT) as "~GRAMAZ",
        1 as "#GRAMAZ",
        cast(true as BOOLBIT) as "~#GRAMAZ",
        cast('' as NAZEVSTR ) as CHOD,
        cast(false as BOOLBIT) as "~CHOD",
        1 as "#CHOD",
        cast(true as BOOLBIT) as "~#CHOD",
        cast('' as NAZEVSTR) as DRUHJIDLA ,
        cast(false as BOOLBIT) as "~DRUHJIDLA",
        1 as "#DRUHJIDLA",
        cast(true as BOOLBIT) as "~#DRUHJIDLA",
        cast('' as NAZEVSTR) as SKUPREC1,
        cast(false as BOOLBIT) as "~SKUPREC1",
        cast('' as NAZEVSTR) as SKUPREC2,
        cast(false as BOOLBIT) as "~SKUPREC2",
        cast('' as NAZEVSTR) as SKUPREC3,
        cast(false as BOOLBIT) as "~SKUPREC3",
        cast('' as NAZEVSTR) as SKUPREC4,
        cast(false as BOOLBIT) as "~SKUPREC4",
        cast(0 as CISLOINT) as CISLOL,
        cast(false as BOOLBIT) as "~CISLOL",
        cast(0 as CISLOINT) as CISLOH,
        cast(false as BOOLBIT) as "~CISLOH",
        cast('' as POSTUPTXT) as POSTUP,
        cast(false as BOOLBIT) as "~POSTUP",
        cast(0 as TYPINT) as VCTYP,
        cast(false as BOOLBIT) as "~VCTYP",
        cast(0 as CISLOINT) as VCZAOKRC,
        cast(false as BOOLBIT) as "~VCZAOKRC",
        cast(0 as CISLOINT) as VCZAOKRD,
        cast(false as BOOLBIT) as "~VCZAOKRD";
  end case;
  return;
end; $$;

select grant_func('RECEPT_H_TypRec', 'SPEXEC');



select ASWDropProcedure('RECEPT_H_GetCeny');
/**
* Procedura, kterou využívají handlery ve skladových operacích
* pro výpočet cen CENA0S a CENA0P u konkrétní receptury.
*/
drop type if exists admin_septim.RECEPT_H_GetCeny_rs cascade;
create type admin_septim.RECEPT_H_GetCeny_rs as (
  CENA0S                   CENAFLT,
  CENA0P                   CENAFLT,
  DPH                      NAZEVSTR
);

create or replace function admin_septim.RECEPT_H_GetCeny(
  in a_RECEPT              NAZEVSTR,
  in a_SKLAD               NAZEVSTR,
  in a_MNOZSTVI            MNOZSTVIFLT,
  in a_PORCE               NAZEVSTR_NU,
  in a_ID                  INTEGER,
  in a_MASTERID            INTEGER,
  in a_COMMAND             E_HNDLParam,
  in a_FOCUSED             E_HNDLParam,
  in a_PARAMS              E_HNDLParam
) returns setof admin_septim.RECEPT_H_GetCeny_rs
language plpgsql security definer as $$
declare
  --- zjištění ID receptury
  l_ID                     REFIDINT;
  l_CENA0S                 CENAFLT;
  l_CENA0P                 CENAFLT;
  l_RCPTID                 REFIDINT;
  l_SKLDID                 REFIDINT;
  l_DPH                    NAZEVSTR;
  l_CENA0S_CELK            CENAFLT;
  l_CENA0P_CELK            CENAFLT;
  l_AKTRCPTID              REFIDINT;
  l_CENAKOEF               KOEFICIENTFLT;
  l_INGREDKOEF             KOEFICIENTFLT;
  l_PRCEID                 REFIDINT_NU;
  cr_rec                   RECORD;
begin
  select B_REFTABLE_EX.a_ID into l_RCPTID from admin_base.B_REFTABLE_EX('SEPTIMAPP','RECEPT','NAZEV','ZKRATKA',a_RECEPT,-1,'RECEPT');
  select B_REFTABLE_EX.a_ID into l_SKLDID from admin_base.B_REFTABLE_EX('SEPTIMAPP','SKLAD','NAZEV','ZKRATKA',a_SKLAD,-1,'SKLAD');
  select B_REFTABLE.a_ID into l_PRCEID from admin_base.B_REFTABLE('SEPTIMAPP','PORCE','NAZEV',a_PORCE,-1,'PORCE');
  if l_RCPTID is not null then
    select * into l_AKTRCPTID,l_CENAKOEF,l_INGREDKOEF from admin_septim.RECEPT_PolovicniPorceInfo(l_RCPTID);
    if RECEPT_CheckStornoTyp(l_RCPTID,-1) = true then
      a_MNOZSTVI := a_MNOZSTVI*-1;
    end if;
    --zistenie nazvu DPH
    l_DPH := RECEPT_GetDPHNazev(l_RCPTID);
    l_CENA0S_CELK := 0;
    l_CENA0P_CELK := 0;
    for cr_rec in select RI.SKPLID as cr_SKPLID,RI.MNOZSTVI as cr_MNOZSTVI from
    RECEPTINGREDFULL as RI where
    RI.RCPTID = l_AKTRCPTID and INGRED_ProSkladOperace(RI.TYP) = true and
       ((RI.PRCEID is null) or ((RI.PRCEID is not null) and (l_PRCEID is not null) and (RI.PRCEID = l_PRCEID)))
    loop
      l_CENA0S := 0;
      l_CENA0P := 0;
      --zistenie cien polozky
      l_ID := null;
      case a_PARAMS when 'BOURANI' then
        --when 'PRODEJ' then
        --nic, pouziva vlastnu proceduru
          select BRSPID,CENA0S,null into l_ID,l_CENA0S,l_CENA0P from BOURANISKPL where SMAZAN = 0 and BOURID = a_MASTERID and SKPLID = cr_rec.cr_SKPLID order by BRSPID desc;
        when 'SUBSTITUCE' then
        --when 'NORMOVANI' then
        --nic, pouziva vlastnu proceduru
          begin
            select SUSPID,CENA0S,null into strict l_ID,l_CENA0S,l_CENA0P from SUBSTITUCESKPL where SMAZAN = 0 and SUBRID is null and SUBSID = a_MASTERID and SKPLID = cr_rec.cr_SKPLID;
          exception
            when NO_DATA_FOUND then
          end;
        when 'ZAPUJCKA' then
            select ZAPSID,CENA0S,null into l_ID,l_CENA0S,l_CENA0P from ZAPUJCKASKPL where l_SKLDID is not null and SMAZAN = 0 and ZAPRID is null and ZAPUID = a_MASTERID and SKLDID = l_SKLDID and SKPLID = cr_rec.cr_SKPLID order by ZAPSID desc;
        when 'ZNEHODN' then
        --when 'PREBYTEK' then
        --nic, pouziva vlastnu proceduru
        --when 'PREVOD' then
        --nic, pouziva vlastnu proceduru
          begin
            select ZNSPID,CENA0S,CENA0P into strict l_ID,l_CENA0S,l_CENA0P from ZNEHODNSKPL where l_SKLDID is not null and SMAZAN = 0 and ZNRCID is null and ZNHDID = a_MASTERID and SKLDID = l_SKLDID and SKPLID = cr_rec.cr_SKPLID;
          exception
            when NO_DATA_FOUND then
          end;
        else
          null;-- ADDED EMPTY ELSE
      end case;
      if l_ID is null then
        select * into l_CENA0S,l_CENA0P from admin_septim.SKLADPOL_GetCeny(cr_rec.cr_SKPLID,l_SKLDID,1,l_CENA0S);
      end if;
      l_CENA0S_CELK := l_CENA0S_CELK+(a_MNOZSTVI*l_CENA0S*cr_rec.cr_MNOZSTVI*l_INGREDKOEF);
      l_CENA0P_CELK := l_CENA0P_CELK+(a_MNOZSTVI*l_CENA0P*cr_rec.cr_MNOZSTVI*l_INGREDKOEF);
    end loop;
  end if;
  return query select l_CENA0S_CELK as CENA0S,l_CENA0P_CELK as CENA0P,l_DPH as DPH;
end; $$;

select grant_func('RECEPT_H_GetCeny', 'SPEXEC');



select ASWDropProcedure ('RECEPT_H_TypVypoctuCeny');
drop type if exists admin_septim.RECEPT_H_TypVypoctuCeny_rs cascade;
create type admin_septim.RECEPT_H_TypVypoctuCeny_rs as (
  VCZAOKRC                 CISLOINT,
  "#VCZAOKRC"              CISLOINT,
  "~VCZAOKRC"              BOOLBIT,
  VCZAOKRD                 CISLOINT,
  "#VCZAOKRD"              CISLOINT,
  "~VCZAOKRD"              BOOLBIT
);

create or replace function admin_septim.RECEPT_H_TypVypoctuCeny(
  in    a_VCTYP            TYPINT,
  in    a_ID               IDINT,
  in    a_MASTERID         IDINT,
  in    a_COMMAND          E_HNDLParam,
  in    a_FOCUSED          E_HNDLParam,
  in    a_PARAMS           E_HNDLParam
) returns RECEPT_H_TypVypoctuCeny_rs
language plpgsql security definer as $$
declare
  l_RESULT                 RECEPT_H_TypVypoctuCeny_rs;
begin
  if a_VCTYP = 0 then
    l_RESULT.VCZAOKRC := 1;
    l_RESULT."#VCZAOKRC" := -1;
    l_RESULT.VCZAOKRD := 2;
    l_RESULT."#VCZAOKRD" := -1;
  else
    l_RESULT.VCZAOKRC := null;
    l_RESULT."#VCZAOKRC" := 1;
    l_RESULT."~VCZAOKRC" := false;
    l_RESULT.VCZAOKRD := null;
    l_RESULT."#VCZAOKRD" := 1;
    l_RESULT."~VCZAOKRD" := false;
  end if;
  return l_RESULT;
end; $$;

select grant_func('RECEPT_H_TypVypoctuCeny', 'SPEXEC');



select ASWDropProcedure ('RECEPT_H_ChangePriceUnit');
drop type if exists admin_septim.RECEPT_H_ChangePriceUnit_rs cascade;
create type admin_septim.RECEPT_H_ChangePriceUnit_rs as (
  PRICEUNIT                      AMOUNTFLT_NU
);

create or replace function admin_septim.RECEPT_H_ChangePriceUnit(
  in    a_CONTENTAMOUNT          AMOUNTFLT_NU,
  in    a_CENAB                  CENAFLT,
  in    a_ID                     IDINT,
  in    a_MASTERID               IDINT,
  in    a_COMMAND                E_HNDLParam,
  in    a_FOCUSED                E_HNDLParam,
  in    a_PARAMS                 E_HNDLParam
) returns RECEPT_H_ChangePriceUnit_rs
language plpgsql security definer as $$
declare
  l_RESULT                       RECEPT_H_ChangePriceUnit_rs;
begin

  if a_CONTENTAMOUNT is not null then
    if a_CONTENTAMOUNT > 0 then
      l_RESULT.PRICEUNIT := a_CENAB/a_CONTENTAMOUNT;
    else
      l_RESULT.PRICEUNIT := cast(null as AMOUNTFLT_NU);
    end if;
  else
    l_RESULT.PRICEUNIT := a_CENAB;
  end if;

  return l_RESULT;

end; $$;

select grant_func('RECEPT_H_ChangePriceUnit', 'SPEXEC');



select ASWDropProcedure ('RECEPT_H_ChangePriceSolidUnit');
drop type if exists admin_septim.RECEPT_H_ChangePriceSolidUnit_rs cascade;
create type admin_septim.RECEPT_H_ChangePriceSolidUnit_rs as (
  PRICESOLIDUNIT                 AMOUNTFLT_NU
);

create or replace function admin_septim.RECEPT_H_ChangePriceSolidUnit(
  in    a_SOLIDAMOUNT          AMOUNTFLT_NU,
  in    a_CENAB                  CENAFLT,
  in    a_ID                     IDINT,
  in    a_MASTERID               IDINT,
  in    a_COMMAND                E_HNDLParam,
  in    a_FOCUSED                E_HNDLParam,
  in    a_PARAMS                 E_HNDLParam
) returns RECEPT_H_ChangePriceSolidUnit_rs
language plpgsql security definer as $$
declare
  l_RESULT                       RECEPT_H_ChangePriceSolidUnit_rs;
begin

  if a_SOLIDAMOUNT is not null then
    if a_SOLIDAMOUNT > 0 then
      l_RESULT.PRICESOLIDUNIT := a_CENAB/a_SOLIDAMOUNT;
    else
      l_RESULT.PRICESOLIDUNIT := cast(null as AMOUNTFLT_NU);
    end if;
  else
    l_RESULT.PRICESOLIDUNIT := a_CENAB;
  end if;

  return l_RESULT;

end; $$;

select grant_func('RECEPT_H_ChangePriceSolidUnit', 'SPEXEC');



select ASWDropProcedure ('RECEPT_H_SKUPVYJMOUTChecked');
drop type if exists admin_septim.RECEPT_H_SKUPVYJMOUTChecked_rs cascade;
create type admin_septim.RECEPT_H_SKUPVYJMOUTChecked_rs as (
  VYJMOUTSK                      NAZEVSTR
);

create or replace function admin_septim.RECEPT_H_SKUPVYJMOUTChecked(
  in    a_SKUPVYJMOUT_CHECKED    BOOLBIT,
  in    a_ID                     IDINT,
  in    a_MASTERID               IDINT,
  in    a_COMMAND                E_HNDLParam,
  in    a_FOCUSED                E_HNDLParam,
  in    a_PARAMS                 E_HNDLParam
) returns RECEPT_H_SKUPVYJMOUTChecked_rs
language plpgsql security definer as $$
begin
  return row(cast('' as NAZEVSTR));
end; $$;

select grant_func('RECEPT_H_SKUPVYJMOUTChecked', 'SPEXEC');



select ASWDropProcedure ('RECEPT_H_EnableEditTare');
drop type if exists admin_septim.RECEPT_H_EnableEditTare_rs cascade;
create type admin_septim.RECEPT_H_EnableEditTare_rs as (
  TARE                     AMOUNTFLT_NU,
  "#TARE"                  INTEGER,
  "#UNITTARE"              INTEGER,
  "$FOCUS"                 NAMESTR
);
create or replace function admin_septim.RECEPT_H_EnableEditTare(
  in a_WELMEC              BOOLBIT_0,
  in a_ID                  INTEGER,
  in a_MASTERID            INTEGER,
  in a_COMMAND             E_HNDLParam,
  in a_FOCUSED             E_HNDLParam,
  in a_PARAMS              E_HNDLParam
) returns RECEPT_H_EnableEditTare_rs
language plpgsql security definer as $$
begin
  return
    cast(row(
      cast(null as AMOUNTFLT_NU),
      case when a_WELMEC then 1 else -1 end,
      case when a_WELMEC then 1 else -1 end,
      cast(case when a_WELMEC then 'TARE' else 'WELMEC' end as NAMESTR)) as RECEPT_H_EnableEditTare_rs);
end; $$;

select grant_func('RECEPT_H_EnableEditTare', 'SPEXEC');



select ASWDropProcedure ('RECEPT_H_GetUnitLabel');
drop type if exists admin_septim.RECEPT_H_GetUnitLabel_rs cascade;
create type admin_septim.RECEPT_H_GetUnitLabel_rs as (
  UNITTARE                 LABELSTR_R
);
create or replace function admin_septim.RECEPT_H_GetUnitLabel(
  in a_UNITSALE            NAMESTR,
  in a_ID                  INTEGER,
  in a_MASTERID            INTEGER,
  in a_COMMAND             E_HNDLParam,
  in a_FOCUSED             E_HNDLParam,
  in a_PARAMS              E_HNDLParam
) returns RECEPT_H_GetUnitLabel_rs
language plpgsql security definer as $$
begin
  return
    cast(row(
      UNIT_GetLABEL((B_REFTABLE('SEPTIMAPP', 'UNIT', 'NAME', a_UNITSALE, -1, 'UNITSALE')).a_ID)
    ) as RECEPT_H_GetUnitLabel_rs);
end; $$;

select grant_func('RECEPT_H_GetUnitLabel', 'SPEXEC');



select ASWDropProcedure ('RECEPT_H_SKUPPRIDATChecked');
drop type if exists admin_septim.RECEPT_H_SKUPPRIDATChecked_rs cascade;
create type admin_septim.RECEPT_H_SKUPPRIDATChecked_rs as (
  PRIDATSK                      NAZEVSTR,
  PORADI                        CISLOINT_NU,
  COEFFICIENT1                  COEFFICIENTFLT_NU,
  COEFFICIENT2                  COEFFICIENTFLT_NU,
  PARAM1                        PARAMTXT,
  PARAM2                        PARAMTXT,
  PARAMJ                        JSONTXT,
  "#PORADI"                     CISLOINT,
  "#COEFFICIENT1"               CISLOINT,
  "#COEFFICIENT2"               CISLOINT,
  "#PARAM1"                     CISLOINT,
  "#PARAM2"                     CISLOINT,
  "#PARAMJ"                     CISLOINT
);

create or replace function admin_septim.RECEPT_H_SKUPPRIDATChecked(
  in    a_SKUPPRIDAT_CHECKED    BOOLBIT,
  in    a_ID                    IDINT,
  in    a_MASTERID              IDINT,
  in    a_COMMAND               E_HNDLParam,
  in    a_FOCUSED               E_HNDLParam,
  in    a_PARAMS                E_HNDLParam
) returns RECEPT_H_SKUPPRIDATChecked_rs
language plpgsql security definer as $$
declare
  l_RESULT                      RECEPT_H_SKUPPRIDATChecked_rs;
begin
  l_RESULT.PRIDATSK := '';
  l_RESULT.PORADI := null;
  l_RESULT.COEFFICIENT1 := null;
  l_RESULT.COEFFICIENT2 := null;
  l_RESULT.PARAM1 := null;
  l_RESULT.PARAM2 := null;
  l_RESULT.PARAMJ := null;

  if a_SKUPPRIDAT_CHECKED = true then
    l_RESULT."#PORADI" := 1;
    l_RESULT."#COEFFICIENT1" := 1;
    l_RESULT."#COEFFICIENT2" := 1;
    l_RESULT."#PARAM1" := 1;
    l_RESULT."#PARAM2" := 1;
    l_RESULT."#PARAMJ" := 1;
  else
    l_RESULT."#PORADI" := 0;
    l_RESULT."#COEFFICIENT1" := 0;
    l_RESULT."#COEFFICIENT2" := 0;
    l_RESULT."#PARAM1" := 0;
    l_RESULT."#PARAM2" := 0;
    l_RESULT."#PARAMJ" := 0;
  end if;
  return l_RESULT;
end; $$;

select grant_func('RECEPT_H_SKUPPRIDATChecked', 'SPEXEC');


select ASWDropFunction('RECEPT_GetDPHID');
/**
* Funkce, která vrátí ID DPH receptury. Používá se v skladových operacích.
* Pokud se jedná o recepturu typu poloviční porce, DPH se zjistí z hlavní receptury.
*/
create or replace function admin_septim.RECEPT_GetDPHID(
  in a_RCPTID              REFIDINT
) returns REFIDINT
language plpgsql security definer as $$
declare
  l_AKTRCPTID              REFIDINT;
  l_DPHID                  REFIDINT;
begin
  select a_MASTERRCPTID into l_AKTRCPTID from admin_septim.RECEPT_PolovicniPorceInfo(a_RCPTID);
  begin
    select DPHID into strict l_DPHID
    from RECCENIK where
    RCPTID = l_AKTRCPTID and CENMID is null and CENKID is null and SKP1ID is null and SMAZAN = 0;
  exception
    when NO_DATA_FOUND then
  end;
  return l_DPHID;
end; $$;;



select ASWDropFunction('RECEPT_GetDPHNazev');
/**
* Funkce, která vrátí název kategorie DPH receptury. Používá se v skladových operacích.
* Pokud se jedná o recepturu typu poloviční porce, DPH se zjistí z hlavní receptury.
*/
create or replace function admin_septim.RECEPT_GetDPHNazev(
  in a_RCPTID              REFIDINT
) returns NAZEVSTR
language plpgsql security definer as $$
declare
  l_DPHID                  REFIDINT;
  l_NAZEV                  NAZEVSTR;
begin
  l_DPHID := RECEPT_GetDPHID(a_RCPTID);
  begin
    select NAZEV into strict l_NAZEV from admin_base.B_DPH where DPHID = l_DPHID;
  exception
    when NO_DATA_FOUND then
  end;
  return l_NAZEV;
end; $$;;



select ASWDropProcedure('RECEPT_GetCenaByMnozstvi');
/**
* Procedura, která podle receptury a množství spočítá ceny CENA0S,CENA0P,CENAB.
* Používá se ve skladových operacích pro získání cen receptury.
*/
create or replace function admin_septim.RECEPT_GetCenaByMnozstvi(
  in  a_RCPTID             REFIDINT,
  in  a_PRCEID             REFIDINT_NU,
  in  a_MNOZSTVI           MNOZSTVIFLT,
  out a_CENA0S             CENAFLT,
  out a_CENA0P             CENAFLT,
  out a_CENAS              CENAFLT,
  out a_DPHID              REFIDINT
)
language plpgsql security definer as $$
declare
  l_AKTRCPTID              REFIDINT;
  l_CENAKOEF               KOEFICIENTFLT;
  l_INGREDKOEF             KOEFICIENTFLT;
begin
  a_CENA0S := 0;
  a_CENA0P := 0;
  a_CENAS := 0;
  select * into l_AKTRCPTID,l_CENAKOEF,l_INGREDKOEF from admin_septim.RECEPT_PolovicniPorceInfo(a_RCPTID);
  if RECEPT_CheckStornoTyp(a_RCPTID,-1) = true then
    a_MNOZSTVI := a_MNOZSTVI*-1;
  end if;
  --- výpočet ceny s DPH receptury
  begin
    select a_MNOZSTVI*CENAS,DPHID into strict a_CENAS,a_DPHID from RECCENIK where RCPTID = l_AKTRCPTID and CENMID is null and CENKID is null and SKP1ID is null and SMAZAN = 0;
  exception
    when NO_DATA_FOUND then
  end;
  --- výpočet skladové a prodejní ceny receptury
  begin
    select a_MNOZSTVI*SUM(SP.CENA*RI.MNOZSTVI),a_MNOZSTVI*SUM(SP.CENA*coalesce(SKSP.MARZE,1)*RI.MNOZSTVI) into strict a_CENA0S,a_CENA0P from SKLADPOL as SP join
    RECEPTINGREDFULL as RI on SP.SKPLID = RI.SKPLID left outer join
    SKUPSPOL1 as SKSP on SP.SSP1ID = SKSP.SSP1ID where
    RI.RCPTID = l_AKTRCPTID and INGRED_ProSkladOperace(RI.TYP) = true and
    -- bez porce nebo s pozadovanou porciu
   (RI.PRCEID is null or (a_PRCEID is not null and RI.PRCEID = a_PRCEID))
    group by RI.RCPTID;
  exception
    when NO_DATA_FOUND then
  end;
  a_CENA0S := a_CENA0S*l_INGREDKOEF;
  a_CENA0P := a_CENA0P*l_INGREDKOEF;
  a_CENAS := a_CENAS*l_CENAKOEF;
  return;
end; $$;



-- RECEPTInsert:
select ASWDropProcedure('RECEPT_BasicInsert');
create or replace function admin_septim.RECEPT_BasicInsert(
  in  a_NAZEV              NAZEVSTR,
  in  a_POPIS              POPISTXT,
  in  a_ZKRATKA            ZKRATKASTR,
  in  a_IDCODE             IDCODESTR,
  in  a_BARCODE            BARCODETXT,
  in  a_SKUPREC1           NAZEVSTR,
  in  a_SKUPREC2           NAZEVSTR,
  in  a_SKUPREC3           NAZEVSTR,
  in  a_OBALRECNAZEV       NAZEVSTR,
  in  a_PLUCODE            PLUINT,
  in  a_PORCI              MNOZSTVIFLT,
  in  a_GRAMAZ             GRAMAZTXT,
  in  a_SKUPREC4           NAZEVSTR,
  in  a_POSTUP             POSTUPTXT,
  in  a_DOBAPRIPRAVY       TIMEINT,
  in  a_DOBAKONZUMACE      TIMEINT,
  in  a_VZDYCENA           BOOLBIT,
  in  a_CISLOL             CISLOINT_R,
  in  a_CISLOH             CISLOINT_R,
  in  a_RECEPTTYP          NAZEVSTR,
  in  a_UNITSALE           NAMESTR,
  in  a_KLIC               KLICSTR,
  in  a_DPH                NAZEVSTR,
  in  a_CENAB              CENAFLT,
  in  a_DPHA               CENAFLT,
  in  a_DPHB               CENAFLT,
  in  a_CENAS              CENAFLT,
  in  a_CENAB1             CENAFLT,
  in  a_DPHA1              CENAFLT,
  in  a_DPHB1              CENAFLT,
  in  a_CENAS1             CENAFLT,
  in  a_CENAB2             CENAFLT,
  in  a_DPHA2              CENAFLT,
  in  a_DPHB2              CENAFLT,
  in  a_CENAS2             CENAFLT,
  in  a_VCTYP              TYPINT,
  in  a_VCZAOKRC           CISLOINT,
  in  a_VCZAOKRD           CISLOINT,
  in  a_BONUS              CISLOFLT,
  in  a_PPMASTERRECNAZEV   NAZEVSTR,                  -- Název hlavní receptury poloviční porce
  in  a_PPCENAKOEF         KOEFICIENTFLT,             -- koeficient ceny pro poloviční porce
  in  a_PPINGREDKOEF       KOEFICIENTFLT,             -- koeficient ingredience pro poloviční porce
  in  a_POUZITDOPL         BOOLBIT,
  in  a_DOPLATEKRECEPT     NAZEVSTR,
  in  a_MINMNOZSTVI        MNOZSTVIFLT,
  in  a_POVPOPISOBJ        BOOLBIT,
  in  a_DEFPOPISYOBJ       KOMENTARTXT,
  in  a_CHOD               NAZEVSTR,
  in  a_DRUHJIDLA          NAZEVSTR,
  in  a_INSCENY            BOOLBIT,                   -- vlozeni zakladni ceny: 0=ne, 1=ano
  in  a_EXTID              CISLOINT_NU,
  in  a_CUSTOM1            CUSTOMSTR,
  in  a_CUSTOM2            CUSTOMSTR,
  in  a_CUSTOM3            CUSTOMTXT,
  in  a_CUSTOM4            CUSTOMTXT,
  in  a_CUSTOM5            CUSTOMTXT,
  in  a_DURABILITY         NUMBERINT,
  in  a_MAXSLEVA           KOEFICIENTFLT_NU,
  in  a_SKLAD              NAZEVSTR,
  in  a_UNITCONTENT        NAMESTR,
  in  a_UNITSOLID          NAMESTR,
  in  a_CONTENTAMOUNT      AMOUNTFLT_NU,
  in  a_SOLIDAMOUNT        AMOUNTFLT_NU,
  in  a_DODVVYR            NAMESTR,
  in  a_COUNTRY            NAMESTR,
  in  a_WELMEC             BOOLBIT_0,
  in  a_KMSCATEGORY        NAMESTR,
  in  a_KMSITEMTYPE        NAMESTR,
  in  a_TARE               AMOUNTFLT_NU,
  in  a_AKTIVNI            BOOLBIT_1,
  in  a_WEIGHTED           BOOLBIT_0,
  out a_ID                 IDINT,
  in  a_FORCE              FORCETXT,
  in  a_TESTIMPORTDB       BOOLBIT default false
)
language plpgsql security definer as $$
declare
  l_SKR1ID                 REFIDINT;
  l_SKR2ID                 REFIDINT;
  l_SKR3ID                 REFIDINT;
  l_SKR4ID                 REFIDINT;
  l_DPHID                  REFIDINT;
  l_ID                     REFIDINT;
  l_KOEFA                  DPHKOEFFLT;
  l_KOEFB                  DPHKOEFFLT;
  l_ZADAC                  BOOLBIT;
  l_RECTID                 REFIDINT;
  l_OBALRCPTID             REFIDINT;
  l_PPMASTERRCPTID         REFIDINT;
  l_DOPLATEKRCPTID         REFIDINT;
  l_CHODID                 REFIDINT;
  l_DRJDID                 REFIDINT;
  l_UNITIDSALE             REFIDINT;
  l_SKLDID                 REFIDINT_NU;
  l_UNITIDCONTENT          REFIDINT_NU;
  l_UNITIDSOLID            REFIDINT_NU;
  l_CNTRID                 REFIDINT_NU;
  l_DODVIDVYR              REFIDINT_NU;
  l_KMCTID                 REFIDINT_NU;
  l_KMITID                 REFIDINT_NU;
begin
  if a_TESTIMPORTDB = cast(1 as BOOLBIT) then
    perform admin_params.P_CheckGlobalParamBOOL('SYNCRECEPT','RECEPTIMPORTDB',false,35539);
  end if;
  -- check input data
  select *
  into
    a_CENAB, a_DPHA, a_DPHB, a_CENAS, a_CENAB1, a_DPHA1, a_DPHB1, a_CENAS1, a_CENAB2,
    a_DPHA2, a_DPHB2, a_CENAS2, a_PPCENAKOEF, a_PPINGREDKOEF, l_SKR1ID, l_SKR2ID,
    l_SKR3ID, l_SKR4ID, l_DPHID, l_RECTID, l_OBALRCPTID, l_PPMASTERRCPTID, l_DOPLATEKRCPTID,
    a_POVPOPISOBJ, a_DEFPOPISYOBJ, l_CHODID, l_DRJDID, l_SKLDID, l_UNITIDSALE,
    l_UNITIDCONTENT, l_UNITIDSOLID, l_CNTRID, l_DODVIDVYR, l_KMCTID, l_KMITID
  from
    RECEPT__Check(
      a_NAZEV, a_POPIS, a_ZKRATKA, a_DPH, a_KLIC, a_BARCODE, a_IDCODE, a_PLUCODE, a_RECEPTTYP,
      a_UNITSALE, a_CENAB, a_DPHA, a_DPHB, a_CENAS, a_CENAB1, a_DPHA1, a_DPHB1, a_CENAS1,
      a_CENAB2, a_DPHA2, a_DPHB2, a_CENAS2, a_CISLOL, a_CISLOH, a_PORCI, a_SKUPREC1,
      a_SKUPREC2, a_SKUPREC3, a_SKUPREC4, a_OBALRECNAZEV, a_POUZITDOPL, a_DOPLATEKRECEPT,
      a_MINMNOZSTVI, a_PPMASTERRECNAZEV, a_PPCENAKOEF, a_PPINGREDKOEF,
      a_DOBAPRIPRAVY, a_DOBAKONZUMACE, a_BONUS, a_POVPOPISOBJ, a_DEFPOPISYOBJ,
      a_CHOD, a_FORCE, null, a_DRUHJIDLA, a_DURABILITY, a_SKLAD, a_UNITCONTENT, a_UNITSOLID,
      a_CONTENTAMOUNT, a_SOLIDAMOUNT, a_DODVVYR, a_COUNTRY, a_KMSCATEGORY, a_KMSITEMTYPE, a_WELMEC,
      a_TARE, a_AKTIVNI, a_WEIGHTED);

  a_ID := RECEPT__BasicInsert(
    a_NAZEV, a_POPIS, a_ZKRATKA, a_IDCODE, l_RECTID, l_SKR1ID, l_SKR2ID, l_SKR3ID,
    l_OBALRCPTID, a_PLUCODE, a_PORCI, a_GRAMAZ, l_SKR4ID, a_POSTUP, a_DOBAPRIPRAVY,
    a_DOBAKONZUMACE, a_VZDYCENA, a_CISLOL, a_CISLOH, a_KLIC, a_VCTYP, a_VCZAOKRC,
    a_VCZAOKRD, a_BONUS, false, l_PPMASTERRCPTID, a_PPCENAKOEF, a_PPINGREDKOEF,
    l_DOPLATEKRCPTID, a_MINMNOZSTVI, a_BARCODE, a_DPH, a_CENAB, a_DPHA, a_DPHB,
    a_CENAS, a_CENAB1, a_DPHA1, a_DPHB1, a_CENAS1, a_CENAB2, a_DPHA2, a_DPHB2,
    a_CENAS2, a_POVPOPISOBJ, a_DEFPOPISYOBJ, l_CHODID, l_DRJDID, l_UNITIDSALE, a_CUSTOM1, a_CUSTOM2,
    a_CUSTOM3, a_CUSTOM4, a_CUSTOM5, a_DURABILITY, a_MAXSLEVA, l_SKLDID,
    l_UNITIDCONTENT, l_UNITIDSOLID, a_CONTENTAMOUNT, a_SOLIDAMOUNT, l_CNTRID, l_DODVIDVYR, a_WELMEC,
    l_KMCTID, l_KMITID, a_TARE, a_AKTIVNI, a_WEIGHTED, a_FORCE, a_INSCENY, a_EXTID, null);

end; $$;



-- RECEPTInsert:
select ASWDropProcedure('RECEPTInsert');
drop type if exists admin_septim.RECEPTInsert_rs cascade;
create type admin_septim.RECEPTInsert_rs as (
  ID                       REFIDINT
);

create or replace function admin_septim.RECEPTInsert(
  in a_NAZEV               NAZEVSTR,
  in a_POPIS               POPISTXT,
  in a_ZKRATKA             ZKRATKASTR,
  in a_IDCODE              IDCODESTR,
  in a_BARCODE             BARCODETXT,
  in a_SKUPREC1            NAZEVSTR,
  in a_SKUPREC2            NAZEVSTR,
  in a_SKUPREC3            NAZEVSTR,
  in a_OBALRECNAZEV        NAZEVSTR,
  in a_PLUCODE             PLUINT,
  in a_PORCI               MNOZSTVIFLT,
  in a_GRAMAZ              GRAMAZTXT,
  in a_SKUPREC4            NAZEVSTR,
  in a_POSTUP              POSTUPTXT,
  in a_DOBAPRIPRAVY        TIMEINT,
  in a_DOBAKONZUMACE       TIMEINT,
  in a_VZDYCENA            BOOLBIT,
  in a_CISLOL              CISLOINT_R,
  in a_CISLOH              CISLOINT_R,
  in a_RECEPTTYP           NAZEVSTR,
  in a_UNITSALE            NAMESTR,
  in a_KLIC                KLICSTR,
  in a_DPH                 NAZEVSTR,
  in a_CENAB               CENAFLT,
  in a_DPHA                CENAFLT,
  in a_CENAS               CENAFLT,
  in a_CENAB_DPHB          CENAFLT,
  in a_DPHA_DPHB           CENAFLT,
  in a_DPHB_DPHB           CENAFLT,
  in a_CENAS_DPHB          CENAFLT,
  in a_CENAB1              CENAFLT,
  in a_DPHA1               CENAFLT,
  in a_CENAS1              CENAFLT,
  in a_CENAB2              CENAFLT,
  in a_DPHA2               CENAFLT,
  in a_CENAS2              CENAFLT,
  in a_CENAB1_DPHB         CENAFLT,
  in a_DPHA1_DPHB          CENAFLT,
  in a_DPHB1_DPHB          CENAFLT,
  in a_CENAS1_DPHB         CENAFLT,
  in a_CENAB2_DPHB         CENAFLT,
  in a_DPHA2_DPHB          CENAFLT,
  in a_DPHB2_DPHB          CENAFLT,
  in a_CENAS2_DPHB         CENAFLT,
  in a_VCTYP               TYPINT,
  in a_VCZAOKRC            CISLOINT,
  in a_VCZAOKRD            CISLOINT,
  in a_BONUS               CISLOFLT,
  in a_PPMASTERRECNAZEV    NAZEVSTR,          -- Název hlavní receptury poloviční porce
  in a_PPCENAKOEF          KOEFICIENTFLT,     -- koeficient ceny pro poloviční porce
  in a_PPINGREDKOEF        KOEFICIENTFLT,     -- koeficient ingredience pro poloviční porce
  in a_POUZITDOPL          BOOLBIT,
  in a_DOPLATEKRECEPT      NAZEVSTR,
  in a_MINMNOZSTVI         MNOZSTVIFLT,
  in a_POVPOPISOBJ         BOOLBIT,
  in a_DEFPOPISYOBJ        KOMENTARTXT,
  in a_CHOD                NAZEVSTR,
  in a_DRUHJIDLA           NAZEVSTR,
  in a_CUSTOM1             CUSTOMSTR,
  in a_CUSTOM2             CUSTOMSTR,
  in a_CUSTOM3             CUSTOMTXT,
  in a_CUSTOM4             CUSTOMTXT,
  in a_CUSTOM5             CUSTOMTXT,
  in a_DURABILITY          NUMBERINT,
  in a_MAXSLEVA            KOEFICIENTFLT_NU,
  in a_SKLAD               NAZEVSTR,
  in a_UNITCONTENT         NAMESTR,
  in a_UNITSOLID           NAMESTR,
  in a_CONTENTAMOUNT       AMOUNTFLT_NU,
  in a_SOLIDAMOUNT         AMOUNTFLT_NU,
  in a_DODVVYR             NAMESTR,
  in a_COUNTRY             NAMESTR,
  in a_WELMEC              BOOLBIT_0,
  in a_KMSCATEGORY         NAMESTR,
  in a_KMSITEMTYPE         NAMESTR,
  in a_TARE                AMOUNTFLT_NU,
  in a_AKTIVNI             BOOLBIT_1,
  in a_WEIGHTED            BOOLBIT_0,
  in a_FORCE               FORCETXT default null
) returns admin_septim.RECEPTInsert_rs
language plpgsql security definer
as $$
declare
  l_ID                     REFIDINT;
begin
 --insceny --EXTID
     --TESTIMPORTDB
  if admin_base.B_LIMITS_GetLicence('BASE','DPHB',0) = 0 then
    a_CENAB_DPHB := a_CENAB;
    a_DPHA_DPHB := a_DPHA;
    a_DPHB_DPHB := null;
    a_CENAS_DPHB := a_CENAS;
    a_CENAB1_DPHB := a_CENAB1;
    a_DPHA1_DPHB := a_DPHA1;
    a_DPHB1_DPHB := null;
    a_CENAS1_DPHB := a_CENAS1;
    a_CENAB2_DPHB := a_CENAB2;
    a_DPHA2_DPHB := a_DPHA2;
    a_DPHB2_DPHB := null;
    a_CENAS2_DPHB := a_CENAS2;
  end if;

  l_ID := RECEPT_BasicInsert(
    a_NAZEV, a_POPIS, a_ZKRATKA, a_IDCODE, a_BARCODE, a_SKUPREC1, a_SKUPREC2, a_SKUPREC3,
    a_OBALRECNAZEV, a_PLUCODE, a_PORCI, a_GRAMAZ, a_SKUPREC4, a_POSTUP,
    a_DOBAPRIPRAVY, a_DOBAKONZUMACE, a_VZDYCENA, a_CISLOL, a_CISLOH, a_RECEPTTYP, a_UNITSALE,
    a_KLIC, a_DPH, a_CENAB_DPHB, a_DPHA_DPHB, a_DPHB_DPHB, a_CENAS_DPHB, a_CENAB1_DPHB,
    a_DPHA1_DPHB, a_DPHB1_DPHB, a_CENAS1_DPHB, a_CENAB2_DPHB, a_DPHA2_DPHB,
    a_DPHB2_DPHB, a_CENAS2_DPHB, a_VCTYP, a_VCZAOKRC, a_VCZAOKRD, a_BONUS,
    a_PPMASTERRECNAZEV, a_PPCENAKOEF, a_PPINGREDKOEF, a_POUZITDOPL, a_DOPLATEKRECEPT,
    a_MINMNOZSTVI, a_POVPOPISOBJ, a_DEFPOPISYOBJ, a_CHOD, a_DRUHJIDLA,
    true, null, a_CUSTOM1, a_CUSTOM2, a_CUSTOM3, a_CUSTOM4, a_CUSTOM5, a_DURABILITY,
    a_MAXSLEVA, a_SKLAD, a_UNITCONTENT, a_UNITSOLID, a_CONTENTAMOUNT, a_SOLIDAMOUNT,
    a_DODVVYR, a_COUNTRY, a_WELMEC, a_KMSCATEGORY, a_KMSITEMTYPE, a_TARE, a_AKTIVNI, a_WEIGHTED, a_FORCE, true);

  return row(l_ID);

end; $$;

select grant_func('RECEPTInsert', 'SPEXEC');


select ASWDropProcedure('RECEPT_CheckMasterPerm');
/**
* Funkce zjistí typ receptury a u složeného menu otestuje právo k provádění operací nad složenou recepturou
* U ostatních typů receptur otestuje individuálně zadané právo.
* Na základě a_ERRBASE (jehož hodnota je ve shodě s volanou U_CheckPerm) vrátí buď jak operace dopadla 0/1 nebo vyvolá zadaný či defaultní raiserror
* Lze využít i zadání a_EXPLICITPERM tak jak se využívá u U_CheckPerm, které se pouze předá
**/
create or replace function admin_septim.RECEPT_CheckMasterPerm(
  in    a_RCPTID           REFIDINT_NU,               -- ID existující receptury (pokud je vyplněno, nevyplňuje se a_RECTID)
  in    a_RECTID           REFIDINT_NU,               -- pokud je null, musí být vyplněno a_RCPTID
  in    a_ERRBASE          CISLOINT,
  inout a_RCPTPERM         PARAMTXT,                  -- vstupem je defaultní permission složený klíč pro oprávnění na jednoduchou operaci, výstupem pak může být klíč pro právo nad složenými recepturami
  out   a_RESULT           BOOLBIT,                   -- výstupem je 0/1 dle návratového kódu volání U_CheckPerm
  in    a_EXPLICITPERM     PARAMTXT default null
)
language plpgsql security definer as $$
begin
  if a_RECTID is not null and a_RCPTID is not null then
    -- neurčitý stav - vyplněno ID receptury i typu receptury, což nemusí sedět, takže chyba, má být vyplněno jen jedno z toho
    perform admin_base.ASWError(35513);
  end if;
  if a_RECTID is null and a_RCPTID is null then
    -- oba zásadní údaje na vstupu jsou null
    perform admin_base.ASWError(35514);
  end if;
  if (a_RCPTID is not null and RECEPT_CheckSlozeneMenuTyp(a_RCPTID,-1) = true) or
   (a_RECTID is not null and exists(select 1 from RECEPTTYP where RECTID = a_RECTID and KLIC = 'SLOZENEMENU')) then
    a_RCPTPERM := E'SEPTIMAPP\\RECEPT\\SLOZENEMENUOPERATIONS';
  end if;
  a_RESULT := admin_users.U_CheckPerm('SEPTIMAPP',a_RCPTPERM,a_ERRBASE,a_EXPLICITPERM);
  return;
end; $$;




select ASWDropFunction ('RECEPT__BasicInsert');
-- vlozeni zakladni ceny: 0=ne, 1=ano
create or replace function admin_septim.RECEPT__BasicInsert(
  in a_NAZEV               NAZEVSTR,
  in a_POPIS               POPISTXT,
  in a_ZKRATKA             ZKRATKASTR,
  in a_IDCODE              IDCODESTR,
  in a_RECTID              REFIDINT,
  in a_SKR1ID              REFIDINT,
  in a_SKR2ID              REFIDINT,
  in a_SKR3ID              REFIDINT,
  in a_OBALRCPTID          REFIDINT,
  in a_PLUCODE             PLUINT,
  in a_PORCI               MNOZSTVIFLT,
  in a_GRAMAZ              GRAMAZTXT,
  in a_SKR4ID              REFIDINT,
  in a_POSTUP              POSTUPTXT,
  in a_DOBAPRIPRAVY        TIMEINT,
  in a_DOBAKONZUMACE       TIMEINT,
  in a_VZDYCENA            BOOLBIT,
  in a_CISLOL              CISLOINT,
  in a_CISLOH              CISLOINT,
  in a_KLIC                KLICSTR,
  in a_VCTYP               TYPINT,
  in a_VCZAOKRC            CISLOINT,
  in a_VCZAOKRD            CISLOINT,
  in a_BONUS               CISLOFLT,
  in a_SKPLREC             BOOLBIT,
  in a_PPMASTERRCPTID      REFIDINT,
  in a_PPCENAKOEF          KOEFICIENTFLT,
  in a_PPINGREDKOEF        KOEFICIENTFLT,
  in a_DOPLATEKRCPTID      REFIDINT,
  in a_MINMNOZSTVI         MNOZSTVIFLT,
  in a_BARCODE             BARCODETXT,
  in a_DPH                 NAZEVSTR,
  in a_CENAB               CENAFLT,
  in a_DPHA                CENAFLT,
  in a_DPHB                CENAFLT,
  in a_CENAS               CENAFLT,
  in a_CENAB1              CENAFLT,
  in a_DPHA1               CENAFLT,
  in a_DPHB1               CENAFLT,
  in a_CENAS1              CENAFLT,
  in a_CENAB2              CENAFLT,
  in a_DPHA2               CENAFLT,
  in a_DPHB2               CENAFLT,
  in a_CENAS2              CENAFLT,
  in a_POVPOPISOBJ         BOOLBIT,
  in a_DEFPOPISYOBJ        KOMENTARTXT,
  in a_CHODID              REFIDINT_NU,
  in a_DRJDID              REFIDINT,
  in a_UNITIDSALE          REFIDINT,
  in a_CUSTOM1             CUSTOMSTR,
  in a_CUSTOM2             CUSTOMSTR,
  in a_CUSTOM3             CUSTOMTXT,
  in a_CUSTOM4             CUSTOMTXT,
  in a_CUSTOM5             CUSTOMTXT,
  in a_DURABILITY          NUMBERINT,
  in a_MAXSLEVA            KOEFICIENTFLT_NU,
  in a_SKLDID              REFIDINT_NU,
  in a_UNITIDCONTENT       REFIDINT_NU,
  in a_UNITIDSOLID         REFIDINT_NU,
  in a_CONTENTAMOUNT       AMOUNTFLT_NU,
  in a_SOLIDAMOUNT         AMOUNTFLT_NU,
  in a_CNTRID              REFIDINT_NU,
  in a_DODVIDVYR           REFIDINT_NU,
  in a_WELMEC              BOOLBIT_0,
  in a_KMCTID              REFIDINT_NU,
  in a_KMITID              REFIDINT_NU,
  in a_TARE                AMOUNTFLT_NU,
  in a_AKTIVNI             BOOLBIT_1,
  in a_WEIGHTED            BOOLBIT_0,
  in a_FORCE               FORCETXT,
  in a_INSCENY             BOOLBIT default true,          -- vlozeni zakladni ceny: 0=ne, 1=ano
  in a_EXTID               CISLOINT_NU DEFAULT null,
  in a_EXPLICITPERM        PARAMTXT default  null
) returns IDINT
language plpgsql security definer as $$
declare
  l_ID                     IDINT;
  l_MASTERPERM             PARAMTXT;
  l_ALERGENY               ALERGENYLISTSTR;
  l_ALERGENYIDENT          ALERGENYLISTSTR;
  l_RESTMP                 BOOLBIT;
  l_SKLDID                 REFIDINT;
  c_RKRS                   RKRS;
  l_WELMEC                 BOOLBIT_0;
  l_AKTIVNI                BOOLBIT_1;
  l_WEIGHTED               BOOLBIT_0;
begin
  l_MASTERPERM := E'SEPTIMAPP\\RECEPT\\RECEPTINS';
  select * into l_MASTERPERM,l_RESTMP from admin_septim.RECEPT_CheckMasterPerm(null, a_RECTID, 0, l_MASTERPERM, a_EXPLICITPERM);
  if a_SKR3ID is not null or a_SKR4ID is not null then
    -- nastaveni skuprec3-4, extra opravneni
    perform admin_users.U_CheckPerm('SEPTIMAPP', E'RECEPT\\RECEPTSKUPREC34EDT', 0, a_EXPLICITPERM);
  end if;
  -- in the case of full of the recipe, we add the welmec and the active from the dialog
  l_WELMEC := a_WELMEC;
  l_AKTIVNI := a_AKTIVNI;
  l_WEIGHTED := a_WEIGHTED;
  if a_PPMASTERRCPTID is not null then
    -- in the case of half of the recipe, we add the allergens, welmec, and the active from the master recipe
    select ALERGENY, ALERGENYIDENT, WELMEC, AKTIVNI, WEIGHTED
    into l_ALERGENY, l_ALERGENYIDENT, l_WELMEC, l_AKTIVNI, l_WEIGHTED
    from RECEPT where RCPTID = a_PPMASTERRCPTID;
  end if;
  l_ALERGENY := coalesce(l_ALERGENY, '-');
  l_ALERGENYIDENT := coalesce(l_ALERGENYIDENT, '-');
  l_ID := admin_base.B_GetID('SEPTIMAPP', 'RECEPT');
  c_RKRS := SESSIONVarGet('c_RKRS');

  insert into RECEPT (
    RCPTID,NAZEV, POPIS, ZKRATKA, IDCODE, RECTID, SKR1ID, SKR2ID, SKR3ID, OBALRCPTID, PLUCODE, PORCI,
    GRAMAZ, SKR4ID, POSTUP, VZDYCENA, CISLOL, CISLOH, KLIC, VCTYP, VCZAOKRC, VCZAOKRD, BONUS, SKPLREC,
    DOBAPRIPRAVY, DOBAKONZUMACE, PPMASTERRCPTID, PPCENAKOEF, PPINGREDKOEF, DOPLATEKRCPTID, MINMNOZSTVI, POVPOPISOBJ,
    DEFPOPISYOBJ, CHODID, DRJDID, ALERGENY, ALERGENYIDENT, EXTID, CUSTOM1, CUSTOM2, CUSTOM3, CUSTOM4, CUSTOM5,
    DURABILITY, MAXSLEVA, SKLDID, SALESTOCKPRICE, UNITIDSALE, UNITIDCONTENT, UNITIDSOLID, CONTENTAMOUNT, SOLIDAMOUNT,
    CNTRID, DODVIDVYR, WELMEC, KMCTID, KMITID, TARE, AKTIVNI, WEIGHTED, RKRS)
  values (
    l_ID, a_NAZEV, a_POPIS, a_ZKRATKA, a_IDCODE, a_RECTID, a_SKR1ID, a_SKR2ID, a_SKR3ID, a_OBALRCPTID, a_PLUCODE, a_PORCI,
    a_GRAMAZ, a_SKR4ID, a_POSTUP, a_VZDYCENA, a_CISLOL, RECEPT_GetCisloHByParams(l_ID, a_CISLOH), a_KLIC, a_VCTYP, a_VCZAOKRC,
    a_VCZAOKRD, a_BONUS, a_SKPLREC, a_DOBAPRIPRAVY, a_DOBAKONZUMACE, a_PPMASTERRCPTID, a_PPCENAKOEF, a_PPINGREDKOEF,
    a_DOPLATEKRCPTID, a_MINMNOZSTVI, a_POVPOPISOBJ, a_DEFPOPISYOBJ, a_CHODID, a_DRJDID, l_ALERGENY, l_ALERGENYIDENT,
    a_EXTID, a_CUSTOM1, a_CUSTOM2, a_CUSTOM3, a_CUSTOM4, a_CUSTOM5, a_DURABILITY, a_MAXSLEVA, a_SKLDID, 0, a_UNITIDSALE,
    a_UNITIDCONTENT, a_UNITIDSOLID, a_CONTENTAMOUNT, a_SOLIDAMOUNT, a_CNTRID, a_DODVIDVYR, l_WELMEC, a_KMCTID, a_KMITID,
    a_TARE, l_AKTIVNI, l_WEIGHTED, c_RKRS);

  perform admin_septim.RCPTBARCODE_RECEPTInsert(l_ID, a_BARCODE);
  -- jestli se receptuře zadává cena. procedura se volá s a_KORUNOVA=1, aby se uložila základní cena i pro korunovou položku
  -- a_INSCENY - pouziva se v importu receptur, receptura typu polovicni porce se importuje jako standardni receptura, ktere by se automaticky vytvoril zaznam v RECCENIK
  if RECEPT_ZadavatCenu(l_ID, -1, true) = true and a_INSCENY = true then
    perform admin_septim.RECCENIK_RECEPTInsert(
      l_ID, a_DPH, a_CENAB, a_DPHA, a_DPHB, a_CENAS, a_CENAB1, a_DPHA1, a_DPHB1, a_CENAS1,
      a_CENAB2, a_DPHA2, a_DPHB2, a_CENAS2, null, null, null, admin_users.U_PermChain(a_EXPLICITPERM, l_MASTERPERM));
  end if;
  perform admin_septim.NABITEMRECEPT_InsertRecept(a_SKR4ID, l_ID, a_FORCE);

  -- set zero stock prices for each store and portion
  perform RECSKLADCENA_RECEPTInsert(l_ID);

  perform admin_users.U_OPRAVA_P_RowInsert('SEPTIMAPP', 'RECEPT', l_ID, '', '');
  return l_ID;
end; $$;;



-- RECEPTUpdate:
select ASWDropProcedure('RECEPT_BasicUpdate');
create or replace function admin_septim.RECEPT_BasicUpdate(
  in a_ID                  IDINT,
  in a_NAZEV               NAZEVSTR,
  in a_POPIS               POPISTXT,
  in a_ZKRATKA             ZKRATKASTR,
  in a_IDCODE              IDCODESTR,
  in a_BARCODE             BARCODETXT,
  in a_SKUPREC1            NAZEVSTR,
  in a_SKUPREC2            NAZEVSTR,
  in a_SKUPREC3            NAZEVSTR,
  in a_OBALRECNAZEV        NAZEVSTR,
  in a_PLUCODE             PLUINT,
  in a_PORCI               MNOZSTVIFLT,
  in a_GRAMAZ              GRAMAZTXT,
  in a_SKUPREC4            NAZEVSTR,
  in a_POSTUP              POSTUPTXT,
  in a_DOBAPRIPRAVY        TIMEINT,
  in a_DOBAKONZUMACE       TIMEINT,
  in a_VZDYCENA            BOOLBIT,
  in a_CISLOL              CISLOINT_R,
  in a_CISLOH              CISLOINT_R,
  in a_RECEPTTYP           NAZEVSTR,
  in a_UNITSALE            NAMESTR,
  in a_KLIC                KLICSTR,
  in a_DPH                 NAZEVSTR,
  in a_CENAB               CENAFLT,
  in a_DPHA                CENAFLT,
  in a_DPHB                CENAFLT,
  in a_CENAS               CENAFLT,
  in a_CENAB1              CENAFLT,
  in a_DPHA1               CENAFLT,
  in a_DPHB1               CENAFLT,
  in a_CENAS1              CENAFLT,
  in a_CENAB2              CENAFLT,
  in a_DPHA2               CENAFLT,
  in a_DPHB2               CENAFLT,
  in a_CENAS2              CENAFLT,
  in a_VCTYP               TYPINT,
  in a_VCZAOKRC            CISLOINT,
  in a_VCZAOKRD            CISLOINT,
  in a_BONUS               CISLOFLT,
  in a_PPMASTERRECNAZEV    NAZEVSTR,          -- Název hlavní receptury poloviční porce
  in a_PPCENAKOEF          KOEFICIENTFLT,     -- koeficient ceny pro poloviční porce
  in a_PPINGREDKOEF        KOEFICIENTFLT,     -- koeficient ingredience pro poloviční porce
  in a_POUZITDOPL          BOOLBIT,
  in a_DOPLATEKRECEPT      NAZEVSTR,
  in a_MINMNOZSTVI         MNOZSTVIFLT,
  in a_POVPOPISOBJ         BOOLBIT,
  in a_DEFPOPISYOBJ        KOMENTARTXT,
  in a_CHOD                NAZEVSTR,
  in a_DRUHJIDLA           NAZEVSTR,
  in a_LOGOPRAVA           CISLOINT,          -- 1-logovat opravu 0-nelogovat opravu (při importu receptur se neloguje)
  in a_UPDCENY             CISLOINT,          -- 1-modifikace základní ceny 0-nemodifikovat cenu
  in a_EXTID               CISLOINT_NU,       -- pozor, nelze dodatečně nastavit na null, pokud je vstupem null, hodnotu to nezruší
  in a_CUSTOM1             CUSTOMSTR,
  in a_CUSTOM2             CUSTOMSTR,
  in a_CUSTOM3             CUSTOMTXT,
  in a_CUSTOM4             CUSTOMTXT,
  in a_CUSTOM5             CUSTOMTXT,
  in a_DURABILITY          NUMBERINT,
  in a_MAXSLEVA            KOEFICIENTFLT_NU,
  in a_SKLAD               NAZEVSTR,
  in a_UNITCONTENT         NAMESTR,
  in a_UNITSOLID           NAMESTR,
  in a_CONTENTAMOUNT       AMOUNTFLT_NU,
  in a_SOLIDAMOUNT         AMOUNTFLT_NU,
  in a_DODVVYR             NAMESTR,
  in a_COUNTRY             NAMESTR,
  in a_WELMEC              BOOLBIT_0,
  in a_KMSCATEGORY         NAMESTR,
  in a_KMSITEMTYPE         NAMESTR,
  in a_TARE                AMOUNTFLT_NU,
  in a_AKTIVNI             BOOLBIT_1,
  in a_WEIGHTED            BOOLBIT_0,
  in a_FORCE               FORCETXT
) returns void
language plpgsql security definer
as $$
declare
  l_SKR1ID                 REFIDINT;
  l_SKR2ID                 REFIDINT;
  l_SKR3ID                 REFIDINT;
  l_SKR4ID                 REFIDINT;
  l_DPHID                  REFIDINT;
  l_KOEFA                  DPHKOEFFLT;
  l_KOEFB                  DPHKOEFFLT;
  l_RECTID                 REFIDINT;
  l_SKPLID                 REFIDINT;
  l_SKLDID                 REFIDINT_NU;
  l_CISLOL                 CISLOINT;
  l_CISLOH                 CISLOINT;
  l_NAZEV                  NAZEVSTR;
  l_POPIS                  POPISTXT;
  l_ZKRATKA                ZKRATKASTR;
  l_KLIC                   KLICSTR;
  l_BARCODE                BARCODETXT;
  l_IDCODE                 IDCODESTR;
  l_OBALRCPTID             REFIDINT;
  l_PPMASTERRCPTID         REFIDINT;
  l_OLDPORCI               MNOZSTVIFLT;
  l_DOPLATEKRCPTID         REFIDINT;
  l_MASTERPERM             PARAMTXT;
  l_SKR4IDOLD              REFIDINT_NU;
  l_CHODID                 REFIDINT_NU;
  l_DRJDID                 REFIDINT;
  l_UNITIDSALE             REFIDINT;
  l_SKUPREC1OLD            NAZEVSTR_NU;
  l_SKUPREC2OLD            NAZEVSTR_NU;
  l_SKUPREC3OLD            NAZEVSTR_NU;
  l_SKUPREC4OLD            NAZEVSTR_NU;
  l_NAZEVOLD               NAZEVSTR;
  l_POPISOLD               POPISTXT;
  l_ZKRATKAOLD             ZKRATKASTR;
  l_IDCODEOLD              IDCODESTR;
  l_PLUCODEOLD             PLUINT;
  l_GRAMAZOLD              GRAMAZTXT;
  l_DOBAPRIPRAVYOLD        TIMEINT;
  l_DOBAKONZUMACEOLD       TIMEINT;
  l_POSTUPOLD              POSTUPTXT;
  l_VZDYCENAOLD            BOOLBIT;
  l_CISLOLOLD              CISLOINT_R;
  l_CISLOHOLD              CISLOINT_R;
  l_KLICOLD                KLICSTR;
  l_VCTYPOLD               TYPINT;
  l_VCZAOKRCOLD            CISLOINT;
  l_VCZAOKRDOLD            CISLOINT;
  l_BONUSOLD               CISLOFLT;
  l_POVPOPISOBJOLD         BOOLBIT;
  l_DEFPOPISYOBJOLD        KOMENTARTXT;
  l_PPCENAKOEFOLD          KOEFICIENTFLT;
  l_PPINGREDKOEFOLD        KOEFICIENTFLT;
  l_PPMASTERRECNAZEVOLD    NAZEVSTR;
  l_OBALRECNAZEVOLD        NAZEVSTR;
  l_DOPLATEKRECEPTOLD      NAZEVSTR;
  l_MINMNOZSTVIOLD         MNOZSTVIFLT;
  l_CHODOLD                NAZEVSTR;
  l_DRUHJIDLAOLD           NAZEVSTR;
  l_RESTMP                 BOOLBIT;
  l_DURABILITYOLD          NUMBERINT;
  l_MAXSLEVAOLD            KOEFICIENTFLT_NU;
  l_SKLADOLD               NAZEVSTR;
  l_SKPLTRVANLIVOST        MNOZSTVIFLT;
  l_DPHIDOLD               REFIDINT;
  l_CENABOLD               CENAFLT;
  l_DPHAOLD                CENAFLT;
  l_DPHBOLD                CENAFLT;
  l_CENASOLD               CENAFLT;
  l_CENAB1OLD              CENAFLT;
  l_DPHA1OLD               CENAFLT;
  l_DPHB1OLD               CENAFLT;
  l_CENAS1OLD              CENAFLT;
  l_CENAB2OLD              CENAFLT;
  l_DPHA2OLD               CENAFLT;
  l_DPHB2OLD               CENAFLT;
  l_CENAS2OLD              CENAFLT;
  l_UNITIDCONTENT          REFIDINT_NU;
  l_UNITIDSOLID            REFIDINT_NU;
  l_CNTRID                 REFIDINT_NU;
  l_DODVIDVYR              REFIDINT_NU;
  l_CONTENTAMOUNT          AMOUNTFLT_NU;
  l_SOLIDAMOUNT            AMOUNTFLT_NU;
  l_KMSCATEGORYOLD         NAMESTR;
  l_KMSITEMTYPEOLD         NAMESTR;
  l_KMCTID                 REFIDINT_NU;
  l_KMITID                 REFIDINT_NU;
begin
  l_MASTERPERM := E'SEPTIMAPP\\RECEPT\\RECEPTUPD';
  select * into l_MASTERPERM, l_RESTMP from admin_septim.RECEPT_CheckMasterPerm(a_ID, null, -1, l_MASTERPERM);
  if l_RESTMP = false then
    -- pouze pokud nemam klasicke opravneni pro editaci nebo praci se slozenymi menu, kontrola rozdilu
    select
      R.PORCI, R.SKR4ID, SR1.NAZEV, SR2.NAZEV, SR3.NAZEV, SR4.NAZEV, R.NAZEV, R.POPIS, R.ZKRATKA, R.IDCODE, R.PLUCODE,
      R.GRAMAZ, R.DOBAPRIPRAVY, R.DOBAKONZUMACE, R.POSTUP, R.VZDYCENA, R.CISLOL, R.CISLOH, R.KLIC, R.VCTYP, R.VCZAOKRC,
      R.VCZAOKRD, R.BONUS, R.POVPOPISOBJ, R.DEFPOPISYOBJ, R.PPCENAKOEF, R.PPINGREDKOEF, RM.NAZEV, RO.NAZEV, RP.NAZEV,
      R.MINMNOZSTVI, CH.NAZEV, DJ.NAZEV, R.MAXSLEVA, SK.NAZEV
    into
      l_OLDPORCI, l_SKR4IDOLD, l_SKUPREC1OLD, l_SKUPREC2OLD, l_SKUPREC3OLD, l_SKUPREC4OLD, l_NAZEVOLD, l_POPISOLD,
      l_ZKRATKAOLD, l_IDCODEOLD, l_PLUCODEOLD, l_GRAMAZOLD, l_DOBAPRIPRAVYOLD, l_DOBAKONZUMACEOLD, l_POSTUPOLD,
      l_VZDYCENAOLD, l_CISLOLOLD, l_CISLOHOLD, l_KLICOLD, l_VCTYPOLD, l_VCZAOKRCOLD, l_VCZAOKRDOLD, l_BONUSOLD,
      l_POVPOPISOBJOLD, l_DEFPOPISYOBJOLD, l_PPCENAKOEFOLD, l_PPINGREDKOEFOLD, l_PPMASTERRECNAZEVOLD, l_OBALRECNAZEVOLD,
      l_DOPLATEKRECEPTOLD, l_MINMNOZSTVIOLD, l_CHODOLD, l_DRUHJIDLAOLD, l_DURABILITYOLD, l_MAXSLEVAOLD, l_SKLADOLD,
      l_KMSCATEGORYOLD, l_KMSITEMTYPEOLD
    from
      RECEPT as R
      left outer join SKUPREC1 as SR1 on R.SKR1ID = SR1.SKR1ID
      left outer join SKUPREC2 as SR2 on R.SKR2ID = SR2.SKR2ID
      left outer join SKUPREC3 as SR3 on R.SKR3ID = SR3.SKR3ID
      left outer join SKUPREC4 as SR4 on R.SKR4ID = SR4.SKR4ID
      join DRUHJIDLA as DJ on DJ.DRJDID = R.DRJDID
      left outer join RECEPT as RM on R.PPMASTERRCPTID = RM.RCPTID
      left outer join RECEPT as RO on R.OBALRCPTID = RO.RCPTID
      left outer join RECEPT as RP on R.DOPLATEKRCPTID = RP.RCPTID
      left outer join CHODY as CH on R.CHODID = CH.CHODID
      left outer join SKLAD as SK on R.SKLDID = SK.SKLDID
      left outer join KMSCATEGORY as KMC on KMC.KMCTID = R.KMCTID
      left outer join KMSITEMTYPE as KMI on KMI.KMITID = R.KMITID
    where
      R.RCPTID = a_ID;

    -- kontrola zmeny udajov mimo zakladni cenu receptury (+DPH +dotace)
    -- POZOR: pri pridani noveho fieldu je potrebne pridat ho do kontroly
    if not(
      coalesce(l_NAZEVOLD, '') <> coalesce(a_NAZEV, '') or
      coalesce(l_POPISOLD, '') <> coalesce(a_POPIS, '') or
      coalesce(l_ZKRATKAOLD, '') <> coalesce(a_ZKRATKA, '') or
      coalesce(l_IDCODEOLD, '') <> coalesce(a_IDCODE, '') or
      coalesce(l_PLUCODEOLD, 0) <> coalesce(a_PLUCODE, 0) or
      coalesce(l_GRAMAZOLD,'') <> coalesce(a_GRAMAZ, '') or
      coalesce(l_OLDPORCI, 0) <> coalesce(a_PORCI, 0) or
      coalesce(l_DOBAPRIPRAVYOLD,0) <> coalesce(a_DOBAPRIPRAVY, 0) or
      coalesce(l_DOBAKONZUMACEOLD, 0) <> coalesce(a_DOBAKONZUMACE, 0) or
      coalesce(l_SKUPREC1OLD,'') <> coalesce(a_SKUPREC1, '') or
      coalesce(l_SKUPREC2OLD, '') <> coalesce(a_SKUPREC2, '') or
      coalesce(l_SKUPREC3OLD,'') <> coalesce(a_SKUPREC3, '') or
      coalesce(l_SKUPREC4OLD, '') <> coalesce(a_SKUPREC4, '') or
      coalesce(l_OBALRECNAZEVOLD,'') <> coalesce(a_OBALRECNAZEV, '') or
      coalesce(RCPTBARCODE_Get(a_ID), '') <> coalesce(a_BARCODE, '') or
      coalesce(l_POSTUPOLD,'') <> coalesce(a_POSTUP, '') or
      coalesce(l_VZDYCENAOLD, false) <> coalesce(a_VZDYCENA, false) or
      coalesce(l_CISLOLOLD,0) <> coalesce(a_CISLOL, 0) or
      coalesce(l_CISLOHOLD, 0) <> coalesce(a_CISLOH, 0) or
      coalesce(l_KLICOLD,'') <> coalesce(a_KLIC, '') or
      coalesce(l_VCTYPOLD, 0) <> coalesce(a_VCTYP, 0) or
      coalesce(l_VCZAOKRCOLD,0) <> coalesce(a_VCZAOKRC, 0) or
      coalesce(l_VCZAOKRDOLD, 0) <> coalesce(a_VCZAOKRD, 0) or
      coalesce(l_BONUSOLD, 0) <> coalesce(a_BONUS, 0) or
      coalesce(l_PPMASTERRECNAZEVOLD, '') <> coalesce(a_PPMASTERRECNAZEV, '') or
      coalesce(l_DOPLATEKRECEPTOLD, '') <> coalesce(a_DOPLATEKRECEPT, '') or
      coalesce(l_MINMNOZSTVIOLD, 0) <> coalesce(a_MINMNOZSTVI, 0) or
      coalesce(l_POVPOPISOBJOLD, false) <> coalesce(a_POVPOPISOBJ, false) or
      coalesce(l_DEFPOPISYOBJOLD, '') <> coalesce(a_DEFPOPISYOBJ, '') or
      coalesce(l_CHODOLD, '') <> coalesce(a_CHOD, '') or
      coalesce(l_DRUHJIDLAOLD, '') <> coalesce(a_DRUHJIDLA, '') or
      coalesce(l_DURABILITYOLD, 0) <> coalesce(a_DURABILITY, 0) or
      coalesce(l_MAXSLEVAOLD, 0) <> coalesce(a_MAXSLEVA, 0) or
      coalesce(l_SKLADOLD, '') <> coalesce(a_SKLAD,'') or
      coalesce(l_KMSCATEGORYOLD, '') <> coalesce(a_KMSCATEGORY, '') or
      coalesce(l_KMSITEMTYPEOLD, '') <> coalesce(a_KMSITEMTYPE, '') or
      -- polovicni porce, pouzije se zadana hodnota
      (RECEPT_CheckPolPorceTyp(a_ID, -1) = true and (coalesce(l_PPCENAKOEFOLD, 0) <> coalesce(a_PPCENAKOEF, 0)
       or coalesce(l_PPINGREDKOEFOLD, 0) <> coalesce(a_PPINGREDKOEF, 0))) or
      -- nepolovicni porce, ulozena je hodnota 1, proto default 1
      (RECEPT_CheckPolPorceTyp(a_ID, -1) = false and (coalesce(l_PPCENAKOEFOLD, 0) <> coalesce(a_PPCENAKOEF, 1)
       or coalesce(l_PPINGREDKOEFOLD, 0) <> coalesce(a_PPINGREDKOEF, 1))))
    then
      -- zmenila se pouze zakladni cena (nebo ani ta), staci i opravneni na zmenu pouze zakladni ceny
      l_MASTERPERM := admin_base.cm_JoinStringsBySep(l_MASTERPERM, E'SEPTIMAPP\\RECEPT\\RECEPTZAKLADNICENAUPD', ',');
    end if;

    perform admin_users.U_CheckPerm('SEPTIMAPP', l_MASTERPERM, 0);
  else
    -- mam update opravneni, takze pouze nacteni hodnot, ktere jsou potreba pro dalsi testy
    select
      R.PORCI, R.SKR4ID, SR1.NAZEV, SR2.NAZEV, SR3.NAZEV, SR4.NAZEV
    into strict
      l_OLDPORCI, l_SKR4IDOLD, l_SKUPREC1OLD, l_SKUPREC2OLD, l_SKUPREC3OLD, l_SKUPREC4OLD
    from
      RECEPT as R
      left outer join SKUPREC1 as SR1 on R.SKR1ID = SR1.SKR1ID
      left outer join SKUPREC2 as SR2 on R.SKR2ID = SR2.SKR2ID
      left outer join SKUPREC3 as SR3 on R.SKR3ID = SR3.SKR3ID
      left outer join SKUPREC4 as SR4 on R.SKR4ID = SR4.SKR4ID
    where
      R.RCPTID = a_ID;
  end if;

  if coalesce(l_SKUPREC1OLD, '') <> coalesce(a_SKUPREC1, '') or coalesce(l_SKUPREC2OLD, '') <> coalesce(a_SKUPREC2, '') then
    -- zmena skuprec1-2, extra opravneni
    perform admin_users.U_CheckPerm('SEPTIMAPP', E'RECEPT\\RECEPTSKUPREC12EDT', 0);
  end if;

  if coalesce(l_SKUPREC3OLD,'') <> coalesce(a_SKUPREC3, '') or coalesce(l_SKUPREC4OLD, '') <> coalesce(a_SKUPREC4, '') then
    -- zmena skuprec3-4, extra opravneni
    perform admin_users.U_CheckPerm('SEPTIMAPP', E'RECEPT\\RECEPTSKUPREC34EDT', 0);
  end if;

  -- check input data
  select *
  into
    a_CENAB, a_DPHA, a_DPHB, a_CENAS, a_CENAB1, a_DPHA1, a_DPHB1, a_CENAS1, a_CENAB2,
    a_DPHA2, a_DPHB2, a_CENAS2, a_PPCENAKOEF, a_PPINGREDKOEF, l_SKR1ID, l_SKR2ID,
    l_SKR3ID, l_SKR4ID, l_DPHID, l_RECTID, l_OBALRCPTID, l_PPMASTERRCPTID, l_DOPLATEKRCPTID,
    a_POVPOPISOBJ, a_DEFPOPISYOBJ, l_CHODID, l_DRJDID, l_SKLDID, l_UNITIDSALE,
    l_UNITIDCONTENT, l_UNITIDSOLID, l_CNTRID, l_DODVIDVYR, l_KMCTID, l_KMITID
  from RECEPT__Check(
    a_NAZEV, a_POPIS, a_ZKRATKA, a_DPH, a_KLIC, a_BARCODE, a_IDCODE, a_PLUCODE, a_RECEPTTYP,
    a_UNITSALE, a_CENAB, a_DPHA, a_DPHB, a_CENAS, a_CENAB1, a_DPHA1, a_DPHB1, a_CENAS1,
    a_CENAB2, a_DPHA2, a_DPHB2, a_CENAS2, a_CISLOL, a_CISLOH, a_PORCI, a_SKUPREC1,
    a_SKUPREC2, a_SKUPREC3, a_SKUPREC4, a_OBALRECNAZEV, a_POUZITDOPL, a_DOPLATEKRECEPT,
    a_MINMNOZSTVI, a_PPMASTERRECNAZEV, a_PPCENAKOEF, a_PPINGREDKOEF,
    a_DOBAPRIPRAVY, a_DOBAKONZUMACE, a_BONUS, a_POVPOPISOBJ, a_DEFPOPISYOBJ,
    a_CHOD, a_FORCE, a_ID, a_DRUHJIDLA, a_DURABILITY, a_SKLAD, a_UNITCONTENT, a_UNITSOLID,
    a_CONTENTAMOUNT, a_SOLIDAMOUNT, a_DODVVYR, a_COUNTRY, a_KMSCATEGORY, a_KMSITEMTYPE, a_WELMEC, a_TARE, a_AKTIVNI, a_WEIGHTED);

  -- Recipe-"stock item" must have the same nazev, popis, zkratka, cislol, cisloh, klic, idcode, barcode, durability
  if RECEPT_CheckSkladpol(a_ID) = true then
    l_SKPLID := RECEPT_GetSKPLID(a_ID);
    case
      when admin_eng.CheckForce(a_FORCE,'RSCHANGE') is null then
        select *
        into
          l_NAZEV, l_POPIS, l_ZKRATKA, l_CISLOL, l_CISLOH, l_KLIC, l_IDCODE, l_BARCODE, l_SKPLTRVANLIVOST
        from
          SKLADPOL_GetFields(l_SKPLID);

        perform RECEPT_CheckDiff(
          l_SKPLID, a_NAZEV, a_POPIS, a_ZKRATKA, a_CISLOL, a_CISLOH, a_KLIC, a_IDCODE, a_BARCODE, a_DURABILITY,
          a_FORCE, l_NAZEV, l_POPIS, l_ZKRATKA, l_CISLOL, l_CISLOH, l_KLIC, l_IDCODE, l_BARCODE, l_SKPLTRVANLIVOST);
      when admin_eng.CheckForce(a_FORCE, 'RSCHANGE') = 1 then
        perform SKLADPOL_UpdateFields(
          l_SKPLID, a_NAZEV, a_POPIS, a_ZKRATKA, a_CISLOL, a_CISLOH, a_KLIC, a_IDCODE, a_BARCODE,
          cast(a_DURABILITY as MNOZSTVIFLT));
      else
        null;-- ADDED EMPTY ELSE
    end case;
  end if;
  if a_LOGOPRAVA = 1 then
    perform admin_users.U_OPRAVA_P_RowUpdate('SEPTIMAPP', 'RECEPT', a_ID, '', '');
  end if;

  if RECEPT_CheckPolPorceTyp(a_ID, -1) then
    l_CONTENTAMOUNT := RECEPT_GetCONTENTAMOUNT(l_PPMASTERRCPTID)*a_PPINGREDKOEF;
    l_SOLIDAMOUNT := RECEPT_GetSOLIDAMOUNT(l_PPMASTERRCPTID)*a_PPINGREDKOEF;
  else
    l_CONTENTAMOUNT := a_CONTENTAMOUNT;
    l_SOLIDAMOUNT := a_SOLIDAMOUNT;
  end if;


  update RECEPT set
    NAZEV = a_NAZEV, POPIS = a_POPIS, ZKRATKA = a_ZKRATKA, IDCODE = a_IDCODE,
    SKR1ID = l_SKR1ID, SKR2ID = l_SKR2ID, SKR3ID = l_SKR3ID, PLUCODE = a_PLUCODE,
    PORCI = a_PORCI, /*RECTID=l_RECTID,*/
    GRAMAZ = a_GRAMAZ, SKR4ID = l_SKR4ID, POSTUP = a_POSTUP,
    DOBAPRIPRAVY = a_DOBAPRIPRAVY, DOBAKONZUMACE = a_DOBAKONZUMACE, VZDYCENA = a_VZDYCENA,
    CISLOL = a_CISLOL, CISLOH = RECEPT_GetCisloHByParams(a_ID, a_CISLOH),
    KLIC = a_KLIC, VCTYP = a_VCTYP, VCZAOKRC = a_VCZAOKRC, VCZAOKRD = a_VCZAOKRD,
    BONUS = a_BONUS, OBALRCPTID = l_OBALRCPTID, PPMASTERRCPTID = l_PPMASTERRCPTID,
    PPCENAKOEF = a_PPCENAKOEF, PPINGREDKOEF = a_PPINGREDKOEF,
    DOPLATEKRCPTID = l_DOPLATEKRCPTID, MINMNOZSTVI = a_MINMNOZSTVI,
    POVPOPISOBJ = a_POVPOPISOBJ, DEFPOPISYOBJ = a_DEFPOPISYOBJ, CHODID = l_CHODID,
    DRJDID = l_DRJDID, EXTID = coalesce(a_EXTID, EXTID), CUSTOM1 = a_CUSTOM1,
    CUSTOM2 = a_CUSTOM2, CUSTOM3 = a_CUSTOM3, CUSTOM4 = a_CUSTOM4,
    CUSTOM5 = a_CUSTOM5, DURABILITY = a_DURABILITY, MAXSLEVA = a_MAXSLEVA,
    SKLDID = l_SKLDID, UNITIDSALE = l_UNITIDSALE,
    UNITIDCONTENT = l_UNITIDCONTENT, UNITIDSOLID = l_UNITIDSOLID, CONTENTAMOUNT = l_CONTENTAMOUNT,
    SOLIDAMOUNT = l_SOLIDAMOUNT, CNTRID = l_CNTRID, WELMEC = a_WELMEC, DODVIDVYR = l_DODVIDVYR,
    KMCTID = l_KMCTID, KMITID = l_KMITID, TARE  = a_TARE, AKTIVNI = a_AKTIVNI, WEIGHTED = a_WEIGHTED
  where
    RCPTID = a_ID;

  perform admin_septim.NABITEMRECEPT_UpdateRecept(l_SKR4IDOLD, l_SKR4ID, a_ID, a_FORCE);

  -- jestliže má receptura přiřazenu poloviční porci, tak zaktualizovat skr1id (skupina receptur pro odpisy zeskladu)
  -- tato synchronizace je důležitá při přepočtu skladů mezi inventurami
  if exists(select 1 from RECEPT where PPMASTERRCPTID = a_ID and SMAZAN = 0) then
    update RECEPT set
      SKR1ID = l_SKR1ID, SKR2ID = l_SKR2ID, SKR3ID = l_SKR3ID, SKR4ID = l_SKR4ID,
      OBALRCPTID = l_OBALRCPTID, DRJDID = l_DRJDID, DURABILITY = a_DURABILITY, SKLDID = l_SKLDID,
      MAXSLEVA = a_MAXSLEVA, UNITIDSALE = l_UNITIDSALE, UNITIDCONTENT = l_UNITIDCONTENT,
      UNITIDSOLID = l_UNITIDSOLID, CONTENTAMOUNT = RECEPT_GetPPINGREDKOEF(RCPTID)*a_CONTENTAMOUNT,
      SOLIDAMOUNT = RECEPT_GetPPINGREDKOEF(RCPTID)*a_SOLIDAMOUNT,
      CNTRID = l_CNTRID, WELMEC = a_WELMEC, DODVIDVYR = l_DODVIDVYR,
      KMCTID = l_KMCTID, KMITID = l_KMITID, AKTIVNI = a_AKTIVNI, WEIGHTED = a_WEIGHTED
    where PPMASTERRCPTID = a_ID
      and SMAZAN = 0;
  end if;

  if a_PORCI <> l_OLDPORCI then
    -- nejdříve je třeba zavolat update množství na 1 porci v RLRCPT a přepočet RL stromu
    perform admin_septim.RLRCPT_UpdatePorce(a_ID, a_PORCI);
    -- a teprve pak je možné přepočítat skladovou cenu
    perform admin_septim.RECEPT_RecalculateStockPrices(a_ID);
  end if;
  perform admin_septim.RCPTBARCODE_RECEPTUpdate(a_ID, a_BARCODE);
  --if a_TYP in (0,1) then
  if a_UPDCENY = 1 then
    -- jestli jde o recepturu u které se zadavá cena. Fukce se volá s a_KORUNOVA=1 aby se cena změnila i pro korunovou
    -- recepturu. Ta se může změnit jen když je jiná kategorie DPH.
    if RECEPT_ZadavatCenu(a_ID,-1,true) = true then
      -- get current data
      select
        RC.DPHID, RC.CENAB, RC.DPHA, RC.DPHB, RC.CENAS,
        DR.CENAB1, DR.DPHA1, DR.DPHB1, DR.CENAS1,
        DR.CENAB2, DR.DPHA2, DR.DPHB1, DR.CENAS2
      into
        l_DPHIDOLD, l_CENABOLD, l_DPHAOLD, l_DPHBOLD, l_CENASOLD,
        l_CENAB1OLD, l_DPHA1OLD, l_DPHB1OLD, l_CENAS1OLD,
        l_CENAB2OLD, l_DPHA2OLD, l_DPHB2OLD, l_CENAS2OLD
      from
        RECCENIK as RC
        left join DOTACEREC as DR on RC.RCNKID = DR.RCNKID
      where
        RC.RCPTID = a_ID and RC.CENMID is null and RC.CENKID is null and RC.SKP1ID is null and RC.SMAZAN = 0;

      -- check whether any price or dph has been changed
      if coalesce(l_DPHIDOLD, 0) <> coalesce(l_DPHID, 0) or coalesce(l_CENABOLD, 0) <> coalesce(a_CENAB, 0) or
         coalesce(l_DPHAOLD, 0) <> coalesce(a_DPHA, 0) or coalesce(l_DPHBOLD, 0) <> coalesce(a_DPHB, 0) or
         coalesce(l_CENASOLD, 0) <> coalesce(a_CENAS, 0) or coalesce(l_CENAB1OLD, 0) <> coalesce(a_CENAB1, 0) or
         coalesce(l_DPHA1OLD, 0) <> coalesce(a_DPHA1, 0) or coalesce(l_DPHB1OLD, 0) <> coalesce(a_DPHB1, 0) or
         coalesce(l_CENAS1OLD, 0) <> coalesce(a_CENAS1, 0) or coalesce(l_CENAB2OLD, 0) <> coalesce(a_CENAB2, 0) or
         coalesce(l_DPHA2OLD, 0) <> coalesce(a_DPHA2, 0) or coalesce(l_DPHB2OLD, 0) <> coalesce(a_DPHB2, 0) or
         coalesce(l_CENAS2OLD, 0) <> coalesce(a_CENAS2, 0)
      then
        perform admin_septim.RECCENIK_RECEPTUpdate(a_ID,a_DPH,a_CENAB,a_DPHA,a_DPHB,a_CENAS,a_CENAB1,a_DPHA1,a_DPHB1,a_CENAS1,
        a_CENAB2,a_DPHA2,a_DPHB2,a_CENAS2,a_LOGOPRAVA,l_MASTERPERM);
      end if;
    else
      perform admin_septim.RECCENIK_RECEPTDelete(a_ID);
    end if;
  end if;
  if a_LOGOPRAVA = 1 then
    perform admin_users.U_OPRAVA_P_Finish();
  end if;
  return;
end; $$;




-- RECEPTUpdate:
select ASWDropProcedure('RECEPTUpdate');
create or replace function admin_septim.RECEPTUpdate(
  in a_ID                  IDINT,
  in a_NAZEV               NAZEVSTR,
  in a_POPIS               POPISTXT,
  in a_ZKRATKA             ZKRATKASTR,
  in a_IDCODE              IDCODESTR,
  in a_BARCODE             BARCODETXT,
  in a_SKUPREC1            NAZEVSTR,
  in a_SKUPREC2            NAZEVSTR,
  in a_SKUPREC3            NAZEVSTR,
  in a_OBALRECNAZEV        NAZEVSTR,
  in a_PLUCODE             PLUINT,
  in a_PORCI               MNOZSTVIFLT,
  in a_GRAMAZ              GRAMAZTXT,
  in a_SKUPREC4            NAZEVSTR,
  in a_POSTUP              POSTUPTXT,
  in a_DOBAPRIPRAVY        TIMEINT,
  in a_DOBAKONZUMACE       TIMEINT,
  in a_VZDYCENA            BOOLBIT,
  in a_CISLOL              CISLOINT_R,
  in a_CISLOH              CISLOINT_R,
  in a_RECEPTTYP           NAZEVSTR,
  in a_UNITSALE            NAMESTR,
  in a_KLIC                KLICSTR,
  in a_DPH                 NAZEVSTR,
  in a_CENAB               CENAFLT,
  in a_DPHA                CENAFLT,
  in a_CENAS               CENAFLT,
  in a_CENAB_DPHB          CENAFLT,
  in a_DPHA_DPHB           CENAFLT,
  in a_DPHB_DPHB           CENAFLT,
  in a_CENAS_DPHB          CENAFLT,
  in a_CENAB1              CENAFLT,
  in a_DPHA1               CENAFLT,
  in a_CENAS1              CENAFLT,
  in a_CENAB2              CENAFLT,
  in a_DPHA2               CENAFLT,
  in a_CENAS2              CENAFLT,
  in a_CENAB1_DPHB         CENAFLT,
  in a_DPHA1_DPHB          CENAFLT,
  in a_DPHB1_DPHB          CENAFLT,
  in a_CENAS1_DPHB         CENAFLT,
  in a_CENAB2_DPHB         CENAFLT,
  in a_DPHA2_DPHB          CENAFLT,
  in a_DPHB2_DPHB          CENAFLT,
  in a_CENAS2_DPHB         CENAFLT,
  in a_VCTYP               TYPINT,
  in a_VCZAOKRC            CISLOINT,
  in a_VCZAOKRD            CISLOINT,
  in a_BONUS               CISLOFLT,
  in a_PPMASTERRECNAZEV    NAZEVSTR,          -- Název hlavní receptury poloviční porce
  in a_PPCENAKOEF          KOEFICIENTFLT,     -- koeficient ceny pro poloviční porce
  in a_PPINGREDKOEF        KOEFICIENTFLT,     -- koeficient ingredience pro poloviční porce
  in a_POUZITDOPL          BOOLBIT,
  in a_DOPLATEKRECEPT      NAZEVSTR,
  in a_MINMNOZSTVI         MNOZSTVIFLT,
  in a_POVPOPISOBJ         BOOLBIT,
  in a_DEFPOPISYOBJ        KOMENTARTXT,
  in a_CHOD                NAZEVSTR,
  in a_DRUHJIDLA           NAZEVSTR,
  in a_CUSTOM1             CUSTOMSTR,
  in a_CUSTOM2             CUSTOMSTR,
  in a_CUSTOM3             CUSTOMTXT,
  in a_CUSTOM4             CUSTOMTXT,
  in a_CUSTOM5             CUSTOMTXT,
  in a_DURABILITY          NUMBERINT,
  in a_MAXSLEVA            KOEFICIENTFLT_NU,
  in a_SKLAD               NAZEVSTR,
  in a_UNITCONTENT         NAMESTR,
  in a_UNITSOLID           NAMESTR,
  in a_CONTENTAMOUNT       AMOUNTFLT_NU,
  in a_SOLIDAMOUNT         AMOUNTFLT_NU,
  in a_DODVVYR             NAMESTR,
  in a_COUNTRY             NAMESTR,
  in a_WELMEC              BOOLBIT_0,
  in a_KMSCATEGORY         NAMESTR,
  in a_KMSITEMTYPE         NAMESTR,
  in a_TARE                AMOUNTFLT_NU,
  in a_AKTIVNI             BOOLBIT_1,
  in a_WEIGHTED            BOOLBIT_0,
  in a_FORCE               FORCETXT default null
) returns void
language plpgsql security definer
as $$
begin
  if admin_base.B_LIMITS_GetLicence('BASE', 'DPHB', 0) = 0 then
    a_CENAB_DPHB := a_CENAB;
    a_DPHA_DPHB := a_DPHA;
    a_DPHB_DPHB := null;
    a_CENAS_DPHB := a_CENAS;
    a_CENAB1_DPHB := a_CENAB1;
    a_DPHA1_DPHB := a_DPHA1;
    a_DPHB1_DPHB := null;
    a_CENAS1_DPHB := a_CENAS1;
    a_CENAB2_DPHB := a_CENAB2;
    a_DPHA2_DPHB := a_DPHA2;
    a_DPHB2_DPHB := null;
    a_CENAS2_DPHB := a_CENAS2;
  end if;
  perform admin_params.P_CheckGlobalParamBOOL('SYNCRECEPT', 'RECEPTIMPORTDB', false, 35539);
  perform admin_septim.RECEPT_BasicUpdate(
    a_ID, a_NAZEV, a_POPIS, a_ZKRATKA, a_IDCODE, a_BARCODE, a_SKUPREC1, a_SKUPREC2,
    a_SKUPREC3, a_OBALRECNAZEV, a_PLUCODE, a_PORCI, a_GRAMAZ, a_SKUPREC4, a_POSTUP,
    a_DOBAPRIPRAVY, a_DOBAKONZUMACE, a_VZDYCENA, a_CISLOL, a_CISLOH, a_RECEPTTYP, a_UNITSALE,
    a_KLIC, a_DPH, a_CENAB_DPHB, a_DPHA_DPHB, a_DPHB_DPHB, a_CENAS_DPHB,
    a_CENAB1_DPHB, a_DPHA1_DPHB, a_DPHB1_DPHB, a_CENAS1_DPHB, a_CENAB2_DPHB, a_DPHA2_DPHB,
    a_DPHB2_DPHB, a_CENAS2_DPHB, a_VCTYP, a_VCZAOKRC, a_VCZAOKRD, a_BONUS,
    a_PPMASTERRECNAZEV, a_PPCENAKOEF, a_PPINGREDKOEF, a_POUZITDOPL, a_DOPLATEKRECEPT,
    a_MINMNOZSTVI, a_POVPOPISOBJ, a_DEFPOPISYOBJ, a_CHOD, a_DRUHJIDLA,
    1, 1, null, a_CUSTOM1, a_CUSTOM2, a_CUSTOM3, a_CUSTOM4, a_CUSTOM5, a_DURABILITY,
    a_MAXSLEVA, a_SKLAD, a_UNITCONTENT, a_UNITSOLID, a_CONTENTAMOUNT, a_SOLIDAMOUNT,
    a_DODVVYR, a_COUNTRY, a_WELMEC, a_KMSCATEGORY, a_KMSITEMTYPE, a_TARE, a_AKTIVNI, a_WEIGHTED, a_FORCE);
end; $$;

select grant_func('RECEPTUpdate', 'SPEXEC');


select ASWDropProcedure('RECEPT__CheckReferenceCT');-- Check Reference - Configuration Table

/** Procedura se pouziva pri mazani receptury.
 *  Procedura zjisti odkazy na recepturu z konfiguracnich tabulek, tj. z tabulek ze kterych ak existuji
 *  odkazy - generujem chybu, nepovolime skryti. Tato procedura zaroven resi nekolik specialnich situaci, u ktorych
 *  taky nepovolime skryti. V tomto pripade jde o odkazy z tabulek:
 *          OUPOL          - receptura je pouzita v otevrenem uctu
 *          VYCEPKREDIT    - namarkovany kredit, kt. jeste neni odeslan do reconu
 *          OTEVOBJEDNAVKA - receptura je pouzita v otevrene objednavce
 *          JIDELNICEK     - zaznam z jidelnicku, kt. aktualne plati nebo je nastaven do buducnosti
 *
 *  Vysledek hledani procedura vraci pres vystupne parametry a_FLAG, a_VALUE1 a a_VALUE2. Prametr a_FLAG je priznak
 *  (klic), ktery znaci o jakou situaci se jedna:
 *  'OTEVUCET'       = receptura je pouzita v otevrenem uctu
 *                       (a_VALUE1 a a_VALUE2 neobsahuji zadne data)
 *  'VYCEPKREDIT'    = namarkovany kredit, kt. jeste neni odeslan do reconu
 *                       (a_VALUE1 a a_VALUE2 neobsahuji zadne data)
 *  'OTEVOBJEDNAVKA' = receptura je pouzita v otevrene objednavce
 *                       (a_VALUE1 a a_VALUE2 neobsahuji zadne data)
 *  'JIDELNICEK'     = zaznam z jidelnicku, kt. aktualne plati nebo je nastaven do buducnosti
 *                       (a_VALUE1 a a_VALUE2 neobsahuji zadne data)
 *  'OTEVOBJEDNAVKAKDS' = receptura je pouzia v otevrene objednavce systemu KDS
 *                       (a_VALUE1 a a_VALUE2 neobsahuji zadne data)
 *  'CONFIG'         = odkaz z konfiguracnich tabulek
 *                       (a_VALUE1=zoznam tab. s neskrytymi zaznamami, a_VALUE2=zoznam tab. jenom se skrytymi zaznamami)
 *  NULL             = vse je ok - nebyli nalezeny zadne odkazy atd.
 *                       (a_VALUE1 a a_VALUE2 neobsahuji zadne data)
 */
create or replace function admin_septim.RECEPT__CheckReferenceCT(
  in  a_RCPTID             REFIDINT,
  out a_FLAG               KLICSTR,      -- priznak podle, kt. pozname jak test dopadl - pokud je NULL nebo prazdny retezec, tak vse ok
  out a_VALUE1             VALUETXT,
  out a_VALUE2             VALUETXT
)
language plpgsql security definer
-- priznak podle, kt. pozname jak test dopadl - pokud je NULL nebo prazdny retezec, tak vse ok
as $$
declare
  l_PROVOZTABLE            VALUETXT; -- seznam provoznich tabulek
  l_SPECIALTABLE           VALUETXT; -- seznam tabulek, ktere se testuji zvlast
  l_RESBRI                 CISLOINT;
  l_RESRLRCPT              CISLOINT;
  l_RECEPTTABLENAME        VALUETXT; -- cesky nazev tabulky receptur
  l_RLRCPTTABLENAME        VALUETXT; -- cesky nazev tabulky rlrcpt
begin
  a_VALUE1 := null;
  a_VALUE2 := null;
  --- seznam provoznich tabulek (okrem specialnich, ktere se resi zvlast)
  -- tabulka OUPOL je tu jenom kvuli tomu aby se napr. v pripade stornovane polozky ponuklo skryti
  -- tabulka JIDELNICEK je tu kvuli tomu ze ak jde o zaznam z minulosti, tak aby sme nabidli skryti
  -- POZOR! ohledne tabulek OUPOL a JIDELNICEK se musi zachovat poradi testovani - se predpoklada, ze
  --        test provoznich tabulek nasleduje az po samotnom teste tabulek OUPOL a JIDELNICEK (kt. se
  --        testuji zvlast)
  l_PROVOZTABLE :=
    concat('VYCEPRESET,UZAVOBJEDNAVKA,UUPOL,PREBYTEKRCPT,PREVODRCPT,ZNEHODNRCPT,PRODEJRCPT,ZAPUJCKARCPT,',
           'BOURANIRCPT,NORMOVANIRCPT,SUBSTITUCERCPT,INVENTURARCPT,OUPOL,JIDELNICEK,KOBJEDNAVKAITEM,KUZAVOBJEDNAVKAITEM,',
           'KASASKLADOPERACEPOL');
  --- seznam tabulek, ktere se resi zvlast (INGRED, RECCENIK, RECNAZVY, RECBMP, RCPTBARCODE se mazou s recepturou, RECSKLADCENA v ramci smazani ingredienci)
  -- POZOR! tabulku RLRCPTFULL nebudem testovat, staci pokud provadime test pro tab. RLRCPT (zbytecne by se dostala
  --        do seznamu tabulek a pusobilo by to matuco)
  l_SPECIALTABLE := 'INGRED,RLRCPT,RECCENIK,RECNAZVY,RECBMP,RCPTBARCODE,VYCEPKREDIT,OTEVOBJEDNAVKA,RLRCPTFULL,RECSKLADCENA,RLSKUPRCPT,RECEPTINGREDFULL';
  --- test zda neni odkaz z OUPOL - receptura je pouzita v otevrenem uctu
  -- POZOR! pokud testujm SMAZAN=0 tak  musime OUPOL pridat do seznamu provoznich tabulek - ak by tam byl odkaz ze
  --        stornovane polozky aby sme nabidli skryti
  if OUPOL_RECEPTCheckReference(a_RCPTID) = true then
    a_FLAG := 'OTEVUCET';
    return;
  end if;
  --- test zda neni odkaz z VYCEPKREDIT - namarkovany kredit, kt. jeste neni odeslan do reconu
  if VYCEPKREDIT_RECEPTCheckReference(a_RCPTID) = true then
    a_FLAG := 'VYCEPKREDIT';
    return;
  end if;
  --- test zda neni odkaz z OTEVOBJEDNAVKA - test jestli nejde o odkaz z otevrene objednavky
  -- POZOR! testujem PROVEDENA=0, tym padem by sme mneli provest test jeste i u provoznich tabulek, ak by slo o jeste
  --        nepresunutou ojednavku - ale POZOR nebudem to provadet, protoze od nepresunute objednavky existuje kopie
  --        v UZAVOBJEDNAVKA (pokud by sme test provadeli jenom by to pusobilo matuco)
  if OTEVOBJEDNAVKA_RECEPTCheckReference(a_RCPTID) = true then
    a_FLAG := 'OTEVOBJEDNAVKA';
    return;
  end if;
  --- test zda neni odkaz z tab. JIDELNICEK - test jestli nejde o zaznam z jidelnicku, kt. aktualne plati
  ---                                         nebo je nastaven do buducnosti
  -- POZOR! test provoadime za urcite obdobi (>=now), proto musime provest i test pri kontrole provoznich tabulek
  --        - tj. musime tabulku pridat do seznamu provoznich tabulek, ak by existoval odkaz ze zaznamu z minulosti
  if JIDELNICEK_RECEPTCheckReference(a_RCPTID) = true then
    a_FLAG := 'JIDELNICEK';
    return;
  end if;
  if KOBJEDNAVKAITEM_RECEPTCheckReference(a_RCPTID) = true then
    a_FLAG := 'OTEVOBJEDNAVKAKDS';
    return;
  end if;

  -- test na aktivní skladové operace na pokladnì
  if exists (select from KASASKLADOPERACE KSO join KASASKLADOPERACEPOL KSP on KSO.KSOPID = KSP.KSOPID where KSO.SMAZAN = 0 and KSP.SMAZAN = 0 and KSP.RCPTID = a_RCPTID) then
    a_FLAG := 'KASASKLADOPERACE';
    return;
  end if;

  --- otestujeme, zda na recepturu neexistuje odkaz z konfiguracnich tabulek
  select B_RI.a_Result, B_RI.a_RefTableNameList1, B_RI.a_RefTableNameList2 into l_RESBRI,a_VALUE1,a_VALUE2 from admin_base.B_RI('SEPTIMAPP','RECEPT',a_RCPTID,concat(l_PROVOZTABLE,',',l_SPECIALTABLE),
  -1,-1);
  l_RESRLRCPT := RLRCPT_CheckRI(a_RCPTID);
  if l_RESRLRCPT > 0 then
    l_RESBRI := l_RESBRI+1;
    l_RLRCPTTABLENAME := admin_base.B_TABLE_GetNazev('SEPTIMAPP','RLRCPT','SEPTIMAPP.RLRCPT');
    if l_RESRLRCPT = 1 then
      -- pridavam pomocnej text, aby uzivatel vedel o co jde
      a_VALUE2 := admin_base.cm_JoinStringsBySep(a_VALUE2,concat('"',admin_base.B_Format(concat(l_RLRCPTTABLENAME,' (%s)'), cast(array[admin_base.B_GetTxt('SEPTIMAPP','RECEPT','HIDERECEPT')] as text[])),'"'),', ');
    else
      a_VALUE1 := admin_base.cm_JoinStringsBySep(a_VALUE1,concat('"',l_RLRCPTTABLENAME,'"'),', ');
    end if;
  end if;
  if l_RESBRI > 0 then
    l_RECEPTTABLENAME := admin_base.B_TABLE_GetNazev('SEPTIMAPP','RECEPT','SEPTIMAPP.RECEPT');
    --- do seznamu tabulek pridame k nekterym tabulkam komentare jako vysvetlivky
    a_VALUE1 := concat(coalesce(a_VALUE1,''),','); -- kvuli vyhledavani - vyhledavame '.TABULKA,' - kvuli unikatnosti
    a_VALUE2 := concat(coalesce(a_VALUE2,''),',');
    -- poloviční porce, doplatek, obal
    a_VALUE1 := replace(a_VALUE1,concat('"',l_RECEPTTABLENAME,'",'),concat('"',admin_base.B_Format(concat(l_RECEPTTABLENAME,' (%s)'), cast(array[admin_base.B_GetTxt('SEPTIMAPP','RECEPT','POLPORCE_DOPL_OBAL')] as text[])),'",'));
    a_VALUE2 := replace(a_VALUE2,concat('"',l_RECEPTTABLENAME,'",'),concat('"',admin_base.B_Format(concat(l_RECEPTTABLENAME,' (%s)'), cast(array[admin_base.B_GetTxt('SEPTIMAPP','RECEPT','POLPORCE_DOPL_OBAL')] as text[])),'",'));
    a_VALUE1 := substr(a_VALUE1,1,length(a_VALUE1) -1); -- z konce odeberem pridanou carku
    a_VALUE2 := substr(a_VALUE2,1,length(a_VALUE2) -1);
    a_FLAG := 'CONFIG'; -- odkaz z konfiguracnich tabulek
    return;
  end if;
  a_FLAG := null; -- vse ok
end; $$;



select ASWDropProcedure('RECEPT_SKLADPOLCheckReferenceCT');-- Check Reference - Configuration Table

/** Obalka pro proc. RECEPT__CheckReferenceCT pro volani ze skladpol.
 *  Procedura se pouziva pri mazani skladove polozky.
 */
create or replace function admin_septim.RECEPT_SKLADPOLCheckReferenceCT(
  in  a_RCPTID             REFIDINT,
  out a_FLAG               KLICSTR,
  out a_VALUE1             VALUETXT,
  out a_VALUE2             VALUETXT
)
language plpgsql security definer as $$
begin
  select * into a_FLAG,a_VALUE1,a_VALUE2 from admin_septim.RECEPT__CheckReferenceCT(a_RCPTID);
  return;
end; $$;



select ASWDropProcedure('RECEPT__CheckReferenceOT');-- Check Reference - Operational Table

/** Procedura se pouziva pri mazani receptury.
 *  Procedura zjisti odkazy na recepturu z provoznich tabulek, tj. z tabulek ze kterych ak existuji
 *  odkazy - NEgenerujem chybu, povolime skryti.
 *
 *  Vysledek hledani procedura vraci pres vystupne parametry a_FLAG, a_VALUE1 a a_VALUE2. Prametr a_FLAG je priznak
 *  (klic), ktery znaci o jakou situaci se jedna:
 *  'PROVOZ' = odkaz z provoznich tabulek
 *               (a_VALUE1=zoznam tab. s neskrytymi zaznamami, a_VALUE2=zoznam tab. jenom se skrytymi zaznamami)
 *  NULL     = vse je ok - nebyli nalezeny zadne odkazy atd.
 *               (a_VALUE1 a a_VALUE2 neobsahuji zadne data)
 */
create or replace function admin_septim.RECEPT__CheckReferenceOT(
  in  a_RCPTID             REFIDINT,
  out a_FLAG               KLICSTR,      -- priznak podle, kt. pozname jak test dopadl - pokud je NULL nebo prazdny retezec, tak vse ok
  out a_VALUE1             VALUETXT,
  out a_VALUE2             VALUETXT
)
language plpgsql security definer
-- priznak podle, kt. pozname jak test dopadl - pokud je NULL nebo prazdny retezec, tak vse ok
as $$
declare
  l_CONFIGTABLE            VALUETXT; -- seznam konfiguracnich tabulek
  l_SPECIALTABLE           VALUETXT; -- seznam tabulek, ktere se testuji zvlast
  l_RESBRI                 CISLOINT;
  l_OUPOLTABLENAME         VALUETXT; -- cesky nazev tabulky oupol
  l_JIDELNICEKTABLENAME    VALUETXT; -- cesky nazev tabulky jidelnicek
begin
  a_VALUE1 := null;
  a_VALUE2 := null;
  --- seznam konfuguracnich tabulek
  -- POZOR! tabulku RLRCPTFULL nebudem testovat, staci pokud provadime test pro tab. RLRCPT (zbytecne by se dostala
  --        do seznamu tabulek a pusobilo by to matuco)
  l_CONFIGTABLE := concat('NABITEMRECEPT,BLOCKRECEPT,RBITEM,RECBUNDLE,RECEPT,TARIFDEF,RECONDEBET,RECONKREDIT,','TIMESECTION,IMPULZITEM,LEKCE,TELZONEITEM');
  --- seznam tabulek, ktere se testuji zvlast (INGRED, RECCENIK, RECNAZVY, RECBMP, RCPTBARCODE,RLSKUPRCPT se mazou s recepturou, RECSKLADCENA v ramci smazani ingredienci)
  l_SPECIALTABLE := 'INGRED,RLRCPT,RECCENIK,RECNAZVY,RECBMP,RCPTBARCODE,VYCEPKREDIT,OTEVOBJEDNAVKA,RLRCPTFULL,RECSKLADCENA,RLSKUPRCPT,KASASKLADOPERACEPOL,RECEPTINGREDFULL';
  --- otestujeme, že na recepturu není odkaz z provoznich tabulek
  select B_RI.a_Result, B_RI.a_RefTableNameList1, B_RI.a_RefTableNameList2 into l_RESBRI,a_VALUE1,a_VALUE2 from admin_base.B_RI('SEPTIMAPP','RECEPT',a_RCPTID,concat(l_CONFIGTABLE,',',l_SPECIALTABLE),
  -1,-1);

  -- dořešení skladových operací na pokladnì - pouze smazaných, nesmazané se řeší v rámci testu konfiguraèních tabulek
  if exists (select from KASASKLADOPERACE KSO join KASASKLADOPERACEPOL KSP on KSO.KSOPID = KSP.KSOPID where KSO.SMAZAN is null and KSP.SMAZAN = 0 and KSP.RCPTID = a_RCPTID) then
    -- smazané skladové operace
    a_VALUE2 := cm_JoinStringsBySep(a_VALUE2, B_Format('%s (%s)', cast(array[B_TABLE_GetNazev('SEPTIMAPP', 'KASASKLADOPERACEPOL', 'SEPTIMAPP.KASASKLADOPERACEPOL'),
                                                                             B_GetTxt('SEPTIMAPP', 'RECEPT', 'KASASKLADOPERACEDELETED')] as text[])), ', ');
    if l_RESBRI <= 0 then
      l_RESBRI := 1;
    end if;
  end if;

  if l_RESBRI > 0 then
    --- do seznamu tabulek pridame k nekterym tabulkam komentare jako vysvetlivky
    a_VALUE1 := concat(coalesce(a_VALUE1,''),','); -- kvuli vyhledavani - vyhledavame '.TABULKA,' - kvuli unikatnosti
    a_VALUE2 := concat(coalesce(a_VALUE2,''),',');
    l_OUPOLTABLENAME := admin_base.B_TABLE_GetNazev('SEPTIMAPP','OUPOL','SEPTIMAPP.OUPOL');
    -- stornovaná položka
    a_VALUE1 := replace(a_VALUE1,concat('"',l_OUPOLTABLENAME,'",'),concat('"',admin_base.B_Format(concat(l_OUPOLTABLENAME,' (%s)'), cast(array[admin_base.B_GetTxt('SEPTIMAPP','RECEPT','OUPOLSTORNO')] as text[])),'",'));
    a_VALUE2 := replace(a_VALUE2,concat('"',l_OUPOLTABLENAME,'",'),concat('"',admin_base.B_Format(concat(l_OUPOLTABLENAME,' (%s)'), cast(array[admin_base.B_GetTxt('SEPTIMAPP','RECEPT','OUPOLSTORNO')] as text[])),'",'));
    l_JIDELNICEKTABLENAME := admin_base.B_TABLE_GetNazev('SEPTIMAPP','JIDELNICEK','SEPTIMAPP.JIDELNICEK');
    -- jidelnicek - záznam z minulosti
    a_VALUE1 := replace(a_VALUE1,concat('"',l_JIDELNICEKTABLENAME,'",'),concat('"',admin_base.B_Format(concat(l_JIDELNICEKTABLENAME,' (%s)'), cast(array[admin_base.B_GetTxt('SEPTIMAPP','RECEPT','OLDJIDELNICEK')] as text[])),'",'));
    a_VALUE2 := replace(a_VALUE2,concat('"',l_JIDELNICEKTABLENAME,'",'),concat('"',admin_base.B_Format(concat(l_JIDELNICEKTABLENAME,' (%s)'), cast(array[admin_base.B_GetTxt('SEPTIMAPP','RECEPT','OLDJIDELNICEK')] as text[])),'",'));
    a_VALUE1 := substr(a_VALUE1,1,length(a_VALUE1) -1); -- z konce odeberem pridanou carku
    a_VALUE2 := substr(a_VALUE2,1,length(a_VALUE2) -1);
    a_FLAG := 'PROVOZ'; -- odkaz z provoznich tabulek
    --message '1 ' || a_VALUE1;
    --message '2 ' || a_VALUE2;
    return;
  end if;
  a_FLAG := null; -- vse ok
end; $$;



select ASWDropProcedure('RECEPT_SKLADPOLCheckReferenceOT');-- Check Reference - Operational Table

/** Obalka pro proc. RECEPT__CheckReferenceOT pro volani ze skladpol.
 *  Procedura se pouziva pri mazani skladove polozky.
 */
create or replace function admin_septim.RECEPT_SKLADPOLCheckReferenceOT(
  in  a_RCPTID             REFIDINT,
  out a_FLAG               KLICSTR,
  out a_VALUE1             VALUETXT,
  out a_VALUE2             VALUETXT
)
language plpgsql security definer as $$
begin
  select * into a_FLAG,a_VALUE1,a_VALUE2 from admin_septim.RECEPT__CheckReferenceOT(a_RCPTID);
  return;
end; $$;



-- RECEPT_Delete:
select ASWDropProcedure('RECEPT_Delete');
/**  Procedura pro smazani receptury.
 *
 *Zakladni konstrukce jak probiha kontrola odkazu z jinych tabulek:
 * 1) test existence odkazu na recepturu z konfiguracnych tabulek
 * 2) test existence odkazu na skladpol z konfiguracnych tabulek (pokud jde o vazbu recept-skladpol)
 * 3) test existence odkazu na recepturu z provoznich tabulek
 * 4) test existence odkazu na skladpol z provoznich tabulek (pokud jde o vazbu recept-skladpol)
 *
 * Obecne plati ze pokud existuje odkaz z konfiguracnych tabulek vyvolame chybu a nenabizime skryti. Pokud existuje
 * odkaz z provoznich tabulek nabizime skryti. Recepturu (a skladovou polozku) mazeme pokud nejsou zadne odkazy zjinych
 * tabulek.
 *
 * Podrobny popis se nachazi u procedury SKLADPOL__BasicDelete - rozdil je jenom v tom, ze testy jsou prohozeny viz
 * zakladni konstrukce kontroly.
 */
create or replace function admin_septim.RECEPT_Delete(
  in a_ID                  IDINT,
  in a_SKR4ID              REFIDINT_NU,
  in a_FORCE               FORCETXT
) returns void
language plpgsql security definer as $$
declare
  l_SKLADPOL               BOOLBIT; -- receptura je zaroven skladpol
  l_SKPLID                 REFIDINT;
  l_VALUE1_R               VALUETXT; -- pro recepturu
  l_VALUE2_R               VALUETXT; -- pro recepturu
  l_VALUE1_SP              VALUETXT; -- pro skladovu polozku
  l_VALUE2_SP              VALUETXT; -- pro skladovu polozku
  l_FLAG_R                 KLICSTR; -- stav po provedeni kontroly odkazu z jinych tabulek na recepturu
  l_FLAG_SP                KLICSTR; -- stav po provedeni kontroly odkazu z jinych tabulek na skladovu polozku
  l_MASTERPERM             PARAMTXT;
  l_RESTMP                 BOOLBIT;
begin
  l_MASTERPERM := E'SEPTIMAPP\\RECEPT\\RECEPTDEL';
  select * into l_MASTERPERM,l_RESTMP from admin_septim.RECEPT_CheckMasterPerm(a_ID,null,0,l_MASTERPERM); /*RECTID*/
  l_SKLADPOL := RECEPT_CheckSkladpol(a_ID);
  if l_SKLADPOL = true then
    l_SKPLID := RECEPT_GetSKPLID(a_ID);
  end if;
  perform admin_septim.NABITEMRECEPT_DeleteRecept(a_SKR4ID,a_ID,a_FORCE);
  if admin_eng.CheckForce(a_FORCE,'HIDERECEPT') is null then
    ---kontrola jestli na recepturu neexistuje odkaz z konfiguracnich tabulek
    select * into l_FLAG_R,l_VALUE1_R,l_VALUE2_R from admin_septim.RECEPT__CheckReferenceCT(a_ID);
    --- nejprv poresim specialni pripady (nenabizime skryti)
    case l_FLAG_R
      when 'OTEVUCET' then
      -- receptura pouzita v otevrenem uctu
        perform admin_base.ASWError(35425);
      when 'VYCEPKREDIT' then
      -- namarkovany kredit, kt. jeste neni odeslan do reconu
        perform admin_base.ASWError(35426);
      when 'OTEVOBJEDNAVKA' then
      -- otevrena objednavka - nenamarkovana (neprovedena)
        perform admin_base.ASWError(35427);
      when 'JIDELNICEK' then
      -- zaznam z jidelnicku, kt. aktualne plati nebo je nastaven do buducnosti
        perform admin_base.ASWError(35428);
      when 'OTEVOBJEDNAVKAKDS' then
      -- otevrena objednavka KDS
        perform admin_base.ASWError(35473);
      -- skladová operace na pokladně
      when 'KASASKLADOPERACE' then
       perform admin_base.ASWError(35373);
      else
        null;-- ADDED EMPTY ELSE
    end case;
    if l_SKLADPOL = true then
      ---kontrola jestli na skladovou polozku neexistuje odkaz z konfiguracnich tabulek
      select * into l_FLAG_SP,l_VALUE1_SP,l_VALUE2_SP from admin_septim.SKLADPOL_RECEPTCheckReferenceCT(l_SKPLID);
      --- nejprv poresim specialni pripady (nenabizime skryti)
      if l_FLAG_SP = 'ZASOBY' then -- nenulove zasoby
        perform admin_base.ASWError(35429);
      end if;
      --- jestli existuji odkazy z neskrytych zaznamu (ohledne receptu i skladpol) vyvolam chybu - NEnabidnem skryti
      --- v pripade, ze existujou jenom odkazy ze skrytych zaznamu nabidnem skryti
      if (coalesce(l_FLAG_R,'') = 'CONFIG') or (coalesce(l_FLAG_SP,'') = 'CONFIG') then
        -- spojim seznamy nalezenych tabulek
        l_VALUE1_R := admin_base.cm_JoinStringsBySep(l_VALUE1_R,l_VALUE1_SP,', ');
        l_VALUE2_R := admin_base.cm_JoinStringsBySep(l_VALUE2_R,l_VALUE2_SP,', ');
        perform admin_septim.S_RefTableInvokeError(l_VALUE1_R,l_VALUE2_R,35430,35431,35432);
      end if;
    else
      --- jestli existuje odkaz z konfiguracnich tabulek (jenom ohledne receptur - skladpol neresime) - NEnabidnem skryti
      --- v pripade, ze existujou jenom odkazy ze skrytych zaznamu nabidnem skryti
      if coalesce(l_FLAG_R,'') = 'CONFIG' then
        perform admin_septim.S_RefTableInvokeError(l_VALUE1_R,l_VALUE2_R,35433,35434,35375);
      end if;
    end if;
    -- vyresetujem promenne
    l_FLAG_R := null;
    l_VALUE1_R := null;
    l_VALUE2_R := null;
    l_FLAG_SP := null;
    l_VALUE1_SP := null;
    l_VALUE2_SP := null;
    --- kontrola jestli na recepturu neexistuje odkaz z provoznich tabulek
    select * into l_FLAG_R,l_VALUE1_R,l_VALUE2_R from admin_septim.RECEPT__CheckReferenceOT(a_ID);
    if l_SKLADPOL = true then
      --- kontrola jestli na skladovou polozku neexistuje odkaz z provoznich tabulek
      select * into l_FLAG_SP,l_VALUE1_SP,l_VALUE2_SP from admin_septim.SKLADPOL_RECEPTCheckReferenceOT(l_SKPLID);
      --- nejprv poresim specialni pripady
      if l_FLAG_SP = 'INVENTURA' then
        --- v inventure exist. zaznam kde MNOZSTVISEP nebo MNOZSTVIFYZ je ruzne od 0 - nabidnem skryti
        -- VALUE1 = ID prvni najdene inventury kde se takovej zaznam nachazi
        perform admin_base.ASWError(35435, cast(array[admin_septim.INVENTURA_GetNazev(cast(l_VALUE1_SP as IDINT))] as text[]));
      end if;
      --- jestli existuje odkaz z provoznich tabulek (ohledne receptu i skladpol) - nabidnem skryti
      if (coalesce(l_FLAG_R,'') = 'PROVOZ') or (coalesce(l_FLAG_SP,'') = 'PROVOZ') then
        -- spojim seznamy nalezenych tabulek
        l_VALUE1_R := admin_base.cm_JoinStringsBySep(l_VALUE1_R,l_VALUE1_SP,', ');
        l_VALUE2_R := admin_base.cm_JoinStringsBySep(l_VALUE2_R,l_VALUE2_SP,', ');
        perform admin_septim.S_RefTableInvokeError(l_VALUE1_R,l_VALUE2_R,35436,35437,35432);
      end if;
    else
      --- jestli existuje odkaz z provoznich tabulek (jenom ohledne receptu - skladpol neresime) - nabidnem skryti
      if coalesce(l_FLAG_R,'') = 'PROVOZ' then
        perform admin_septim.S_RefTableInvokeError(l_VALUE1_R,l_VALUE2_R,35329,35374,35375);
      end if;
    end if;
    --- pokud jde o vazbu recept-skladpol smazu i skladovou polozku
    if l_SKLADPOL = true then
      if admin_eng.CheckForce(a_FORCE,'RSDELETE') is null then
        perform admin_base.ASWError(35349);
      else
        --- smazem samotnou recepturu
        --- kedze jde o vazbu recept-skladpol rozšířím force pro vymaz ingredience (je jenom jedna a to dana skladpol)
        perform admin_septim.RECEPT__Delete(a_ID,concat(a_FORCE,',DELSUBZAZNAMY+'),l_MASTERPERM);
        --- smazani skladove polozky
        perform admin_septim.SKLADPOL_RECEPTDelete(l_SKPLID,a_FORCE);
      end if;
    else
      --- smazem samotnou recepturu
      perform admin_septim.RECEPT__Delete(a_ID,a_FORCE,l_MASTERPERM);
    end if;
  else
    --- skryti receptury
    perform admin_septim.RECEPT__Hide(a_ID);
    --- skryti skladove polozky ak jde o vazbu recept-skladpol
    if l_SKLADPOL = true then
      -- skrytí skladové položky
      perform admin_septim.SKLADPOL_RECEPTHide(l_SKPLID);
    end if;
  end if;
  return;
end; $$;


select ASWDropProcedure('RECEPTDelete');
/**  Procedura pro smazani receptury.
 */
create or replace function admin_septim.RECEPTDelete(
  in a_ID                  IDINT,
  in a_FORCE               FORCETXT default null
) returns void
language plpgsql security definer as $$
declare
  l_SKR4ID                 REFIDINT_NU;
begin
  perform admin_params.P_CheckGlobalParamBOOL('SYNCRECEPT','RECEPTIMPORTDB',false,35539);
  begin
    select SKR4ID into strict l_SKR4ID from RECEPT where RCPTID = a_ID;
  exception
    when NO_DATA_FOUND then
  end;
  perform admin_septim.NABITEMRECEPT_DeleteReceptCheck(l_SKR4ID,a_ID,a_FORCE);
  perform admin_septim.RECEPT_Delete(a_ID,l_SKR4ID,a_FORCE);
  return;
end; $$;

select grant_func('RECEPTDelete', 'SPEXEC');



select ASWDropProcedure('RECEPT__Delete');
/** Procedura smaze recepturu - jde o prime mazani, neprovadi se test na skryti atd.
 *  POZOR! Procedura neobsahu test opravneni - test opravneni je v procedurach RECEPTDelete a RECEPT_SKLADPOLDelete.
 */
create or replace function admin_septim.RECEPT__Delete(
  in a_ID                  IDINT,
  in a_FORCE               FORCETXT,
  in a_EXPLICITPERM        PARAMTXT default null
) returns void
language plpgsql security definer as $$
declare
  l_TEXT                   VALUETXT;
begin
  l_TEXT := '';
  --kontrola ci existuje ingredience, ak ano, zobrazim force
  if (exists(select 1 from INGRED where RCPTID = a_ID and SMAZAN = 0) or exists(select 1 from RLRCPT where RCPTIDP = a_ID and SMAZAN = 0)) then
    l_TEXT := B_GetTxt('SEPTIMAPP','RECEPT','INGREDIENCE');
  end if;
  if coalesce(l_TEXT,'') <> '' and admin_eng.CheckForce(a_FORCE,'DELSUBZAZNAMY') is null then
    perform admin_base.ASWError(35438, cast(array[l_TEXT,'DELSUBZAZNAMY'] as text[]));
  end if;
  --- smazani vazby na obecné skupiny
  perform admin_septim.RLSKUPRCPT_RECEPTDeleteAll(a_ID,a_FORCE,a_EXPLICITPERM);
  --- smaze cenik a dotace
  perform admin_septim.RECCENIK_RECEPTDelete(a_ID); -- maze i z dotacerec
  --- smaze carove kody
  perform admin_septim.RCPTBARCODE_RECEPTDelete(a_ID);
  --- smaze nazvy receptur (pro jazyky)
  perform admin_septim.RECNAZVY_RECEPTDelete(a_ID,a_EXPLICITPERM);
  -- smaze definici obrazku
  perform admin_septim.RECBMP_RECEPTDelete(a_ID,a_EXPLICITPERM);
  --- smaze ingredience + prepocet skladove ceny zakladni porce
  perform admin_septim.INGRED_RECEPTDeleteAll(a_ID,a_EXPLICITPERM);
  perform admin_septim.RLRCPT_RECEPTDeleteAll(a_ID,a_EXPLICITPERM);
  --- smazani skladovych cen
  perform admin_septim.RECSKLADCENA_RECEPTDeleteAll(a_ID);
  --- smazani samotne receptury
  perform admin_users.U_OPRAVA_P_RowDelete('SEPTIMAPP','RECEPT',a_ID,'','');
  return;
end; $$;



select ASWDropProcedure('RECEPT_SKLADPOLDelete');
/**
 *  Procedura smaze recepturu - vola se pri mazani skladpol, ktera je zaroven recepturou.
 */
create or replace function admin_septim.RECEPT_SKLADPOLDelete(
  in a_ID                  IDINT,
  in a_FORCE               FORCETXT
) returns void
language plpgsql security definer as $$
declare
  l_MASTERPERM             PARAMTXT;
begin
  l_MASTERPERM := E'SEPTIMAPP\\RECEPT\\RECEPTDEL';
  perform admin_users.U_CheckPerm('SEPTIMAPP', l_MASTERPERM, 0);
  perform admin_septim.RECEPT__Delete(a_ID ,concat(a_FORCE, ',', 'DELSUBZAZNAMY+'), l_MASTERPERM);
end; $$;



select ASWDropProcedure('RECEPT__Hide');
/*
  Procedura na skrytie receptury.
  Nekontroluje sa opravnenie zmazat recepturu, takze by mala byt volana z procedury, ktora tuto kontrolu vykonava.
*/
create or replace function admin_septim.RECEPT__Hide(
  in a_RCPTID              IDINT
) returns void
language plpgsql security definer as $$
begin
  perform admin_users.U_OPRAVA_P_RowHide('SEPTIMAPP','RECEPT',a_RCPTID,'Skrytí receptury','Skrytí receptury');
  return;
end; $$;


select ASWDropProcedure('RECEPT_SKLADPOLHide');
/*
  Procedura na skrytie receptury volana pri skryti skladovej polozky - kontroluje sa opravnenie vymazat recepturu.
*/
create or replace function admin_septim.RECEPT_SKLADPOLHide(
  in a_RCPTID              IDINT
) returns void
language plpgsql security definer as $$
begin

  --kontrola opravneni
  perform admin_users.U_CheckPerm('SEPTIMAPP',E'RECEPT\\RECEPTDEL',0);
  perform admin_septim.RECEPT__Hide(a_RCPTID);
  return;
end; $$;



-- RECEPTGet:
select ASWDropProcedure('RECEPTGet');
drop type if exists admin_septim.RECEPTGet_rs cascade;
create type admin_septim.RECEPTGet_rs as (
  "@CENY"                  TYPINT,
  "#CENAS"                 TYPINT,
  "#DPHA"                  TYPINT,
  "#CENAB"                 TYPINT,
  "#CENAS_DPHB"            TYPINT,
  "#DPHA_DPHB"             TYPINT,
  "#DPHB_DPHB"             TYPINT,
  "#CENAB_DPHB"            TYPINT,
  "@ReceptRecalcHandler"   TYPINT,
  "@DOTACE"                INTEGER,
  "#BONUS"                 INTEGER,
  _ID                      IDINT,
  _HIDE                    HIDEBOOL,
  _SMAZAN                  SMAZANINT,
  DPH                      B_NAZEVSTR,
  CENAB                    CENAFLT,
  DPHA                     CENAFLT,
  CENAS                    CENAFLT,
  CENAB_DPHB               CENAFLT,
  DPHA_DPHB                CENAFLT,
  DPHB_DPHB                CENAFLT,
  CENAS_DPHB               CENAFLT,
  CENAB1                   CENAFLT,
  DPHA1                    CENAFLT,
  CENAS1                   CENAFLT,
  CENAB2                   CENAFLT,
  DPHA2                    CENAFLT,
  CENAS2                   CENAFLT,
  CENAB1_DPHB              CENAFLT,
  DPHA1_DPHB               CENAFLT,
  DPHB1_DPHB               CENAFLT,
  CENAS1_DPHB              CENAFLT,
  CENAB2_DPHB              CENAFLT,
  DPHA2_DPHB               CENAFLT,
  DPHB2_DPHB               CENAFLT,
  CENAS2_DPHB              CENAFLT,
  NAZEV                    NAZEVSTR,
  POPIS                    POPISTXT,
  ZKRATKA                  ZKRATKASTR_NU,
  IDCODE                   IDCODESTR,
  BARCODE                  BARCODETXT,
  SKUPREC1                 NAZEVSTR,
  SKUPREC2                 NAZEVSTR,
  SKUPREC3                 NAZEVSTR,
  SKUPREC4                 NAZEVSTR,
  SALESTOCKPRICE           PRICEFLT,
  PLUCODE                  PLUINT,
  PORCI                    MNOZSTVIFLT,
  GRAMAZ                   GRAMAZTXT,
  DOBAPRIPRAVY             TIMEINT,
  DOBAKONZUMACE            TIMEINT,
  POSTUP                   POSTUPTXT,
  VZDYCENA                 BOOLBIT,
  RECEPTTYP                B_KOMENTARTXT,
  CISLOL                   CISLOINT_R,
  CISLOH                   CISLOINT_R,
  KLIC                     KLICSTR_NU,
  VCTYP                    TYPINT,
  VCZAOKRC                 CISLOINT,
  VCZAOKRD                 CISLOINT,
  BONUS                    CISLOFLT,
  POVPOPISOBJ              BOOLBIT,
  DEFPOPISYOBJ             KOMENTARTXT,
  "#VCZAOKRC"              INTEGER,
  "#VCZAOKRD"              INTEGER,
  PPCENAKOEF               KOEFICIENTFLT_1,
  PPINGREDKOEF             KOEFICIENTFLT_1,
  PPMASTERRECNAZEV         NAZEVSTR,
  OBALRECNAZEV             NAZEVSTR,
  "#OBALRECNAZEV"          INTEGER,
  "@TABPOLPORCEDATA"       TYPINT,
  "@TABOSTATNIUDAJE"       INTEGER,
  "@TABPOSTUP"             TYPINT,
  "@TABVYPOCETCEN"         INTEGER,
  "@TABPOPISYOBJ"          TYPINT,
  "#RECEPTTYP"             INTEGER,
  DOPLATEKRECEPT           NAZEVSTR,
  MINMNOZSTVI              MNOZSTVIFLT_NU,
  POUZITDOPL               BOOLBIT,
  CHOD                     NAZEVSTR,
  "#CHOD"                  INTEGER,
  "@PanelChod"             INTEGER,
  "@TABDOPLATKY"           INTEGER,
  "#DOPLATEKRECEPT"        INTEGER,
  "#MINMNOZSTVI"           INTEGER,
  "#VZDYCENA"              TYPINT,
  "#PORCI"                 INTEGER,
  "#GRAMAZ"                INTEGER,
  "@PanelZaklCena"         INTEGER,
  "@PanelZaklCenaDphB"     INTEGER,
  "@PanelDotace"           INTEGER,
  "@PanelDotaceDphB"       INTEGER,
  DRUHJIDLA                NAZEVSTR,
  "#DRUHJIDLA"             INTEGER,
  "@PanelDruhJidla"        INTEGER,
  CUSTOM1                  CUSTOMSTR,
  CUSTOM2                  CUSTOMSTR,
  CUSTOM3                  CUSTOMTXT,
  CUSTOM4                  CUSTOMTXT,
  CUSTOM5                  CUSTOMTXT,
  DURABILITY               NUMBERINT,
  MAXSLEVA                 KOEFICIENTFLT_NU,
  SKLAD                    NAZEVSTR,
  UNITSALE                 NAMESTR,
  CONTENTAMOUNT            AMOUNTFLT_NU,
  UNITCONTENT              NAMESTR,
  PRICEUNIT                AMOUNTFLT_NU,
  SOLIDAMOUNT              AMOUNTFLT_NU,
  UNITSOLID                NAMESTR,
  PRICESOLIDUNIT           AMOUNTFLT_NU,
  DODVVYR                  JMENOSTR,
  COUNTRY                  NAMESTR,
  WELMEC                   BOOLBIT_0,
  KMSCATEGORY              NAMESTR,
  KMSITEMTYPE              NAMESTR,
  TARE                     AMOUNTFLT_NU,
  UNITTARE                 LABELSTR_R,
  "#TARE"                  INTEGER,
  "#UNITTARE"              INTEGER,
  AKTIVNI                  BOOLBIT_1,
  WEIGHTED                 BOOLBIT_0,
  "@PanelWriteOffStore"    INTEGER,
  "@TABJEDNOTKY"           INTEGER
);

create or replace function admin_septim.RECEPTGet(
  in a_ID                  IDINT,
  in a_FORCE               FORCETXT default null
) returns setof admin_septim.RECEPTGet_rs
language plpgsql security definer as $$
declare
  l_DOTACE                 INTEGER;
  l_BONUS                  INTEGER;
  l_DCOUNT                 INTEGER;
  l_POLPORCE               TYPINT;
  l_BONUSREC               TYPINT;
  l_ALERGENDOUCTU          BOOLBIT;
  l_VISIBLECENY            TYPINT;
  l_KORUNOVA               BOOLBIT;
  l_ENABLECENAPOL          TYPINT;
  l_POVOLDOPLATKY          BOOLBIT;
  l_VZDYCENA               TYPINT;
  l_TABPOSTUP              TYPINT;
  l_TABVYPOCETCEN          TYPINT;
  l_TABPOPISYOBJ           TYPINT;
  l_OBALRECNAZEV           TYPINT;
  l_DPHB                   TYPINT; -- licence na DPHB
  l_VL2011                 TYPINT;
begin
  perform admin_users.U_CheckPerm('SEPTIMAPP',E'RECEPT\\RECEPTVIEW',0);
  perform admin_septim.RECEPT__ZVIDITELNENIPOLOZKY(a_ID,a_FORCE);
  l_VL2011 := admin_base.B_LIMITS_GetLicence('BASE','VLASTNOSTI2011',0);

  l_POVOLDOPLATKY := RECEPT_PovolitDoplatky();
  l_DOTACE := admin_base.B_LIMITS_GetLicence('SEPTIMAPP','DOTACE',0);
  l_BONUS := admin_base.B_LIMITS_GetLicence('SEPTIMAPP','BONUS',0);
  l_DPHB := admin_base.B_LIMITS_GetLicence('BASE','DPHB',0);
  if RECEPT_CheckPolPorceTyp(a_ID,-1) = true then
    l_POLPORCE := 1;
  else
    l_POLPORCE := -1;
  end if;
  l_ALERGENDOUCTU := RECEPT_CheckAlergenDoUctuTyp(a_ID,-1);
  if RECEPT_CheckBonusovaTyp(a_ID,-1) = true or RECEPT_CheckLogoNaStulTyp(a_ID,-1) or l_ALERGENDOUCTU then
    l_BONUSREC := 1;
    l_OBALRECNAZEV := 0;
    l_TABPOPISYOBJ := -1;
  else
    l_BONUSREC := -1;
    l_OBALRECNAZEV := 1;
    if (l_VL2011 = 1) and (RECEPT_CheckSlozeneMenuTyp(a_ID,-1) = false) then
      -- u slozeneho menu neni popis, protoze se netiskne na objednavce
      l_TABPOPISYOBJ := 1;
    else
      l_TABPOPISYOBJ := -1;
    end if;
  end if;
  if l_BONUSREC = 1 or l_POLPORCE = 1 or l_ALERGENDOUCTU then
    l_TABPOSTUP := -1;
    l_TABVYPOCETCEN := -1;
  else
    l_TABPOSTUP := 1;
    l_TABVYPOCETCEN := 1;
  end if;
  if RECEPT_CheckStandardniTyp(a_ID,-1) = true then
    l_VZDYCENA := 1;
  else
    l_VZDYCENA := 0;
  end if;
  l_VISIBLECENY := 1;
  -- když jde o recepturu kde se nezadává vůbec cena, tak se položky s cenou skryjí
  if RECEPT_ZadavatCenu(a_ID,-1,true) = false then
    l_VISIBLECENY := -1;
  end if;
  l_KORUNOVA := RECEPT_CheckKorunovaTyp(a_ID,-1);
  -- když jde o korunovou recepturu ceny se disablují
  if l_KORUNOVA then
    l_ENABLECENAPOL := 0;
    l_VISIBLECENY := 1;
  else
    l_ENABLECENAPOL := 1;
  end if;
  return query
  select
    l_VISIBLECENY as "@CENY",
    l_ENABLECENAPOL as "#CENAS", l_ENABLECENAPOL as "#DPHA", l_ENABLECENAPOL as "#CENAB",
    l_ENABLECENAPOL as "#CENAS_DPHB", l_ENABLECENAPOL as "#DPHA_DPHB", l_ENABLECENAPOL as "#DPHB_DPHB",
    l_ENABLECENAPOL as "#CENAB_DPHB", l_ENABLECENAPOL as "@ReceptRecalcHandler",
    (case when l_DOTACE > 0 and RECEPT_PovoleneDotace(a_ID, -1) = true then 1 else -1 end) as "@DOTACE",
    (case when l_BONUS > 0 and l_BONUSREC = -1 then 1 else 0 end) as "#BONUS",
    R.RCPTID as _ID,R.HIDE as _HIDE,R.SMAZAN as _SMAZAN,
    cast(coalesce(D.NAZEV, '0') as B_NAZEVSTR) as DPH,
    cast(coalesce(RC.CENAB, 0) as CENAFLT) as CENAB,
    cast(coalesce(RC.DPHA, 0) as CENAFLT) as DPHA,
    cast(coalesce(RC.CENAS, 0) as CENAFLT) as CENAS,
    cast(coalesce(RC.CENAB, 0) as CENAFLT) as CENAB_DPHB,
    cast(coalesce(RC.DPHA, 0) as CENAFLT) as DPHA_DPHB,
    cast(coalesce(RC.DPHB, 0) as CENAFLT) as DPHB_DPHB,
    cast(coalesce(RC.CENAS, 0) as CENAFLT) as CENAS_DPHB,
    cast(coalesce(DR.CENAB1, 0) as CENAFLT) as CENAB1,
    cast(coalesce(DR.DPHA1, 0) as CENAFLT) as DPHA1,
    cast(coalesce(DR.CENAS1, 0) as CENAFLT) as CENAS1,
    cast(coalesce(DR.CENAB2, 0) as CENAFLT) as CENAB2,
    cast(coalesce(DR.DPHA2, 0) as CENAFLT) as DPHA2,
    cast(coalesce(DR.CENAS2, 0) as CENAFLT) as CENAS2,
    cast(coalesce(DR.CENAB1, 0) as CENAFLT) as CENAB1_DPHB,
    cast(coalesce(DR.DPHA1, 0) as CENAFLT) as DPHA1_DPHB,
    cast(coalesce(DR.DPHB1, 0) as CENAFLT) as DPHB1_DPHB,
    cast(coalesce(DR.CENAS1, 0) as CENAFLT) as CENAS1_DPHB,
    cast(coalesce(DR.CENAB2, 0) as CENAFLT) as CENAB2_DPHB,
    cast(coalesce(DR.DPHA2, 0) as CENAFLT) as DPHA2_DPHB,
    cast(coalesce(DR.DPHB2, 0) as CENAFLT) as DPHB2_DPHB,
    cast(coalesce(DR.CENAS2,0) as CENAFLT) as CENAS2_DPHB,
    R.NAZEV, R.POPIS, R.ZKRATKA, R.IDCODE,
    RCPTBARCODE_Get(a_ID) as BARCODE,
    S1.NAZEV as SKUPREC1, S2.NAZEV as SKUPREC2, S3.NAZEV as SKUPREC3, S4.NAZEV as SKUPREC4,
    R.SALESTOCKPRICE, R.PLUCODE, R.PORCI, R.GRAMAZ, R.DOBAPRIPRAVY,
    R.DOBAKONZUMACE, R.POSTUP, R.VZDYCENA,
    V_GetDTTText('SEPTIMAPP', 'RECEPTTYP', 'NAZEV', RT.KLIC, RT.NAZEV) as RECEPTTYP,
    R.CISLOL, R.CISLOH, R.KLIC, R.VCTYP, R.VCZAOKRC, R.VCZAOKRD, R.BONUS, R.POVPOPISOBJ, R.DEFPOPISYOBJ,
    (case when R.VCTYP = 0 then -1 else 1 end) as "#VCZAOKRC",
    (case when R.VCTYP = 0 then -1 else 1 end) as "#VCZAOKRD",
    R.PPCENAKOEF, R.PPINGREDKOEF, RM.NAZEV as PPMASTERRECNAZEV, RO.NAZEV as OBALRECNAZEV,
    (case
       when RT.KLIC in ('MODIFIKATORCENOVY', 'MODIFIKATORSKLADOVY', 'MODIFIKATORVYROBNI', 'ALERGENDOUCTU') then 0
       else l_OBALRECNAZEV
     end) as "#OBALRECNAZEV",
    l_POLPORCE as "@TABPOLPORCEDATA", -l_POLPORCE as "@TABOSTATNIUDAJE", l_TABPOSTUP as "@TABPOSTUP",
    (case
       when RT.KLIC in ('MODIFIKATORSKLADOVY', 'MODIFIKATORVYROBNI', 'ALERGENDOUCTU') then -1
       else l_TABVYPOCETCEN
     end) as "@TABVYPOCETCEN",
    l_TABPOPISYOBJ as "@TABPOPISYOBJ",
    0 as "#RECEPTTYP", RP.NAZEV as DOPLATEKRECEPT, R.MINMNOZSTVI as MINMNOZSTVI,
    cast((case when R.DOPLATEKRCPTID is not null then 1 else 0 end) as BOOLBIT) as POUZITDOPL,
    CH.NAZEV as CHOD,
    (case
       when RT.KLIC in ('BONUSOVA', 'POLOVICNIPORCE', 'MODIFIKATORCENOVY', 'MODIFIKATORSKLADOVY', 'MODIFIKATORVYROBNI') then 0
       else 1
     end) as "#CHOD",
    (case when l_VL2011 = 1 then 1 else -1 end) as "@PanelChod",
    (case when l_POVOLDOPLATKY and (RECEPT_CheckStandardniTyp(R.RCPTID,-1) = true) then 1 else -1 end) as "@TABDOPLATKY",
    (case when R.DOPLATEKRCPTID is null then 0 else 1 end) as "#DOPLATEKRECEPT",
    (case when R.DOPLATEKRCPTID is null then 0 else 1 end) as "#MINMNOZSTVI", l_VZDYCENA as "#VZDYCENA",
    (case
       when l_BONUSREC = 1 or RT.KLIC in ('MODIFIKATORCENOVY', 'MODIFIKATORSKLADOVY', 'MODIFIKATORVYROBNI', 'ALERGENDOUCTU') then 0
       else 1
     end) as "#PORCI",
    (case
       when l_BONUSREC = 1 or RT.KLIC in ('MODIFIKATORCENOVY', 'MODIFIKATORSKLADOVY', 'MODIFIKATORVYROBNI', 'ALERGENDOUCTU') then 0
       else 1
     end) as "#GRAMAZ",
    (case when l_DPHB = 1 then -1 else 1 end) as "@PanelZaklCena",
    (case when l_DPHB = 1 then 1 else -1 end) as "@PanelZaklCenaDphB",
    (case when l_DPHB = 1 then -1 else 1 end) as "@PanelDotace",
    (case when l_DPHB = 1 then 1 else -1 end) as "@PanelDotaceDphB",
    DJ.NAZEV as DRUHJIDLA,
    (case
       when RT.KLIC in ('POLOVICNIPORCE', 'BONUSOVA', 'EVIDENCNI', 'LOGONASTUL', 'ALERGENDOUCTU') then 0
       else 1
     end) as "#DRUHJIDLA",
    (case
       when (admin_base.B_LIMITS_GetLicence('SEPTIMAPP','SKOLA',0) = 1)
             and (admin_base.B_LIMITS_GetLicence('SEPTIMAPP','VYROBNAJIDEL',0) = 1) then 1
       else -1
     end) as "@PanelDruhJidla",
    R.CUSTOM1, R.CUSTOM2, R.CUSTOM3, R.CUSTOM4, R.CUSTOM5, R.DURABILITY, R.MAXSLEVA, SK.NAZEV as SKLAD, U.NAME,
    R.CONTENTAMOUNT, UC.NAME,
    cast(coalesce(case when R.CONTENTAMOUNT is not null then RC.CENAB/R.CONTENTAMOUNT
              else RC.CENAB end, 0) as AMOUNTFLT_NU),
    R.SOLIDAMOUNT, US.NAME,
    cast(coalesce(case when R.SOLIDAMOUNT is not null then RC.CENAB/R.SOLIDAMOUNT
              else RC.CENAB end, 0) as AMOUNTFLT_NU),
    DVYR.JMENO, C.NAME, R.WELMEC,
    KMC.NAME as KMSCATEGORY, KMI.NAME as KMSITEMTYPE,
    R.TARE as TARE, U.LABEL as UNITTARE,
    case when R.WELMEC then 1 else -1 end as "#TARE",
    case when R.WELMEC then 1 else -1 end as "#UNITTARE",
    R.AKTIVNI as AKTIVNI,
    R.WEIGHTED as WEIGHTED,
    case
      when exists (select 1 from ODPISY where SMAZAN = 0) then -1
      else 1
    end as "@PanelWriteOffStore", -l_POLPORCE as "@TABJEDNOTKY"
  from
    RECEPT as R
    join RECEPTTYP as RT on R.RECTID = RT.RECTID
    join DRUHJIDLA as DJ on DJ.DRJDID = R.DRJDID
    left outer join RECCENIK as RC on R.RCPTID = RC.RCPTID and RC.CENMID is null and RC.CENKID is null and RC.SKP1ID is null and RC.SMAZAN = 0
    left outer join SKUPREC1 as S1 on R.SKR1ID = S1.SKR1ID
    left outer join SKUPREC2 as S2 on R.SKR2ID = S2.SKR2ID
    left outer join SKUPREC3 as S3 on R.SKR3ID = S3.SKR3ID
    left outer join SKUPREC4 as S4 on R.SKR4ID = S4.SKR4ID
    left outer join DOTACEREC as DR on RC.RCNKID = DR.RCNKID
    left outer join B_DPH as D on RC.DPHID = D.DPHID
    left outer join RECEPT as RM on R.PPMASTERRCPTID = RM.RCPTID
    left outer join RECEPT as RO on R.OBALRCPTID = RO.RCPTID
    left outer join RECEPT as RP on R.DOPLATEKRCPTID = RP.RCPTID
    left outer join CHODY as CH on R.CHODID = CH.CHODID
    left outer join SKLAD as SK on R.SKLDID = SK.SKLDID
    left outer join UNIT as U on R.UNITIDSALE = U.UNITID
    left outer join UNIT as UC on UC.UNITID = R.UNITIDCONTENT
    left outer join UNIT as US on US.UNITID = R.UNITIDSOLID
    left outer join DODAVATEL as DVYR on DVYR.DODVID = R.DODVIDVYR
    left outer join COUNTRY as C on C.CNTRID = R.CNTRID
    left outer join KMSCATEGORY as KMC on KMC.KMCTID = R.KMCTID
    left outer join KMSITEMTYPE as KMI on KMI.KMITID = R.KMITID
  where
    R.RCPTID = a_ID and R.SMAZAN = 0;
end; $$;

select grant_func('RECEPTGet', 'SPEXEC');


select ASWDropProcedure('RECEPT__CheckVyrobaStejneSkladpol');
/**
* Procedura pro kontrolu a upozorneni na vyrobu stejne skladpol pres vice receptur.
* Vola se pred obnovenim receptury ze skryteho stavu.
*/
create or replace function admin_septim.RECEPT__CheckVyrobaStejneSkladpol(
  in a_ID                  IDINT,
  in a_FORCE               FORCETXT
) returns void
language plpgsql security definer as $$
begin
  if admin_eng.CheckForce(a_FORCE,'DOVYROBAPRESVICERECEPTUR') is null and
  exists(select 1 from INGRED as I join INGRED as I2 on I.SKPLID = I2.SKPLID join RECEPT as R2 on I2.RCPTID = R2.RCPTID where
  I.SMAZAN = 0 and INGRED_ProVyrobuNormovanim(I.TYP) = true and I.RCPTID = a_ID and
  I2.SMAZAN = 0 and INGRED_ProVyrobuNormovanim(I2.TYP) = true and R2.RCPTID <> a_ID and R2.SMAZAN = 0 and R2.HIDE = false) then
    -- receptura obsahuje skladovou polozku, ktera se vyrabi i pres jinou neskrytou recepturu
    perform admin_base.ASWError(35512, cast(array['DOVYROBAPRESVICERECEPTUR'] as text[]));
  end if;
  return;
end; $$;



select ASWDropProcedure('RECEPT__ZVIDITELNENIPOLOZKY');
create or replace function admin_septim.RECEPT__ZVIDITELNENIPOLOZKY(
  in a_ID                  IDINT,
  in a_FORCE               FORCETXT
) returns void
language plpgsql security definer as $$
declare
  l_HIDE                   HIDEBOOL;
begin
  -- v pripade, ze je zaznam skryty a uzivatel se ho pokusi editovat, zobrazi se hlaska "ma-li byt tento zaznam vracen do normalniho stavu" - pokud NE, cela akce se stornuje, pokud ANO, nastavi se HIDE na nulu a zobrazi se dialog pro editaci
  begin
    select HIDE into strict l_HIDE from RECEPT where(RCPTID = a_ID);
  exception
    when NO_DATA_FOUND then
  end;
  -- P_CheckGlobalParamBOOL('SYNCRECEPT','RECEPTIMPORTDB' řeší výjimku na databáze, nastavené do importního režimu, kde se nesmí záznamy lokálně modifikovat.
  -- Hide tedy nesmí jít vrátit do původního stavu, záznam je do editačního formuláře propuštěn bez změny a očekává se, že UDPATE to zachytí a odmítne
  -- na základě testu stejného globálního parametru
  if (l_HIDE = true) and admin_params.P_CheckGlobalParamBOOL('SYNCRECEPT','RECEPTIMPORTDB',false,-1) = true then
    -- receptura je zaroven skladpol, dotaz na odkryti skladpol
    if RECEPT_CheckSkladpol(a_ID) = true then
      if admin_eng.CheckForce(a_FORCE,'RSUNHIDE') is null then
        perform admin_base.ASWError(35300);
      else
        if exists(select 1 from INGRED where SMAZAN = 0 and RCPTID = a_ID and PRCEID is not null and PORCE_IsHidden(PRCEID) = true) then
          -- obsahuje ingredienci se skrytou porci, nelze odkryt
          perform admin_base.ASWError(35498);
        end if;
        perform admin_users.U_CheckPerm('SEPTIMAPP',E'RECEPT\\RECEPTDEL',0);
        perform admin_septim.RECEPT__CheckVyrobaStejneSkladpol(a_ID,a_FORCE);
        perform admin_users.U_OPRAVA_P_RowUpdate('SEPTIMAPP','RECEPT',a_ID,'','');
        update RECEPT set HIDE = false where(RCPTID = a_ID);
        -- zviditelneni odpovidajici skladpol
        perform admin_septim.SKLADPOL_RCPTUNHIDE(RECEPT_GetSKPLID(a_ID),a_FORCE);
      end if;
    else
      if admin_eng.CheckForce(a_FORCE,'UNHIDE') is null then
        perform admin_base.ASWError(35372);
      else
        if exists(select 1 from INGRED where SMAZAN = 0 and RCPTID = a_ID and PRCEID is not null and PORCE_IsHidden(PRCEID) = true) then
          -- obsahuje ingredienci se skrytou porci, nelze odkryt
          perform admin_base.ASWError(35498);
        end if;
        if RECEPT_CheckSlozeneMenuTyp(a_ID,-1) = true then
          perform admin_users.U_CheckPerm('SEPTIMAPP',E'RECEPT\\SLOZENEMENUOPERATIONS',0);
        else
          perform admin_users.U_CheckPerm('SEPTIMAPP',E'RECEPT\\RECEPTDEL',0);
        end if;
        perform admin_septim.RECEPT__CheckVyrobaStejneSkladpol(a_ID,a_FORCE);
        perform admin_users.U_OPRAVA_P_RowUpdate('SEPTIMAPP','RECEPT',a_ID,'','');
        update RECEPT set HIDE = false where(RCPTID = a_ID);
      end if;
    end if;
  end if;
  return;
end; $$;



select ASWDropProcedure('RECEPT_DefaultDPHID');
/**
* Function calculates default unhidden VAT ID for new recipe from the last recipe.
* Attention!!! If it is a half-portion recipe, VAT is not calculated from the main recipe!!!
* If the recipe is the first, or all previous deleted, than base VAT ID returned.
*/
create or replace function admin_septim.RECEPT_DefaultDPHID(
) returns REFIDINT
language plpgsql security definer
as $$
declare
  l_DPHID                  REFIDINT;
begin

  -- Last not hidden DPHID
  select C.DPHID into l_DPHID
    from RECEPT R
      join RECCENIK C on C.RCPTID = R.RCPTID and C.CENMID is null and C.CENKID is null and C.SKP1ID is null and C.SMAZAN = 0
      join B_DPH B on B.DPHID = C.DPHID and not B.HIDE
      where R.RKRS = SESSIONVarGet('c_RKRS') and R.SMAZAN = 0
    order by R.RCPTID desc limit 1;

  return coalesce(l_DPHID, 3); -- we consider base VAT will never be hidden

end; $$;



-- RECEPTDefault:
select ASWDropProcedure('RECEPTDefault');
drop type if exists admin_septim.RECEPTDefault_rs cascade;
create type admin_septim.RECEPTDefault_rs as (
  CISLOL                   INTEGER,
  CISLOH                   INTEGER,
  PORCI                    INTEGER,
  CENAB                    DECIMAL,
  DPHA                     DECIMAL,
  CENAS                    DECIMAL,
  CENAB_DPHB               DECIMAL,
  DPHA_DPHB                DECIMAL,
  DPHB_DPHB                DECIMAL,
  CENAS_DPHB               DECIMAL,
  CENAB1                   DECIMAL,
  DPHA1                    DECIMAL,
  CENAS1                   DECIMAL,
  CENAB2                   DECIMAL,
  DPHA2                    DECIMAL,
  CENAS2                   DECIMAL,
  CENAB1_DPHB              DECIMAL,
  DPHA1_DPHB               DECIMAL,
  DPHB1_DPHB               DECIMAL,
  CENAS1_DPHB              DECIMAL,
  CENAB2_DPHB              DECIMAL,
  DPHA2_DPHB               DECIMAL,
  DPHB2_DPHB               DECIMAL,
  CENAS2_DPHB              DECIMAL,
  DPH                      NAZEVSTR,
  SALESTOCKPRICE           DECIMAL,
  VCTYP                    INTEGER,
  VCZAOKRC                 INTEGER,
  VCZAOKRD                 INTEGER,
  BONUS                    INTEGER,
  "#VCZAOKRC"              INTEGER,
  "#VCZAOKRD"              INTEGER,
  "#BONUS"                 INTEGER,
  RECEPTTYP                NAZEVSTR,
  DOBAPRIPRAVY             TIMEINT,
  DOBAKONZUMACE            TIMEINT,
  "@DOTACE"                INTEGER,
  "@TABDOPLATKY"           INTEGER,
  "@TABPOLPORCEDATA"       INTEGER,
  "@TABOSTATNIUDAJE"       INTEGER,
  "@TABPOSTUP"             INTEGER,
  "@TABVYPOCETCEN"         INTEGER,
  "@TABPOPISYOBJ"          TYPINT,
  "#MINMNOZSTVI"           INTEGER,
  "#DOPLATEKRECEPT"        INTEGER,
  MINMNOZSTVI              MNOZSTVIFLT,
  DOPLATEKRECEPT           CENAFLT,
  VZDYCENA                 BOOLBIT,
  "@PanelZaklCena"         INTEGER,
  "@PanelZaklCenaDphB"     INTEGER,
  "@PanelDotace"           INTEGER,
  "@PanelDotaceDphB"       INTEGER,
  "@PanelChod"             TYPINT,
  DRUHJIDLA                NAZEVSTR,
  "@PanelDruhJidla"        INTEGER,
  DURABILITY               INTEGER,
  "@PanelWriteOffStore"    INTEGER,
  PRICEUNIT                AMOUNTFLT_NU,
  PRICESOLIDUNIT           AMOUNTFLT_NU,
  UNITSALE                 NAMESTR,
  UNITTARE                 LABELSTR_R,
  "#TARE"                  INTEGER,
  "#UNITTARE"              INTEGER,
  AKTIVNI                  BOOLBIT_1,
  WEIGHTED                 BOOLBIT_0
);

create or replace function admin_septim.RECEPTDefault(
  in a_ID                  IDINT
) returns setof admin_septim.RECEPTDefault_rs
language plpgsql security definer as $$
declare
  l_BONUS                  INTEGER;
  l_RECEPTTYP              NAZEVSTR;
  l_DOTACE                 TYPINT;
  l_DOBAPRIPRAVY           TIMEINT;
  l_DOBAKONZUMACE          TIMEINT;
  l_POVOLDOPLATKY          BOOLBIT; -- licenční povolení doplatků
  l_DPHB                   TYPINT; -- licence na DPHB
  l_TABPOPISYOBJ           TYPINT;
  l_CHOD                   TYPINT;
  l_UNITSALE               NAMESTR;
  l_UNITTARE               LABELSTR_R;
  l_DPH                    NAZEVSTR;
begin
  perform admin_users.U_CheckPerm('SEPTIMAPP',E'RECEPT\\RECEPTINS,RECEPT\\SLOZENEMENUOPERATIONS',0);
  perform admin_params.P_CheckGlobalParamBOOL('SYNCRECEPT','RECEPTIMPORTDB',false,35539);
  --- načtení z limitů, zda lze používat bonus
  l_BONUS := admin_base.B_LIMITS_GetLicence('SEPTIMAPP','BONUS',0);
  l_DOTACE := admin_base.B_LIMITS_GetLicence('SEPTIMAPP','DOTACE',0);
  l_POVOLDOPLATKY := RECEPT_PovolitDoplatky();
  l_DPHB := admin_base.B_LIMITS_GetLicence('BASE','DPHB',0);
  l_DOBAPRIPRAVY := S_TIMESTRtoTIMEINT(admin_params.P_GetGlobalParam('RECEPTURA','DOBAPRIPRAVY',null,false));
  l_DOBAKONZUMACE := S_TIMESTRtoTIMEINT(admin_params.P_GetGlobalParam('RECEPTURA','DOBAKONZUMACE',null,false));
  if admin_base.B_LIMITS_GetLicence('BASE','VLASTNOSTI2011',0) = 0 then
    l_TABPOPISYOBJ := -1;
    l_CHOD := -1;
  else
    l_TABPOPISYOBJ := 1;
    l_CHOD := 1;
  end if;

  select B_GetDTTText(SOURCEM, 'RECEPTTYP', 'NAZEV', KLIC, NAZEV) into l_RECEPTTYP from RECEPTTYP where KLIC = 'STANDARDNI';

  -- Default units
  select UNITNAME, UNITTARE
    into l_UNITSALE, l_UNITTARE
  from UNIT_GetDefaultUnits();

  -- Default DPH
  l_DPH := B_DPH_GetNazev(RECEPT_DefaultDPHID());

  return query select 1 as CISLOL,1 as CISLOH,1 as PORCI,
   0.0 as CENAB,0.0 as DPHA,0.0 as CENAS,0.0 as CENAB_DPHB,0.0 as DPHA_DPHB,0.0 as DPHB_DPHB,0.0 as CENAS_DPHB, /*0.0 DPHB,*/
   0.0 as CENAB1,0.0 as DPHA1,0.0 as CENAS1,0.0 as CENAB2,0.0 as DPHA2,0.0 as CENAS2, --0.0 DPHB1, --0.0 DPHB2,
   0.0 as CENAB1_DPHB,0.0 as DPHA1_DPHB,0.0 as DPHB1_DPHB,0.0 as CENAS1_DPHB,0.0 as CENAB2_DPHB,0.0 as DPHA2_DPHB,0.0 as DPHB2_DPHB,0.0 as CENAS2_DPHB,
   l_DPH as DPH,0.0 as SALESTOCKPRICE,0 as VCTYP,1 as VCZAOKRC,2 as VCZAOKRD,0 as BONUS,-1 as "#VCZAOKRC",-1 as "#VCZAOKRD",
   (case when l_BONUS > 0 then 1 else 0 end) as "#BONUS",l_RECEPTTYP as RECEPTTYP,l_DOBAPRIPRAVY as DOBAPRIPRAVY,l_DOBAKONZUMACE as DOBAKONZUMACE,
   (case when l_DOTACE > 0 then 1 else -1 end) as "@DOTACE",
   (case when l_POVOLDOPLATKY then 1 else -1 end) as "@TABDOPLATKY",
   -1 as "@TABPOLPORCEDATA",1 as "@TABOSTATNIUDAJE",1 as "@TABPOSTUP",1 as "@TABVYPOCETCEN",l_TABPOPISYOBJ as "@TABPOPISYOBJ",
   0 as "#MINMNOZSTVI",0 as "#DOPLATEKRECEPT",cast(null as MNOZSTVIFLT) as MINMNOZSTVI,cast(null as CENAFLT) as DOPLATEKRECEPT,
   cast(0 as BOOLBIT) as VZDYCENA,
   (case when l_DPHB = 1 then -1 else 1 end) as "@PanelZaklCena",
   (case when l_DPHB = 1 then 1 else -1 end) as "@PanelZaklCenaDphB",
   (case when l_DPHB = 1 then -1 else 1 end) as "@PanelDotace",
   (case when l_DPHB = 1 then 1 else -1 end) as "@PanelDotaceDphB",
   l_CHOD as "@PanelChod",
   DRUHJIDLA_GetZakladniNazev() as DRUHJIDLA,
   (case when (admin_base.B_LIMITS_GetLicence('SEPTIMAPP','SKOLA',0) = 1) and (admin_base.B_LIMITS_GetLicence('SEPTIMAPP','VYROBNAJIDEL',0) = 1) then 1 else -1 end) as "@PanelDruhJidla",
   0 as DURABILITY,
   case
     when exists (select 1 from ODPISY where SMAZAN = 0) then -1
     else 1
   end as "@PanelWriteOffStore", cast(0.0 as AMOUNTFLT_NU) as PRICEUNIT, cast(0.0 as AMOUNTFLT_NU) as PRICESOLIDUNIT, l_UNITSALE as UNITSALE, l_UNITTARE as UNITTARE, -1 as "#TARE", -1 as "UNITTARE",
   cast(1 as BOOLBIT_1) as AKTIVNI,
   cast(0 as BOOLBIT_0) as WEIGHTED;
end; $$;

select grant_func('RECEPTDefault', 'SPEXEC');


select ASWDropFunction('RECEPT_CalculateStockPrices');
/**
 * Function calculates recipe stock prices for sale and internal operations from recipe ingredients.
 * Price is calculated for specified portion. A half-portion recipe can also be assigned to a_RCPTID.
 * If the recipe does not contain relevant ingredients, the prices for the base portion is 0. If either internal or sale
 * price is not null, another price is returned as 0 even if directly calculated value is NULL.
 * When both prices are null, NULLs are returned. It is used to detect that the recipe does not contain ingredients with the desired portion.
 *
 * If the storage (a_SKLDID) is null, it calculates the recipe stock price from stock item prices stored in SKLADPOL.CENA
 * If the storage is provided, then it calculates the result from stock prices stored in stock levels (ZASOBY)
 */
create or replace function admin_septim.RECEPT_CalculateStockPrices(
  in  a_RCPTID              IDINT,
  in  a_PRCEID              REFIDINT,
  in  a_SKLDID              REFIDINT,
  out a_INTERNALSTOCKPRICE  PRICEFLT,
  out a_SALESTOCKPRICE      PRICEFLT
) language plpgsql security definer
as $$
declare
  l_AKTRCPTID              REFIDINT;
  l_INGREDKOEF             KOEFICIENTFLT;
begin
  select P.a_MASTERRCPTID, P.a_INGREDKOEF into l_AKTRCPTID, l_INGREDKOEF from RECEPT_PolovicniPorceInfo(a_RCPTID) P;

  if a_SKLDID is null then
    --- using of basic stock item price from SKLADPOL.CENA
    select
      sum(case when INGRED_ProSkladOperace(RI.TYP) then SP.CENA * (RI.MNOZSTVI * l_INGREDKOEF) end),
      sum(case when INGRED_ProProdejPokladnou(RI.TYP) then SP.CENA * (RI.MNOZSTVI * l_INGREDKOEF) end)
    into
      a_INTERNALSTOCKPRICE, a_SALESTOCKPRICE
    from
      SKLADPOL as SP
      join RECEPTINGREDFULL as RI on SP.SKPLID = RI.SKPLID
    where
      RI.RCPTID = l_AKTRCPTID
      and (INGRED_ProProdejPokladnou(RI.TYP) or INGRED_ProSkladOperace(RI.TYP))
      and (RI.PRCEID is null or (a_PRCEID is not null and RI.PRCEID = a_PRCEID))
    group by
      RI.RCPTID;
  else
    -- using of item price from stock levels
    select
      sum(case when INGRED_ProSkladOperace(RI.TYP) then Z.CENA * (RI.MNOZSTVI * l_INGREDKOEF) end),
      sum(case when INGRED_ProProdejPokladnou(RI.TYP) then Z.CENA * (RI.MNOZSTVI * l_INGREDKOEF) end)
    into
      a_INTERNALSTOCKPRICE, a_SALESTOCKPRICE
    from
      ZASOBY as Z
      join RECEPTINGREDFULL as RI on Z.SKPLID = RI.SKPLID
    where
      RI.RCPTID = l_AKTRCPTID
      and Z.SKLDID = a_SKLDID
      and (INGRED_ProProdejPokladnou(RI.TYP) or INGRED_ProSkladOperace(RI.TYP))
      and (RI.PRCEID is null or (a_PRCEID is not null and RI.PRCEID = a_PRCEID))
    group by
      RI.RCPTID;
  end if;

  -- Return calculated prices. Return 0 if for some reason the price was not calculated,
  -- for example, the recipe does not have ingredients for requested portion.
  a_INTERNALSTOCKPRICE := coalesce(a_INTERNALSTOCKPRICE, 0);
  a_SALESTOCKPRICE := coalesce(a_SALESTOCKPRICE, 0);

end; $$;;



select ASWDropFunction ('RECEPT_ObtainSaleStockPrice');
/**
 * Function returns recipe stock price. When it is called for half-portion recipe, ingredient coefficient from main recipe is used.
 * If store is not specified (no write-off defined), then average recipe stock price from RECEPT.SALESTOCKPRICE is returned
 */
create or replace function admin_septim.RECEPT_ObtainSaleStockPrice(
  in a_RCPTID              REFIDINT,
  in a_PRCEID              REFIDINT,     -- Portion ID for which the price is obtained
  in a_SKLDID              REFIDINT_NU
) returns PRICEFLT
language plpgsql security definer
as $$
declare
  l_AKTRCPTID              REFIDINT;
  l_INGREDKOEF             KOEFICIENTFLT;
  l_PRICE                  PRICEFLT;
begin
  select P.a_MASTERRCPTID, P.a_INGREDKOEF into l_AKTRCPTID, l_INGREDKOEF from RECEPT_PolovicniPorceInfo(a_RCPTID) as P;

  if a_SKLDID is null then
    l_PRICE := RECEPT_GetSALESTOCKPRICE(l_AKTRCPTID);
  else
    l_PRICE := RECSKLADCENA_GetSALESTOCKPRICE(l_AKTRCPTID, a_PRCEID, a_SKLDID);
  end if;

  return l_PRICE * l_INGREDKOEF;
end; $$;;




select ASWDropProcedure('RECEPT_StockItemPriceUpdated');
/**
* Function recalculates stock prices of the recipes
* Description:
*  if a_SKLDID is not null and a_STRDID is null, only price for the given store is calculated
*  if a_SKLDID is null and a_STRDID is not null, prices for stores in the cost unit is calculated
*  if both a_SKLDID and a_STRDID is null, then price for all stores is calculated
*  if a_SKLDID is not null and a STRDID is not null, the price for one store is calculated, but if stored does not belong to the unit, PGM error is thrown
*/
create or replace function admin_septim.RECEPT_StockItemPriceUpdated(
  in a_SKPLID              REFIDINT,
  in a_STRDID              REFIDINT,
  in a_SKLDID              REFIDINT
) returns void
language plpgsql security definer
as $$
declare
  l_SKLDID                 REFIDINT;
  l_STRDID                 REFIDINT;
  l_SEGMENTATION           VALUESTR;
begin

  l_SEGMENTATION := P_GetGlobalParam('VYPOCETSKLADCEN', 'PLATNOSTSKLADCENY');

  if a_SKLDID is not null then
    if a_STRDID is not null then
      if SKLAD_GetSTRDID(a_SKLDID) <> a_STRDID then
        perform ASWError(35551);
      end if;
    end if;

    perform RECEPT__StockItemPriceUpdated(a_SKPLID, a_STRDID, a_SKLDID, l_SEGMENTATION);

  else
    -- Optimization
    -- If stock prices are global, then the recipe prices is calculated from the stock price saved in SKLADPOL
    -- and it is the same for all stores (see RECEPT_CalculateStockPrices)
    -- Therefore, we can pass a_STRDID:=null, a_SKLDID:=null
    -- Null values go way down to the RECSKLADCENA_SetPrices function, and calculated prices is saved for all stores.
    if l_SEGMENTATION = 'CENAGLOBALNI' then
      perform RECEPT__StockItemPriceUpdated(a_SKPLID, a_STRDID => null, a_SKLDID => null, a_SEGMENTATION => l_SEGMENTATION);
    -- The price segmentation is per cost-unit
    -- Loop over affected cost-units
    elsif l_SEGMENTATION = 'CENASTREDISKOVA' then
      for l_STRDID in
        select STRDID from SKLAD where SMAZAN = 0 and (a_STRDID is null or STRDID = a_STRDID) group by STRDID
      loop
        perform RECEPT__StockItemPriceUpdated(a_SKPLID, l_STRDID, a_SKLDID => null, a_SEGMENTATION => l_SEGMENTATION);
      end loop;
    -- If stock prices are per-storage, loop over stores in the requested unit or over all stores
    else
      for l_SKLDID in
        select SKLDID from SKLAD where SMAZAN = 0 and (a_STRDID is null or STRDID = a_STRDID)
      loop
        perform RECEPT__StockItemPriceUpdated(a_SKPLID, a_STRDID => null, a_SKLDID => l_SKLDID, a_SEGMENTATION => l_SEGMENTATION);
      end loop;
    end if;

  end if;

end; $$;



select ASWDropProcedure('RECEPT__StockItemPriceUpdated');
/*
* Function recalculates stock prices of the recipes
* Description:
*  if a_SKPLID is null, all recipes are recalculated
*  if a_SKPLID is null, recipes, that contain this stock item, are recalculated
*/
create or replace function admin_septim.RECEPT__StockItemPriceUpdated(
  in a_SKPLID              REFIDINT_NU,
  in a_STRDID              REFIDINT_NU,
  in a_SKLDID              REFIDINT_NU,
  in a_SEGMENTATION        VALUESTR
) returns void
language plpgsql security definer
as $$
declare
  l_RCPTID                 IDINT;
begin

  -- When stock item ID is passed, recalculate prices of the recipes that contain this stock item
  if a_SKPLID is not null then

    for l_RCPTID in
      select distinct RCPTID from RECEPTINGREDFULL where SKPLID = a_SKPLID
    loop
      -- Calculate and adjust the new recipe price
      perform RECEPT__RecalculateRecipeStockPrice(l_RCPTID, a_STRDID, a_SKLDID, a_SEGMENTATION);
    end loop;

  else
    -- Otherwise, if no stock item is specified, get all recipes
    for l_RCPTID in
      select RCPTID from RECEPT where SMAZAN = 0
    loop
      -- Calculate and adjust the new recipe price
      perform RECEPT__RecalculateRecipeStockPrice(l_RCPTID, a_STRDID, a_SKLDID, a_SEGMENTATION);
    end loop;
  end if;
end; $$;



select ASWDropProcedure('RECEPT_RecalculateStockPrices');
/*  Function recalculates stock prices of the recipe of the particular portion or all the portions.
*/
create or replace function admin_septim.RECEPT_RecalculateStockPrices(
  in a_RCPTID              REFIDINT,
  in a_PRCEID              REFIDINT_NU default null
) returns void
language plpgsql security definer
as $$
declare
  l_RCPTIDR                IDINT;
begin
  if a_PRCEID is null then
    -- recalculate stock prices of all portions
    perform RECEPT__RecalculateRecipeStockPrice(a_RCPTID, null, null);
  else
    -- recalculate stock price of the particular portion
    perform RECEPT__RecalculatePortionStockPrice(a_RCPTID, a_PRCEID, null, null);
  end if;
  -- prepoctu nadrizene receptury
  for l_RCPTIDR in
    select distinct RCPTIDR from RLRCPTFULL where RCPTID = a_RCPTID and RCPTIDR <> RCPTID
  loop
    perform RECEPT__RecalculateRecipeStockPrice(l_RCPTIDR, null, null);
  end loop;
  return;
end; $$;



select ASWDropProcedure('RECEPT__RecalculateRecipeStockPrice');
/**
* Function recalculates recipe stock operation price of the basic portion and other portions
*/
create or replace function admin_septim.RECEPT__RecalculateRecipeStockPrice(
  in a_RCPTID              REFIDINT,
  in a_STRDID              REFIDINT_NU,
  in a_SKLDID              REFIDINT_NU,
  in a_SEGMENTATION        VALUESTR default null
) returns void
language plpgsql security definer as $$
declare
  l_PORTION                RECORD;
begin
  -- check whether the recipe is not a half-portion
  if RECEPT_CheckPolPorceTyp(a_RCPTID, -1) = true then
    return;
  end if;

  perform RECSKLADCENA_RecalcRecipePrices(a_RCPTID, PRCEID, a_STRDID, a_SKLDID, a_SEGMENTATION)
  from PORCE
    where SMAZAN = 0
      and ACTIVE
      and not HIDE;
end; $$;



select ASWDropProcedure('RECEPT__RecalculatePortionStockPrice');
/**
 * Function recalculates recipe stock prices of the particular portion
 */
create or replace function admin_septim.RECEPT__RecalculatePortionStockPrice(
  in a_RCPTID              REFIDINT,
  in a_PRCEID              REFIDINT,
  in a_STRDID              REFIDINT_NU,
  in a_SKLDID              REFIDINT_NU
) returns void
language plpgsql security definer as $$
begin
  if RECEPT_CheckPolPorceTyp(a_RCPTID, -1) then
    -- when it is a half-portion recipe, exit
    return;
  end if;

  perform RECSKLADCENA_RecalcRecipePrices(a_RCPTID, a_PRCEID, a_STRDID, a_SKLDID);

end; $$;



select ASWDropProcedure('RECEPT_TestCena');
create or replace function admin_septim.RECEPT_TestCena(
  in    a_DPHID            REFIDINT,
  inout a_CENAB            CENAFLT,
  inout a_DPHA             CENAFLT,
  inout a_DPHB             CENAFLT,
  inout a_CENAS            CENAFLT,
  inout a_CENAB1           CENAFLT,
  inout a_DPHA1            CENAFLT,
  inout a_DPHB1            CENAFLT,
  inout a_CENAS1           CENAFLT,
  inout a_CENAB2           CENAFLT,
  inout a_DPHA2            CENAFLT,
  inout a_DPHB2            CENAFLT,
  inout a_CENAS2           CENAFLT,
  in    a_FORCE            FORCETXT
)
language plpgsql security definer as $$
declare
  l_ZAOKR                  CISLOINT;
  l_KONTRTYP               CISLOINT;
  l_TYPROZPTYLRECEPT       CISLOINT;
  l_KONTRVYCHOZI           CISLOINT;
  l_KONTRODCHYLKA          KOEFICIENTFLT;
  l_ROZPTYLRECEPT          KOEFICIENTFLT;
  l_ZPVYPOCTU              CISLOINT;
begin
  l_ZAOKR := admin_params.P_GetGlobalParamINT('DPH','ZAOKROUHLENI',null,false);
  l_KONTRTYP := admin_params.P_GetGlobalParamINT('DPH','KONTR_TYP');
  l_TYPROZPTYLRECEPT := admin_params.P_GetGlobalParamINT('NUMBERPAR','TYPROZPTYLRECEPT');
  l_KONTRVYCHOZI := admin_params.P_GetGlobalParamINT('DPH','KONTR_VYCHOZI');
  l_KONTRODCHYLKA := admin_params.P_GetGlobalParamREAL('DPH','KONTR_ODCHYLKA');
  l_ROZPTYLRECEPT := admin_params.P_GetGlobalParamREAL('NUMBERPAR','ROZPTYLRECEPT',null,false);
  l_ZPVYPOCTU := admin_params.P_GetGlobalParamINT('DPH','KONTR_ZPVYPOCTU');
  --- kontrola DPH, CENA u zakladni ceny
  select * into a_CENAB,a_DPHA,a_DPHB,a_CENAS from admin_base.B_DPH_Kontrola(null,a_DPHID,a_CENAB,a_DPHA,a_DPHB,a_CENAS,a_FORCE,'',l_ZAOKR,l_KONTRTYP,
  l_TYPROZPTYLRECEPT,l_KONTRVYCHOZI,l_KONTRODCHYLKA,l_ROZPTYLRECEPT,l_ZPVYPOCTU);
  select * into a_CENAB1,a_DPHA1,a_DPHB1,a_CENAS1 from admin_base.B_DPH_Kontrola(null,a_DPHID,a_CENAB1,a_DPHA1,a_DPHB1,a_CENAS1,a_FORCE,'DAN',l_ZAOKR,l_KONTRTYP,
  l_TYPROZPTYLRECEPT,l_KONTRVYCHOZI,l_KONTRODCHYLKA,l_ROZPTYLRECEPT,
  l_ZPVYPOCTU);
  select * into a_CENAB2,a_DPHA2,a_DPHB2,a_CENAS2 from admin_base.B_DPH_Kontrola(null,a_DPHID,a_CENAB2,a_DPHA2,a_DPHB2,a_CENAS2,a_FORCE,'NED',l_ZAOKR,l_KONTRTYP,
  l_TYPROZPTYLRECEPT,l_KONTRVYCHOZI,l_KONTRODCHYLKA,l_ROZPTYLRECEPT,
  l_ZPVYPOCTU);
  return;
end; $$;



--ALES OK
select ASWDropFunction('RECEPT_GetNazev');
create or replace function admin_septim.RECEPT_GetNazev(
  in a_RCPTID              IDINT
) returns NAZEVSTR
language plpgsql security definer as $$
declare
  l_Nazev                  NAZEVSTR;
  l_Smazan                 SMAZANINT;
begin
  begin
    select NAZEV,SMAZAN into strict l_Nazev,l_Smazan from RECEPT where RCPTID = a_RCPTID order by SMAZAN asc LIMIT 1;
  exception
    when NO_DATA_FOUND then
  end;
  case
    when l_Smazan = 0 then
      return l_Nazev;
    when l_Smazan is null then
      if l_Nazev is not null then
        return concat('SMAZANÁ (',l_Nazev,')');
      else
        return concat(concat('NEEXISTUJE (',cast(a_RCPTID as VARCHAR),')'));
      end if;
    else
      null;-- ADDED EMPTY ELSE
  end case;
end; $$;;



select ASWDropFunction('RECEPT_GetName');
/**
 * This function differs from RECEPT_GetNazev in returning null if a valid
 * recipe with the given ID does not exist.
 */
create or replace function admin_septim.RECEPT_GetName (
  in a_RCPTID              IDINT
) returns NAZEVSTR
language plpgsql security definer as $$
begin
  return NAZEV from RECEPT where RCPTID = a_RCPTID and SMAZAN = 0;
end; $$;



--***************************************************************************
select ASWDropProcedure('RECEPT_PrepocetCen');
create or replace function admin_septim.RECEPT_PrepocetCen(
  in a_RCPTID              REFIDINT,
  in a_RCPIID              REFIDINT,
  in a_EXPLICITPERM        PARAMTXT default null
) returns void
language plpgsql security definer as $$
declare
  -- promenne pro uchovani vysledku vypoctu
  --- loadnuti zakladnich (pocatecnich) hodnot
  l_DPHID                  REFIDINT;
  l_RCPI_DPHID             REFIDINT;
  l_CENMID1                REFIDINT;
  l_SKP1ID1                REFIDINT;
  l_CENKID1                REFIDINT;
  l_CENMID2                REFIDINT;
  l_CENKID2                REFIDINT;
  l_SKP1ID2                REFIDINT;
  l_VYPOCETTYP             TYPINT;
  l_TARGETTYP              TYPINT;
  l_DOTACETYP              TYPINT;
  l_UNDEFTYP               TYPINT;
  l_KOEF                   KOEFICIENTFLT;
  l_ZPUSOBZAOKR            TYPINT;
  l_ZAOKRNA                KOEFICIENTFLT;
  l_ZAOKR                  TYPINT;
  l_CENAS_Z                CENAFLT;
  l_CENAB_Z                CENAFLT;
  l_DPHA_Z                 CENAFLT;
  l_DPHB_Z                 CENAFLT;
  l_KOEFDPHA               CENAFLT;
  l_KOEFDPHB               CENAFLT;
  l_NAZEVDPH               NAZEVSTR;
  l_RCNKID                 IDINT;
  l_CENAPROPREP            CISLOINT_0;
  l_MINCENA                CENAFLT;
  l_MAXCENA                CENAFLT;
  l_UPRAVACENY             CENAFLT;
  l_TMP1                   IDINT;
  l_TMP2                   CENAFLT;
  l_TMP3                   CENAFLT;
  l_TMP4                   CENAFLT;
  l_TMP5                   CENAFLT;
  l_TMP6                   CENAFLT;
  l_TMP7                   CENAFLT;
  l_TMP8                   CENAFLT;
  l_TMP9                   CENAFLT;
  l_CENAB_C                CENAFLT;
  l_CENAS_C                CENAFLT;
  l_DPHA_C                 CENAFLT;
  l_DPHB_C                 CENAFLT;
begin
  l_ZAOKR := admin_params.P_GetGlobalParam('DPH','ZAOKROUHLENI');
  begin
    select DPHID,CENMID1,CENMID2,CENKID1,CENKID2,SKP1ID1,SKP1ID2,
   VYPOCETTYP,TARGETTYP,DOTACETYP,KOEF,UNDEFTYP,ZAOKR1,
   MINCENA,MAXCENA,UPRAVACENY,
   (case ZAOKR2 when 1 then .01
    when 2 then .1
    when 3 then .5
    when 4 then 1
    when 5 then 5
    when 6 then 10
     end) as ZAOKR2,CENAPROPREP into strict l_RCPI_DPHID,l_CENMID1,l_CENMID2,l_CENKID1,l_CENKID2,l_SKP1ID1,l_SKP1ID2,
    l_VYPOCETTYP,l_TARGETTYP,l_DOTACETYP,l_KOEF,l_UNDEFTYP,l_ZPUSOBZAOKR,
    l_MINCENA,l_MAXCENA,l_UPRAVACENY,l_ZAOKRNA,l_CENAPROPREP from RECCENPREPITEM where
   (RCPIID = a_RCPIID) and (SMAZAN = 0);
 exception
    when NO_DATA_FOUND then
  end;
  --- vypocet ceny je ze SKLADOVE CENY
  if l_VYPOCETTYP = 1 then
    -- pro jistotu přehodíme přepočet na přepočet v cenách bez DPH (protože skladová je bez DPH)
    l_CENAPROPREP := 1;
    --- nacitani DPH
    select * into l_TMP1,l_DPHID,l_CENAB_Z,l_DPHA_Z,l_DPHB_Z,l_CENAS_Z from admin_septim.RECCENIK_GetZakladniCenu(a_RCPTID);
    l_CENAB_Z := (RECEPT_CalculateStockPrices(a_RCPTID, PORCE_GetZakladniID(), null)).a_INTERNALSTOCKPRICE;
  else
    --- Vypocet ceny je z VYBRANE CENY
    if (l_VYPOCETTYP = 3) then
      select * into l_TMP1,l_DPHID,l_CENAB_Z,l_DPHA_Z,l_DPHB_Z,l_CENAS_Z from admin_septim.RECCENIK_GetJinouCenu(a_RCPTID,l_SKP1ID1,l_CENKID1,null,l_CENMID1); /*DATUMCAS*/
    end if;
    -- Vypocet ceny je z daňové dotace VYBRANE CENY
    if (l_VYPOCETTYP = 5) then
      SELECT * INTO l_TMP1,l_DPHID,l_TMP2,l_TMP3,l_TMP4,l_TMP5,l_CENAB_Z,l_DPHA_Z,l_DPHB_Z,
      l_CENAS_Z,l_TMP6,l_TMP7,l_TMP8,l_TMP9 FROM admin_septim.RECCENIK_GetJinouCenuSDotacema(a_RCPTID,l_SKP1ID1,l_CENKID1,null,l_CENMID1); /*DATUMCAS*/
    end if;
    -- Vypocet ceny je z nedaňové dotace VYBRANE CENY
    if (l_VYPOCETTYP = 7) then
      SELECT * INTO l_TMP1,l_DPHID,l_TMP2,l_TMP3,l_TMP4,l_TMP5,l_TMP6,l_TMP7,l_TMP8,l_TMP9,
      l_CENAB_Z,l_DPHA_Z,l_DPHB_Z,l_CENAS_Z FROM admin_septim.RECCENIK_GetJinouCenuSDotacema(a_RCPTID,l_SKP1ID1,l_CENKID1,null,l_CENMID1); /*DATUMCAS*/
    end if;
    --- vypocet ceny je ze ZAKLADNI CENY, nebo jiná cena neexistuje a je zvoleno, že se má jako náhrada použít základní.
    if (l_VYPOCETTYP in(2,4,6)) or ((l_CENAS_Z is null) and (l_UNDEFTYP = 2)) then
      -- pokud je zdrojová cena základní, nebo vybraná, ale nebyla zjištěna její cena a je možné použít jako náhradní cenu základní (UNDEFTYP = 2)
      if l_VYPOCETTYP in(2,3) then
        select * into l_TMP1,l_DPHID,l_CENAB_Z,l_DPHA_Z,l_DPHB_Z,l_CENAS_Z from admin_septim.RECCENIK_GetZakladniCenu(a_RCPTID);
      end if;
      -- pokud je zdrojová cena základní daňová dotace, nebo vybraná daňová dotace, ale nebyla zjištěna její cena a je možné použít jako náhradní cenu základní (UNDEFTYP = 2)
      if l_VYPOCETTYP in(4,5) then
        SELECT * INTO l_TMP1,l_DPHID,l_TMP2,l_TMP3,l_TMP4,l_TMP5,l_CENAB_Z,l_DPHA_Z,l_DPHB_Z,
        l_CENAS_Z,l_TMP6,l_TMP7,l_TMP8,l_TMP9 FROM admin_septim.RECCENIK_GetZakladniCenuSDotacema(a_RCPTID);
      end if;
      -- pokud je zdrojová cena základní nedaňová dotace, nebo vybraná nedaňová dotace, ale nebyla zjištěna její cena a je možné použít jako náhradní cenu základní (UNDEFTYP = 2)
      if l_VYPOCETTYP in(6,7) then
        SELECT * INTO l_TMP1,l_DPHID,l_TMP2,l_TMP3,l_TMP4,l_TMP5,l_TMP6,l_TMP7,l_TMP8,l_TMP9,
        l_CENAB_Z,l_DPHA_Z,l_DPHB_Z,l_CENAS_Z FROM admin_septim.RECCENIK_GetZakladniCenuSDotacema(a_RCPTID);
      end if;
    end if;
  end if;
  --- loadnuti DPH
  l_RCPI_DPHID := coalesce(l_RCPI_DPHID,l_DPHID);
  begin
    select KOEFA1,koefb1,NAZEV into strict l_KOEFDPHA,l_KOEFDPHB,l_NAZEVDPH from B_DPH where(DPHID = l_RCPI_DPHID);
  exception
    when NO_DATA_FOUND then
  end;
  --- kontrola, zda-li CENA S DPH neni rovna null
  --- pokud ANO, tak se nenasla kombinace Vybrane ceny a nema se pouzivat ani Zakladni cena
  if (l_CENAB_Z is not null) then
    select * into l_CENAB_C,l_CENAS_C,l_DPHA_C,l_DPHB_C from admin_septim.RECEPT_VypocetCen(l_CENAPROPREP,l_CENAB_Z,l_CENAS_Z,l_KOEF,l_KOEFDPHA,l_KOEFDPHB,l_ZPUSOBZAOKR,
    l_ZAOKRNA,l_ZAOKR,l_MINCENA,l_MAXCENA,l_UPRAVACENY);
    case l_DOTACETYP
    --- prodejni cena plna
      when 1 then
        perform admin_septim.RECCENIK_RECEPTSetCena(a_RCPTID,l_CENMID2,l_CENKID2,l_SKP1ID2,l_CENAB_C,l_CENAS_C,l_DPHA_C,l_DPHB_C,
        l_RCPI_DPHID,l_NAZEVDPH,a_EXPLICITPERM);
    --- daňová dotace
      when 2 then
        perform admin_septim.DOTACEREC_RECEPTSetDanDotace(a_RCPTID,l_CENMID2,l_CENKID2,l_SKP1ID2,l_CENAB_C,l_DPHA_C,l_DPHB_C,l_CENAS_C,
        l_UNDEFTYP,l_CENAS_Z,l_CENAB_Z,l_DPHA_Z,l_DPHB_Z,l_RCPI_DPHID,l_NAZEVDPH,
        a_EXPLICITPERM);
    --- nedaňová dotace
      when 3 then
        perform admin_septim.DOTACEREC_RECEPTSetNeDanDotace(a_RCPTID,l_CENMID2,l_CENKID2,l_SKP1ID2,l_CENAB_C,l_DPHA_C,l_DPHB_C,l_CENAS_C,
        l_UNDEFTYP,l_CENAS_Z,l_CENAB_Z,l_DPHA_Z,l_DPHB_Z,l_RCPI_DPHID,l_NAZEVDPH,
        a_EXPLICITPERM);
      else
        null;-- ADDED EMPTY ELSE
    end case;
  else
    --- zdrojova kombinace vybrane ceny neexistuje, proto se z tabulky RecCenik odstrani cilova kombinace
    begin
      select RCNKID into strict l_RCNKID from RECCENIK where(RCPTID = a_RCPTID) and (CENMID = l_CENMID2) and (CENKID = l_CENKID2) and (SKP1ID = l_SKP1ID2) and (SMAZAN = 0);
    exception
      when NO_DATA_FOUND then
    end;
    if l_RCNKID is not null then
      case l_DOTACETYP
      --- prodejni cena plna se vymaže (včetně případných dotací)
        when 1 then
          perform admin_septim.RECCENIK_RECPREPDelete(l_RCNKID,'',a_EXPLICITPERM);
      --- daňová dotace se vynuluje, nedaňová se zjistí a zachová
        when 2 then
          select * into l_CENAB_C,l_DPHA_C,l_DPHB_C,l_CENAS_C,l_TMP2,l_TMP3,l_TMP4,l_TMP5 from admin_septim.DOTACEREC_GetDotace(l_RCNKID);
          perform admin_septim.DOTACEREC_RECCENIKUpdate(l_RCNKID,0,0,0,0,l_CENAB_C,l_DPHA_C,l_DPHB_C,l_CENAS_C,null);
      --- nedaňová dotace se vynuluje, daňová se zjistí a zachová
        when 3 then
          select * into l_TMP2,l_TMP3,l_TMP4,l_TMP5,l_CENAB_C,l_DPHA_C,l_DPHB_C,l_CENAS_C from admin_septim.DOTACEREC_GetDotace(l_RCNKID);
          perform admin_septim.DOTACEREC_RECCENIKUpdate(l_RCNKID,l_CENAB_C,l_DPHA_C,l_DPHB_C,l_CENAS_C,0,0,0,0,null);
        else
          null;-- ADDED EMPTY ELSE
      end case;
    end if;
  end if;
  return;
end; $$;


--***************************************************************************
select ASWDropFunction('RECEPT__UpravaCeny');
/**
* Funkce vrátí upravenou cenu tak, že pokud by byla nižší než minimální cena, upraví ji na minimální cenu,
* pokud by byla vyšší než maximální cena, upraví ji na maximální cenu
* a finálně takto získanou částku upraví o a_UPRAVACENY
**/
create or replace function admin_septim.RECEPT__UpravaCeny(
  in a_CENA                CENAFLT,
  in a_MINCENA             CENAFLT,
  in a_MAXCENA             CENAFLT,
  in a_UPRAVACENY          CENAFLT
) returns CENAFLT
language plpgsql security definer as $$
declare
  l_OUTCENA                CENAFLT;
begin
  l_OUTCENA := a_CENA;
  l_OUTCENA := l_OUTCENA+a_UPRAVACENY;
  if l_OUTCENA < a_MINCENA then
    l_OUTCENA := a_MINCENA;
  end if;
  if l_OUTCENA > a_MAXCENA then
    l_OUTCENA := a_MAXCENA;
  end if;
  return l_OUTCENA;
end; $$;;


--***************************************************************************
select ASWDropProcedure('RECEPT_VypocetCen');
create or replace function admin_septim.RECEPT_VypocetCen(
  in  a_CENAPROPREP        CISLOINT_0,in a_CENAB_Z CENAFLT,
  in  a_CENAS_Z            CENAFLT,
  in  a_KOEF               KOEFICIENTFLT,
  in  a_DPHA_KOEF          CENAFLT,
  in  a_DPHB_KOEF          CENAFLT,
  in  a_ZAOKR1             TYPINT,
  in  a_ZAOKR2             KOEFICIENTFLT,
  in  a_ZAOKR              TYPINT,
  in  a_MINCENA            CENAFLT,
  in  a_MAXCENA            CENAFLT,
  in  a_UPRAVACENY         CENAFLT,
  out a_CENAB_C            CENAFLT,
  out a_CENAS_C            CENAFLT,
  out a_DPHA_C             CENAFLT,
  out a_DPHB_C             CENAFLT
)
language plpgsql security definer as $$
begin
  if a_CENAPROPREP = 1 then
    a_CENAB_C := RECEPT__UpravaCeny(coalesce(a_CENAB_Z*a_KOEF,0),a_MINCENA,a_MAXCENA,a_UPRAVACENY);
    a_CENAS_C := coalesce(a_CENAB_C*(1+a_DPHA_KOEF+a_DPHB_KOEF),0);
  else
    a_CENAS_C := RECEPT__UpravaCeny(coalesce(a_CENAS_Z*a_KOEF,0),a_MINCENA,a_MAXCENA,a_UPRAVACENY);
  end if;
  a_CENAS_C := ROUND(admin_base.cm_ROUND(a_CENAS_C,a_ZAOKR1,a_ZAOKR2),a_ZAOKR);
  a_CENAB_C := ROUND(a_CENAS_C/(1+a_DPHA_KOEF+a_DPHB_KOEF),a_ZAOKR);
  a_DPHB_C := ROUND(a_CENAB_C*a_DPHB_KOEF,a_ZAOKR);
  a_DPHA_C := a_CENAS_C -a_CENAB_C -a_DPHB_C;
  return;
end; $$;



select ASWDropProcedure('RECEPT__Check');
/*
* a_SKPLID not null .. jde o recepturu-skladpol, bude se testovat konzistence se skladpol
*/
create or replace function admin_septim.RECEPT__Check(
  in    a_NAZEV            NAZEVSTR,
  in    a_POPIS            POPISTXT,
  in    a_ZKRATKA          NAZEVSTR,
  in    a_DPH              NAZEVSTR,
  in    a_KLIC             KLICSTR,
  in    a_BARCODE          BARCODETXT,
  in    a_IDCODE           IDCODESTR,
  in    a_PLUCODE          PLUINT,
  in    a_RECEPTTYP        NAZEVSTR,
  in    a_UNITSALE         NAMESTR,
  inout a_CENAB            CENAFLT,
  inout a_DPHA             CENAFLT,
  inout a_DPHB             CENAFLT,
  inout a_CENAS            CENAFLT,
  inout a_CENAB1           CENAFLT,
  inout a_DPHA1            CENAFLT,
  inout a_DPHB1            CENAFLT,
  inout a_CENAS1           CENAFLT,
  inout a_CENAB2           CENAFLT,
  inout a_DPHA2            CENAFLT,
  inout a_DPHB2            CENAFLT,
  inout a_CENAS2           CENAFLT,
  in    a_CISLOL           CISLOINT_R,
  in    a_CISLOH           CISLOINT_R,
  in    a_PORCI            MNOZSTVIFLT,
  in    a_SKUPREC1         NAZEVSTR,
  in    a_SKUPREC2         NAZEVSTR,
  in    a_SKUPREC3         NAZEVSTR,
  in    a_SKUPREC4         NAZEVSTR,
  in    a_OBALRECNAZEV     NAZEVSTR,
  in    a_POUZITDOPL       BOOLBIT,
  in    a_DOPLATEKRECEPT   NAZEVSTR,
  in    a_MINMNOZSTVI      MNOZSTVIFLT,
  in    a_PPMASTERRECNAZEV NAZEVSTR,
  inout a_PPCENAKOEF       KOEFICIENTFLT,
  inout a_PPINGREDKOEF     KOEFICIENTFLT,
  in    a_DOBAPRIPRAVY     TIMEINT,
  in    a_DOBAKONZUMACE    TIMEINT,
  out   a_SKR1ID           REFIDINT,
  out   a_SKR2ID           REFIDINT,
  out   a_SKR3ID           REFIDINT,
  out   a_SKR4ID           REFIDINT,
  out   a_DPHID            REFIDINT,
  out   a_RECTID           REFIDINT,
  out   a_OBALRCPTID       REFIDINT,
  out   a_PPMASTERRCPTID   REFIDINT,
  out   a_DOPLATEKRCPTID   REFIDINT,
  in    a_BONUS            CISLOFLT,
  inout a_POVPOPISOBJ      BOOLBIT,
  inout a_DEFPOPISYOBJ     KOMENTARTXT,
  in    a_CHOD             NAZEVSTR,
  out   a_CHODID           REFIDINT_NU,
  in    a_FORCE            FORCETXT,
  in    a_ID               IDINT,
  in    a_DRUHJIDLA        NAZEVSTR,
  in    a_DURABILITY       NUMBERINT,
  out   a_DRJDID           REFIDINT,
  in    a_SKLAD            NAZEVSTR,
  in    a_UNITCONTENT      NAMESTR,
  in    a_UNITSOLID        NAMESTR,
  in    a_CONTENTAMOUNT    AMOUNTFLT_NU,
  in    a_SOLIDAMOUNT      AMOUNTFLT_NU,
  in    a_DODVVYR          NAMESTR,
  in    a_COUNTRY          NAMESTR,
  in    a_KMSCATEGORY      NAMESTR,
  in    a_KMSITEMTYPE      NAMESTR,
  in    a_WELMEC           BOOLBIT_0,
  in    a_TARE             AMOUNTFLT_NU,
  in    a_AKTIVNI          BOOLBIT_1,
  in    a_WEIGHTED         BOOLBIT_0,
  out   a_SKLDID           REFIDINT_NU,
  out   a_UNITIDSALE       REFIDINT,
  out   a_UNITIDCONTENT    REFIDINT_NU,
  out   a_UNITIDSOLID      REFIDINT_NU,
  out   a_CNTRID           REFIDINT_NU,
  out   a_DODVIDVYR        REFIDINT_NU,
  out   a_KMCTID           REFIDINT_NU,
  out   a_KMITID           REFIDINT_NU
)
language plpgsql security definer as $$
declare
  l_NAZEV                  NAZEVSTR;
  l_POPIS                  POPISTXT;
  l_ZKRATKA                ZKRATKASTR_NU;
  l_CISLOL                 CISLOINT;
  l_CISLOH                 CISLOINT;
  l_KLIC                   KLICSTR;
  l_IDCODE                 IDCODESTR;
  l_BARCODE                BARCODETXT;
  l_MASTERBONUS            CISLOFLT;
  l_RECTYPKLIC             KLICSTR;
  l_RECTIDOLD              REFIDINT;
  l_MASTERSKR1ID           REFIDINT;
  l_MASTERSKR2ID           REFIDINT;
  l_MASTERSKR3ID           REFIDINT;
  l_MASTERSKR4ID           REFIDINT;
  l_MASTEROBALRCPTID       REFIDINT;
  l_DPHBLIC                CISLOINT;
  l_KLICLIMIT              DTTLIMITTXT_NU;
  l_VLASTNOSTI2011         CISLOINT;
  l_SKR4IDOLD              REFIDINT_NU;
begin
  l_VLASTNOSTI2011 := admin_base.B_LIMITS_GetLicence('BASE','VLASTNOSTI2011',0);
  --- test licence
  if coalesce(a_BONUS,0) <> 0 then
    perform admin_base.B_LIMITS_CheckLicence('SEPTIMAPP','BONUS',1,35376);
  end if;

  perform admin_base.B_NULL_STR('NAZEV',a_NAZEV,35302);
  perform admin_base.B_NULL_STR('RECEPTTYP',a_RECEPTTYP,35378);
  select B_REFTABLE.a_ID into a_RECTID from admin_base.B_REFTABLE('SEPTIMAPP','RECEPTTYP','NAZEV',a_RECEPTTYP,35379,'RECEPTTYP');
  perform B_NULL_STR('UNITSALE', a_UNITSALE, 35554);
  select B_REFTABLE.a_ID into a_UNITIDSALE from B_REFTABLE('SEPTIMAPP', 'UNIT', 'NAME', a_UNITSALE, 35555, 'UNITSALE');
  select B_REFTABLE.a_ID into a_UNITIDCONTENT from B_REFTABLE('SEPTIMAPP', 'UNIT', 'NAME', a_UNITCONTENT, 35558, 'UNITCONTENT');
  if a_CONTENTAMOUNT is not null then
   perform B_NULL_STR('UNITCONTENT', a_UNITCONTENT, 35557);
   if a_CONTENTAMOUNT <= 0 then
     perform admin_base.ASWError(35563);
   end if;
  elsif a_UNITIDCONTENT is not null then
   perform B_NULL_FLT('CONTENTAMOUNT', a_CONTENTAMOUNT, 35561);
  end if;
  select B_REFTABLE.a_ID into a_UNITIDSOLID from B_REFTABLE('SEPTIMAPP', 'UNIT', 'NAME', a_UNITSOLID, 35560, 'UNITSOLID');
  if a_SOLIDAMOUNT is not null then
    perform B_NULL_STR('UNITSOLID', a_UNITSOLID, 35559);
    if a_SOLIDAMOUNT <= 0 then
      perform admin_base.ASWError(35564);
    end if;
  elsif a_UNITIDSOLID is not null then
    perform B_NULL_FLT('SOLIDAMOUNT', a_SOLIDAMOUNT, 35562);
  end if;
  select B_REFTABLE.a_ID into a_CNTRID from B_REFTABLE('SEPTIMAPP', 'COUNTRY', 'NAME', a_COUNTRY, 35556, 'COUNTRY');
  select B_REFTABLE.a_ID into a_DODVIDVYR from B_REFTABLE('SEPTIMAPP', 'DODAVATEL', 'JMENO', a_DODVVYR, 35565, 'DODVVYR');
  select B_REFTABLE.a_ID into a_KMCTID from admin_base.B_REFTABLE('SEPTIMAPP','KMSCATEGORY','NAME',a_KMSCATEGORY,35568,'KMSCATEGORY');
  select B_REFTABLE.a_ID into a_KMITID from admin_base.B_REFTABLE('SEPTIMAPP','KMSITEMTYPE','NAME',a_KMSITEMTYPE,35553,'KMSITEMTYPE');
  begin
    select KLIC,KLICLIMIT into strict l_RECTYPKLIC,l_KLICLIMIT from RECEPTTYP where RECTID = a_RECTID;
  exception
    when NO_DATA_FOUND then
  end;

  if a_ID is not null then
    begin
      select RECTID,SKR4ID into strict l_RECTIDOLD,l_SKR4IDOLD from RECEPT where RCPTID = a_ID;
    exception
      when NO_DATA_FOUND then
    end;
    -- Výjimka na změnu typu receptury mezi standardní a korunovou je kvůli PianoPOS
    -- Manažer jí nepodporuje
    if l_RECTYPKLIC not in('STANDARDNI','KORUNOVA') and l_RECTIDOLD <> a_RECTID then
      perform admin_base.ASWError(35397);
    end if;
  end if;
  --- test licence
  --if a_TYP>1 then
  if l_KLICLIMIT is not null then
    if admin_base.B_LIMITS_GetLicenceMulti('SEPTIMAPP',l_KLICLIMIT,0) = 0 then
      perform admin_base.ASWError(35458);
    end if;
  end if;
  if l_RECTYPKLIC not in('STANDARDNI','KORUNOVA') then
    perform admin_base.B_LIMITS_CheckLicence('SEPTIMAPP','RECEPTTYP',1,35377);
    if l_RECTYPKLIC in('LOGONASTUL','SLOZENEMENU','MODIFIKATORCENOVY','MODIFIKATORSKLADOVY','MODIFIKATORVYROBNI') and l_VLASTNOSTI2011 = 0 then
      -- kontrola VLASTNOSTI2011
      perform admin_base.ASWError(35458);
    end if;
    if (l_RECTYPKLIC = 'ALERGENDOUCTU') and (admin_base.B_LIMITS_GetLicence('BASE','VLASTNOSTI2014',0) = 0 or admin_base.B_LIMITS_GetLicence('SEPTIMAPP','POCETSKLADU',0) = 0) then
      -- kontrola VLASTNOSTI2014+skladu
      perform admin_base.ASWError(35458);
    end if;
  end if;

  l_DPHBLIC := admin_base.B_LIMITS_GetLicence('BASE','DPHB',0);
  if l_DPHBLIC = 0 then
    perform admin_base.B_NULL_FLT('CENAB',a_CENAB,35351);
    perform admin_base.B_NULL_FLT('DPHA',a_DPHA,35351);
    perform admin_base.B_NULL_FLT('CENAS',a_CENAS,35351);
    if a_CENAB1 <> 0 or a_DPHA1 <> 0 or a_CENAS1 <> 0 or a_CENAB2 <> 0 or a_DPHA2 <> 0 or a_CENAS2 <> 0 then
      perform admin_base.B_LIMITS_CheckLicence('SEPTIMAPP','DOTACE',1,35457);
      perform admin_base.B_NULL_FLT('CENAB1',a_CENAB1,35361);
      perform admin_base.B_NULL_FLT('DPHA1',a_DPHA1,35361);
      perform admin_base.B_NULL_FLT('CENAS1',a_CENAS1,35361);
      perform admin_base.B_NULL_FLT('CENAB2',a_CENAB2,35361);
      perform admin_base.B_NULL_FLT('DPHA2',a_DPHA2,35361);
      perform admin_base.B_NULL_FLT('CENAS2',a_CENAS2,35361);
    end if;
  else
    perform admin_base.B_NULL_FLT('CENAB_DPHB',a_CENAB,35351);
    perform admin_base.B_NULL_FLT('DPHA_DPHB',a_DPHA,35351);
    perform admin_base.B_NULL_FLT('DPHB_DPHB',a_DPHB,35351);
    perform admin_base.B_NULL_FLT('CENAS_DPHB',a_CENAS,35351);
    if a_CENAB1 <> 0 or a_DPHA1 <> 0 or a_DPHB1 <> 0 or a_CENAS1 <> 0 or a_CENAB2 <> 0 or a_DPHA2 <> 0 or a_DPHB2 <> 0 or a_CENAS2 <> 0 then
      perform admin_base.B_LIMITS_CheckLicence('SEPTIMAPP','DOTACE',1,35457);
      perform admin_base.B_NULL_FLT('CENAB1_DPHB',a_CENAB1,35361);
      perform admin_base.B_NULL_FLT('DPHA1_DPHB',a_DPHA1,35361);
      perform admin_base.B_NULL_FLT('DPHB1_DPHB',a_DPHB1,35361);
      perform admin_base.B_NULL_FLT('CENAS1_DPHB',a_CENAS1,35361);
      perform admin_base.B_NULL_FLT('CENAB2_DPHB',a_CENAB2,35361);
      perform admin_base.B_NULL_FLT('DPHA2_DPHB',a_DPHA2,35361);
      perform admin_base.B_NULL_FLT('DPHB2_DPHB',a_DPHB2,35361);
      perform admin_base.B_NULL_FLT('CENAS2_DPHB',a_CENAS2,35361);
    end if;
  end if;
  if coalesce(a_DPHB,0) <> 0 then
    perform admin_base.B_LIMITS_CheckLicence('BASE','DPHB',1,35350);
  else
    a_DPHB := coalesce(a_DPHB,0);
  end if;
  perform admin_base.B_NULL_STR('DPH',a_DPH,35352);
  perform admin_base.B_NULL_INT('CISLOL',a_CISLOL,35334);
  perform admin_base.B_NULL_INT('CISLOH',a_CISLOH,35335);
  perform admin_base.B_NULL_FLT('PORCI',a_PORCI,35336);
  --Počet porcí nesmí být menší ani rovný nule
  if a_PORCI <= 0 then
    perform admin_base.ASWError(35413);
  end if;
  if l_RECTYPKLIC in('BONUSOVA','LOGONASTUL','ALERGENDOUCTU') and a_PORCI <> 1 then
    perform admin_base.ASWError(35452);
  end if;
  if l_RECTYPKLIC in('BONUSOVA','LOGONASTUL','ALERGENDOUCTU') and coalesce(a_BONUS,0) <> 0 then
    perform admin_base.ASWError(35453);
  end if;
  select B_REFTABLE_EX.a_ID into a_SKR1ID from admin_base.B_REFTABLE_EX('SEPTIMAPP','SKUPREC1','NAZEV','ZKRATKA',a_SKUPREC1,35307,'SKUPREC1');
  select B_REFTABLE_EX.a_ID into a_SKR2ID from admin_base.B_REFTABLE_EX('SEPTIMAPP','SKUPREC2','NAZEV','ZKRATKA',a_SKUPREC2,35309,'SKUPREC2');
  select B_REFTABLE_EX.a_ID into a_SKR3ID from admin_base.B_REFTABLE_EX('SEPTIMAPP','SKUPREC3','NAZEV','ZKRATKA',a_SKUPREC3,35311,'SKUPREC3');
  select B_REFTABLE_EX.a_ID into a_SKR4ID from admin_base.B_REFTABLE_EX('SEPTIMAPP','SKUPREC4','NAZEV','ZKRATKA',a_SKUPREC4,35313,'SKUPREC4');
  select B_REFTABLE.a_ID into a_DPHID from admin_base.B_REFTABLE('BASE','B_DPH','NAZEV',a_DPH,35353,'DPH');
  if a_ID is not null then
    if (coalesce(l_SKR4IDOLD,0) <> coalesce(a_SKR4ID,0)) then
      -- změnila se skupina receptur 4, pořešíme update v nabídkách receptur (jen force)
      perform admin_septim.NABITEMRECEPT_UpdateReceptCheck(l_SKR4IDOLD,a_SKR4ID,a_ID,a_FORCE);
    end if;
  else
    if a_SKR4ID is not null then
      -- je zadána skupina receptur 4, pořešíme insert do nabídek receptur (jen force)
      perform admin_septim.NABITEMRECEPT_InsertReceptCheck(a_SKR4ID,a_FORCE);
    end if;
  end if;
  if coalesce(a_CHOD,'') <> '' then
    if l_VLASTNOSTI2011 = 0 then
      -- neni licence
      perform admin_base.ASWError(35467);
    end if;
    if RECEPTTYP_CourseForbidden(l_RECTYPKLIC) then
      -- u bonusove receptury nebo u modifikatoru se nezadava
      perform admin_base.ASWError(35468);
    end if;
    select B_REFTABLE.a_ID into a_CHODID from admin_base.B_REFTABLE('SEPTIMAPP','CHODY','NAZEV',a_CHOD,35469,'CHOD');
  end if;
  -- DRUHJIDLA
  if l_RECTYPKLIC = 'POLOVICNIPORCE' then
    null;
    -- pokud jde o pol.porci, tak pouzijem druh jidla z hlavni receptury
    -- resi se nizsie
  else
    if (admin_base.B_LIMITS_GetLicence('SEPTIMAPP','SKOLA',-1) = 1) and (admin_base.B_LIMITS_GetLicence('SEPTIMAPP','VYROBNAJIDEL',-1) = 1) then
      perform admin_base.B_NULL_STR('DRUHJIDLA',a_DRUHJIDLA,35470);
      select B_REFTABLE.a_ID into a_DRJDID from admin_base.B_REFTABLE('SEPTIMAPP','DRUHJIDLA','NAZEV',a_DRUHJIDLA,35471,'DRUHJIDLA');
    else
      -- pouzijem zakladni porci (ID=1)
      a_DRJDID := DRUHJIDLA_GetZakladniID();
    end if;
  end if;
  SELECT * INTO a_CENAB,a_DPHA,a_DPHB,a_CENAS,a_CENAB1,a_DPHA1,a_DPHB1,a_CENAS1,a_CENAB2,
  a_DPHA2,a_DPHB2,a_CENAS2 FROM admin_septim.RECEPT_TestCena(a_DPHID,a_CENAB,a_DPHA,a_DPHB,a_CENAS,a_CENAB1,a_DPHA1,a_DPHB1,a_CENAS1,
  a_CENAB2,a_DPHA2,a_DPHB2,a_CENAS2,a_FORCE);
  perform admin_base.B_UNQ_STR_EX('SEPTIMAPP','RECEPT','NAZEV','ZKRATKA','',a_NAZEV,35303,35304,35330,35331,
  a_ID);
  --call BANKA_SMAZANUNQ_STR('SEPTIMAPP','RECEPT','NAZEV','',a_NAZEV,0,a_ID); -- zaznamy nejde na remote db vytvaret, takze check uz neni potreba
  perform admin_base.B_UNQ_STR_EX('SEPTIMAPP','RECEPT','ZKRATKA','NAZEV','',a_ZKRATKA,35356,35357,35332,35333,
  a_ID);
  --call BANKA_SMAZANUNQ_STR('SEPTIMAPP','RECEPT','ZKRATKA','',a_ZKRATKA,0,a_ID);
  if l_RECTYPKLIC = 'LOGONASTUL' then
    perform admin_base.B_NULL_STR('KLIC',a_KLIC,35346);
  end if;
  perform admin_base.B_UNQ_STR('SEPTIMAPP','RECEPT','KLIC','',a_KLIC,35315,35315,a_ID);
  --call BANKA_SMAZANUNQ_STR('SEPTIMAPP','RECEPT','KLIC','',a_KLIC,0,a_ID); -- zaznamy nejde na remote db vytvaret, takze check uz neni potreba
  if l_RECTYPKLIC = 'VKLADANI' then
    perform admin_base.B_NULL_STR('KLIC',a_KLIC,35339);
    if substr(a_KLIC,Length(a_KLIC),1) not in('-','+') then
      perform admin_base.ASWError(35339);
    end if;
  end if;
  perform admin_base.B_UNQ_STR('SEPTIMAPP','RECEPT','IDCODE','',a_IDCODE,35326,35326,a_ID);
  perform admin_base.B_UNQ_INT('SEPTIMAPP','RECEPT','PLUCODE','',a_PLUCODE,35327,35327,a_ID);
  select B_REFTABLE_EX.a_ID into a_OBALRCPTID from admin_base.B_REFTABLE_EX('SEPTIMAPP','RECEPT','NAZEV','ZKRATKA',a_OBALRECNAZEV,35306,'OBALRECNAZEV');
  --bonusova receptura nesmi mit prirazeny obal
  if l_RECTYPKLIC in('BONUSOVA','LOGONASTUL','ALERGENDOUCTU') and a_OBALRCPTID is not null then
    perform admin_base.ASWError(35450);
  end if;
  if l_RECTYPKLIC = 'POLOVICNIPORCE' then
    perform admin_base.B_NULL_STR('PPMASTERRECNAZEV',a_PPMASTERRECNAZEV,35389);
    select B_REFTABLE_EX.a_ID into a_PPMASTERRCPTID from admin_base.B_REFTABLE_EX('SEPTIMAPP','RECEPT','NAZEV','ZKRATKA',a_PPMASTERRECNAZEV,35388,'PPMASTERRECNAZEV');
    perform admin_septim.RECEPT_CheckStandardniTyp(a_PPMASTERRCPTID,35395);
    perform admin_base.B_NULL_STR('PPMASTERRECNAZEV',a_PPCENAKOEF,35390,'PPCENAKOEF');
    perform admin_base.B_NULL_STR('PPMASTERRECNAZEV',a_PPINGREDKOEF,35391,'PPINGREDKOEF');
    -- nastavim id skupin podle hlavní receptury
    begin
      select SKR1ID,SKR2ID,SKR3ID,SKR4ID,OBALRCPTID,DRJDID into strict l_MASTERSKR1ID,l_MASTERSKR2ID,l_MASTERSKR3ID,l_MASTERSKR4ID,l_MASTEROBALRCPTID,
      a_DRJDID from RECEPT where
      RCPTID = a_PPMASTERRCPTID;
    exception
      when NO_DATA_FOUND then
    end;
    if (a_SKR1ID <> l_MASTERSKR1ID) or (a_SKR2ID <> l_MASTERSKR2ID) or (a_SKR3ID <> l_MASTERSKR3ID) or (a_SKR4ID <> l_MASTERSKR4ID) or
    (a_SKR1ID is not null and l_MASTERSKR1ID is null) or (a_SKR2ID is not null and l_MASTERSKR2ID is null) or
    (a_SKR3ID is not null and l_MASTERSKR3ID is null) or (a_SKR4ID is not null and l_MASTERSKR4ID is null) then
      perform admin_base.ASWError(35394);
    end if;
    a_SKR1ID := l_MASTERSKR1ID;
    a_SKR2ID := l_MASTERSKR2ID;
    a_SKR3ID := l_MASTERSKR3ID;
    a_SKR4ID := l_MASTERSKR4ID;
    a_OBALRCPTID := l_MASTEROBALRCPTID;
  else
    a_PPCENAKOEF := 1;
    a_PPINGREDKOEF := 1;
    a_PPMASTERRCPTID := null;
  end if;
  if admin_params.P_GetGlobalParamBOOL('GLOBPARAMSEPTIM','POVSKREC1',null,false) = true then
    if a_SKR1ID is null then
      if l_RECTYPKLIC = 'POLOVICNIPORCE' then
        perform admin_base.ASWError(35344, cast(array[B_GetTxt('SEPTIMAPP','RECEPT','ODPISYSKLAD')] as text[]));
      else
        perform admin_base.ASWError(35344, cast(array[B_GetTxt('SEPTIMAPP','RECEPT','ODPISYSKLAD'),'SKUPREC1'] as text[]));
      end if;
    end if;
  end if;
  if admin_params.P_GetGlobalParamBOOL('GLOBPARAMSEPTIM','POVSKREC2',null,false) = true then
    if a_SKR2ID is null then
      if l_RECTYPKLIC = 'POLOVICNIPORCE' then
        perform admin_base.ASWError(35344, cast(array[B_GetTxt('SEPTIMAPP','RECEPT','TISKOBJEDNAV')] as text[]));
      else
        perform admin_base.ASWError(35344, cast(array[B_GetTxt('SEPTIMAPP','RECEPT','TISKOBJEDNAV'),'SKUPREC2'] as text[]));
      end if;
    end if;
  end if;
  if admin_params.P_GetGlobalParamBOOL('GLOBPARAMSEPTIM','POVSKREC3',null,false) = true then
    if a_SKR3ID is null then
      if l_RECTYPKLIC = 'POLOVICNIPORCE' then
        perform admin_base.ASWError(35344, cast(array['3'] as text[]));
      else
        perform admin_base.ASWError(35344, cast(array['3','SKUPREC3'] as text[]));
      end if;
    end if;
  end if;
  if admin_params.P_GetGlobalParamBOOL('GLOBPARAMSEPTIM','POVSKREC4',null,false) = true then
    if a_SKR4ID is null then
      if l_RECTYPKLIC = 'POLOVICNIPORCE' then
        perform admin_base.ASWError(35344, cast(array['4'] as text[]));
      else
        perform admin_base.ASWError(35344, cast(array['4','SKUPREC4'] as text[]));
      end if;
    end if;
  end if;
  a_DOPLATEKRCPTID := null;
  if a_POUZITDOPL = true then
    if RECEPT_PovolitDoplatky() = false then
      perform admin_base.ASWError(35402);
    end if;
    perform admin_base.B_NULL_FLT('MINMNOZSTVI',a_MINMNOZSTVI,35355);
    if a_MINMNOZSTVI < 0 then
      perform admin_base.ASWError(35380);
    end if;
    perform admin_base.B_NULL_STR('DOPLATEKRECEPT',a_DOPLATEKRECEPT,35358);
    select B_REFTABLE_EX.a_ID into a_DOPLATEKRCPTID from admin_base.B_REFTABLE_EX('SEPTIMAPP','RECEPT','NAZEV','ZKRATKA',a_DOPLATEKRECEPT,35359,'DOPLATEKRECEPT');
  end if;
  --pokud je to bonusova receptura, doplatek se nedefinuje
  if l_RECTYPKLIC in('BONUSOVA','LOGONASTUL','ALERGENDOUCTU') and a_DOPLATEKRCPTID is not null then
    perform admin_base.ASWError(35451);
  end if;
  perform admin_septim.RECEPT_StandardniCheckVazby(a_ID,l_RECTYPKLIC,a_OBALRCPTID,a_DOPLATEKRCPTID);
  -- kontrola doby pripravy
  perform admin_base.B_NULL_INT('DOBAPRIPRAVY',a_DOBAPRIPRAVY,35464);
  if a_DOBAPRIPRAVY < 0 and l_RECTYPKLIC not in('MODIFIKATORVYROBNI','MODIFIKATORCENOVY','MODIFIKATORSKLADOVY') then
    -- zaporna doba muze byt jenom u modifikatoru
    perform admin_base.ASWError(35465, cast(array['DOBAPRIPRAVY'] as text[]));
  end if;
  -- kontrola doby konzumace
  perform admin_base.B_NULL_INT('DOBAKONZUMACE',a_DOBAKONZUMACE,35464);
  if a_DOBAKONZUMACE < 0 and l_RECTYPKLIC not in('MODIFIKATORVYROBNI','MODIFIKATORCENOVY','MODIFIKATORSKLADOVY') then
    -- zaporna doba muze byt jenom u modifikatoru
    perform admin_base.ASWError(35465, cast(array['DOBAKONZUMACE'] as text[]));
  end if;
  if l_VLASTNOSTI2011 = 0 then
    if coalesce(a_POVPOPISOBJ,false) = true then
      perform admin_base.ASWError(35459);
    end if;
    if trim(coalesce(a_DEFPOPISYOBJ,'')) <> '' then
      perform admin_base.ASWError(35460);
    end if;
    a_POVPOPISOBJ := 0;
    a_DEFPOPISYOBJ := null;
  else
    a_POVPOPISOBJ := coalesce(a_POVPOPISOBJ,false);
  end if;
  -- check number of days of durability of recipe
  perform admin_base.B_NULL_INT('DURABILITY', a_DURABILITY, 35543);
  if a_DURABILITY < 0 then
    perform admin_base.ASWError(35544);
  end if;
  if a_TARE < 0 then
    perform admin_base.ASWError(35571);
  end if;
  if a_AKTIVNI is null then
    perform ASWError(35573);
  end if;
  if a_WEIGHTED is null then
    perform ASWError(35582);
  end if;

  a_SKLDID := (B_REFTABLE_EX('SEPTIMAPP', 'SKLAD', 'NAZEV', 'ZKRATKA', a_SKLAD, 35549, 'SKLAD')).a_ID;
  if a_SKLDID is not null then
    -- block the simple write-off configuration for recipes when the replications are active
    if B_OPTIONS_IsReplEnv() then
      perform ASWError(35552);
    end if;
    -- if write-off is already defined in ODPISY, it's prohibited to specify store for the recipe
    if exists (select from ODPISY where SMAZAN = 0) then
      perform ASWError(35550);
    end if;
  end if;
  if coalesce(a_TARE, 0) <> 0  and not a_WELMEC then
    perform ASWError(35570);
  end if;
  return;
end; $$;



-- procedura ktera vrati veci potrebne pro dotace
-- dela zmeny v tabulce DENNIODBERY, proto je nutne ji pouzivat ve spojeni se savepointem nebo begin atomic, pro pripad ze nedokoncim celou operaci
-- pokud procedura vrati DOTMNOZSTVI mensi nez mnozstvi, namarkuji se dva radky, jeden s dotaci na dotovane mnozstvi, druhy na zbytek uz bez dotace
-- pokud je DOTMNOZSTVI 0, pak se dotace vubec neresi
-- vracene dotace jsou na ks
select ASWDropProcedure('RECEPT_GetDotace');
-- priznak volani pri prepoctu cen uzav. uctu
-- priznak volani pri informativnim prepoctu, nevykovaji se zmeny v DENNIODBERY a v pripade ze zakaznik nema narok na dotaci, namisto chyby vrati nulove dotace
create or replace function admin_septim.RECEPT_GetDotace(
  in  a_RCNKID             REFIDINT,                    -- radek z tabulky RECCENIK z nejz se vzala cena
  in  a_RCPTID             REFIDINT,                    -- markovana receptura
  in  a_DPHID              REFIDINT,
  in  a_ZKZNID             REFIDINT,                    -- zakaznik pro ktereho se markuje
  in  a_SKZ1ID             REFIDINT,
  in  a_SKZ1USE            BOOLBIT,                     -- kdyz je 1, tak se nebude zjistovat skz1id ze zakaznika, ale vezme se z parametru a_skz1id; je to kvuli prepoctu
  in  a_DATUMCAS           DATUMCASTS,                  -- okamzik kdy se to markuje
  in  a_MNOZSTVI           MNOZSTVIFLT,                 -- markovane mnozstvi
  in  a_SLEVA              KOEFICIENTFLT,
  out a_DOTMNOZSTVI        MNOZSTVIFLT,                 -- mnozstvi ktere lze dotovat - musi byt mensi nebo rovno a_MNOZSTVI
  out a_DANPOCDOT          MNOZSTVIFLT_NU,
  out a_DANDOTMNOZ         MNOZSTVIFLT_NU,
  out a_NEDANPOCDOT        MNOZSTVIFLT_NU,
  out a_NEDANDOTMNOZ       MNOZSTVIFLT_NU,
  out a_DOT1CBJ            CENAFLT,                     -- danova dotace - jednotkova cena bez dph
  out a_DOT1DPHAJ          CENAFLT,                     -- - jednotkove DPHA
  out a_DOT1DPHBJ          CENAFLT,                     -- - jednotkova DPHB
  out a_DOT1CSJ            CENAFLT,                     -- - jednotkova cena s DPH
  out a_DOT2CBJ            CENAFLT,                     -- nedanova dotace - jednotkova cena bez dph
  out a_DOT2DPHAJ          CENAFLT,                     -- - jednotkove DPHA
  out a_DOT2DPHBJ          CENAFLT,                     -- - jednotkova DPHB
  out a_DOT2CSJ            CENAFLT,                     -- - jednotkova cena s DPH
  out a_CENADOT1CBJ        CENAFLT,
  out a_CENADOT1DPHAJ      CENAFLT,
  out a_CENADOT1DPHBJ      CENAFLT,
  out a_CENADOT1CSJ        CENAFLT,
  out a_CENADOT2CBJ        CENAFLT,
  out a_CENADOT2DPHAJ      CENAFLT,
  out a_CENADOT2DPHBJ      CENAFLT,
  out a_CENADOT2CSJ        CENAFLT,
  out a_DOT1CB             CENAFLT,                     -- danova dotace - bez DPH
  out a_DOT1DPHA           CENAFLT,                     -- danova dotace - DPHA
  out a_DOT1DPHB           CENAFLT,                     -- danova dotace - DPHB
  out a_DOT1CS             CENAFLT,                     -- danova dotace - s DPH
  out a_DOT2CB             CENAFLT,                     -- nedanova dotace - bez DPH
  out a_DOT2DPHA           CENAFLT,                     -- nedanova dotace - DPHA
  out a_DOT2DPHB           CENAFLT,                     -- nedanova dotace - DPHB
  out a_DOT2CS             CENAFLT,                     -- nedanova dotace - s DPH
  out a_SPECDOTTYP         KLICSTR,
  out a_SPDTID             REFIDINT_NU,
  out a_TYPDOT             TYPINT,                      -- typ dotace 1=dotace na pocet; 2=dotace na vysku danove a nedanove dotace;3=kombinovany typ dotace (na počet i do výše) -1=typ neni specifikovan
  in  a_PREPOCET           BOOLBIT default false,       -- priznak volani pri prepoctu cen uzav. uctu
  in  a_INFOVYPOCET        BOOLBIT default  false,      -- priznak volani pri informativnim prepoctu, nevykovaji se zmeny v DENNIODBERY a v pripade ze zakaznik nema narok na dotaci, namisto chyby vrati nulove dotace
  in  a_IGNORUJCHYBY       BOOLBIT default  false       -- zda se maji ignornovat chyby dotaci typu - zakaznik jiz dotace vycerpal, odber bez dotaci neni mozny, pokud se chyby ignoruji a nastane chyba, do a_TYPDOT se nastavi -2
)
language plpgsql security definer as $$ -- zda se maji ignornovat chyby dotaci typu - zakaznik jiz dotace vycerpal, odber bez dotaci neni mozny, pokud se chyby ignoruji a nastane chyba, do a_TYPDOT se nastavi -2
declare
  --message 'getdotace 1' type action to client;
  l_SKZ1ID                 REFIDINT;
  l_SKR3ID                 REFIDINT;
  l_POCETDOT               MNOZSTVIFLT;
  l_MANAROK                TYPINT;
  l_POCET                  MNOZSTVIFLT;
  l_POCETDOTACI            MNOZSTVIFLT;
  l_DENNIODBERY            MNOZSTVIFLT;
  l_DATUMOD                DATUMTS;
  l_DATUMDO                DATUMTS;
  l_AKTPOCDOT              MNOZSTVIFLT;
  l_PARAMPOCDOT            VALUETXT;
  l_FIXDOTACE              MNOZSTVIFLT;
  l_ZPPOCETDNI             VALUETXT;
  l_DOTACE1                CENAFLT;
  l_DOTACE2                CENAFLT;
  l_DOTACNIDT              DATUMCASTS;
  l_DOTACERECB1            CENAFLT;
  l_DOTACERECB2            CENAFLT;
  l_ERRORCODE              CISLOINT;
  l_ERRORMSG               VALUETXT;
begin
  a_DOTMNOZSTVI := 0;
  a_TYPDOT := -1; -- neni specifikovan typ dotaci
  a_DOT1CBJ := 0;
  a_DOT1DPHAJ := 0;
  a_DOT1DPHBJ := 0;
  a_DOT1CSJ := 0;
  a_DOT2CBJ := 0;
  a_DOT2DPHAJ := 0;
  a_DOT2DPHBJ := 0;
  a_DOT2CSJ := 0;
  a_CENADOT1CBJ := 0;
  a_CENADOT1DPHAJ := 0;
  a_CENADOT1DPHBJ := 0;
  a_CENADOT1CSJ := 0;
  a_CENADOT2CBJ := 0;
  a_CENADOT2DPHAJ := 0;
  a_CENADOT2DPHBJ := 0;
  a_CENADOT2CSJ := 0;
  l_DOTACE1 := 0;
  l_DOTACE2 := 0;
  l_DOTACNIDT := RECEPT_DotacniPulnoc(a_DATUMCAS);
  perform admin_base.B_LOCKS_P_KontrolaZamku('DENODBLOCK',35396);
  SELECT * INTO a_DOT1CBJ,a_DOT1DPHAJ,a_DOT1DPHBJ,a_DOT1CSJ,a_DOT2CBJ,a_DOT2DPHAJ,a_DOT2DPHBJ,
  a_DOT2CSJ,a_SPECDOTTYP,a_SPDTID FROM admin_septim.RECEPT__GetDotaceCeny(a_RCNKID);
  l_DOTACERECB1 := a_DOT1CBJ;
  l_DOTACERECB2 := a_DOT2CBJ;
  if a_SKZ1USE = true then
    l_SKZ1ID := a_SKZ1ID;
  else
    begin
      select SKZ1ID into strict l_SKZ1ID from ZAKAZNIK where ZKZNID = a_ZKZNID;
    exception
      when NO_DATA_FOUND then
    end;
  end if;
  --message 'RECEPT_GetDotace >>>> pred podmínkou';
  if a_DOT1CBJ is not null then -- dotace je nutne resit
    if a_SPECDOTTYP = 'FIXNIDOTACE' then
      -- jde o speciální fixní dotaci, která se poskytuje vždy na jakékoliv množství
      --set a_DOTMNOZSTVI=1;
      l_FIXDOTACE := 0;
      l_ZPPOCETDNI := admin_params.P_GetGlobalParam('MARKOVANI','POCETDNIPRODOTACE',null,false);
      case l_ZPPOCETDNI when 'POCETDNI' then
          if exists(select 1 from POCETDNI where SMAZAN = 0 and l_DOTACNIDT between DATUMOD and admin_base.cm_DayEnd(DATUMDO) and
          SKZ1ID = l_SKZ1ID and POCET <> 0) then
            l_FIXDOTACE := 1;
          end if;
        when 'DOCHAZKA' then
        --          message 'tady to mam nastaveno';
          if exists(select 1 from POCETDNIDOCH where l_DOTACNIDT between DATUMOD and admin_base.cm_DayEnd(DATUMDO) and ZKZNID = a_ZKZNID and POCET <> 0) then
            l_FIXDOTACE := 1;
          end if;
        when 'DOCHNEBOPOCETDNI' then
          if exists(select 1 from POCETDNIDOCH where l_DOTACNIDT between DATUMOD and admin_base.cm_DayEnd(DATUMDO) and ZKZNID = a_ZKZNID and POCET <> 0) then
            l_FIXDOTACE := 1;
          end if;
          if l_FIXDOTACE = 0 then
            if exists(select 1 from POCETDNI where SMAZAN = 0 and l_DOTACNIDT between DATUMOD and admin_base.cm_DayEnd(DATUMDO) and
            SKZ1ID = l_SKZ1ID and POCET <> 0) then
              l_FIXDOTACE := 1;
            end if;
          end if;
        when 'DOCHANDPOCETDNI' then
        -- tady se nedělá nic, vše zůstane tak jak je nastaveno
          if exists(select 1 from POCETDNI where SMAZAN = 0 and l_DOTACNIDT between DATUMOD and admin_base.cm_DayEnd(DATUMDO) and
          SKZ1ID = l_SKZ1ID and POCET <> 0) then
            l_FIXDOTACE := 1;
          end if;
          if l_FIXDOTACE = 1 then
            if not exists(select * from POCETDNIDOCH where l_DOTACNIDT between DATUMOD and admin_base.cm_DayEnd(DATUMDO) and ZKZNID = a_ZKZNID and POCET <> 0) then
              l_FIXDOTACE := 0;
            end if;
          end if;
        else
          null;-- ADDED EMPTY ELSE
      end case;
    else
      if a_INFOVYPOCET = false then
        -- skupzak1 pro zakaznik
        SELECT * INTO a_TYPDOT,a_DOTMNOZSTVI,a_DANPOCDOT,a_DANDOTMNOZ,a_NEDANPOCDOT,a_NEDANDOTMNOZ,
        l_DOTACE1,a_DOT1CB,a_DOT1DPHA,a_DOT1DPHB,l_DOTACE2,a_DOT2CB,a_DOT2DPHA,
        a_DOT2DPHB FROM admin_septim.RECEPT_DotaceCheckAndSet(a_ZKZNID,a_SKZ1ID,a_SKZ1USE,a_DPHID,a_RCPTID,l_DOTACNIDT,a_MNOZSTVI,a_DOT1CBJ,
        a_DOT1DPHAJ,a_DOT1DPHBJ,a_DOT1CSJ,a_DOT2CBJ,a_DOT2DPHAJ,a_DOT2DPHBJ,
        a_DOT2CSJ,a_PREPOCET,null,null,null,false);
      else
        --jenom kontroluji, nevykonavam zmeny
        begin
          SELECT RECEPT_DotaceCheck.a_TYP, RECEPT_DotaceCheck.a_DOTMNOZSTVI, RECEPT_DotaceCheck.a_DANPOCDOT, RECEPT_DotaceCheck.a_DANDOTMNOZ, RECEPT_DotaceCheck.a_NEDANPOCDOT, RECEPT_DotaceCheck.a_NEDANDOTMNOZ, RECEPT_DotaceCheck.a_DOTACE1, RECEPT_DotaceCheck.a_DOTACE1B, RECEPT_DotaceCheck.a_DOT1DPHA, RECEPT_DotaceCheck.a_DOT1DPHB, RECEPT_DotaceCheck.a_DOTACE2, RECEPT_DotaceCheck.a_DOTACE2B, RECEPT_DotaceCheck.a_DOT2DPHA, RECEPT_DotaceCheck.a_DOT2DPHB INTO a_TYPDOT,a_DOTMNOZSTVI,a_DANPOCDOT,a_DANDOTMNOZ,a_NEDANPOCDOT,a_NEDANDOTMNOZ,
          l_DOTACE1,a_DOT1CB,a_DOT1DPHA,a_DOT1DPHB,l_DOTACE2,a_DOT2CB,a_DOT2DPHA,
          a_DOT2DPHB FROM admin_septim.RECEPT_DotaceCheck(a_ZKZNID,a_SKZ1ID,a_SKZ1USE,a_DPHID,a_RCPTID,l_DOTACNIDT,a_MNOZSTVI,a_DOT1CBJ,
          a_DOT1DPHAJ,a_DOT1DPHBJ,a_DOT1CSJ,a_DOT2CBJ,a_DOT2DPHAJ,a_DOT2DPHBJ,
          a_DOT2CSJ,a_PREPOCET,null,null,null,false);
        exception
          when others then
            l_ERRORMSG = SQLERRM;
            if SQLSTATE = 'ASWER' then get stacked diagnostics l_ERRORCODE = PG_EXCEPTION_HINT; else l_ERRORCODE = 0; end if;
            --set l_ERRORMSG = ENG_GetLastMessageFN(l_ERRORCODE, l_ERRORMSG);
            a_TYPDOT := -2; --nepovolena kombinace
            a_DOTMNOZSTVI := 0;
            a_DANPOCDOT := 0;
            a_DANDOTMNOZ := 0;
            a_NEDANPOCDOT := 0;
            a_NEDANDOTMNOZ := 0;
            l_DOTACE1 := 0;
            a_DOT1CB := 0;
            a_DOT1DPHA := 0;
            a_DOT1DPHB := 0;
            l_DOTACE2 := 0;
            a_DOT2CB := 0;
            a_DOT2DPHA := 0;
            a_DOT2DPHB := 0;
            if a_IGNORUJCHYBY = false then
              RAISE;
            end if;
            --message 'Chyba ',l_ERRORCODE,': ',l_ERRORMSG;
            return;
        end;
      end if;
    end if;
  end if;
  if a_SPECDOTTYP = 'FIXNIDOTACE' then
    a_DOTMNOZSTVI := l_FIXDOTACE; -- musi se to dostat ven z procedury
    SELECT * INTO a_DOT1CBJ,a_DOT1DPHAJ,a_DOT1DPHBJ,a_DOT1CSJ,a_DOT2CBJ,a_DOT2DPHAJ,a_DOT2DPHBJ,
    a_DOT2CSJ,a_DOT1CB,a_DOT1DPHA,a_DOT1DPHB,a_DOT1CS,a_DOT2CB,a_DOT2DPHA,
    a_DOT2DPHB,a_DOT2CS FROM admin_septim.RECEPT__GetDotaceCalcCeny(a_RCPTID,a_DPHID,a_DOTMNOZSTVI,a_SLEVA,a_DOT1CBJ,a_DOT1DPHAJ,a_DOT1DPHBJ,
    a_DOT1CSJ,a_DOT2CBJ,a_DOT2DPHAJ,a_DOT2DPHBJ,a_DOT2CSJ);
    if a_DOTMNOZSTVI > 0 then
      if a_DOT1CB > 0 then
        a_DANPOCDOT := a_DOTMNOZSTVI;
        a_DANDOTMNOZ := a_DOTMNOZSTVI;
      end if;
      if a_DOT2CB > 0 then
        a_NEDANPOCDOT := a_DOTMNOZSTVI;
        a_NEDANDOTMNOZ := a_DOTMNOZSTVI;
      end if;
    end if;
  else
    if (a_TYPDOT in(2,3)) and ((l_DOTACE1 <> 0) or (l_DOTACE2 <> 0)) then -- <>0 pro pripad zapornych dotaci
      a_DOTMNOZSTVI := greater(a_DANDOTMNOZ,a_NEDANDOTMNOZ);
      a_DOT1CS := l_DOTACE1;
      -- tyto hodnoty již počítá procedura RECEPT_DotaceCheck
      --call B_DPH_Vypocitej(null, a_DPHID, 4, a_DOT1CB, a_DOT1DPHA, a_DOT1DPHB, a_DOT1CS, l_ZAOKRDPH, null);
      a_CENADOT1CBJ := a_DOT1CB/a_MNOZSTVI;
      a_CENADOT1DPHAJ := a_DOT1DPHA/a_MNOZSTVI;
      a_CENADOT1DPHBJ := a_DOT1DPHB/a_MNOZSTVI;
      a_CENADOT1CSJ := a_DOT1CS/a_MNOZSTVI;
      a_DOT2CS := l_DOTACE2;
      -- tyto hodnoty již počítá procedura RECEPT_DotaceCheck
      --call B_DPH_Vypocitej(null, a_DPHID, 4, a_DOT2CB, a_DOT2DPHA, a_DOT2DPHB, a_DOT2CS, l_ZAOKRDPH, null);
      a_CENADOT2CBJ := a_DOT2CB/a_MNOZSTVI;
      a_CENADOT2DPHAJ := a_DOT2DPHA/a_MNOZSTVI;
      a_CENADOT2DPHBJ := a_DOT2DPHB/a_MNOZSTVI;
      a_CENADOT2CSJ := a_DOT2CS/a_MNOZSTVI;
    else -- a_TYPDOT=1 nebo se dotace vubec neresi popripade nebyla poskytnuta dotace
      --(puvodne to bylo udelane, tak ze se ceny prepocitavali i v pripade ze dot. mnozstvi bylo 0, tak sem to zachoval - proc to tak bylo?!)
      SELECT * INTO a_DOT1CBJ,a_DOT1DPHAJ,a_DOT1DPHBJ,a_DOT1CSJ,a_DOT2CBJ,a_DOT2DPHAJ,a_DOT2DPHBJ,
      a_DOT2CSJ,a_DOT1CB,a_DOT1DPHA,a_DOT1DPHB,a_DOT1CS,a_DOT2CB,a_DOT2DPHA,
      a_DOT2DPHB,a_DOT2CS FROM admin_septim.RECEPT__GetDotaceCalcCeny(a_RCPTID,a_DPHID,a_DOTMNOZSTVI,a_SLEVA,a_DOT1CBJ,a_DOT1DPHAJ,a_DOT1DPHBJ,
      a_DOT1CSJ,a_DOT2CBJ,a_DOT2DPHAJ,a_DOT2DPHBJ,a_DOT2CSJ);
      if a_MNOZSTVI > 0 then
        a_CENADOT1CBJ := a_DOT1CB/a_MNOZSTVI;
        a_CENADOT1DPHAJ := a_DOT1DPHA/a_MNOZSTVI;
        a_CENADOT1DPHBJ := a_DOT1DPHB/a_MNOZSTVI;
        a_CENADOT1CSJ := a_DOT1CS/a_MNOZSTVI;
        a_CENADOT2CBJ := a_DOT2CB/a_MNOZSTVI;
        a_CENADOT2DPHAJ := a_DOT2DPHA/a_MNOZSTVI;
        a_CENADOT2DPHBJ := a_DOT2DPHB/a_MNOZSTVI;
        a_CENADOT2CSJ := a_DOT2CS/a_MNOZSTVI;
      end if;
    end if;
  end if;
  if a_DANDOTMNOZ <= 0 then
    --message 'RECEPT_GetDotace vynulovani jednotkovych cen danove dotace' ;
    a_DOT1CBJ := 0;
    a_DOT1DPHAJ := 0;
    a_DOT1DPHBJ := 0;
    a_DOT1CSJ := 0;
    a_CENADOT1CBJ := 0;
    a_CENADOT1DPHAJ := 0;
    a_CENADOT1DPHBJ := 0;
    a_CENADOT1CSJ := 0;
  end if;
  if a_NEDANDOTMNOZ <= 0 then
    --message 'RECEPT_GetDotace vynulovani jednotkovych cen nedanove dotace' ;
    a_DOT2CBJ := 0;
    a_DOT2DPHAJ := 0;
    a_DOT2DPHBJ := 0;
    a_DOT2CSJ := 0;
    a_CENADOT2CBJ := 0;
    a_CENADOT2DPHAJ := 0;
    a_CENADOT2DPHBJ := 0;
    a_CENADOT2CSJ := 0;
  end if;
end; $$;


select ASWDropFunction('RECEPT_DotacniPulnoc');
/** Procedura zjistí pro zařízení nastavení parametru dotační půlnoc a vrátí podle nastavení buď datum který vstupuje
 *  do procedury nebo datum konce předchozího dne.
*/
create or replace function admin_septim.RECEPT_DotacniPulnoc(
  in a_REALDC              DATUMCASTS
) returns DATUMCASTS
language plpgsql security definer as $$
declare
  l_DOTACNIPULNOC          VALUETXT;
  l_TIME                   TIMETS;
begin
  l_DOTACNIPULNOC := admin_params.P_GetGlobalParam('MARKOVANI','DOTACNIPULNOC',null,false);
  --message 'DOTACNI PULNOC=',l_DOTACNIPULNOC;
  if coalesce(l_DOTACNIPULNOC,'') = '' then
    l_DOTACNIPULNOC := '00:00:00';
  end if;
  l_TIME := a_REALDC;
  if l_TIME < l_DOTACNIPULNOC::timets then
    return admin_base.cm_DayEnd(a_REALDC -INTERVAL '1 day');
  else
    return a_REALDC;
  end if;
end; $$;;


select ASWDropProcedure('RECEPT__GetDotaceCalcCeny');
create or replace function admin_septim.RECEPT__GetDotaceCalcCeny(
  in    a_RCPTID           REFIDINT,
  in    a_DPHID            REFIDINT,
  in    a_DOTMNOZSTVI      MNOZSTVIFLT,
  in    a_SLEVA            KOEFICIENTFLT,
  inout a_DOT1CBJ          CENAFLT,
  inout a_DOT1DPHAJ        CENAFLT,
  inout a_DOT1DPHBJ        CENAFLT,
  inout a_DOT1CSJ          CENAFLT,
  inout a_DOT2CBJ          CENAFLT,
  inout a_DOT2DPHAJ        CENAFLT,
  inout a_DOT2DPHBJ        CENAFLT,
  inout a_DOT2CSJ          CENAFLT,
  out   a_DOT1CB           CENAFLT,
  out   a_DOT1DPHA         CENAFLT,
  out   a_DOT1DPHB         CENAFLT,
  out   a_DOT1CS           CENAFLT,
  out   a_DOT2CB           CENAFLT,
  out   a_DOT2DPHA         CENAFLT,
  out   a_DOT2DPHB         CENAFLT,
  out   a_DOT2CS           CENAFLT
)
language plpgsql security definer as $$
declare
  --spocitat castku danove dotovane ceny mnozstvi
  l_TMP1                   CENAFLT;
begin
  SELECT S_SpocitatCenuNamarkPolozky.a_CENABJ, S_SpocitatCenuNamarkPolozky.a_DPHAJ, S_SpocitatCenuNamarkPolozky.a_DPHBJ, S_SpocitatCenuNamarkPolozky.a_CENASJ, S_SpocitatCenuNamarkPolozky.a_CENAB, S_SpocitatCenuNamarkPolozky.a_DPHA, S_SpocitatCenuNamarkPolozky.a_DPHB, S_SpocitatCenuNamarkPolozky.a_CENAS, S_SpocitatCenuNamarkPolozky.a_CENAZ INTO a_DOT1CBJ,a_DOT1DPHAJ,a_DOT1DPHBJ,a_DOT1CSJ,a_DOT1CB,a_DOT1DPHA,a_DOT1DPHB,
  a_DOT1CS,l_TMP1 FROM admin_septim.S_SpocitatCenuNamarkPolozky(a_RCPTID,a_DPHID,a_DOT1CBJ,a_DOT1DPHAJ,a_DOT1DPHBJ,a_DOT1CSJ,0,0,a_DOTMNOZSTVI,
  a_SLEVA,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'',0,0,0,0,0,0,0,
  0,0,0);
  -- spocitat castku nedanove dotace za cele mnozstvi
  SELECT S_SpocitatCenuNamarkPolozky.a_CENABJ, S_SpocitatCenuNamarkPolozky.a_DPHAJ, S_SpocitatCenuNamarkPolozky.a_DPHBJ, S_SpocitatCenuNamarkPolozky.a_CENASJ, S_SpocitatCenuNamarkPolozky.a_CENAB, S_SpocitatCenuNamarkPolozky.a_DPHA, S_SpocitatCenuNamarkPolozky.a_DPHB, S_SpocitatCenuNamarkPolozky.a_CENAS, S_SpocitatCenuNamarkPolozky.a_CENAZ INTO a_DOT2CBJ,a_DOT2DPHAJ,a_DOT2DPHBJ,a_DOT2CSJ,a_DOT2CB,a_DOT2DPHA,a_DOT2DPHB,
  a_DOT2CS,l_TMP1 FROM admin_septim.S_SpocitatCenuNamarkPolozky(a_RCPTID,a_DPHID,a_DOT2CBJ,a_DOT2DPHAJ,a_DOT2DPHBJ,a_DOT2CSJ,0,0,a_DOTMNOZSTVI,
  a_SLEVA,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'',0,0,0,0,0,0,0,
  0,0,0);
  return;
end; $$;



select ASWDropProcedure('RECEPT__GetDotaceCeny');
create or replace function admin_septim.RECEPT__GetDotaceCeny(
  in  a_RCNKID             REFIDINT,
  out a_DOT1CBJ            CENAFLT,
  out a_DOT1DPHAJ          CENAFLT,
  out a_DOT1DPHBJ          CENAFLT,
  out a_DOT1CSJ            CENAFLT,
  out a_DOT2CBJ            CENAFLT,
  out a_DOT2DPHAJ          CENAFLT,
  out a_DOT2DPHBJ          CENAFLT,
  out a_DOT2CSJ            CENAFLT,
  out a_SPECDOTACETYP      KLICSTR,
  out a_SPDTID             REFIDINT_NU
)
language plpgsql security definer as $$
begin
  begin
    select R.CENAB1,R.DPHA1,R.DPHB1,R.CENAS1,R.CENAB2,R.DPHA2,R.DPHB2,R.CENAS2,SD.KLIC,R.SPDTID into strict a_DOT1CBJ,a_DOT1DPHAJ,a_DOT1DPHBJ,a_DOT1CSJ,a_DOT2CBJ,a_DOT2DPHAJ,a_DOT2DPHBJ,
    a_DOT2CSJ,a_SPECDOTACETYP,a_SPDTID from DOTACEREC as R left outer join
    SPECDOTACETYP as SD on R.SPDTID = SD.SPDTID where
    R.RCNKID = a_RCNKID and
   (CENAB1 > 0 or
    DPHA1 > 0 or
    DPHB1 > 0 or
    CENAS1 > 0 or
    CENAB2 > 0 or
    DPHA2 > 0 or
    DPHB2 > 0 or
    CENAS2 > 0);
  exception
    when NO_DATA_FOUND then
  end;
  return;
end; $$;


/*  Procedura spocita max. vysku dotace, kterou je mozne poskytnout
 */
select ASWDropFunction ('RECEPT__SpocitejDotate');
create or replace function admin_septim.RECEPT__SpocitejDotate(
  in a_POCETDNI            BOOLBIT,
  in a_DOCHAZKA            BOOLBIT,
  in a_MARKDOT             MNOZSTVIFLT_NU,
  in a_MAXDOT              MNOZSTVIFLT_NU,
  in a_MAXDOTDOCH          MNOZSTVIFLT_NU
) returns CISLOFLT
language plpgsql security definer as $$
declare
  l_DOTACE                 CISLOFLT;
begin
  l_DOTACE := 0;
  if a_POCETDNI = true and a_DOCHAZKA = true then
    if a_MAXDOT < a_MARKDOT then
      l_DOTACE := a_MAXDOT;
    else
      l_DOTACE := a_MARKDOT;
    end if;
    -- když je povolen počet dotací podle tabulky POCETDNI musim se ještě podívat jak to vypadá podle docházky
    if l_DOTACE > 0 then
      if a_MAXDOTDOCH < l_DOTACE then
        l_DOTACE := a_MAXDOTDOCH;
      end if;
    end if;
  elseif a_POCETDNI = true then -- nárok se zjišťuje podle tabulky POCETDNI
    if a_MAXDOT < a_MARKDOT then
      l_DOTACE := a_MAXDOT;
    else
      l_DOTACE := a_MARKDOT;
    end if;
  elseif a_DOCHAZKA = true then -- nárok se zjišťuje podle tabulky POCETDNIDOCH
    if a_MAXDOTDOCH < a_MARKDOT then
      l_DOTACE := a_MAXDOTDOCH;
    else
      l_DOTACE := a_MARKDOT;
    end if;
  end if;
  return l_DOTACE;
end; $$;;



select ASWDropProcedure('RECEPT_DotaceCheck');
/*  Procedura zjistí nastavení z tabulek POCETDNI a DOTACE. Když neexistuje pro dotované jídlo potřebné nastavení, skončí chybou.
 */
create or replace function admin_septim.RECEPT_DotaceCheck(
  in  a_ZKZNID             REFIDINT,
  in  a_SKZ1ID             REFIDINT,
  in  a_SKZ1USE            BOOLBIT,            -- kdyz je 1, tak se nebude zjistovat skz1id ze zakaznika, ale vezme se z parametru a_skz1id
  in  a_DPHID              REFIDINT,
  in  a_RCPTID             REFIDINT,
  in  a_DATUMCAS           DATUMCASTS,
  in  a_MARKMNOZSTVI       MNOZSTVIFLT,
  in  a_DOT1CBREC          CENAFLT,            -- donova dotace u receptury bez dph
  in  a_DOT1DPHAREC        CENAFLT,            -- dpha danove dotace u rceptury
  in  a_DOT1DPHBREC        CENAFLT,            -- dphb danove dotace u receptury
  in  a_DOT1CS             CENAFLT,            -- jednotková daňová dotace u receptury s DPH
  in  a_DOT2CBREC          CENAFLT,            -- donova nedotace u receptury bez dph
  in  a_DOT2DPHAREC        CENAFLT,            -- dpha nedanove dotace u rceptury
  in  a_DOT2DPHBREC        CENAFLT,            -- dphb nedanove dotace u receptury
  in  a_DOT2CS             CENAFLT,            -- jednotková nedaňová dotace u receptury s DPH
  in  a_PREPOCET           BOOLBIT,
  in  a_UPDOTMNOZSTVI      MNOZSTVIFLT,
  in  a_UPDOTACE1          CENAFLT,
  in  a_UPDOTACE2          CENAFLT,
  in  a_DOTACECENAMNOZ     BOOLBIT,
  out a_TYP                TYPINT,             -- vrací typ dotace 1 - na počet; 2 - do výše; 3 - kombinované (na počet i do výše)
  out a_DOTMNOZSTVI        MNOZSTVIFLT,
  out a_DANPOCDOT          MNOZSTVIFLT_NU,
  out a_DANDOTMNOZ         MNOZSTVIFLT_NU,
  out a_NEDANPOCDOT        MNOZSTVIFLT_NU,
  out a_NEDANDOTMNOZ       MNOZSTVIFLT_NU,
  out a_DOTACE1            CENAFLT,
  out a_DOTACE1B           CENAFLT,
  out a_DOT1DPHA           CENAFLT,
  out a_DOT1DPHB           CENAFLT,
  out a_DOTACE2            CENAFLT,
  out a_DOTACE2B           CENAFLT,
  out a_DOT2DPHA           CENAFLT,
  out a_DOT2DPHB           CENAFLT,
  out a_POCETDNI           BOOLBIT,
  out a_DOCHAZKA           BOOLBIT,
  out a_SKR3ID             REFIDINT_NU,
  out a_DATUMOD            DATUMTS,
  out a_DATUMDO            DATUMTS,
  out a_MAXDOT             MNOZSTVIFLT_NU,
  out a_MAXDOTACE1         CENAFLT_NU,
  out a_MAXDOTACE2         CENAFLT_NU,
  out a_MAXDOTDOCH         MNOZSTVIFLT_NU,
  out a_MAXDOTACE1DOCH     CENAFLT_NU,
  out a_MAXDOTACE2DOCH     CENAFLT_NU,
  out a_DATUMODDOCH        DATUMTS,
  out a_DATUMDODOCH        DATUMTS,
  out a_UPDATEDENODBERY    BOOLBIT
)
language plpgsql security definer
-- kdyz je 1, tak se nebude zjistovat skz1id ze zakaznika, ale vezme se z parametru a_skz1id
-- donova dotace u receptury bez dph
-- dpha danove dotace u rceptury
-- dphb danove dotace u receptury
-- jednotková daňová dotace u receptury s DPH
-- donova nedotace u receptury bez dph
-- dpha nedanove dotace u rceptury
-- dphb nedanove dotace u receptury
-- jednotková nedaňová dotace u receptury s DPH
-- vrací typ dotace 1 - na počet; 2 - do výše; 3 - kombinované (na počet i do výše)
-- priznak zda se ma udelat zmena v dennich odberech; je to pro případ kdy je nastaveno POCETDNI že počet dotací není
-- omezen. V takovém případě se záznam v tabulce DENNIODBERY nezakládá ani needituje
as $$
declare
  l_MANAROKPOCET           TYPINT;
  l_MANAROKVYSE            TYPINT;
  l_MANAROK                TYPINT;
  l_DODBIDDOCH             REFIDINT_NU;
  l_TYP                    TYPINT;
  l_TYPDOCH                TYPINT;
  l_TYPDOTACE              TYPINT;
  l_SKZ1ID                 REFIDINT_NU;
  l_POCETDOT               MNOZSTVIFLT;
  l_DOTACE1                CENAFLT_NU;
  l_DOTACE2                CENAFLT_NU;
  l_POCET                  MNOZSTVIFLT_NU;
  l_POCETDNIDOCH           MNOZSTVIFLT_NU;
  l_ZAOKRDPH               CISLOINT;
  l_DOTMNOZSTVI            MNOZSTVIFLT;
  l_POSKYTDOTACEDAN        CENAFLT; -- poskytnutá daňová dotace
  l_POSKYTDOTACENEDAN      CENAFLT; -- poskytnutá nedaňová dotace
begin
  a_DOTMNOZSTVI := 0;
  a_DOTACE1 := 0;
  a_DOTACE2 := 0;
  a_TYP := 0;
  a_DANPOCDOT := 0;
  a_DANDOTMNOZ := 0;
  a_NEDANPOCDOT := 0;
  a_NEDANDOTMNOZ := 0;
  a_POCETDNI := 0;
  a_DOCHAZKA := 0;
  -- defaultne nastavim ze se zmena v tabulce DENNIODBERY má udělat
  a_UPDATEDENODBERY := 1;
  l_MANAROKPOCET := null;
  l_MANAROKVYSE := null;
  l_MANAROK := -1;
  l_TYP := 0;
  l_TYPDOCH := 0;
  l_POSKYTDOTACEDAN := 0;
  l_POSKYTDOTACENEDAN := 0;
  case admin_params.P_GetGlobalParam('MARKOVANI','POCETDNIPRODOTACE',null,false) when 'POCETDNI' then
      a_POCETDNI := 1;
    when 'DOCHAZKA' then
      a_DOCHAZKA := 1;
    when 'DOCHNEBOPOCETDNI' then
      if exists(select 1 from POCETDNIDOCH where(ZKZNID = a_ZKZNID) and (CAST(a_DATUMCAS AS DATE) between DATUMOD and DATUMDO)) then
        a_DOCHAZKA := 1;
      else
        a_POCETDNI := 1;
      end if;
    when 'DOCHANDPOCETDNI' then
      a_POCETDNI := 1;
      a_DOCHAZKA := 1;
    else
      null;-- ADDED EMPTY ELSE
  end case;
  -- skuprec3 pro recepturu
  begin
    select SKR3ID into strict a_SKR3ID from RECEPT where
    RCPTID = a_RCPTID;
  exception
    when NO_DATA_FOUND then
  end;
  if a_POCETDNI = true then
    select * into l_TYP,a_MAXDOT,a_MAXDOTACE1,a_MAXDOTACE2 from admin_septim.DENNIODBERY_GetDotaceInfo(a_ZKZNID,a_SKR3ID,a_DATUMCAS,false,a_PREPOCET);
    if l_TYP <> 0 then
      a_TYP := l_TYP;
    end if;
  end if;
  if a_DOCHAZKA = true then
    select * into l_TYPDOCH,a_MAXDOTDOCH,a_MAXDOTACE1DOCH,a_MAXDOTACE2DOCH from admin_septim.DENNIODBERY_GetDotaceInfo(a_ZKZNID,a_SKR3ID,a_DATUMCAS,true,a_PREPOCET);
    if l_TYPDOCH <> 0 then
      a_TYP := l_TYPDOCH;
    end if;
  end if;
  --message string('po dotaceinfo vyse MAXDOTACE1=',a_MAXDOTACE1,';MAXDOTACE2=',a_MAXDOTACE2,';MAXDOTACE1DOCH=',a_MAXDOTACE1DOCH,';MAXDOTACE2DOCH=',a_MAXDOTACE2DOCH);
  if (l_TYP <> 0) and (l_TYPDOCH <> 0) then
    if l_TYP <> l_TYPDOCH then
      --zaznam z dennich odberu nemuze byt pro dochazku a ne-dochazku ruzneho typu
      perform admin_base.ASWError(35414, cast(array[admin_septim.ZAKAZNIK_GetJmeno(a_ZKZNID)] as text[]));
    end if;
  end if;
  -- skupina zákazníků, ke které je přiřazen zázkazník - muze by null
  if a_SKZ1USE = true then
    l_SKZ1ID := a_SKZ1ID;
  else
    begin
      select SKZ1ID into strict l_SKZ1ID from ZAKAZNIK where ZKZNID = a_ZKZNID;
    exception
      when NO_DATA_FOUND then
    end;
  end if;
  -- maximum musim pocitat zvlast pro dochazku i ne-dochazku
  if((a_POCETDNI = true) and (l_TYP is null)) or ((a_DOCHAZKA = true) and (l_TYPDOCH is null)) or
   ((l_TYP = 3 or l_TYPDOCH = 3) and a_MAXDOT is null) then -- TODO: Kdy muze nastat takova situace kdy je zaznam TYP a TYPDOCH=3 a pritom MAXDOT je null?
    -- jestlize jsem nenasel zaznam v denich odberech bud pro ne-dochazku nebo dochazku, tak musim zjistit maxima
    -- povolenych dotaci z tabulky DOTACE a POCETDNI pripadne POCETDNIDOCH
    -- zjistím informace pro typ "na počet"
    begin
      select POCETDOT,MANAROK into strict l_POCETDOT,l_MANAROKPOCET from DOTACE where
    ((SKZ1ID is null) or (SKZ1ID = coalesce(l_SKZ1ID,0))) and
      SKR3ID = a_SKR3ID and
      TYP = 1 and
      SMAZAN = 0 order by
      SKZ1ID desc,SKR3ID desc LIMIT 1;
    exception
      when NO_DATA_FOUND then
    end; --order je tu kvuli tomu, aby usporadal zaznamy v spravnem poradi podle priority, t.j. zaznamy s null na konec
    if (a_MAXDOTACE1 is null and a_POCETDNI = true) or (a_MAXDOTACE1DOCH is null and a_DOCHAZKA = true) then
      -- zjistím informace na typ "do výše"
      begin
        select DOTACE1,DOTACE2,MANAROK into strict l_DOTACE1,l_DOTACE2,l_MANAROKVYSE from DOTACE where
       ((SKZ1ID is null) or (SKZ1ID = coalesce(l_SKZ1ID,0))) and
        SKR3ID is null and
        TYP = 2 and
        SMAZAN = 0 order by
        SKZ1ID desc,SKR3ID desc LIMIT 1;
      exception
        when NO_DATA_FOUND then
      end; --order je tu kvuli tomu, aby usporadal zaznamy v spravnem poradi podle priority, t.j. zaznamy s null na konec
    else
      l_MANAROKVYSE := l_MANAROKPOCET;
    end if;
    if (l_MANAROKPOCET is not null and l_MANAROKVYSE is not null) or (l_TYP = 3 and l_MANAROKPOCET is not null) then
      l_MANAROK := lesser(l_MANAROKPOCET,l_MANAROKVYSE);
      l_TYPDOTACE := 3;
    elseif l_MANAROKPOCET is not null then
      l_MANAROK := l_MANAROKPOCET;
      l_TYPDOTACE := 1;
    elseif l_MANAROKVYSE is not null then
      l_MANAROK := l_MANAROKVYSE;
      l_TYPDOTACE := 2;
    end if;
    if l_MANAROK = -1 then
      if admin_params.P_GetGlobalParamBOOL('MARKOVANI','POVOLDOTRECOSTATZAK',null,false) = true then
        -- když pro zákazníka neexistuje definice dotaci tak záleží na nastavení parametru, jestli
        --   může dostat recepturu s dotací. Nastaví se dotované množství na 0 procedura se ukončí.
        return; -- vyskočím - dále není co zjišťovat
      else
        perform admin_base.ASWError(35360, cast(array[admin_septim.ZAKAZNIK_GetJmeno(a_ZKZNID)] as text[]));
      end if;
    end if;
    a_TYP := l_TYPDOTACE;
    case l_MANAROK
      when 0 then
        perform admin_base.ASWError(35367, cast(array[admin_septim.ZAKAZNIK_GetJmeno(a_ZKZNID)] as text[]));
      when 3 then -- nárok na dotace je neomezený
        a_DOTMNOZSTVI := a_MARKMNOZSTVI;
        a_DOTACE1 := a_DOT1CS;
        a_DOTACE2 := a_DOT2CS;
        a_UPDATEDENODBERY := 0;
        if a_DOTACE1 <> 0 then
        -- pouze pokud je cena danove dotace, pokud neni, danova dotace nebyla poskytnuta
          a_DANPOCDOT := a_MARKMNOZSTVI;
          a_DANDOTMNOZ := a_MARKMNOZSTVI;
        end if;
        if a_DOTACE2 <> 0 then
        -- pouze pokud je cena nedanove dotace, pokud neni, nedanova dotace nebyla poskytnuta
          a_NEDANPOCDOT := a_MARKMNOZSTVI;
          a_NEDANDOTMNOZ := a_MARKMNOZSTVI;
        end if;
        l_ZAOKRDPH := admin_params.P_GetGlobalParamINT('DPH','ZAOKROUHLENI',2);
        select * into a_DOTACE1B,a_DOT1DPHA,a_DOT1DPHB,a_DOTACE1 from admin_base.B_DPH_Vypocitej(null,a_DPHID,4,a_DOTACE1B,a_DOT1DPHA,a_DOT1DPHB,a_DOTACE1,l_ZAOKRDPH,null);
        select * into a_DOTACE2B,a_DOT2DPHA,a_DOT2DPHB,a_DOTACE2 from admin_base.B_DPH_Vypocitej(null,a_DPHID,4,a_DOTACE2B,a_DOT2DPHA,a_DOT2DPHB,a_DOTACE2,l_ZAOKRDPH,null);
        return;
      else
        null;-- ADDED EMPTY ELSE
    end case;
    -- zjistim maxima pro pocet dni ne-dochazky
    if((a_POCETDNI = true) and ((l_TYP is null) or (l_TYP = 3 and a_MAXDOT is null))) then
      begin
        select POCET,DATUMOD,DATUMDO into strict l_POCET,a_DATUMOD,a_DATUMDO from POCETDNI where
       ((SKZ1ID is null) or (SKZ1ID = coalesce(l_SKZ1ID,0))) and
       (CAST(a_DATUMCAS AS DATE) between DATUMOD and DATUMDO) and
        SMAZAN = 0 order by
        SKZ1ID desc LIMIT 1;
      exception
        when NO_DATA_FOUND then
      end; --order je tu kvuli tomu, aby usporadal zaznamy v spravnem poradi podle priority, t.j. zaznamy s null na konec
      if l_POCET is null then
        perform admin_base.ASWError(35363, cast(array[admin_septim.ZAKAZNIK_GetJmeno(a_ZKZNID),CAST(a_DATUMCAS AS DATE)] as text[]));
      end if;
      if l_POCET < 0 then
        --jde o pocet dotaci na den
        a_DATUMOD := CAST(a_DATUMCAS AS DATE);
        a_DATUMDO := a_DATUMOD;
      end if;
      if a_TYP in(1,3) then
        a_MAXDOT := abs(l_POCET*l_POCETDOT);
      end if;
      if (a_TYP in(2,3)) and (a_MAXDOTACE1 is null) then
        a_MAXDOTACE1 := abs(l_POCET*l_DOTACE1);
        a_MAXDOTACE2 := abs(l_POCET*l_DOTACE2);
      end if;
    end if;
    -- zjistim pocet dni pr odochazku
    if((a_DOCHAZKA = true) and ((l_TYPDOCH is null) or ((l_TYPDOCH = 3) and a_MAXDOTDOCH is null))) then /*l_TYP=3 or */
      l_POCETDNIDOCH := 0;
      begin
        select POCET,DATUMOD,DATUMDO into strict l_POCETDNIDOCH,a_DATUMODDOCH,a_DATUMDODOCH from POCETDNIDOCH where
        ZKZNID = a_ZKZNID and
       (CAST(a_DATUMCAS AS DATE) between DATUMOD and DATUMDO) LIMIT 1;
     exception
        when NO_DATA_FOUND then
      end;
      if a_TYP in(1,3) then
        a_MAXDOTDOCH := abs(l_POCETDNIDOCH*l_POCETDOT);
      end if;
      if (a_TYP in(2,3)) and (a_MAXDOTACE1DOCH is null) then
        a_MAXDOTACE1DOCH := abs(l_POCETDNIDOCH*l_DOTACE1);
        a_MAXDOTACE2DOCH := abs(l_POCETDNIDOCH*l_DOTACE2);
      end if;
    end if;
  end if;
  l_DOTMNOZSTVI := a_MARKMNOZSTVI;
  if a_TYP in(1,3) then
    a_DOTMNOZSTVI := coalesce(a_UPDOTMNOZSTVI,RECEPT__SpocitejDotate(a_POCETDNI,a_DOCHAZKA,a_MARKMNOZSTVI,a_MAXDOT,a_MAXDOTDOCH));
    l_DOTMNOZSTVI := a_DOTMNOZSTVI;
    l_POSKYTDOTACEDAN := l_DOTMNOZSTVI*a_DOT1CS;
    l_POSKYTDOTACENEDAN := l_DOTMNOZSTVI*a_DOT2CS;
  end if;
  if a_TYP in(2,3) then
    a_DOTACE1 := coalesce(a_UPDOTACE1,RECEPT__SpocitejDotate(a_POCETDNI,a_DOCHAZKA,(case when a_DOTACECENAMNOZ = true then a_DOT1CS else l_DOTMNOZSTVI*a_DOT1CS end),a_MAXDOTACE1,a_MAXDOTACE1DOCH));
    a_DOTACE2 := coalesce(a_UPDOTACE2,RECEPT__SpocitejDotate(a_POCETDNI,a_DOCHAZKA,(case when a_DOTACECENAMNOZ = true then a_DOT2CS else l_DOTMNOZSTVI*a_DOT2CS end),a_MAXDOTACE2,a_MAXDOTACE2DOCH));
    l_POSKYTDOTACEDAN := a_DOTACE1;
    l_POSKYTDOTACENEDAN := a_DOTACE2;
    l_ZAOKRDPH := admin_params.P_GetGlobalParamINT('DPH','ZAOKROUHLENI',2);
    select * into a_DOTACE1B,a_DOT1DPHA,a_DOT1DPHB,a_DOTACE1 from admin_base.B_DPH_Vypocitej(null,a_DPHID,4,a_DOTACE1B,a_DOT1DPHA,a_DOT1DPHB,a_DOTACE1,l_ZAOKRDPH,null);
    select * into a_DOTACE2B,a_DOT2DPHA,a_DOT2DPHB,a_DOTACE2 from admin_base.B_DPH_Vypocitej(null,a_DPHID,4,a_DOTACE2B,a_DOT2DPHA,a_DOT2DPHB,a_DOTACE2,l_ZAOKRDPH,null);
    -- daňová dotace
    if a_DOT1CS <> 0 then
      a_DOT1DPHA := a_DOT1DPHAREC*(a_DOTACE1/a_DOT1CS);
      a_DOT1DPHB := a_DOT1DPHBREC*(a_DOTACE1/a_DOT1CS);
      a_DOTACE1B := a_DOT1CBREC*(a_DOTACE1/a_DOT1CS);
    else
      a_DOT1DPHA := 0;
      a_DOT1DPHB := 0;
      a_DOTACE1B := 0;
    end if;
    -- nedaňová dotace
    if a_DOT2CS <> 0 then
      a_DOT2DPHA := a_DOT2DPHAREC*(a_DOTACE2/a_DOT2CS);
      a_DOT2DPHB := a_DOT2DPHBREC*(a_DOTACE2/a_DOT2CS);
      a_DOTACE2B := a_DOT2CBREC*(a_DOTACE2/a_DOT2CS);
    else
      a_DOT2DPHA := 0;
      a_DOT2DPHB := 0;
      a_DOTACE2B := 0;
    end if;
  end if;
  -- pro TYP=2 se netestuje (a_DOT1CS>a_DOTACE1) a (a_DOT2CS>a_DOTACE2), protoze se dotuje i jen zbyvajici cast
  if(((a_DOTMNOZSTVI = 0) or (a_MARKMNOZSTVI > a_DOTMNOZSTVI))) or
   (((a_DOTACE1 = 0) and (a_DOTACE2 = 0))) then
    --if l_MANAROK = -1 then
    l_MANAROKPOCET := null;
    l_MANAROKVYSE := null;
    begin
      select MANAROK into strict l_MANAROKPOCET from DOTACE where
    ((SKZ1ID is null) or (SKZ1ID = coalesce(l_SKZ1ID,0))) and
    ((SKR3ID is null) or (SKR3ID = coalesce(a_SKR3ID,0))) and
      TYP = 1 and
      SMAZAN = 0 order by
      SKZ1ID desc,SKR3ID desc LIMIT 1;
    exception
      when NO_DATA_FOUND then
    end; --order je tu kvuli tomu, aby usporadal zaznamy v spravnem poradi podle priority, t.j. zaznamy s null na konec
    begin
      select MANAROK into strict l_MANAROKVYSE from DOTACE where
    ((SKZ1ID is null) or (SKZ1ID = coalesce(l_SKZ1ID,0))) and
    ((SKR3ID is null) or (SKR3ID = coalesce(a_SKR3ID,0))) and
      TYP = 2 and
      SMAZAN = 0 order by
      SKZ1ID desc,SKR3ID desc LIMIT 1;
    exception
      when NO_DATA_FOUND then
    end; --order je tu kvuli tomu, aby usporadal zaznamy v spravnem poradi podle priority, t.j. zaznamy s null na konec
    if COALESCE(l_MANAROKPOCET,l_MANAROKVYSE,-1) = -1 then
      -- v dennych odberech je zaznam pre zakaznika, ale neexistuje definice v tabulce DOTACE
      perform admin_base.ASWError(35362, cast(array[admin_septim.ZAKAZNIK_GetJmeno(a_ZKZNID)] as text[]));
    end if;
    --end if;
    if (l_MANAROKPOCET is not null and l_MANAROKVYSE is not null) or (l_TYP = 3 and l_MANAROKPOCET is not null) then
      l_MANAROK := lesser(l_MANAROKPOCET,l_MANAROKVYSE);
    --set l_TYPDOTACE=3;
    elseif l_MANAROKPOCET is not null then
      l_MANAROK := l_MANAROKPOCET;
    --set l_TYPDOTACE=1;
    elseif l_MANAROKVYSE is not null then
      l_MANAROK := l_MANAROKVYSE;
    end if; --set l_TYPDOTACE=2;
    if l_MANAROK = 1 then
      if a_TYP in(1,3) then
        if l_MANAROKPOCET = 1 then
          if a_DOTMNOZSTVI = 0 then -- vycerpany vsechny dotace a neni narok na nedotovane
            perform admin_base.ASWError(35365, cast(array[admin_septim.ZAKAZNIK_GetJmeno(a_ZKZNID)] as text[]));
          elseif a_MARKMNOZSTVI > a_DOTMNOZSTVI then
            perform admin_base.ASWError(35366, cast(array[admin_septim.ZAKAZNIK_GetJmeno(a_ZKZNID),admin_base.B_Format('%g', cast(array[a_DOTMNOZSTVI] as text[]))] as text[])); -- markovane mnozstvi prevysuje povolene dotace a na nedotovane neni narok
          end if;
        end if;
      end if;
      if a_TYP in(2,3) then
        if l_MANAROKVYSE = 1 then
          if (a_DOTACE1 = 0) and (a_DOTACE2 = 0) then -- vycerpany vsechny mozne dotace a neni narok na nedotovane
            if (a_TYP = 2) or (l_MANAROKPOCET = 1) then
              perform admin_base.ASWError(35365, cast(array[admin_septim.ZAKAZNIK_GetJmeno(a_ZKZNID)] as text[]));
            end if;
          end if;
        end if;
      end if;
    elseif l_MANAROK <> 2 then
      perform admin_base.ASWError(35414, cast(array[admin_septim.ZAKAZNIK_GetJmeno(a_ZKZNID)] as text[]));
    end if;
    if a_TYP = 3 then
      if (a_DOTMNOZSTVI = 0) then
        a_DOTACE1 := 0;
        a_DOTACE2 := 0;
      end if;
      if a_DOTACE1 = 0 and a_DOTACE2 = 0 then
        a_DOTMNOZSTVI := 0;
      end if;
    end if;
  end if;
  if a_TYP in(2) then
    -- kvuli tomu aby v dennych odberech byl pro typ=2 jenom jeden zaznam s SKR3ID=null
    a_SKR3ID := null;
  end if;
  if a_DOT1CS > 0 then
    a_DANDOTMNOZ := l_POSKYTDOTACEDAN/a_DOT1CS;
    a_DANPOCDOT := admin_base.cm_ROUND(l_POSKYTDOTACEDAN/a_DOT1CS,2,1);
  end if;
  if a_DOT2CS > 0 then
    a_NEDANDOTMNOZ := l_POSKYTDOTACENEDAN/a_DOT2CS;
    a_NEDANPOCDOT := admin_base.cm_ROUND(l_POSKYTDOTACENEDAN/a_DOT2CS,2,1);
  end if;
end; $$;




select ASWDropProcedure('RECEPT_DotaceCheckAndSet');
/*  Procedura zjistí nastavení z tabulek POCETDNI a DOTACE. Když neexistuje pro dotované jídlo potřebné nastavení, skončí chybou.
 */
create or replace function admin_septim.RECEPT_DotaceCheckAndSet(
  in  a_ZKZNID             REFIDINT,
  in  a_SKZ1ID             REFIDINT,
  in  a_SKZ1USE            BOOLBIT,            -- kdyz je 1, tak se nebude zjistovat skz1id ze zakaznika, ale vezme se z parametru a_skz1id
  in  a_DPHID              REFIDINT,
  in  a_RCPTID             REFIDINT,
  in  a_DATUMCAS           DATUMCASTS,
  in  a_MARKMNOZSTVI       MNOZSTVIFLT,
  in  a_DOT1CBREC          CENAFLT,            -- danova dotace u receptury bez dph
  in  a_DOT1DPHAREC        CENAFLT,            -- dpha danove dotace u rceptury
  in  a_DOT1DPHBREC        CENAFLT,            -- dphb danove dotace u receptury
  in  a_DOT1CS             CENAFLT,            -- jednotková daňová dotace u receptury s DPH
  in  a_DOT2CBREC          CENAFLT,            -- nedanova nedotace u receptury bez dph
  in  a_DOT2DPHAREC        CENAFLT,            -- dpha nedanove dotace u rceptury
  in  a_DOT2DPHBREC        CENAFLT,            -- dphb nedanove dotace u receptury
  in  a_DOT2CS             CENAFLT,            -- jednotková nedaňová dotace u receptury s DPH
  in  a_PREPOCET           BOOLBIT,
  in  a_UPDOTMNOZSTVI      MNOZSTVIFLT,
  in  a_UPDOTACE1          CENAFLT,
  in  a_UPDOTACE2          CENAFLT,
  in  a_DOTACECENAMNOZ     BOOLBIT,
  out a_TYP                TYPINT,             -- vrací typ dotace 1 - na počet; 2 - do výše; 3 - kombinované (na počet i do výše)
  out a_DOTMNOZSTVI        MNOZSTVIFLT,
  out a_DANPOCDOT          MNOZSTVIFLT_NU,
  out a_DANDOTMNOZ         MNOZSTVIFLT_NU,
  out a_NEDANPOCDOT        MNOZSTVIFLT_NU,
  out a_NEDANDOTMNOZ       MNOZSTVIFLT_NU,
  out a_DOTACE1            CENAFLT,
  out a_DOTACE1B           CENAFLT,
  out a_DOT1DPHA           CENAFLT,
  out a_DOT1DPHB           CENAFLT,
  out a_DOTACE2            CENAFLT,
  out a_DOTACE2B           CENAFLT,
  out a_DOT2DPHA           CENAFLT,
  out a_DOT2DPHB           CENAFLT
)
language plpgsql security definer
-- kdyz je 1, tak se nebude zjistovat skz1id ze zakaznika, ale vezme se z parametru a_skz1id
-- danova dotace u receptury bez dph
-- dpha danove dotace u rceptury
-- dphb danove dotace u receptury
-- jednotková daňová dotace u receptury s DPH
-- nedanova nedotace u receptury bez dph
-- dpha nedanove dotace u rceptury
-- dphb nedanove dotace u receptury
-- jednotková nedaňová dotace u receptury s DPH
-- vrací typ dotace 1 - na počet; 2 - do výše; 3 - kombinované (na počet i do výše)
as $$
declare
  l_POCETDNI               BOOLBIT;
  l_DOCHAZKA               BOOLBIT;
  l_SKR3ID                 REFIDINT;
  l_DATUMOD                DATUMTS;
  l_DATUMDO                DATUMTS;
  l_MAXDOT                 MNOZSTVIFLT_NU;
  l_MAXDOTACE1             CENAFLT_NU;
  l_MAXDOTACE2             CENAFLT_NU;
  l_MAXDOTDOCH             MNOZSTVIFLT_NU;
  l_MAXDOTACE1DOCH         CENAFLT_NU;
  l_MAXDOTACE2DOCH         CENAFLT_NU;
  l_UPDATEDENODBERY        BOOLBIT;
  l_DATUMODDOCH            DATUMTS;
  l_DATUMDODOCH            DATUMTS;
begin
  l_UPDATEDENODBERY := 1;
  SELECT * INTO a_TYP,a_DOTMNOZSTVI,a_DANPOCDOT,a_DANDOTMNOZ,a_NEDANPOCDOT,a_NEDANDOTMNOZ,
  a_DOTACE1,a_DOTACE1B,a_DOT1DPHA,a_DOT1DPHB,a_DOTACE2,a_DOTACE2B,a_DOT2DPHA,
  a_DOT2DPHB,l_POCETDNI,l_DOCHAZKA,l_SKR3ID,l_DATUMOD,l_DATUMDO,
  l_MAXDOT,l_MAXDOTACE1,l_MAXDOTACE2,l_MAXDOTDOCH,l_MAXDOTACE1DOCH,l_MAXDOTACE2DOCH,
  l_DATUMODDOCH,l_DATUMDODOCH,l_UPDATEDENODBERY FROM admin_septim.RECEPT_DotaceCheck(a_ZKZNID,a_SKZ1ID,a_SKZ1USE,a_DPHID,a_RCPTID,a_DATUMCAS,a_MARKMNOZSTVI,
  a_DOT1CBREC,a_DOT1DPHAREC,a_DOT1DPHBREC,a_DOT1CS,a_DOT2CBREC,a_DOT2DPHAREC,
  a_DOT2DPHBREC,a_DOT2CS,a_PREPOCET,a_UPDOTMNOZSTVI,a_UPDOTACE1,a_UPDOTACE2,
  a_DOTACECENAMNOZ);
  if l_UPDATEDENODBERY = true then
    -- když jsou dotoce větší než 0 tak se provedou zmeny v dennych odberech
    if a_DOTMNOZSTVI > 0 or a_DOTACE1 > 0 or a_DOTACE2 > 0 then
      if l_POCETDNI = true then
        perform admin_septim.DENNIODBERY_ZmenitMnozstvi(a_TYP,a_ZKZNID,l_SKR3ID,a_DATUMCAS,l_DATUMOD,l_DATUMDO,false,a_PREPOCET,
        greater(a_DANDOTMNOZ,a_NEDANDOTMNOZ),greater(a_DANDOTMNOZ,a_NEDANDOTMNOZ),
        l_MAXDOT,a_DOTACE1,a_DOTACE2,l_MAXDOTACE1,l_MAXDOTACE2); /*a_DOTMNOZSTVI*/
      end if;
      if l_DOCHAZKA = true then
        perform admin_septim.DENNIODBERY_ZmenitMnozstvi(a_TYP,a_ZKZNID,l_SKR3ID,a_DATUMCAS,l_DATUMODDOCH,l_DATUMDODOCH,true,a_PREPOCET,
        greater(a_DANDOTMNOZ,a_NEDANDOTMNOZ),greater(a_DANDOTMNOZ,a_NEDANDOTMNOZ),
        l_MAXDOTDOCH,a_DOTACE1,a_DOTACE2,l_MAXDOTACE1DOCH,l_MAXDOTACE2DOCH); /*a_DOTMNOZSTVI*/
      end if;
    end if;
  end if;
  return;
end; $$;



select ASWDropProcedure('RECEPTGetTypVypoctu');
drop type if exists admin_septim.RECEPTGetTypVypoctu_rs cascade;
create type admin_septim.RECEPTGetTypVypoctu_rs as (
  VALUE                    B_VALUETXT,
  TEXT                     TEXT,
  SIGN                     VARCHAR(1)
);

create or replace function admin_septim.RECEPTGetTypVypoctu(
  in a_ID                  IDINT
) returns setof admin_septim.RECEPTGetTypVypoctu_rs
language plpgsql security definer as $$
begin
  return query SELECT * FROM admin_base.cm_GetAllTexts('admin_septim.RECEPT_GetTypVypoctuText','0,1,2,3,4,5',',');
end; $$;

select grant_func('RECEPTGetTypVypoctu', 'SPEXEC');

select ASWDropFunction('RECEPT_GetTypVypoctuText');
create or replace function admin_septim.RECEPT_GetTypVypoctuText(
  in a_VALUE               CISLOINT
) returns VALUETXT
language plpgsql security definer as $$
begin
  case a_VALUE
    when 0 then
      return B_GetTxt('SEPTIMAPP','RECEPT','PODLEPARAMS');
    when 1 then
      return B_GetTxt('SEPTIMAPP','RECEPT','CENABALL');
    when 2 then
      return B_GetTxt('SEPTIMAPP','RECEPT','CENASALL');
    when 3 then
      return B_GetTxt('SEPTIMAPP','RECEPT','CENABJEDNOT');
    when 4 then
      return B_GetTxt('SEPTIMAPP','RECEPT','CENASJEDNOT');
    when 5 then
      return B_GetTxt('SEPTIMAPP','RECEPT','JEDNOTCENYZREC');
    else
      null;-- ADDED EMPTY ELSE
  end case;
end; $$;;



select ASWDropProcedure('RECEPTGetZpusobZaokrCeny');
drop type if exists admin_septim.RECEPTGetZpusobZaokrCeny_rs cascade;
create type admin_septim.RECEPTGetZpusobZaokrCeny_rs as (
  VALUE                    B_VALUETXT,
  TEXT                     TEXT,
  SIGN                     VARCHAR(1)
);

create or replace function admin_septim.RECEPTGetZpusobZaokrCeny(
  in a_ID                  IDINT
) returns setof admin_septim.RECEPTGetZpusobZaokrCeny_rs
language plpgsql security definer as $$
begin
  return query SELECT * FROM admin_base.cm_GetAllTexts('admin_septim.RECEPT_GetZpusobZaokrCenyText','2,1,0,-1,-2',',');
end; $$;

select grant_func('RECEPTGetZpusobZaokrCeny', 'SPEXEC');

select ASWDropFunction('RECEPT_GetZpusobZaokrCenyText');
create or replace function admin_septim.RECEPT_GetZpusobZaokrCenyText(
  in a_VALUE               CISLOINT
) returns VALUETXT
language plpgsql security definer as $$
begin
  case a_VALUE
    when 2 then
      return B_GetTxt('SEPTIMAPP','RECEPT','ZAOKRHALERE');
    when 1 then
      return B_GetTxt('SEPTIMAPP','RECEPT','ZAOKRDESETIHALERE');
    when 0 then
      return B_GetTxt('SEPTIMAPP','RECEPT','ZAOKRKORUNY');
    when -1 then
      return B_GetTxt('SEPTIMAPP','RECEPT','ZAOKRDESETIKORUNY');
    when -2 then
      return B_GetTxt('SEPTIMAPP','RECEPT','ZAOKRSTOVKY');
    else
      null;-- ADDED EMPTY ELSE
  end case;
end; $$;;



select ASWDropProcedure('RECEPTGetZpusobZaokrDPH');
drop type if exists admin_septim.RECEPTGetZpusobZaokrDPH_rs cascade;
create type admin_septim.RECEPTGetZpusobZaokrDPH_rs as (
  VALUE                    B_VALUETXT,
  TEXT                     TEXT,
  SIGN                     VARCHAR(1)
);

create or replace function admin_septim.RECEPTGetZpusobZaokrDPH(
  in a_ID                  IDINT
) returns setof admin_septim.RECEPTGetZpusobZaokrDPH_rs
language plpgsql security definer as $$
begin
  return query SELECT * FROM admin_base.cm_GetAllTexts('admin_septim.RECEPT_GetZpusobZaokrdphText','2,1,0',',');
end; $$;

select grant_func('RECEPTGetZpusobZaokrDPH', 'SPEXEC');


select ASWDropFunction('RECEPT_GetZpusobZaokrdphText');
create or replace function admin_septim.RECEPT_GetZpusobZaokrdphText(
  in a_VALUE               CISLOINT
) returns VALUETXT
language plpgsql security definer as $$
begin
  case a_VALUE
    when 0 then
      return B_GetTxt('SEPTIMAPP','RECEPT','ZAOKRKORUNY');
    when 1 then
      return B_GetTxt('SEPTIMAPP','RECEPT','ZAOKRDESETIHALERE');
    when 2 then
      return B_GetTxt('SEPTIMAPP','RECEPT','ZAOKRHALERE');
    else
      null;-- ADDED EMPTY ELSE
  end case;
end; $$;;



select ASWDropProcedure('RECEPT_GetSkladOdpisyID');
/**  The function returns store ID in a_SKLDID and a_RESULT equals 0, when a store is defined for write-off for the product a_RCPTID.
 *   If store is filled for the recipe, use it in the first place. If not, get from register a_ZARZID. Když receptura nemá
 *   přiřazenou skupinu SKR1ID výsledek záleží na a_ERRBASESKUP.
 *   Když je a_ERRBASESKUP:
 *     =0 .... vyvolá defaultní raiseerror
 *     >0 .... vyvolá zadaný raiserror
 *     <0 .... vrátí a_SKLDID=null a v a_RESULT=1
 *   Když je sklad nalezen vrátí id skladu. Když není nalezen, výsledek záleží na a_ERRBASE.
 *   Když je a_ERRBASE:
 *   =0 ..... vyvolá defaultní raiserror
 *   >0 ..... vyvolá zadaný raiserror
 *   <0 ..... vrátí a_SKLDID=null a v a_RESULT=2
 *   Do chybové hlášky se předávají dva parametry.
 *      1. Název receptury
 *      2. Název pokladny
*/
create or replace function admin_septim.RECEPT_GetSkladOdpisyID(
  in  a_RCPTID             IDINT,
  in  a_ZARZID             REFIDINT,
  in  a_ERRBASESKUP        INTEGER,             -- errorbase there is no group specifed in the recipe for write-off from store
  in  a_ERRBASEDEF         INTEGER,             -- errorbase when there is no definition in the table ODPISY
  in  a_FORCE              FORCETXT default '',
  out a_SKLDID             REFIDINT,
  out a_RESULT             INTEGER              -- 0 - store ID in a_SKLDID; 1 - recipe doesn't have assigned group for write-off; 2 - no definition in the table ODPISY
)
language plpgsql security definer as $$
declare
  l_SKR1ID                 REFIDINT;
  l_SKLDID                 REFIDINT_NU;
begin
  select SKR1ID, SKLDID into l_SKR1ID, l_SKLDID from RECEPT where RCPTID = a_RCPTID;

  -- if simle configuration of write-off is used, we'll get directly specified store
  if l_SKLDID is not null then
    a_SKLDID := l_SKLDID;
    a_RESULT := 0;
  elsif l_SKR1ID is not null then
    select O.SKLDID into a_SKLDID
    from
      ODPISY as O
    where
      O.SKR1ID = l_SKR1ID
      and O.ZARZID = a_ZARZID
      and O.SMAZAN = 0;

    if a_SKLDID is null then
      if a_ERRBASEDEF = 0 then
        perform admin_base.ASWError(35324, cast(array[admin_septim.RECEPT_GetNazev(a_RCPTID),admin_septim.ZARIZENI_GetNazev(a_ZARZID)] as text[]));
      end if;
      if a_ERRBASEDEF > 0 then
        perform admin_base.ASWError(a_ERRBASEDEF, cast(array[admin_septim.RECEPT_GetNazev(a_RCPTID),admin_septim.ZARIZENI_GetNazev(a_ZARZID)] as text[]));
      end if;
      a_RESULT := 2;
    else
      a_RESULT := 0;
    end if;
  else
    if a_ERRBASESKUP = 0 then
      perform admin_base.ASWErrorEx(35325, a_FORCE, cast(array[admin_septim.RECEPT_GetNazev(a_RCPTID)] as text[]));
    end if;
    if a_ERRBASESKUP > 0 then
      perform admin_base.ASWError(a_ERRBASESKUP, cast(array[admin_septim.RECEPT_GetNazev(a_RCPTID)] as text[]));
    end if;
    a_RESULT := 1;
  end if;
  return;
end; $$;



select ASWDropProcedure('RECEPT__GetFTDWriteOffStoreID');
/**
 * Returns ID of the store, that's to be used for write-off
 * It is equivalent of RECEPT_GetSkladOdpisyID, with the difference,
 * that this function works with configuration of FTDIssueCounter.
 * And it doesn't throw any error, if the store is not found - it just returns null
 */
create or replace function admin_septim.RECEPT__GetFTDWriteOffStoreID (
  in  a_RCPTID             IDINT,
  in  a_FTICID             REFIDINT
) returns REFIDINT_NU
language plpgsql security definer as $$
begin

  return FS.SKLDID
  from FTDSTORES as FS
    join RECEPT R on R.SKR1ID = FS.SKR1ID
  where FS.FTICID = a_FTICID
    and R.RCPTID = a_RCPTID
    and FS.DELETED = 0;

end; $$;



select ASWDropProcedure('RECEPT_SeznamIngred');
/**
*Procedura vrací seznam ingrediencí receptury
*Dle a_TYP:
*  1 .. ingredience pro prodej pokladnou
*  2 .. ingredience vyrobené normováním
*  3 .. ingredience pro skladové operace
*/
drop type if exists admin_septim.RECEPT_SeznamIngred_rs cascade;
create type admin_septim.RECEPT_SeznamIngred_rs as (
  SKPLID                   REFIDINT,
  MNOZSTVI                 MNOZSTVIFLT,
  RCPTIDSRC                REFIDINT
);

create or replace function admin_septim.RECEPT_SeznamIngred(
  in a_RCPTID              REFIDINT,
  in a_TYP                 TYPINT,
  in a_PRCEID              REFIDINT_NU default null
) returns setof admin_septim.RECEPT_SeznamIngred_rs
language plpgsql security definer as $$
declare
  l_AKTRCPTID              REFIDINT;
  l_INGREDKOEF             KOEFICIENTFLT;
  l_CENAKOEF               KOEFICIENTFLT;
begin
  select * into l_AKTRCPTID,l_CENAKOEF,l_INGREDKOEF from admin_septim.RECEPT_PolovicniPorceInfo(a_RCPTID);
  case a_TYP
    when 1 then
      return query select SKPLID,cast(sum(MNOZSTVI)*l_INGREDKOEF as MNOZSTVIFLT) as MNOZSTVI,cast(RCPTIDSRC  as REFIDINT) from RECEPTINGREDFULL where
      RCPTID = l_AKTRCPTID and (PRCEID is null or (a_PRCEID is not null and PRCEID is not null and PRCEID = a_PRCEID)) and
      --pouziti funkce misto primeho porovnani hodnot zaremovano z duvodu padani DB
      --and INGRED_ProProdejPokladnou(TYP)=1
      TYP in(1,3,5)
      group by SKPLID,RCPTIDSRC;
    when 2 then
      return query select SKPLID,cast(sum(MNOZSTVI)*l_INGREDKOEF as MNOZSTVIFLT) as MNOZSTVI,cast(RCPTIDSRC as REFIDINT) from RECEPTINGREDFULL where
      RCPTID = l_AKTRCPTID and (PRCEID is null or (a_PRCEID is not null and PRCEID is not null and PRCEID = a_PRCEID)) and
      --pouziti funkce misto primeho porovnani hodnot zaremovano z duvodu padani DB
      --and INGRED_ProVyrobuNormovanim(TYP)=1
      TYP in(4,5)
      group by SKPLID,RCPTIDSRC;
    when 3 then
      return query select SKPLID,cast(sum(MNOZSTVI)*l_INGREDKOEF as MNOZSTVIFLT) as MNOZSTVI,cast(RCPTIDSRC as REFIDINT) from RECEPTINGREDFULL where
      RCPTID = l_AKTRCPTID and (PRCEID is null or (a_PRCEID is not null and PRCEID is not null and PRCEID = a_PRCEID)) and
      --pouziti funkce misto primeho porovnani hodnot zaremovano z duvodu padani DB
      --and INGRED_ProSkladOperace(TYP)=1
      TYP in(2,3)
      group by SKPLID,RCPTIDSRC;
    else
      null;-- ADDED EMPTY ELSE
  end case;
  return;
end; $$;



select ASWDropProcedure ('RECEPT_PolovicniPorceInfo');
/*  Procedura vrátí v parametrech informace o poloviční porci. Když a_RCPTID není poloviční porce
 * v parametrech se vrátí a_RCPTID a koeficienty budou 1.
*/
create or replace function admin_septim.RECEPT_PolovicniPorceInfo(
  in  a_RCPTID             REFIDINT,
  out a_MASTERRCPTID       REFIDINT,          -- id hlavní receptury
  out a_CENAKOEF           KOEFICIENTFLT,     -- koeficient ceny
  out a_INGREDKOEF         KOEFICIENTFLT      -- koeficient pro ingredience
)
language plpgsql security definer as $$
begin
  if RECEPT_CheckPolPorceTyp(a_RCPTID,-1) = true then
    -- jestliže jde o recepturu poloviční porce zjistim hlavní recepturu, která určuje seznam ingrediencí
    -- zjistim koeficient pro množství ingrediencí
    select PPMASTERRCPTID, PPCENAKOEF, PPINGREDKOEF into a_MASTERRCPTID, a_CENAKOEF, a_INGREDKOEF from RECEPT where RCPTID = a_RCPTID;
  else
    a_MASTERRCPTID := a_RCPTID;
    a_CENAKOEF := 1;
    a_INGREDKOEF := 1;
  end if;
end; $$;



select ASWDropFunction ('RECEPT_DejPolovicniPorci');
/*  Když je a_POLPORCE=1 procedura zjistí recepturu, která je vytvořená pro hlavní recepturu v a_RCPTID jako poloviční porce.
 *  Když se nemá zjišťovat poloviční porce (a_POLPORCE=0) a_RCPTID. Pokud je již receptura poloviční porce tak vrátí
 *  taky a_RCPTID.
 *  Hlavní receptura může mít více polovičních porcí, no každá poloviční porce musí být vložena do samostatné obecné skupiny pro receptury
 *  a hledání se pak musí omezit na určitou obecnou skupinu. Pokud je hledání omezeno, no skupina neexistuje, zobrazí se chyba.
 *  V případě existence více polovičních porcí se zobrazí chyba.
*/
create or replace function admin_septim.RECEPT_DejPolovicniPorci(
  in a_RCPTID              REFIDINT,
  in a_POLPORCE            BOOLBIT,
  in a_SKUPPOLPORCE        KLICSTR_NU      -- klic obecne skupiny pro omezeni vyhledavani, napr. kdyz existuje vice polovicnich porci pro jednu hlavni recepturu
) returns REFIDINT
language plpgsql security definer
-- klic obecne skupiny pro omezeni vyhledavani, napr. kdyz existuje vice polovicnich porci pro jednu hlavni recepturu
as $$
declare
  l_RCPTID                 REFIDINT;
  l_SKUPID                 REFIDINT_NU;
  l_RowCount               INTEGER;
begin
  if (a_POLPORCE = true) then
    -- musi se jednat o standardni recepturu
    perform admin_septim.RECEPT_CheckStandardniTyp(a_RCPTID,35322);
    if coalesce(a_SKUPPOLPORCE,'') <> '' then
      -- omezeni dle obecne skupiny
      l_SKUPID := SKUPINA_FindByKlic(a_SKUPPOLPORCE,'0100000');
      if l_SKUPID is null then
        -- skupina neexistuje nebo neni urcena pro receptury
        perform admin_base.ASWError(35502, cast(array[a_SKUPPOLPORCE,admin_septim.RECEPT_GetNazev(a_RCPTID)] as text[]));
      end if;
    else
      -- bez omezeni
      l_SKUPID := null;
    end if;
    begin
      begin
        select R.RCPTID into strict l_RCPTID
        from RECEPT as R where
        R.PPMASTERRCPTID = a_RCPTID and
        R.SMAZAN = 0 and
        -- neomezeno na obecnou skupinu nebo omezeni pouze na receptury ve skupine
       (l_SKUPID is null or exists(select 1 from SKUPINA_RECEPTLIST as SR where SR.SKUPID = l_SKUPID and SR.RCPTID = R.RCPTID));
     exception
        when NO_DATA_FOUND then
      end;
      get diagnostics l_RowCount = ROW_COUNT;
      if l_RowCount = 0 then
        if l_SKUPID is null then
          -- bez omezeni na skupinu
          perform admin_base.ASWError(35321, cast(array[admin_septim.RECEPT_GetNazev(a_RCPTID)] as text[]));
        else
          -- s omezenim na skupinu
          perform admin_base.ASWError(35506, cast(array[admin_septim.RECEPT_GetNazev(a_RCPTID),admin_septim.SKUPINA_GetNazev(l_SKUPID)] as text[]));
        end if;
      end if;
    exception
      when too_many_rows then
        if l_SKUPID is null then
          -- bez omezeni na skupinu
          perform admin_base.ASWError(35503, cast(array[admin_septim.RECEPT_GetNazev(a_RCPTID)] as text[]));
        else
          -- s omezenim na skupinu
          perform admin_base.ASWError(35504, cast(array[admin_septim.RECEPT_GetNazev(a_RCPTID),admin_septim.SKUPINA_GetNazev(l_SKUPID)] as text[]));
        end if;
    end;
  else
    l_RCPTID := a_RCPTID;
  end if;
  return l_RCPTID;
end; $$;;




select ASWDropProcedure('RECEPT_ZmenVeSkladu');
/**
*Procedura na provedení změn ve skladu. Když je a_SKLDID=null zjišťuje se sklad pro každou recepturu, která
* tvoří ingredienci hlavní receptury. Když je a_SKLDID<>null, odepíší se všechny ingredience ze zadaného skladu.
*  Vstupní proměnná a_TYP může nabývat těchto hodnot:
*  1 .. Prodej pokladnou
*  2 .. Vyrobeno normováním
*  3 .. Výdej skladovou operací
* Dokumentace k chování ZASOBY_ZMEN je u ZASOBY_ZMEN
*/
create or replace function admin_septim.RECEPT_ZmenVeSkladu(
  in a_DATUMCAS            DATUMCASTS,    -- okamžik namarkování
  in a_UCETNIDATUM         DATUMTS,       -- účetní datum
  in a_RCPTID              REFIDINT,
  in a_SKLDID              REFIDINT,
  in a_MNOZSTVI            MNOZSTVIFLT,
  in a_PRCEID              REFIDINT_NU,
  in a_TYP                 TYPINT,
  in a_ZARZID              REFIDINT,
  in a_AKCEID              REFIDINT_NU,
  in a_SOURCE              VALUESTR,      -- String identifying the source of the action. See ZASOBY__CheckAvailability
  in a_FORCE               FORCETXT
) returns void
language plpgsql security definer as $$
declare
  l_ROZHODNYDATUMCAS       DATUMCASTS;
  l_CURSOR                 RECORD;
begin
  l_ROZHODNYDATUMCAS := VYDEJ_GetRozhodnyDatumCas(a_UCETNIDATUM, a_DATUMCAS);
  case a_TYP
  --- Pokud jde o prodej pokladnou
    when 1 then

      --- Projde se seznam ingrediencí daného receptu určených k prodejům pokladnou
      FOR l_CURSOR in SELECT SKPLID,MNOZSTVI,RCPTIDSRC FROM RECEPT_SeznamIngred(a_RCPTID,1,a_PRCEID)
      loop
        --- Pro každou ingredienci se provede odečtení v zásobách (nebo nejbližší další inventuře, pakliže existuje)
        perform admin_septim.ZASOBY_Zmen (
          a_SKLDID, l_CURSOR.SKPLID, -l_CURSOR.MNOZSTVI*a_MNOZSTVI, l_ROZHODNYDATUMCAS, a_FORCE, null, null, null, false, a_SOURCE
        );
        --- Vloží se výdeje dané skladové položky v množství dle receptury a množství receptury k danému účetnímu datumu podle rozhodného času
        perform admin_septim.VYDEJ_Vloz (
          a_SKLDID, l_CURSOR.SKPLID, a_AKCEID, l_CURSOR.MNOZSTVI*a_MNOZSTVI, l_ROZHODNYDATUMCAS
        );
     end loop;
  --- Pokud jde o výrobu normováním
    when 2 then
    --- Projde se seznam ingrediencí daného receptu určených k výrobě normováním
      FOR l_CURSOR in SELECT SKPLID,MNOZSTVI,RCPTIDSRC FROM RECEPT_SeznamIngred(a_RCPTID,2,a_PRCEID)
      loop
      --- pro každou ingredienci se provede přičtení v zásobách (nebo nejbližší další inventuře, pakliže existuje)
        perform admin_septim.ZASOBY_Zmen(a_SKLDID,l_CURSOR.SKPLID,l_CURSOR.MNOZSTVI*a_MNOZSTVI,l_ROZHODNYDATUMCAS,a_FORCE,
        null,null,null,false,a_SOURCE);
      end loop;
  --- Pokud jde o skladovou operaci
    when 3 then
    --- Projde se seznam ingrediencí daného receptu určených ke skladovým operacím
      FOR l_CURSOR in SELECT SKPLID,MNOZSTVI,RCPTIDSRC FROM RECEPT_SeznamIngred(a_RCPTID,3,a_PRCEID)
      loop
      --- pro každou ingredienci se provede odečtení v zásobách (nebo nejbližší další inventuře, pakliže existuje)
        perform admin_septim.ZASOBY_Zmen(a_SKLDID,l_CURSOR.SKPLID,-l_CURSOR.MNOZSTVI*a_MNOZSTVI,l_ROZHODNYDATUMCAS,
        a_FORCE,null,null,null,false,a_SOURCE);
      end loop;
    else
      null;-- ADDED EMPTY ELSE
  end case;
  return;
end; $$;



select ASWDropProcedure('RECEPT_MakeStockReservation');
/**
 * Create a reservation for ingredients configured as to be sold by POS.
 */
create or replace function admin_septim.RECEPT_MakeStockReservation (
  in a_SOURCE               VALUESTR,
  in a_RCPTID               REFIDINT,
  in a_AMOUNT               MNOZSTVIFLT,
  in a_PRCEID               REFIDINT_NU,
  in a_FTICID               REFIDINT,
  in a_FORCE                FORCETXT
) returns setof RESERVEDINSTORECT
language plpgsql security definer as $$
declare
  l_RESULT                  RESERVEDINSTORECT;
  l_SKLDID                  REFIDINT;
  l_AMOUNT                  MNOZSTVIFLT;
  l_INGRED                  record;
begin

  -- for composite menu or for alergen the stock levels are not changed
  if (RECEPT_CheckSlozeneMenuTyp(a_RCPTID,-1)) or (RECEPT_CheckAlergenDoUctuTyp(a_RCPTID,-1)) then
    return;
  end if;

  -- write-off of stock items is defined by the main recipe
  -- It is enough to get SKLDID just once for all
  l_SKLDID := RECEPT__GetFTDWriteOffStoreID (a_RCPTID, a_FTICID);

  -- write-off is not configured - do nothing
  if l_SKLDID is null then
    return;
  end if;

  -- Loop over a list of ingredients of the recipe that are configured to be used for sale by POS
  -- 1 = type: sold by POS
  for l_INGRED in select SKPLID, MNOZSTVI, RCPTIDSRC from RECEPT_SeznamIngred(a_RCPTID, 1, a_PRCEID) loop
    l_AMOUNT := l_INGRED.MNOZSTVI * a_AMOUNT;
    -- Make reservation for the stock item
    l_RESULT := ZASOBY_MakeReservation(a_SOURCE, l_SKLDID, l_INGRED.SKPLID, l_AMOUNT, a_FORCE);
    -- return composite type with information about the reserved stock items
    return next l_RESULT;
  end loop;
end; $$;



select ASWDropProcedure('RECEPTBarcodeFind');
drop type if exists admin_septim.RECEPTBarcodeFind_rs cascade;
create type admin_septim.RECEPTBarcodeFind_rs as (
  ID                       REFIDINT
);

create or replace function admin_septim.RECEPTBarcodeFind(
  in a_CODE                BARCODESTR
) returns setof admin_septim.RECEPTBarcodeFind_rs
language plpgsql security definer as $$
begin
  return query select RCPTID as ID from RCPTBARCODE where BARCODE = a_CODE order by RCPTID asc LIMIT 1;
end; $$;

select grant_func('RECEPTBarcodeFind', 'SPEXEC');



select ASWDropProcedure('RECEPTBarcodeSet');
create or replace function admin_septim.RECEPTBarcodeSet(
  in a_ID                  REFIDINT,
  in a_CODE                BARCODESTR,
  in a_FORCE               FORCETXT default null
) returns void
language plpgsql security definer as $$
declare
  l_CNT                    INTEGER;
  l_SKLADPOL               BOOLBIT; -- receptura je zaroven skladpol
  l_SKPLID                 REFIDINT;
begin
  perform admin_params.P_CheckGlobalParamBOOL('SYNCRECEPT','RECEPTIMPORTDB',false,35539);
  if RECEPT_CheckSlozeneMenuTyp(a_ID,-1) = true then
    perform admin_users.U_CheckPerm('SEPTIMAPP',E'RECEPT\\SLOZENEMENUOPERATIONS',0);
  else
    perform admin_users.U_CheckPerm('SEPTIMAPP',E'RECEPT\\RECEPTUPD',0);
  end if;
  l_CNT := RCPTBARCODE_Test(a_ID,a_CODE);
  l_SKLADPOL := RECEPT_CheckSkladpol(a_ID);
  if l_SKLADPOL = true then
    l_SKPLID := RECEPT_GetSKPLID(a_ID);
  end if;
  if l_CNT > 0 then -- jeden nebo vice jinych kodu uz existuje
    case
      when admin_eng.CheckForce(a_FORCE,'ADDBARCODE') is null then
        perform admin_base.ASWError(35368);
      when admin_eng.CheckForce(a_FORCE,'ADDBARCODE') = 0 then
        if l_SKLADPOL = true then
          case
            when admin_eng.CheckForce(a_FORCE,'RSCHANGEBARCODE') is null then
              perform admin_base.ASWError(35317);
            when admin_eng.CheckForce(a_FORCE,'RSCHANGEBARCODE') = 0 then
              return;
            when admin_eng.CheckForce(a_FORCE,'RSCHANGEBARCODE') = 1 then
              perform admin_septim.SKPLBARCODE_SKLADPOLUpdate(l_SKPLID,a_CODE);
              perform admin_septim.RCPTBARCODE_RECEPTUpdate(a_ID,a_CODE);
            else
              null;-- ADDED EMPTY ELSE
          end case;
        else
          perform admin_septim.RCPTBARCODE_RECEPTUpdate(a_ID,a_CODE);
        end if;
      when admin_eng.CheckForce(a_FORCE,'ADDBARCODE') = 1 then
        if l_SKLADPOL = true then
          case
            when admin_eng.CheckForce(a_FORCE,'RSCHANGEBARCODE') is null then
              perform admin_base.ASWError(35317);
            when admin_eng.CheckForce(a_FORCE,'RSCHANGEBARCODE') = 0 then
              return;
            when admin_eng.CheckForce(a_FORCE,'RSCHANGEBARCODE') = 1 then
              perform admin_septim.SKPLBARCODE_SKLADPOLInsert(l_SKPLID,a_CODE);
              perform admin_septim.RCPTBARCODE_RECEPTInsert(a_ID,a_CODE);
            else
              null;-- ADDED EMPTY ELSE
          end case;
        else
          perform admin_septim.RCPTBARCODE_RECEPTInsert(a_ID,a_CODE);
        end if;
      else
        null;-- ADDED EMPTY ELSE
    end case;
  elseif l_CNT < 0 then -- kod uz je prirazen
    perform admin_base.ASWError(35369);
  else -- 0
    if l_SKLADPOL = true then
      case
        when admin_eng.CheckForce(a_FORCE,'RSCHANGEBARCODE') is null then
          perform admin_base.ASWError(35317);
        when admin_eng.CheckForce(a_FORCE,'RSCHANGEBARCODE') = 0 then
          return;
        when admin_eng.CheckForce(a_FORCE,'RSCHANGEBARCODE') = 1 then
          perform admin_septim.SKPLBARCODE_SKLADPOLInsert(l_SKPLID,a_CODE);
          perform admin_septim.RCPTBARCODE_RECEPTInsert(a_ID,a_CODE);
        else
          null;-- ADDED EMPTY ELSE
      end case;
    else
      perform admin_septim.RCPTBARCODE_RECEPTInsert(a_ID,a_CODE);
    end if;
  end if;
end; $$;

select grant_func('RECEPTBarcodeSet', 'SPEXEC');


select ASWDropProcedure('RECEPTPRIDEJDOSKUPINYMultiGet');
drop type if exists admin_septim.RECEPTPRIDEJDOSKUPINYMultiGet_rs cascade;
create type admin_septim.RECEPTPRIDEJDOSKUPINYMultiGet_rs as (
  IDLIST                   IDINTARR,
  POPIS                    POPISTXT,
  SKUPVYJMOUT_CHECKED      BOOLBIT,
  SKUPPRIDAT_CHECKED       BOOLBIT,
  "#PORADI"                INTEGER,
  "#COEFFICIENT1"          INTEGER,
  "#COEFFICIENT2"          INTEGER,
  "#PARAM1"                INTEGER,
  "#PARAM2"                INTEGER,
  "#PARAMJ"                INTEGER

);

create or replace function admin_septim.RECEPTPRIDEJDOSKUPINYMultiGet(
  in a_IDLIST              IDINTARR
) returns setof admin_septim.RECEPTPRIDEJDOSKUPINYMultiGet_rs
language plpgsql security definer as $$
begin
  perform U_CheckPerm('SEPTIMAPP', 'ZAKLPARSYS\RLSKUPRCPTEDT', 0);
  return query
    select
      a_IDList, cast('Přiřazení receptur do skupiny' as POPISTXT) as POPIS,
      cast(0 as BOOLBIT) as SKUPVYJMOUT_CHECKED, cast(0 as BOOLBIT) as SKUPPRIDAT_CHECKED,
      0 as "#PORADI", 0 as "#COEFFICIENT1", 0 as "#COEFFICIENT2", 0 as "#PARAM1", 0 as "#PARAM2",
      0 as "#PARAMJ";
end; $$;

select grant_func('RECEPTPRIDEJDOSKUPINYMultiGet', 'SPEXEC');


select ASWDropProcedure('RECEPTPRIDEJDOSKUPINYMultiExec');
create or replace function admin_septim.RECEPTPRIDEJDOSKUPINYMultiExec(
  in a_SKUPVYJMOUT_CHECKED BOOLBIT,
  in a_VYJMOUTSK           NAZEVSTR,
  in a_SKUPPRIDAT_CHECKED  BOOLBIT,
  in a_PRIDATSK            NAZEVSTR,
  in a_PORADI              CISLOINT_NU,
  in a_COEFFICIENT1        COEFFICIENTFLT_NU,
  in a_COEFFICIENT2        COEFFICIENTFLT_NU,
  in a_PARAM1              PARAMTXT,
  in a_PARAM2              PARAMTXT,
  in a_PARAMJ              VALUETXT,
  in a_IDLIST              IDINTARR,
  in a_PARAMS              PARAMTXT,
  in a_FORCE               FORCETXT default null
) returns void
language plpgsql security definer as $$
declare
  l_RCPTID                 REFIDINT;
  l_VYJMOUTSKUPID          REFIDINT;
  l_PRIDATSKUPID           REFIDINT;
  l_PORADI                 CISLOINT_NU;
  l_COEFFICIENT1           COEFFICIENTFLT_NU;
  l_COEFFICIENT2           COEFFICIENTFLT_NU;
  l_PARAM1                 PARAMTXT;
  l_PARAM2                 PARAMTXT;
  l_PARAMJSON              JSONTXT;
  l_FORCE                  FORCETXT;
  l_FORCERES               CISLOINT_NU;
  l_RLSRID                 REFIDINT;
begin
  perform U_CheckPerm('SEPTIMAPP', 'ZAKLPARSYS\RLSKUPRCPTEDT', 0);

  if a_SKUPVYJMOUT_CHECKED then
    perform B_NULL_STR('VYJMOUTSK', a_VYJMOUTSK, 35370);
    l_VYJMOUTSKUPID := (B_REFTABLE('SEPTIMAPP', 'SKUPINA', 'NAZEV', a_VYJMOUTSK, 35371, 'VYJMOUTSK')).a_ID;
  end if;

  if a_SKUPPRIDAT_CHECKED then
    perform admin_base.B_NULL_STR('PRIDATSK', a_PRIDATSK, 35370);
    l_PRIDATSKUPID := (B_REFTABLE('SEPTIMAPP', 'SKUPINA', 'NAZEV', a_PRIDATSK, 35371, 'PRIDATSK')).a_ID;
  end if;

  if a_SKUPVYJMOUT_CHECKED and a_SKUPPRIDAT_CHECKED and l_VYJMOUTSKUPID = l_PRIDATSKUPID then
    perform ASWError(35474, cast(array['VYJMOUTSK'] as text[]));
  end if;

  for l_RCPTID in select unnest(a_IDLIST) loop
    if a_SKUPVYJMOUT_CHECKED then
      select RLSRID into l_RLSRID from RLSKUPRCPT where RCPTID = l_RCPTID and SKUPID = l_VYJMOUTSKUPID and SMAZAN = 0;
      if FOUND then
        perform RLSKUPRCPTRCPT_Delete(l_RLSRID);
      end if;
    end if;

    if a_SKUPPRIDAT_CHECKED = true then
      -- check for existent values
      select
        R.PORADI, R.COEFFICIENT1, R.COEFFICIENT2, R.PARAM1, R.PARAM2, R.PARAMJSON, R.RLSRID
      into
        l_PORADI, l_COEFFICIENT1, l_COEFFICIENT2, l_PARAM1, l_PARAM2, l_PARAMJSON, l_RLSRID
      from
        RLSKUPRCPT as R
      where
        R.RCPTID = l_RCPTID
        and R.SKUPID = l_PRIDATSKUPID
        and R.SMAZAN = 0;

      if NOT FOUND then
        perform RLSKUPRCPT_Insert(
          l_PRIDATSKUPID, l_RCPTID, null, null, a_PORADI, a_COEFFICIENT1, a_COEFFICIENT2, a_PARAM1, a_PARAM2, a_PARAMJ);
      else
        if a_PORADI is distinct from l_PORADI or a_PARAMJ is distinct from cast(l_PARAMJSON as VALUETXT)
           or a_COEFFICIENT1 is distinct from l_COEFFICIENT1 or a_COEFFICIENT2 is distinct from l_COEFFICIENT2
           or a_PARAM1 is distinct from l_PARAM1 or a_PARAM2 is distinct from l_PARAM2
        then
            -- Link already exists but with another values
          l_FORCE := concat('UPDATEGENGROUP_', l_RCPTID);
          l_FORCERES := coalesce(CheckForce(a_FORCE, 'UPDATEGENGROUP_ALL'), CheckForce(a_FORCE, l_FORCE));
          case
            when l_FORCERES is null then
              perform ASWError(35472, cast(array[RECEPT_GetNazev(l_RCPTID), a_PRIDATSK, l_FORCE, 'UPDATEGENGROUP_ALL'] as text[]));
            when l_FORCERES = 1 then
              perform RLSKUPRCPT_Update(
                l_RLSRID, l_PRIDATSKUPID, l_RCPTID, null, null, a_PORADI, a_COEFFICIENT1, a_COEFFICIENT2, a_PARAM1, a_PARAM2,
                a_PARAMJ);
            else
              null;
          end case;
        end if;
      end if;
    end if;
  end loop;
end; $$;

select grant_func('RECEPTPRIDEJDOSKUPINYMultiExec', 'SPEXEC');



select ASWDropFunction('RECEPT_GetReceptTypKlic');
create or replace function admin_septim.RECEPT_GetReceptTypKlic(
  in a_RCPTID              IDINT
) returns KLICSTR
language plpgsql security definer as $$
declare
  l_RECEPTTYP              KLICSTR;
begin
  begin
    select RT.KLIC into strict l_RECEPTTYP from RECEPT as R
    join RECEPTTYP as RT on R.RECTID = RT.RECTID where R.RCPTID = a_RCPTID;
  exception
    when NO_DATA_FOUND then
  end;
  return l_RECEPTTYP;
end; $$;;



select ASWDropFunction('RECEPT_GetTypeName');
create or replace function admin_septim.RECEPT_GetTypeName (
  in a_RCPTID              IDINT
) returns NAZEVSTR
language plpgsql security definer as $$
begin
  return RT.NAZEV
  from RECEPT as R
    join RECEPTTYP as RT on R.RECTID = RT.RECTID
  where R.RCPTID = a_RCPTID;
end; $$;



select ASWDropFunction ('RECEPT__CheckTyp');
/** Procedura provede kontrolu, jestli je receptura a_RCPTID typu zadaného v a_TYPKLIC. Když ano vrátí 1.
 *  Když ne výsledek záleží na a_ERROR. Když je:
 *   =0  .......  vyvolá defaultní raiserror
 *   >1  .......  vyvolá zadaný raiserror
 *   <1  .......  vrátí 0
 *
 *   Do chybové hlášky se předávjí dva parametry. Název receptury a název typu receptury.
*/
create or replace function admin_septim.RECEPT__CheckTyp (
  in a_RCPTID              IDINT,
  in a_TYPKLIC             KLICSTR,
  in a_ERROR               CISLOINT
) returns BOOLBIT
language plpgsql security definer as $$
declare
  l_NAZEV                  NAZEVSTR;
  l_TYPNAZEV               NAZEVSTR;
begin
  if exists (
    select 1 from RECEPT as R join
      RECEPTTYP as RT on RT.RECTID = R.RECTID
    where (R.RCPTID = a_RCPTID) and (RT.KLIC = a_TYPKLIC))
  then
    return true;
  end if;
  if a_ERROR >= 0 then
    select R.NAZEV into l_NAZEV from RECEPT as R where R.RCPTID = a_RCPTID;
    select B_GetDTTText(RT.SOURCEM,'RECEPTTYP','NAZEV',RT.KLIC,RT.NAZEV) into l_TYPNAZEV
    from RECEPTTYP as RT where
    RT.KLIC = a_TYPKLIC;
    if a_ERROR = 0 then
      perform ASWError(35340, cast(array[l_NAZEV,l_TYPNAZEV] as text[]));
    else
      perform ASWError(a_ERROR, cast(array[l_NAZEV,l_TYPNAZEV] as text[]));
    end if;
  end if;
  return false;
end; $$;



select ASWDropFunction('RECEPT_CheckBonusovaTyp');
/** Funkce zkontroluje jestli jde o bonusovou recepturu. Výsledek záleží na a_ERROR. Popis u funkce RECEPT__CheckTyp.
*/
create or replace function admin_septim.RECEPT_CheckBonusovaTyp(
  in a_RCPTID              IDINT,
  in a_ERROR               CISLOINT
) returns BOOLBIT
language plpgsql security definer as $$
begin
  return RECEPT__CheckTyp(a_RCPTID,'BONUSOVA',a_ERROR);
end; $$;;



select ASWDropFunction('RECEPT_CheckLogoNaStulTyp');
/** Funkce zkontroluje jestli jde o recepturu typu "Logo na stul". Výsledek záleží na a_ERROR. Popis u funkce RECEPT__CheckTyp.
*/
create or replace function admin_septim.RECEPT_CheckLogoNaStulTyp(
  in a_RCPTID              IDINT,
  in a_ERROR               CISLOINT
) returns BOOLBIT
language plpgsql security definer as $$
begin
  return RECEPT__CheckTyp(a_RCPTID,'LOGONASTUL',a_ERROR);
end; $$;;


select ASWDropFunction('RECEPT_GetLogoNaStulTyp');
/** Funkce zkontroluje zda existuje neskryta receptura typu "Logo na stul" s daným klíčem a vrátí ID případně nalezené receptury
*/
create or replace function admin_septim.RECEPT_GetLogoNaStulTyp(
  in a_KLIC                KLICSTR
) returns REFIDINT_NU
language plpgsql security definer as $$
declare
  l_ID                     REFIDINT_NU;
begin
  begin
    select R.RCPTID into strict l_ID
    from RECEPT as R join
    RECEPTTYP as RT on RT.RECTID = R.RECTID where
    R.SMAZAN = 0 and R.KLIC = a_KLIC and RT.KLIC = 'LOGONASTUL' and R.HIDE = false;
  exception
    when NO_DATA_FOUND then
  end;
  return l_ID;
end; $$;;


select ASWDropFunction('RECEPT_CheckSlozeneMenuTyp');
/** Funkce zkontroluje jestli jde o recepturu typu "Slozene menu". Výsledek záleží na a_ERROR. Popis u funkce RECEPT__CheckTyp.
*/
create or replace function admin_septim.RECEPT_CheckSlozeneMenuTyp(
  in a_RCPTID              IDINT,
  in a_ERROR               CISLOINT
) returns BOOLBIT
language plpgsql security definer as $$
begin
  return RECEPT__CheckTyp(a_RCPTID,'SLOZENEMENU',a_ERROR);
end; $$;;



select ASWDropFunction('RECEPT_CheckModifikatorTyp');
/** Funkce zkontroluje jestli jde o recepturu nektereho typu modifikatoru. Vraci 1 pokud se jedna o modifikator nebo 0 pokud ne.
*/
create or replace function admin_septim.RECEPT_CheckModifikatorTyp(
  in a_RCPTID              IDINT
) returns BOOLBIT
language plpgsql security definer as $$
begin
  if RECEPT__CheckTyp(a_RCPTID,'MODIFIKATORCENOVY',-1) = true then
    return true;
  end if;
  if RECEPT__CheckTyp(a_RCPTID,'MODIFIKATORSKLADOVY',-1) = true then
    return true;
  end if;
  if RECEPT__CheckTyp(a_RCPTID,'MODIFIKATORVYROBNI',-1) = true then
    return true;
  end if;
  return false;
end; $$;;



select ASWDropFunction('RECEPT_CheckModifikatorCenovyTyp');
/** Funkce zkontroluje jestli jde o recepturu typu "Modifikator - cenovy". Výsledek záleží na a_ERROR. Popis u funkce RECEPT__CheckTyp.
*/
create or replace function admin_septim.RECEPT_CheckModifikatorCenovyTyp(
  in a_RCPTID              IDINT,
  in a_ERROR               CISLOINT
) returns BOOLBIT
language plpgsql security definer as $$
begin
  return RECEPT__CheckTyp(a_RCPTID,'MODIFIKATORCENOVY',a_ERROR);
end; $$;;



select ASWDropFunction('RECEPT_CheckModifikatorSkladovyTyp');
/** Funkce zkontroluje jestli jde o recepturu typu "Modifikator - skladovy". Výsledek záleží na a_ERROR. Popis u funkce RECEPT__CheckTyp.
*/
create or replace function admin_septim.RECEPT_CheckModifikatorSkladovyTyp(
  in a_RCPTID              IDINT,
  in a_ERROR               CISLOINT
) returns BOOLBIT
language plpgsql security definer as $$
begin
  return RECEPT__CheckTyp(a_RCPTID,'MODIFIKATORSKLADOVY',a_ERROR);
end; $$;;



select ASWDropFunction('RECEPT_CheckModifikatorVyrobniTyp');
/** Funkce zkontroluje jestli jde o recepturu typu "Modifikator - vyrobni". Výsledek záleží na a_ERROR. Popis u funkce RECEPT__CheckTyp.
*/
create or replace function admin_septim.RECEPT_CheckModifikatorVyrobniTyp(
  in a_RCPTID              IDINT,
  in a_ERROR               CISLOINT
) returns BOOLBIT
language plpgsql security definer as $$
begin
  return RECEPT__CheckTyp(a_RCPTID,'MODIFIKATORVYROBNI',a_ERROR);
end; $$;;



select ASWDropFunction ('RECEPT_CheckEvidencniTyp');
/**  Funkce zkontroluje jestli jde o evidenční recepturu. Výsledek záleží na a_ERROR. Popis u funkce RECEPT__CheckTyp.
*/
create or replace function admin_septim.RECEPT_CheckEvidencniTyp(
  in a_RCPTID              IDINT,
  in a_ERROR               CISLOINT
) returns BOOLBIT
language plpgsql security definer as $$
begin
  return RECEPT__CheckTyp(a_RCPTID,'EVIDENCNI',a_ERROR);
end; $$;;


select ASWDropFunction ('RECEPT_CheckKorunovaTyp');
/**  Funkce zkontroluje jestli jde o korunovou recepturu. Výsledek záleží na a_ERROR. Popis u funkce RECEPT__CheckTyp.
*/
create or replace function admin_septim.RECEPT_CheckKorunovaTyp(
  in a_RCPTID              IDINT,
  in a_ERROR               CISLOINT
) returns BOOLBIT
language plpgsql security definer as $$
begin
  return RECEPT__CheckTyp(a_RCPTID,'KORUNOVA',a_ERROR);
end; $$;;


select ASWDropFunction ('RECEPT_CheckLekceTyp');
/**  Funkce zkontroluje jestli jde o recepturu typu lekce. Výsledek záleží na a_ERROR. Popis u funkce RECEPT__CheckTyp.
*/
create or replace function admin_septim.RECEPT_CheckLekceTyp(
  in a_RCPTID              IDINT,
  in a_ERROR               CISLOINT
) returns BOOLBIT
language plpgsql security definer as $$
begin
  return RECEPT__CheckTyp(a_RCPTID,'LEKCE',a_ERROR);
end; $$;;



select ASWDropFunction ('RECEPT_CheckPolPorceTyp');
/**  Funkce zkontroluje jestli jde o recepturu typu poloviční porce. Výsledek záleží na a_ERROR. Popis u funkce RECEPT__CheckTyp.
*/
create or replace function admin_septim.RECEPT_CheckPolPorceTyp(
  in a_RCPTID              IDINT,
  in a_ERROR               CISLOINT
) returns BOOLBIT
language plpgsql security definer as $$
begin
  return RECEPT__CheckTyp(a_RCPTID,'POLOVICNIPORCE',a_ERROR);
end; $$;;



select ASWDropFunction ('RECEPT_CheckSpecialniTyp');
/**  Funkce zkontroluje jestli jde o speciální recepturu. Výsledek záleží na a_ERROR. Popis u funkce RECEPT__CheckTyp.
*/
create or replace function admin_septim.RECEPT_CheckSpecialniTyp(
  in a_RCPTID              IDINT,
  in a_ERROR               CISLOINT
) returns BOOLBIT
language plpgsql security definer as $$
begin
  return RECEPT__CheckTyp(a_RCPTID,'SPECIALNI',a_ERROR);
end; $$;;



select ASWDropFunction ('RECEPT_CheckStandardniTyp');
/**  Funkce zkontroluje jestli jde o standardní recepturu. Výsledek záleží na a_ERROR. Popis u funkce RECEPT__CheckTyp.
*/
create or replace function admin_septim.RECEPT_CheckStandardniTyp(
  in a_RCPTID              IDINT,
  in a_ERROR               CISLOINT
) returns BOOLBIT
language plpgsql security definer as $$
begin
  return RECEPT__CheckTyp(a_RCPTID,'STANDARDNI',a_ERROR);
end; $$;;



select ASWDropFunction ('RECEPT_CheckStornoTyp');
/**  Funkce zkontroluje jestli jde o storno recepturu. Výsledek záleží na a_ERROR. Popis u funkce RECEPT__CheckTyp.
*/
create or replace function admin_septim.RECEPT_CheckStornoTyp(
  in a_RCPTID              IDINT,
  in a_ERROR               CISLOINT
) returns BOOLBIT
language plpgsql security definer as $$
begin
  return RECEPT__CheckTyp(a_RCPTID,'STANDARDNISTORNO',a_ERROR);
end; $$;;



select ASWDropFunction ('RECEPT_CheckTarifTyp');
/**  Funkce zkontroluje jestli jde o recepturu typu tarif. Výsledek záleží na a_ERROR. Popis u funkce RECEPT__CheckTyp.
*/
create or replace function admin_septim.RECEPT_CheckTarifTyp(
  in a_RCPTID              IDINT,
  in a_ERROR               CISLOINT
) returns BOOLBIT
language plpgsql security definer as $$
begin
  return RECEPT__CheckTyp(a_RCPTID,'TARIF',a_ERROR);
end; $$;;



select ASWDropFunction ('RECEPT_CheckVkladaniTyp');
/**  Funkce zkontroluje jestli jde o recepturu typu vkládání do skupiny. Výsledek záleží na a_ERROR. Popis u funkce RECEPT__CheckTyp.
*/
create or replace function admin_septim.RECEPT_CheckVkladaniTyp(
  in a_RCPTID              IDINT,
  in a_ERROR               CISLOINT
) returns BOOLBIT
language plpgsql security definer as $$
begin
  return RECEPT__CheckTyp(a_RCPTID,'VKLADANI',a_ERROR);
end; $$;;



select ASWDropFunction ('RECEPT_CheckAlergenDoUctuTyp');
/**  Funkce zkontroluje jestli jde o recepturu typu "Alergen do účtu". Výsledek záleží na a_ERROR. Popis u funkce RECEPT__CheckTyp.
*/
create or replace function admin_septim.RECEPT_CheckAlergenDoUctuTyp(
  in a_RCPTID              IDINT,
  in a_ERROR               CISLOINT
) returns BOOLBIT
language plpgsql security definer as $$
begin
  return RECEPT__CheckTyp(a_RCPTID,'ALERGENDOUCTU',a_ERROR);
end; $$;;



select ASWDropFunction('RECEPT_Consist');
/**
*  procedura pro test konzistence receptury
*  - pokud je a_TYP not null, jde o test receptury po pripadnem vlozeni ingredience s timhle typem;
*  navratove kody:
*   0 - receptura ok
*   1 - michaji se typy receptury
*   2 - ve specialni recepture chybi nejaka ingredience;
*  pokud je a_INGRID not null, ingredience s timto id se netestuje (jde o update prave tehle ingred.)
*
*  Procedura podporuje vyrobu vice polozek pres jednu hlavni recepturu - kazda vyrabena polozka musi byt v samostatne subrecepture.
*  Ingredience subreceptury, ktera neobsahuje ingredienci vznikajici normovanim, patri nadrazene recepture.
*  Postup kontroly je stejny jako postup vkladani ingredienci do normovani pres proceduru NORMOVANIRCPT__ProcessRecept.
*/
create or replace function admin_septim.RECEPT_Consist(
  in a_RCPTID              IDINT,
  in a_TYP                 TYPINT,
  in a_INGRID              IDINT
) returns CISLOINT
language plpgsql security definer as $$
declare
  l_TYP1                   BOOLBIT;
  l_TYP2                   BOOLBIT;
  l_TYP3                   BOOLBIT;
  l_TYP4                   BOOLBIT;
  l_RESULT                 CISLOINT;
begin
  l_TYP1 := 0;
  l_TYP2 := 0;
  l_TYP3 := 0;
  l_TYP4 := 0;
  select * into l_TYP1,l_TYP2,l_TYP3,l_TYP4,l_RESULT from admin_septim.RECEPT__ConsistSub(a_RCPTID,a_INGRID,a_TYP,l_TYP1,l_TYP2,l_TYP3,l_TYP4);
  if l_RESULT <> 0 then
    return l_RESULT;
  end if;
  return RECEPT__ConsistResult(l_TYP1,l_TYP2,l_TYP3,l_TYP4);
end; $$;;



select ASWDropFunction('RECEPT__ConsistResult');
/**
* Funkce pro vyhodnoceni vysledku.
*/
create or replace function admin_septim.RECEPT__ConsistResult(
  in a_TYP1                BOOLBIT,
  in a_TYP2                BOOLBIT,
  in a_TYP3                BOOLBIT,
  in a_TYP4                BOOLBIT
) returns CISLOINT
language plpgsql security definer as $$
begin

  --- ingred typ 3 spolu s nejakym jinym typem
  if (a_TYP3 = true) and ((a_TYP1 = true) or (a_TYP2 = true) or (a_TYP4 = true)) then
    return 1;
  end if;
  --- ve spec. recepture chybi nejaka ingred
  if (a_TYP3 = false) and ((a_TYP1 = true) or (a_TYP2 = true) or (a_TYP4 = true)) and ((a_TYP1 = false) or (a_TYP2 = false) or (a_TYP4 = false)) then
    return 2;
  end if;
  return 0;
end; $$;;



select ASWDropProcedure('RECEPT__ConsistSub');
/**
* Rekurzivni procedura pro kontrolu konzistence konkretni receptury.
* Kazda subreceptura obsahujici ingredieci (primo vlozenou) pouzivanou pro vyrobu normovanim, tvori samostatny vyrobek
* a slozeni se kontroluje samostatne, no chyba v subrecepture se vraci jako chyba hlavni receptury.
*/
create or replace function admin_septim.RECEPT__ConsistSub(
  in    a_RCPTID           IDINT,
  in    a_INGRID           REFIDINT_NU,
  in    a_TYP              CISLOINT_NU,
  inout a_TYP1             BOOLBIT,
  inout a_TYP2             BOOLBIT,
  inout a_TYP3             BOOLBIT,
  inout a_TYP4             BOOLBIT,
  out   a_RESULT           TYPINT
)
language plpgsql security definer as $$
declare
  cr_cursorIngred          RECORD;
  cr_cursorSubrecept       RECORD;
begin
  a_RESULT := 0;
  if (a_TYP in(4,5)) or exists(select 1 from INGRED where SMAZAN = 0 and RCPTID = a_RCPTID and (a_INGRID is null or INGRID <> a_INGRID) and INGRED_ProVyrobuNormovanim(TYP) = true) then
    -- ingredience pro normovani (a_TYP=4) nebo obsahuje ingredienci, ktera se vyrabi normovanim, jedna se o dalsi recepturu
    a_RESULT := RECEPT__ConsistResult(a_TYP1,a_TYP2,a_TYP3,a_TYP4);
    if a_RESULT <> 0 then
      -- puvodni receptura obsahuje chybu
      return;
    end if;
    -- nulovani typu
    a_TYP1 := 0;
    a_TYP2 := 0;
    a_TYP3 := 0;
    a_TYP4 := 0;
  end if;
  if a_TYP is not null then
    case a_TYP
      when 1 then
        a_TYP1 := 1;
      when 2 then
        a_TYP2 := 1;
      when 3 then
        a_TYP3 := 1;
      when 4 then
        a_TYP4 := 1;
      when 5 then
        a_TYP1 := 1;
        a_TYP4 := 1;
      else
        null;-- ADDED EMPTY ELSE
    end case;
  end if;
  for cr_cursorIngred in select distinct TYP as cr_TYP from
  INGRED where
  RCPTID = a_RCPTID and SMAZAN = 0 and
    (a_INGRID is null or INGRID <> a_INGRID)
  loop
    case cr_cursorIngred.cr_TYP
      when 1 then
        a_TYP1 := 1;
      when 2 then
        a_TYP2 := 1;
      when 3 then
        a_TYP3 := 1;
      when 4 then
        a_TYP4 := 1;
      when 5 then
        a_TYP1 := 1;
        a_TYP4 := 1;
      else
        null;-- ADDED EMPTY ELSE
    end case;
  end loop;
  -- subreceptury
  for cr_cursorSubrecept in select distinct RCPTID as cr_RCPTID from
  RLRCPT where
  SMAZAN = 0 and RCPTIDP = a_RCPTID
  loop
    select * into a_TYP1,a_TYP2,a_TYP3,a_TYP4,a_RESULT from admin_septim.RECEPT__ConsistSub(cr_cursorSubrecept.cr_RCPTID,a_INGRID,null,a_TYP1,a_TYP2,a_TYP3,a_TYP4); /*TYP*/
    if a_RESULT <> 0 then
      return;
    end if;
  end loop;
end; $$;



select ASWDropFunction('RECEPT_ConsistPorce');
/**
* Funkce pro kontrolu procedury, zda je konzistentni z pohledu porci, tedy ze pro kazdou porci existuji stejne skladove polozky (ingredience) vcetne typu a zdrojove receptury.
* Recipe can be a half-portion too.
* It returns 0 if everything is OK, otherwise:
* 1 - does not contain ingredients for the selected portion
* 2 - ingredients are composed for different portions
* 3 - does not contain ingredients for all active portions
*/
create or replace function admin_septim.RECEPT_ConsistPorce(
  in a_RCPTID              IDINT,
  in a_PRCEID              REFIDINT_NU default null,      -- kontrola, zda obsahuje ingredience zvolene porce
  in a_VSECHNYAKTPORCE     BOOLBIT default  false,
  in a_TYP_PRODEJPOKL      BOOLBIT default  false,        -- zahrnout ingredience urcene pro prodej pokladnou
  in a_TYP_VYROBANORM      BOOLBIT default  false,        -- zahrnout ingredience urcene pro vyrobu normovanim
  in a_TYP_SKLADOPER       BOOLBIT default  false         -- zahrnout ingredience urcene pro skladove operace
) returns TYPINT
language plpgsql security definer
as $$
declare
  l_AKTRCPTID              REFIDINT;
  l_PRCEIDLSIT             INT[];
  l_DIFFINGREDCOUNT        NUMBERINT;
begin

/* commented out for task 19999 in order to fix this function later

 l_AKTRCPTID := (RECEPT_PolovicniPorceInfo(a_RCPTID)).a_MASTERRCPTID;

  if exists (select from RECEPTINGREDFULL where RCPTID = l_AKTRCPTID and PRCEID is not null) then
    if a_PRCEID is not null then
      a_TYP_PRODEJPOKL := coalesce(a_TYP_PRODEJPOKL, false);
      a_TYP_VYROBANORM := coalesce(a_TYP_VYROBANORM, false);
      a_TYP_SKLADOPER := coalesce(a_TYP_SKLADOPER, false);
      -- ingredient check of the selected portion (by type of ingredient)
      if not exists (
        select
        from
          RECEPTINGREDFULL
        where
          RCPTID = l_AKTRCPTID
          and PRCEID = a_PRCEID
          and ((not (a_TYP_PRODEJPOKL or a_TYP_VYROBANORM or a_TYP_SKLADOPER))
               or (a_TYP_PRODEJPOKL and INGRED_ProProdejPokladnou(TYP))
               or (a_TYP_VYROBANORM and INGRED_ProVyrobuNormovanim(TYP))
               or (a_TYP_SKLADOPER  and INGRED_ProSkladOperace(TYP)))
      ) then
        -- there is no ingredient for the selected portion
        return 1;
      end if;
    end if;

    -- get all portions and number of different ingredient list
    select
      array_agg(cast(M.PRCEID as INT)), count( distinct M.INGLIST)
    into
      l_PRCEIDLSIT, l_DIFFINGREDCOUNT
    from
      (select
        PRCEID, string_agg(concat(TYP,':',RCPTIDSRC,':',SKPLID),';' order by TYP, RCPTIDSRC, SKPLID) INGLIST
      from
        RECEPTINGREDFULL
      where
        RCPTID = l_AKTRCPTID
        and PRCEID is not null
      group by PRCEID) M;

    if l_DIFFINGREDCOUNT > 1 then
      -- there is a portion that differs from others
      return 2;
    end if;

    if coalesce(a_VSECHNYAKTPORCE, false) then
      -- control all active portions
      if exists (select from PORCE as P left outer join (select unnest(l_PRCEIDLSIT) as ID) as T on P.PRCEID = T.ID where P.SMAZAN = 0 and P.ACTIVE and T.ID is null) then
        -- there is an active portion for which no ingredients are defined
        return 3;
      end if;
    end if;
  end if;
  -- OK
*/
  return 0;
end; $$;;



select ASWDropFunction('RECEPT_ConsistVyroba');
/**
* Funkce pro kontrolu receptury, zda je konzistentni z pohledu vyroby, tedy ze nevyrabi vice ruznych ingredienci, pripade vyrabi ingredienci primo i pre subreceptur.
* Pokud je vse OK, vraci 0, jinak:
* 1 - vyrabi vice ruznych skladovych polozek
* 2 - vyrabi skladovou polozku primo i pres subrecepturu
*/
-- ID ingredience pri editaci (update, pri insertu je null)
-- typ vkladane nebo editovane ingredience
create or replace function admin_septim.RECEPT_ConsistVyroba(
  in a_RCPTID              IDINT,
  in a_INGRID              REFIDINT_NU default null,      -- ID ingredience pri editaci (update, pri insertu je NULL)
  in a_TYP                 TYPINT default  null,          -- typ vkladane nebo editovane ingredience
  in a_SKPLID              REFIDINT_NU default  null      -- ID skladove polozky vkladane nebo editovane ingredience
) returns TYPINT
language plpgsql security definer -- ID skladove polozky vkladane nebo editovane ingredience
as $$
declare
  l_POCET                  CISLOINT;
  l_SKPLID                 REFIDINT;
begin
  if (a_TYP is not null and a_TYP in(4,5)) or
  exists(select 1 from INGRED where SMAZAN = 0 and RCPTID = a_RCPTID and TYP in(4,5) and (a_INGRID is null or INGRID <> a_INGRID)) then /*INGRED_ProVyrobuNormovanim(TYP)=1*/
    -- vyrabi primo
    if a_TYP is not null and a_TYP in(4,5) then
      -- editace ingredience, ktera se vyrabi
      if exists(select 1 from INGRED where SMAZAN = 0 and RCPTID = a_RCPTID and TYP in(4,5) and /*INGRED_ProVyrobuNormovanim(TYP)=1*/
       (a_INGRID is null or INGRID <> a_INGRID) and SKPLID <> a_SKPLID) then
        -- insert/update vyrabene ingredience + existuje jina vyrabena ingredience ktera vyrabi jinou skladpol
        return 1;
      end if;
    else
      -- ziskani poctu vyrabenych skladpol
      begin
        select count(distinct SKPLID) into strict l_POCET
        from INGRED where
        SMAZAN = 0 and RCPTID = a_RCPTID and TYP in(4,5) and /*INGRED_ProVyrobuNormovanim(TYP)=1*/
       (a_INGRID is null or INGRID <> a_INGRID);
     exception
        when NO_DATA_FOUND then
      end;
      if l_POCET > 1 then
        -- vyrabi vice skladovych polozek
        return 1;
      end if;
    end if;
    if exists(select 1 from RLRCPTFULL as RF join INGRED as I on I.RCPTID = RF.RCPTID where
    RF.RCPTIDR = a_RCPTID and I.SMAZAN = 0 and TYP in(4,5)) then /*INGRED_ProVyrobuNormovanim(TYP)=1*/
      -- vyrabi primo i pres subrecepturu
      return 2;
    end if;
  end if;
  -- OK
  return 0;
end; $$;;



select ASWDropProcedure('RECEPT_TEST');
/** Procedura pro kontrolu integrity receptur. Vypise vsechny podezrele receptury. */
create or replace function admin_septim.RECEPT_TEST(
) returns void
language plpgsql security definer as $$
declare
  l_CONS                   TYPINT;
  l_LOGTEXT                POSTUPTXT;
  l_POCET                  TYPINT;
  l_CELKPOCET              TYPINT;
  l_CONSPORCE              TYPINT;
  l_CONSVYROBA             TYPINT;
  l_CONSVYROBA2            BOOLBIT;
  l_CHYBY                  VALUETXT;
  cr_smycka                RECORD;
begin
  l_LOGTEXT := concat(B_GetTxt('SEPTIMAPP','RECEPT','TESTKONZISTENCERECEPT'),E'\n');
  begin
    select count(RCPTID) into strict l_CELKPOCET from RECEPT where SMAZAN = 0;
  exception
    when NO_DATA_FOUND then
  end;
  l_POCET := 0;
  for cr_smycka in select RCPTID as cr_RCPTID,HIDE as cr_HIDE from RECEPT where SMAZAN = 0 order by NAZEV asc
  loop
    l_CONS := RECEPT_Consist(cr_smycka.cr_RCPTID,null,null);
    l_CONSPORCE := RECEPT_ConsistPorce(cr_smycka.cr_RCPTID,null,true); --PRCEID --VSECHNYAKTPORCE
    l_CONSVYROBA := RECEPT_ConsistVyroba(cr_smycka.cr_RCPTID);
    l_CONSVYROBA2 := 0;
    -- kontrola vyroby stejne skladpol pres vice neskrytych receptur ale pouze pokud se nejedna o skrytou recepturu
    if cr_smycka.cr_HIDE = 0 then
      if exists(select 1 from INGRED as I1 join INGRED as I2 on I1.SKPLID = I2.SKPLID join RECEPT as R on I2.RCPTID = R.RCPTID where
      I1.SMAZAN = 0 and I2.SMAZAN = 0 and R.SMAZAN = 0 and R.HIDE = false and
      I1.RCPTID = cr_smycka.cr_RCPTID and INGRED_ProVyrobuNormovanim(I1.TYP) = true and INGRED_ProVyrobuNormovanim(I2.TYP) = true) then
        l_CONSVYROBA2 := 1;
      end if;
    end if;
    if l_CONS > 0 or l_CONSPORCE > 0 or l_CONSVYROBA > 0 or l_CONSVYROBA2 = true then
      l_POCET := l_POCET+1;
      l_CHYBY := '';
      if l_CONS > 0 then
        -- chyba konzistence
        l_CHYBY := admin_base.cm_JoinStringsBySep(l_CHYBY,B_GetTxt('SEPTIMAPP','RECEPT',(case when l_CONS = 1 then 'OBSAHUJEINGREDOBOUTYPU' else 'CHYJEJICIINGREDSPECRECEPT' end)),', ');
      end if;
      if l_CONSPORCE > 0 then
        -- chyba porci
        l_CHYBY := admin_base.cm_JoinStringsBySep(l_CHYBY,B_GetTxt('SEPTIMAPP','RECEPT',(case when l_CONSPORCE = 2 then 'NEOBSAHUJESTEJNEPORCE' else 'NEOBSAHUJEVSECHNYAKTPORCE' end)),', ');
      end if;
      if l_CONSVYROBA > 0 then
        -- chyba vyroby
        l_CHYBY := admin_base.cm_JoinStringsBySep(l_CHYBY,B_GetTxt('SEPTIMAPP','RECEPT',(case when l_CONSVYROBA = 2 then 'VYRABISKLADPOLPRIMOIPRESSUBRECEPT' else 'VYRABIVICERUZNYCHSKLADPOL' end)),', ');
      end if;
      if l_CONSVYROBA2 = true then
        -- chyba vyroby
        l_CHYBY := admin_base.cm_JoinStringsBySep(l_CHYBY,B_GetTxt('SEPTIMAPP','RECEPT','VYROBASKLADPOLPRESVICERECEPTUR'),
        ', ');
      end if;
      l_LOGTEXT := admin_base.cm_JoinStringsBySep(l_LOGTEXT,admin_base.B_Format(B_GetTxt('SEPTIMAPP','RECEPT','TESTKONZISTENCECHYBA'), cast(array[admin_septim.RECEPT_GetNazev(cr_smycka.cr_RCPTID),
      l_CHYBY] as text[])),E'\n');
    end if;
  end loop;
  if l_CELKPOCET = 0 then
    l_LOGTEXT := concat(l_LOGTEXT,B_GetTxt('SEPTIMAPP','RECEPT','VRECEPTNEJSOUZADNEZAZNAMY'),
    E'\n');
  else
    l_LOGTEXT := concat(l_LOGTEXT,E'\n',admin_base.B_Format(B_GetTxt('SEPTIMAPP','RECEPT','CELKOVYPOCETRECEPTUR'), cast(array[l_CELKPOCET] as text[])),E'\n');
    l_LOGTEXT := concat(l_LOGTEXT,admin_base.B_Format(B_GetTxt('SEPTIMAPP','RECEPT','POCETPODEZRELYCH'), cast(array[l_POCET] as text[])),E'\n');
  end if;
  perform admin_eng.ENG_ProgressLog(l_LOGTEXT);
  return;
end; $$;



select ASWDropProcedure('RECEPTCOPYINGRED__CheckCilRecept');
/**
* Procedura pro kontrolu cilove receptury pri kopirovani ingredienci.
*/
create or replace function admin_septim.RECEPTCOPYINGRED__CheckCilRecept(
  in a_RCPTID              IDINT
) returns void
language plpgsql security definer as $$
begin

  -- nesmi jit o recept-skladpol
  if RECEPT_CheckSkladpol(a_RCPTID) = true then
    perform admin_base.ASWError(35354);
  end if;
  -- nesmi se jednat o vyrobni modifikator (nema ingredience)
  if RECEPT_CheckModifikatorVyrobniTyp(a_RCPTID,-1) = true then
    perform admin_base.ASWError(35466);
  end if;
  if RECEPT_CheckAlergenDoUctuTyp(a_RCPTID,-1) = true then
    perform admin_base.ASWError(35392);
  end if;
  return;
end; $$;



select ASWDropProcedure('RECEPTCOPYINGREDGet');
drop type if exists admin_septim.RECEPTCOPYINGREDGet_rs cascade;
create type admin_septim.RECEPTCOPYINGREDGet_rs as (
  "$MODIFIED"              INTEGER
);

create or replace function admin_septim.RECEPTCOPYINGREDGet(
  in a_ID                  IDINT
) returns setof admin_septim.RECEPTCOPYINGREDGet_rs
language plpgsql security definer as $$
begin
  perform admin_params.P_CheckGlobalParamBOOL('SYNCRECEPT','RECEPTIMPORTDB',false,35539);
  if RECEPT_CheckSlozeneMenuTyp(a_ID,-1) = true then
    perform admin_users.U_CheckPerm('SEPTIMAPP',E'RECEPT\\SLOZENEMENUOPERATIONS',0);
  else
    perform admin_users.U_CheckPerm('SEPTIMAPP',E'RECEPT\\RECEPTCOPYINGRED',0);
  end if;
  perform admin_septim.RECEPTCOPYINGRED__CheckCilRecept(a_ID);
  return query select 1 as "$MODIFIED";
end; $$;

select grant_func('RECEPTCOPYINGREDGet', 'SPEXEC');


select ASWDropProcedure('RECEPTCOPYINGREDUpdate');
/** Procedura na kopirovani ingredienci mezi recepturami.
* Pracuje nasledovne:
*   Kopiruje ingredience a vlozene receptury z jedne receptury do druhe
* Postup:
* Test overi existenci zdrojové receptury a otestuje zda není shodná s cílovou
* pokud mam typ = 0, jednoduse se prepise vse co v cilove recepture je (Vymaz a nasledovne zavolani INGRED_RECEPTCopy a RLRCPT_RECEPTCopy)
*           typ = 1, dojde ke slouceni ingredienci. Pokud se v cilove a zdrojove nachazi stejny typ (tim se mysli to ze prislusna ingredience, ma stejne sloupce 'skladova polozka','koeficient odpadu' a 'typ')
*                     , secte se mnozstvi
*
*                       To same plati pro vnorene Receptury (tam je ke srovnani jen ID vkladane receptury - bud soucet nebo vlozeni noveho odkazu).
*
*                    Pokud maji stejne ingredience jine koeficienty odpadu, pres force se dotaze ktery pouzit, popripade zda zrusit kopirovani.
*
*                    Pokud dojde k tomuto dotazu, nasleduje dalsi ktery se zepta, jaky soucet (hrubeho nebo cisteho mnozstvi)
*                    brat jako vychozi pro prepocet do druheho typu (hrube->ciste nebo naopak)
*
*  Nakonec se jeste otestuje zda se provedenou operaci nerozhodila konzistence receptury (pouze v pripade ze nenahrazujeme => t.j. typ 1)
*  a pokud ano, prez force dotaz zda to tak nechat nebo zrusit kopirovani.
*
*  Sloucit mnozstvi lze jen u prislusnych typu ingredienci - t.j. 1-3 lze slucovat s 1-3. 4 lze sloucit pouze se 4. V obou pripadech pouze stejne skladove polozky.
*  Pokud jiz existuje v cilove recepture ingredience typu 4, a vklada se jina stejneho typu (t.j. 4 s jinou skladovou polozkou), vypise se chyba a kopirovani se rusi.
*
*
*  V pripade ze v prubehu kopirovani dojde k chybe nebo stisknuti tlacitka zpet, vrati se vse do puvodniho stavu
*/
create or replace function admin_septim.RECEPTCOPYINGREDUpdate(
  in a_ID                  IDINT,        -- Cilova receptura
  in a_RECEPTURA           NAZEVSTR,     -- Nazev zdrojove receptury
  in a_TYP                 TYPINT,       -- Typ kopirovani 0-prepis, 1-pridani
  in a_FORCE               FORCETXT default null      -- force pouzity pri dotazech v prubehu kopirovani
) returns void
language plpgsql security definer as $$
declare
  l_RCPTID                 IDINT;
  l_RECCIL                 NAZEVSTR; -- Nazev cilove receptury pro force dialog
  l_MASTERPERM             PARAMTXT;
  l_RESTMP                 BOOLBIT;
begin
  perform admin_params.P_CheckGlobalParamBOOL('SYNCRECEPT','RECEPTIMPORTDB',false,35539);
  l_MASTERPERM := E'SEPTIMAPP\\RECEPT\\RECEPTCOPYINGRED';
  select * into l_MASTERPERM,l_RESTMP from admin_septim.RECEPT_CheckMasterPerm(a_ID,null,0,l_MASTERPERM); /*RECTID*/
  -- nazev cilove receptury
  begin
    select NAZEV into strict l_RECCIL from RECEPT where RCPTID = a_ID and SMAZAN = 0;
  exception
    when NO_DATA_FOUND then
  end;
  select * into l_RCPTID from admin_septim.RECEPTCOPYINGRED__Check(a_ID,a_RECEPTURA,a_TYP);
  case
    when a_TYP = 0 then -- Prepis
      case
        when admin_eng.CheckForce(a_FORCE,'RRECEPTCOPYINGREDOVEWRITE') is null then
          perform admin_base.ASWError(35381, cast(array[l_RECCIL,a_RECEPTURA] as text[]));
        when admin_eng.CheckForce(a_FORCE,'RRECEPTCOPYINGREDOVEWRITE') = 0 then
          return;
        when admin_eng.CheckForce(a_FORCE,'RRECEPTCOPYINGREDOVEWRITE') = 1 then
          perform admin_septim.INGRED_RECEPTDeleteAll(a_ID,l_MASTERPERM); -- odstranim stare ingredience
          perform admin_septim.RLRCPT_RECEPTDeleteAll(a_ID,l_MASTERPERM); -- odstranim stare recepturove ingredience
          perform admin_septim.INGRED_RECEPTCopy(l_RCPTID,a_ID,a_FORCE,l_MASTERPERM); -- kopiruju nove
          perform admin_septim.RLRCPT_RECEPTCopy(l_RCPTID,a_ID,a_FORCE,l_MASTERPERM); -- kopiruju ingredience typu odkaz na recepturu
          perform admin_septim.RECEPT_RecalculateStockPrices(a_ID); -- prepocitam cenu, jinde se to nedela, je to zbytecne delat pro kazdou polozku co se vklada
          perform admin_septim.RECEPT_PrepoctiSkladCenuVyrobku(a_ID);
          perform admin_septim.RECEPT_RefreshAlergenyList(a_ID,a_FORCE);
        else
          null;-- ADDED EMPTY ELSE
      end case;
    when a_TYP = 1 then -- Pridani
      case
        when admin_eng.CheckForce(a_FORCE,'RRECEPTCOPYINGREDMERGE') is null then
          perform admin_base.ASWError(35382, cast(array[l_RECCIL,a_RECEPTURA] as text[]));
        when admin_eng.CheckForce(a_FORCE,'RRECEPTCOPYINGREDMERGE') = 0 then
          return;
        when admin_eng.CheckForce(a_FORCE,'RRECEPTCOPYINGREDMERGE') = 1 then
         begin -- zacatek rollback bloku (simulace savepointu)
          perform admin_septim.INGRED_RECEPTCopy(l_RCPTID,a_ID,a_FORCE,l_MASTERPERM); -- prikopiruju ingredience
          perform admin_septim.RLRCPT_RECEPTCopy(l_RCPTID,a_ID,a_FORCE,l_MASTERPERM); -- kopiruju ingredience typu odkaz na recepturu
          perform admin_septim.RECEPT_RecalculateStockPrices(a_ID); -- prepocitam cenu
          perform admin_septim.RECEPT_PrepoctiSkladCenuVyrobku(a_ID);
          perform admin_septim.RECEPT_RefreshAlergenyList(a_ID,a_FORCE);
          if (RECEPT_Consist(a_ID,null,null) <> 0) then -- otestuju zda nevznikla "podezrela" receptura
          -- Přezkoumám force, zda i pres to pokračovat
            case
              when admin_eng.CheckForce(a_FORCE,'RECCONSIST') is null then
                perform admin_base.ASWError(35385, cast(array['RECCONSIST'] as text[]));
              when admin_eng.CheckForce(a_FORCE,'RECCONSIST') = 0 then
                raise exception using ERRCODE='ASWRB'; -- vyvolame vyjimku cimz dojde k rollbacku subtransakce rollback bloku
              else
                null;-- ADDED EMPTY ELSE
            end case;
          end if;
          case
            when admin_eng.CheckForce(a_FORCE,'RECCONSISTPORCE') is null then
              case RECEPT_ConsistPorce(a_ID,null,true) --PRCEID --VSECHNYAKTPORCE
                when 2 then
            -- lisi se slozeni pro jednotlive porce
                  perform admin_base.ASWError(35500, cast(array['RECCONSISTPORCE'] as text[]));
                when 3 then
            -- neobsahuje ingredience pro vsechny aktivni porce
                  perform admin_base.ASWError(35501, cast(array['RECCONSISTPORCE'] as text[]));
                else
                  null;-- ADDED EMPTY ELSE
              end case;
            when admin_eng.CheckForce(a_FORCE,'RECCONSISTPORCE') = 0 then
              raise exception using ERRCODE='ASWRB';  -- vyjimka vyvolavajici rollback
            else
              null;-- ADDED EMPTY ELSE
          end case;
          case
            when admin_eng.CheckForce(a_FORCE,'RECCONSISTVYROBA') is null then
              case RECEPT_ConsistVyroba(a_ID)
                when 2 then
            -- lisi se slozeni pro jednotlive porce
                  perform admin_base.ASWError(35510, cast(array['RECCONSISTVYROBA'] as text[]));
                when 3 then
            -- neobsahuje ingredience pro vsechny aktivni porce
                  perform admin_base.ASWError(35511, cast(array['RECCONSISTVYROBA'] as text[]));
                else
                  null;-- ADDED EMPTY ELSE
              end case;
            when admin_eng.CheckForce(a_FORCE,'RECCONSISTVYROBA') = 0 then
              null;
            -- rollback to savepoint beforeinsert
            else
              null;-- ADDED EMPTY ELSE
          end case;
        exception
          when sqlstate 'ASWRB' then -- chytame jen ASWRB vyjimky, zbytek poustime dal
            null; -- jde nam jen o rollback, obsluha muze zustat prazdna
        end;
      else
          null;-- ADDED EMPTY ELSE
      end case;
    else
      null;-- ADDED EMPTY ELSE
  end case;
end; $$;

select grant_func('RECEPTCOPYINGREDUpdate', 'SPEXEC');



select ASWDropProcedure('RECEPTCOPYINGRED__Check');
create or replace function admin_septim.RECEPTCOPYINGRED__Check(
  in  a_ID                 IDINT,
  in  a_RECEPTURA          NAZEVSTR,     -- Nazev zdrojove receptury
  in  a_TYP                TYPINT,       -- Typ kopirovani 0-prepis, 1-pridani
  out a_RCPTID             IDINT
)
language plpgsql security definer
-- Nazev zdrojove receptury
-- Typ kopirovani 0-prepis, 1-pridani
as $$
begin

  -- kontrola cilove receptury
  perform admin_septim.RECEPTCOPYINGRED__CheckCilRecept(a_ID);
  perform admin_base.B_NULL_STR('RECEPTURA',a_RECEPTURA,35383);
  select B_REFTABLE_EX.a_ID into a_RCPTID from admin_base.B_REFTABLE_EX('SEPTIMAPP','RECEPT','NAZEV','ZKRATKA',a_RECEPTURA,35384,'RECEPTURA');
  -- a pro jistotu jestli nedavaji kopirovat zdroj = cil
  if (a_ID = a_RCPTID) then
    perform admin_base.ASWError(35386);
  end if;
  if RECEPT_CheckSlozeneMenuTyp(a_ID,-1) <> RECEPT_CheckSlozeneMenuTyp(a_RCPTID,-1) then
    -- kontrola ze jsou obe slozene menu nebo ani jedna
    if RECEPT_CheckSlozeneMenuTyp(a_ID,-1) = true then
      perform admin_base.ASWError(35461);
    else
      perform admin_base.ASWError(35462);
    end if;
  end if;
  return;
end; $$;



select ASWDropProcedure('RECEPTSKLADPOLDefault');
drop type if exists admin_septim.RECEPTSKLADPOLDefault_rs cascade;
create type admin_septim.RECEPTSKLADPOLDefault_rs as (
  CISLOL                   INTEGER,
  CISLOH                   INTEGER,
  CENA                     INTEGER,
  VAHA                     INTEGER,
  OBJEM                    INTEGER,
  TRVANLIVOST              INTEGER,
  ZAOKR                    INTEGER,
  OBJBEZCENY               BOOLBIT,
  PORCI                    INTEGER,
  CENAB                    DECIMAL,
  DPHA                     DECIMAL,
  CENAS                    DECIMAL,
  CENAB_DPHB               DECIMAL,
  DPHA_DPHB                DECIMAL,
  DPHB_DPHB                DECIMAL,
  CENAS_DPHB               DECIMAL,
  CENAB1                   DECIMAL,
  DPHA1                    DECIMAL,
  CENAS1                   DECIMAL,
  CENAB2                   DECIMAL,
  DPHA2                    DECIMAL,
  CENAS2                   DECIMAL,
  CENAB1_DPHB              DECIMAL,
  DPHA1_DPHB               DECIMAL,
  DPHB1_DPHB               DECIMAL,
  CENAS1_DPHB              DECIMAL,
  CENAB2_DPHB              DECIMAL,
  DPHA2_DPHB               DECIMAL,
  DPHB2_DPHB               DECIMAL,
  CENAS2_DPHB              DECIMAL,
  MNOZSTVI                 INTEGER,
  TYP                      INTEGER,
  DPH                      NAZEVSTR,
  SALESTOCKPRICE           DECIMAL,
  VCTYP                    INTEGER,
  VCZAOKRC                 INTEGER,
  VCZAOKRD                 INTEGER,
  BONUS                    INTEGER,
  "#VCZAOKRC"              INTEGER,
  "#VCZAOKRD"              INTEGER,
  DOBAPRIPRAVY             TIMEINT,
  DOBAKONZUMACE            TIMEINT,
  "#BONUS"                 INTEGER,
  RECEPTTYP                NAZEVSTR,
  "$FOCUS"                 varchar(5),
  "@DOTACE"                INTEGER,
  "@TABDOPLATKY"           INTEGER,
  "#MINMNOZSTVI"           INTEGER,
  "#DOPLATEKRECEPT"        INTEGER,
  MINMNOZSTVI              MNOZSTVIFLT,
  DOPLATEKRECEPT           CENAFLT,
  SERNRTYP1                INTEGER,
  SERNRTYP2                INTEGER,
  VZDYCENA                 BOOLBIT,
  "@PanelZaklCena"         INTEGER,
  "@PanelZaklCenaDphB"     INTEGER,
  "@PanelDotace"           INTEGER,
  "@PanelDotaceDphB"       INTEGER
);

create or replace function admin_septim.RECEPTSKLADPOLDefault(
  in a_ID                  IDINT
) returns setof admin_septim.RECEPTSKLADPOLDefault_rs
language plpgsql security definer as $$
declare
  -- test opravneni
  l_BONUS                  INTEGER;
  l_RECEPTTYP              NAZEVSTR;
  l_DOBAPRIPRAVY           TIMEINT;
  l_DOBAKONZUMACE          TIMEINT;
  l_POVOLDOPLATKY          BOOLBIT;
  l_DPHB                   TYPINT; -- licence na DPHB
  l_DOTACE                 TYPINT;
  l_DPH                    NAZEVSTR;
begin
  perform admin_septim.RECEPT_CheckPermRECEPTSKLADPOLINS();
  perform admin_params.P_CheckGlobalParamBOOL('SYNCRECEPT','RECEPTIMPORTDB',false,35539);
  l_POVOLDOPLATKY := RECEPT_PovolitDoplatky();
  --- načtení z limitů, zda lze používat bonus
  l_BONUS := admin_base.B_LIMITS_GetLicence('SEPTIMAPP','BONUS',0);
  l_DOBAPRIPRAVY := S_TIMESTRtoTIMEINT(admin_params.P_GetGlobalParam('RECEPTURA','DOBAPRIPRAVY',null,false));
  l_DOBAKONZUMACE := S_TIMESTRtoTIMEINT(admin_params.P_GetGlobalParam('RECEPTURA','DOBAKONZUMACE',null,false));
  l_DPHB := admin_base.B_LIMITS_GetLicence('BASE','DPHB',0);
  l_DOTACE := admin_base.B_LIMITS_GetLicence('SEPTIMAPP','DOTACE',0);

  select admin_base.B_GetDTTText(SOURCEM,'RECEPTTYP','NAZEV',KLIC,NAZEV) into strict l_RECEPTTYP from RECEPTTYP where KLIC = 'STANDARDNI';

  -- Default DPH
  l_DPH := B_DPH_GetNazev(RECEPT_DefaultDPHID());

  return query select 0 as CISLOL,0 as CISLOH,0 as CENA,1 as VAHA,1 as OBJEM,365 as TRVANLIVOST,1 as ZAOKR, cast(false as BOOLBIT) as OBJBEZCENY, 1 as PORCI,
   0.0 as CENAB,0.0 as DPHA,0.0 as CENAS, /*0.0 DPHB,*/
   0.0 as CENAB_DPHB,0.0 as DPHA_DPHB,0.0 as DPHB_DPHB,0.0 as CENAS_DPHB,
   0.0 as CENAB1,0.0 as DPHA1,0.0 as CENAS1, /*0.0 DPHB1,*/
   0.0 as CENAB2,0.0 as DPHA2,0.0 as CENAS2, /*0.0 DPHB2,*/
   0.0 as CENAB1_DPHB,0.0 as DPHA1_DPHB,0.0 as DPHB1_DPHB,0.0 as CENAS1_DPHB,
   0.0 as CENAB2_DPHB,0.0 as DPHA2_DPHB,0.0 as DPHB2_DPHB,0.0 as CENAS2_DPHB,
   1 as MNOZSTVI,3 as TYP,l_DPH as DPH,0.0 as SALESTOCKPRICE,0 as VCTYP,1 as VCZAOKRC,2 as VCZAOKRD,
   0 as BONUS,-1 as "#VCZAOKRC",-1 as "#VCZAOKRD",
   l_DOBAPRIPRAVY as DOBAPRIPRAVY,l_DOBAKONZUMACE as DOBAKONZUMACE,
   (case when l_BONUS > 0 then 1 else 0 end) as "#BONUS",l_RECEPTTYP as RECEPTTYP,CAST('NAZEV' AS varchar(5)) as "$FOCUS",
   (case when l_DOTACE > 0 then 1 else -1 end) as "@DOTACE",
   (case when l_POVOLDOPLATKY > false then 1 else -1 end) as "@TABDOPLATKY",
   0 as "#MINMNOZSTVI",0 as "#DOPLATEKRECEPT",cast(null as MNOZSTVIFLT) as MINMNOZSTVI,cast(null as CENAFLT) as DOPLATEKRECEPT,
   0 as SERNRTYP1,0 as SERNRTYP2,cast(0 as BOOLBIT) as VZDYCENA,
   (case when l_DPHB = 1 then -1 else 1 end) as "@PanelZaklCena",
   (case when l_DPHB = 1 then 1 else -1 end) as "@PanelZaklCenaDphB",
   (case when l_DPHB = 1 then -1 else 1 end) as "@PanelDotace",
   (case when l_DPHB = 1 then 1 else -1 end) as "@PanelDotaceDphB";
  -- TODO TAXGROUP
  -- temporarily canceled, the default value of the tax group will be returned after the transfer of the recipes to the tax groups
end; $$;

select grant_func('RECEPTSKLADPOLDefault', 'SPEXEC');


select ASWDropProcedure('RECEPTSKLADPOLInsert');
/**
* Základní procedura pro zavedení receptury - skladové položky do evidence.
* SKLADPOLRECEPTInsert vraci ID skladpol, tahle vraci ID receptury.
*/
drop type if exists admin_septim.RECEPTSKLADPOLInsert_rs cascade;
create type admin_septim.RECEPTSKLADPOLInsert_rs as (
  ID                       IDINT
);

create or replace function admin_septim.RECEPTSKLADPOLInsert(
  in a_CISLOL              CISLOINT,
  in a_CISLOH              CISLOINT,
  in a_NAZEV               NAZEVSTR,
  in a_POPIS               POPISTXT,
  in a_ZKRATKA             ZKRATKASTR,
  in a_JEDNOTKY            JEDNOTKYSTR,
  in a_TRVANLIVOST         MNOZSTVIFLT,
  in a_CENA                CENAFLT,
  in a_TAXGROUP            NAZEVSTR,
  in a_DPH                 NAZEVSTR,
  in a_BARCODE             BARCODETXT,
  in a_IDCODE              IDCODESTR,
  in a_SKUPSPOL1           NAZEVSTR,
  in a_SKUPSPOL2           NAZEVSTR,
  in a_SKUPSPOL3           NAZEVSTR,
  in a_ZAOKR               MNOZSTVIFLT,
  in a_OBJBEZCENY          BOOLBIT,
  in a_TOLERCENANOVAWAR    KOEFICIENTFLT_NU,
  in a_TOLERCENANOVAPERM   KOEFICIENTFLT_NU,
  in a_TOLERCENAOBJWAR     KOEFICIENTFLT_NU,
  in a_TOLERCENAOBJPERM    KOEFICIENTFLT_NU,
  in a_TOLERCENACENIKWAR   KOEFICIENTFLT_NU,
  in a_TOLERCENACENIKPERM  KOEFICIENTFLT_NU,
  in a_DODAVATELOPT        JMENOSTR_NU,
  in a_DODAVATELVYR        JMENOSTR_NU,
  in a_VAHA                KOEFICIENTFLT_LARGE,
  in a_OBJEM               KOEFICIENTFLT_LARGE,
  in a_KLIC                KLICSTR,
  in a_SERNRTYP1           TYPINT,
  in a_SERNRTYP2           TYPINT,
  in a_FIXCENA             BOOLBIT,
  in a_MNOZSTVI            MNOZSTVIFLT,
  in a_TYP                 TYPINT,
  in a_SKUPREC1            NAZEVSTR,
  in a_SKUPREC2            NAZEVSTR,
  in a_SKUPREC3            NAZEVSTR,
  in a_OBALRECNAZEV        NAZEVSTR,
  in a_PLUCODE             PLUINT,
  in a_PORCI               MNOZSTVIFLT,
  in a_GRAMAZ              GRAMAZTXT,
  in a_SKUPREC4            NAZEVSTR,
  in a_POSTUP              POSTUPTXT,
  in a_DOBAPRIPRAVY        TIMEINT,
  in a_DOBAKONZUMACE       TIMEINT,
  in a_VZDYCENA            BOOLBIT,
  in a_RECEPTTYP           NAZEVSTR,
  in a_UNITSALE            NAMESTR,
  in a_CENAB               CENAFLT,
  in a_DPHA                CENAFLT,
  in a_CENAS               CENAFLT,
  in a_CENAB_DPHB          CENAFLT,
  in a_DPHA_DPHB           CENAFLT,
  in a_DPHB_DPHB           CENAFLT,
  in a_CENAS_DPHB          CENAFLT,
  in a_CENAB1              CENAFLT,
  in a_DPHA1               CENAFLT,
  in a_CENAS1              CENAFLT,
  in a_CENAB2              CENAFLT,
  in a_DPHA2               CENAFLT,
  in a_CENAS2              CENAFLT,
  in a_CENAB1_DPHB         CENAFLT,
  in a_DPHA1_DPHB          CENAFLT,
  in a_DPHB1_DPHB          CENAFLT,
  in a_CENAS1_DPHB         CENAFLT,
  in a_CENAB2_DPHB         CENAFLT,
  in a_DPHA2_DPHB          CENAFLT,
  in a_DPHB2_DPHB          CENAFLT,
  in a_CENAS2_DPHB         CENAFLT,
  in a_VCTYP               TYPINT,
  in a_VCZAOKRC            CISLOINT,
  in a_VCZAOKRD            CISLOINT,
  in a_BONUS               CISLOFLT,
  in a_POUZITDOPL          BOOLBIT,
  in a_DOPLATEKRECEPT      NAZEVSTR,
  in a_MINMNOZSTVI         MNOZSTVIFLT,
  in a_POVPOPISOBJ         BOOLBIT,
  in a_DEFPOPISYOBJ        KOMENTARTXT,
  in a_FORCE               FORCETXT default null
) returns setof admin_septim.RECEPTSKLADPOLInsert_rs
language plpgsql security definer
-- udaje pro skladpol
-- udaj pro ingred
-- udaje pro recept
--in a_DPHB             CENAFLT,
--in a_DPHB1            CENAFLT,
--in a_DPHB2            CENAFLT,
as $$
declare
  l_RCPTID                 IDINT;
begin
  if admin_base.B_LIMITS_GetLicence('BASE','DPHB',0) = 0 then
    a_CENAB_DPHB := a_CENAB;
    a_DPHA_DPHB := a_DPHA;
    a_DPHB_DPHB := null;
    a_CENAS_DPHB := a_CENAS;
    a_CENAB1_DPHB := a_CENAB1;
    a_DPHA1_DPHB := a_DPHA1;
    a_DPHB1_DPHB := null;
    a_CENAS1_DPHB := a_CENAS1;
    a_CENAB2_DPHB := a_CENAB2;
    a_DPHA2_DPHB := a_DPHA2;
    a_DPHB2_DPHB := null;
    a_CENAS2_DPHB := a_CENAS2;
  end if;
  perform admin_params.P_CheckGlobalParamBOOL('SYNCRECEPT','RECEPTIMPORTDB',false,35539);
  select * into l_RCPTID from admin_septim.RECEPTSKLADPOLRCPT_BasicInsert(a_CISLOL,a_CISLOH,a_NAZEV,a_POPIS,a_ZKRATKA,a_JEDNOTKY,a_TRVANLIVOST,a_CENA,a_TAXGROUP,
  a_DPH,a_BARCODE,a_IDCODE,a_SKUPSPOL1,a_SKUPSPOL2,a_SKUPSPOL3,
  a_ZAOKR, a_OBJBEZCENY, a_TOLERCENANOVAWAR, a_TOLERCENANOVAPERM, a_TOLERCENAOBJWAR, a_TOLERCENAOBJPERM,
  a_TOLERCENACENIKWAR, a_TOLERCENACENIKPERM, a_DODAVATELOPT, a_DODAVATELVYR,
  a_VAHA,a_OBJEM,a_KLIC,a_SERNRTYP1,a_SERNRTYP2,a_FIXCENA,a_MNOZSTVI,a_TYP,
  a_SKUPREC1,a_SKUPREC2,a_SKUPREC3,a_OBALRECNAZEV,a_PLUCODE,a_PORCI,a_GRAMAZ,
  a_SKUPREC4,a_POSTUP,a_DOBAPRIPRAVY,a_DOBAKONZUMACE,a_VZDYCENA,a_RECEPTTYP,a_UNITSALE,
  a_CENAB_DPHB,a_DPHA_DPHB,a_DPHB_DPHB,a_CENAS_DPHB,a_CENAB1_DPHB,
  a_DPHA1_DPHB,a_DPHB1_DPHB,a_CENAS1_DPHB,a_CENAB2_DPHB,a_DPHA2_DPHB,
  a_DPHB2_DPHB,a_CENAS2_DPHB,a_VCTYP,a_VCZAOKRC,a_VCZAOKRD,a_BONUS,a_POUZITDOPL,
  a_DOPLATEKRECEPT,a_MINMNOZSTVI,a_POVPOPISOBJ,a_DEFPOPISYOBJ,a_FORCE,
  true);
  return query select l_RCPTID as ID;
end; $$;

select grant_func('RECEPTSKLADPOLInsert', 'SPEXEC');


select ASWDropProcedure('RECEPTSKLADPOLMAKERCPT_Check');
create or replace function admin_septim.RECEPTSKLADPOLMAKERCPT_Check(
  in  a_SKLADPOL           NAZEVSTR,
  out a_SKPLID             REFIDINT
)
language plpgsql security definer as $$
begin
  perform admin_base.B_NULL_STR('NAZEV',a_SKLADPOL,35345);
  select B_REFTABLE_EX.a_ID into a_SKPLID from admin_base.B_REFTABLE_EX('SEPTIMAPP','SKLADPOL','NAZEV','ZKRATKA',a_SKLADPOL,23244,'SKLADPOL');
  -- nesmi jit o slave skladpol
  if (select SKPLIDREF from SKLADPOL where SKPLID = a_SKPLID) is not null then
    perform admin_base.ASWError(35310);
  end if;
  -- nesmi jit o recept-skladpol
  if SKLADPOL_CheckRecept(a_SKPLID) = true then
    perform admin_base.ASWError(35312);
  end if;
  -- nesmi byt skryta skladpol
  if (select HIDE from SKLADPOL where SKPLID = a_SKPLID) = true then
    perform admin_base.ASWError(35314);
  end if;
  return;
end; $$;



select ASWDropProcedure('RECEPTSKLADPOLMAKERCPTDefault');
drop type if exists admin_septim.RECEPTSKLADPOLMAKERCPTDefault_rs cascade;
create type admin_septim.RECEPTSKLADPOLMAKERCPTDefault_rs as (
  PORCI                    INTEGER,
  CENAB                    DECIMAL,
  DPHA                     DECIMAL,
  CENAS                    DECIMAL,
  CENAB_DPHB               DECIMAL,
  DPHA_DPHB                DECIMAL,
  DPHB_DPHB                DECIMAL,
  CENAS_DPHB               DECIMAL,
  CENAB1                   DECIMAL,
  DPHA1                    DECIMAL,
  CENAS1                   DECIMAL,
  CENAB2                   DECIMAL,
  DPHA2                    DECIMAL,
  CENAS2                   DECIMAL,
  CENAB1_DPHB              DECIMAL,
  DPHA1_DPHB               DECIMAL,
  DPHB1_DPHB               DECIMAL,
  CENAS1_DPHB              DECIMAL,
  CENAB2_DPHB              DECIMAL,
  DPHA2_DPHB               DECIMAL,
  DPHB2_DPHB               DECIMAL,
  CENAS2_DPHB              DECIMAL,
  DPH                      NAZEVSTR,
  VCTYP                    INTEGER,
  VCZAOKRC                 INTEGER,
  VCZAOKRD                 INTEGER,
  BONUS                    INTEGER,
  MNOZSTVI                 INTEGER,
  TYP                      INTEGER,
  "#VCZAOKRC"              INTEGER,
  "#VCZAOKRD"              INTEGER,
  "#BONUS"                 INTEGER,
  RECEPTTYP                NAZEVSTR,
  DOBAPRIPRAVY             TIMEINT,
  DOBAKONZUMACE            TIMEINT,
  "@TABDOPLATKY"           INTEGER,
  "#MINMNOZSTVI"           INTEGER,
  "#DOPLATEKRECEPT"        INTEGER,
  MINMNOZSTVI              MNOZSTVIFLT,
  DOPLATEKRECEPT           CENAFLT,
  VZDYCENA                 BOOLBIT,
  CISLOL                   INTEGER,
  CISLOH                   INTEGER,
  "@DOTACE"                INTEGER,
  "@PanelZaklCena"         INTEGER,
  "@PanelZaklCenaDphB"     INTEGER,
  "@PanelDotace"           INTEGER,
  "@PanelDotaceDphB"       INTEGER
);

create or replace function admin_septim.RECEPTSKLADPOLMAKERCPTDefault(
  in a_ID                  IDINT
) returns setof admin_septim.RECEPTSKLADPOLMAKERCPTDefault_rs
language plpgsql security definer as $$
declare
  l_BONUS                  INTEGER;
  l_RECEPTTYP              NAZEVSTR;
  l_DOBAPRIPRAVY           TIMEINT;
  l_DOBAKONZUMACE          TIMEINT;
  l_POVOLDOPLATKY          BOOLBIT;
  l_DPHB                   TYPINT; -- licence na DPHB
  l_DOTACE                 TYPINT;
  l_DPH                    NAZEVSTR;
begin
  perform admin_septim.RECEPT_CheckPermRECEPTSKLADPOLMAKE();
  perform admin_params.P_CheckGlobalParamBOOL('SYNCRECEPT','RECEPTIMPORTDB',false,35539);
  l_DOBAPRIPRAVY := S_TIMESTRtoTIMEINT(admin_params.P_GetGlobalParam('RECEPTURA','DOBAPRIPRAVY',null,false));
  l_DOBAKONZUMACE := S_TIMESTRtoTIMEINT(admin_params.P_GetGlobalParam('RECEPTURA','DOBAKONZUMACE',null,false));
  l_POVOLDOPLATKY := RECEPT_PovolitDoplatky();

  --- načtení z limitů, zda lze používat bonus
  l_BONUS := admin_base.B_LIMITS_GetLicence('SEPTIMAPP','BONUS',0);
  l_DPHB := admin_base.B_LIMITS_GetLicence('BASE','DPHB',0);
  l_DOTACE := admin_base.B_LIMITS_GetLicence('SEPTIMAPP','DOTACE',0);
  begin
    select admin_base.B_GetDTTText(SOURCEM,'RECEPTTYP','NAZEV',KLIC,NAZEV) into strict l_RECEPTTYP from RECEPTTYP where KLIC = 'STANDARDNI';
  exception
    when NO_DATA_FOUND then
  end;

  -- Default DPH
  l_DPH := B_DPH_GetNazev(RECEPT_DefaultDPHID());

  return query select 1 as PORCI,
    0.0 as CENAB,0.0 as DPHA,0.0 as CENAS,
    0.0 as CENAB_DPHB,0.0 as DPHA_DPHB,0.0 as DPHB_DPHB,0.0 as CENAS_DPHB,
    0.0 as CENAB1,0.0 as DPHA1,0.0 as CENAS1,0.0 as CENAB2,0.0 as DPHA2,0.0 as CENAS2,
    0.0 as CENAB1_DPHB,0.0 as DPHA1_DPHB,0.0 as DPHB1_DPHB,0.0 as CENAS1_DPHB,
    0.0 as CENAB2_DPHB,0.0 as DPHA2_DPHB,0.0 as DPHB2_DPHB,0.0 as CENAS2_DPHB,
    l_DPH as DPH,0 as VCTYP,1 as VCZAOKRC,2 as VCZAOKRD,0 as BONUS,1 as MNOZSTVI,3 as TYP,
    -1 as "#VCZAOKRC",-1 as "#VCZAOKRD",(case when l_BONUS > 0 then 1 else 0 end) as "#BONUS",l_RECEPTTYP as RECEPTTYP,
    l_DOBAPRIPRAVY as DOBAPRIPRAVY,l_DOBAKONZUMACE as DOBAKONZUMACE,
    (case when l_POVOLDOPLATKY > false then 1 else -1 end) as "@TABDOPLATKY",
    0 as "#MINMNOZSTVI",0 as "#DOPLATEKRECEPT",cast(null as MNOZSTVIFLT) as MINMNOZSTVI,cast(null as CENAFLT) as DOPLATEKRECEPT,
    cast(0 as BOOLBIT) as VZDYCENA,0 as CISLOL,0 as CISLOH,
    (case when l_DOTACE > 0 then 1 else -1 end) as "@DOTACE",
    (case when l_DPHB = 1 then -1 else 1 end) as "@PanelZaklCena",
    (case when l_DPHB = 1 then 1 else -1 end) as "@PanelZaklCenaDphB",
    (case when l_DPHB = 1 then -1 else 1 end) as "@PanelDotace",
    (case when l_DPHB = 1 then 1 else -1 end) as "@PanelDotaceDphB";
end; $$;

select grant_func('RECEPTSKLADPOLMAKERCPTDefault', 'SPEXEC');


select ASWDropProcedure('RECEPTSKLADPOLMAKERCPTInsert');
drop type if exists admin_septim.RECEPTSKLADPOLMAKERCPTInsert_rs cascade;
create type admin_septim.RECEPTSKLADPOLMAKERCPTInsert_rs as (
  ID                       REFIDINT
);

create or replace function admin_septim.RECEPTSKLADPOLMAKERCPTInsert(
  in a_SKLADPOL            NAZEVSTR,
  in a_NAZEV               NAZEVSTR,
  in a_POPIS               POPISTXT,
  in a_ZKRATKA             ZKRATKASTR,
  in a_CISLOL              CISLOINT,
  in a_CISLOH              CISLOINT,
  in a_KLIC                KLICSTR,
  in a_BARCODE             BARCODETXT,
  in a_IDCODE              IDCODESTR,
  in a_SKUPREC1            NAZEVSTR,
  in a_SKUPREC2            NAZEVSTR,
  in a_SKUPREC3            NAZEVSTR,
  in a_OBALRECNAZEV        NAZEVSTR,
  in a_PLUCODE             PLUINT,
  in a_PORCI               MNOZSTVIFLT,
  in a_GRAMAZ              GRAMAZTXT,
  in a_SKUPREC4            NAZEVSTR,
  in a_POSTUP              POSTUPTXT,
  in a_DOBAPRIPRAVY        TIMEINT,
  in a_DOBAKONZUMACE       TIMEINT,
  in a_VZDYCENA            BOOLBIT,
  in a_RECEPTTYP           NAZEVSTR,
  in a_UNITSALE            NAMESTR,
  in a_DPH                 NAZEVSTR,
  in a_CENAS               CENAFLT,
  in a_CENAB               CENAFLT,
  in a_DPHA                CENAFLT,
  in a_CENAB_DPHB          CENAFLT,
  in a_DPHA_DPHB           CENAFLT,
  in a_DPHB_DPHB           CENAFLT,
  in a_CENAS_DPHB          CENAFLT,
  in a_CENAB1              CENAFLT,
  in a_DPHA1               CENAFLT,
  in a_CENAS1              CENAFLT,
  in a_CENAB2              CENAFLT,
  in a_DPHA2               CENAFLT,
  in a_CENAS2              CENAFLT,
  in a_CENAB1_DPHB         CENAFLT,
  in a_DPHA1_DPHB          CENAFLT,
  in a_DPHB1_DPHB          CENAFLT,
  in a_CENAS1_DPHB         CENAFLT,
  in a_CENAB2_DPHB         CENAFLT,
  in a_DPHA2_DPHB          CENAFLT,
  in a_DPHB2_DPHB          CENAFLT,
  in a_CENAS2_DPHB         CENAFLT,
  in a_VCTYP               TYPINT,
  in a_VCZAOKRC            CISLOINT,
  in a_VCZAOKRD            CISLOINT,
  in a_BONUS               CISLOFLT,
  in a_POUZITDOPL          BOOLBIT,
  in a_DOPLATEKRECEPT      NAZEVSTR,
  in a_MINMNOZSTVI         MNOZSTVIFLT,
  in a_POVPOPISOBJ         BOOLBIT,
  in a_DEFPOPISYOBJ        KOMENTARTXT,
  in a_MNOZSTVI            MNOZSTVIFLT,
  in a_TYP                 TYPINT,
  in a_FORCE               FORCETXT default null
) returns setof admin_septim.RECEPTSKLADPOLMAKERCPTInsert_rs
language plpgsql security definer
--in a_DPHB             CENAFLT,
--in a_DPHB1            CENAFLT,
--in a_DPHB2            CENAFLT,
-- udaj pro ingred
as $$
declare
  l_SKPLID                 REFIDINT;
  l_RCPTID                 REFIDINT;
begin
  select * into l_SKPLID from admin_septim.RECEPTSKLADPOLMAKERCPT_Check(a_SKLADPOL);
  if admin_base.B_LIMITS_GetLicence('BASE','DPHB',0) = 0 then
    a_CENAB_DPHB := a_CENAB;
    a_DPHA_DPHB := a_DPHA;
    a_DPHB_DPHB := null;
    a_CENAS_DPHB := a_CENAS;
    a_CENAB1_DPHB := a_CENAB1;
    a_DPHA1_DPHB := a_DPHA1;
    a_DPHB1_DPHB := null;
    a_CENAS1_DPHB := a_CENAS1;
    a_CENAB2_DPHB := a_CENAB2;
    a_DPHA2_DPHB := a_DPHA2;
    a_DPHB2_DPHB := null;
    a_CENAS2_DPHB := a_CENAS2;
  end if;
  perform admin_params.P_CheckGlobalParamBOOL('SYNCRECEPT','RECEPTIMPORTDB',false,35539);
  select * into l_RCPTID from RECEPTSKLADPOLMAKE_BasicInsert(l_SKPLID,a_NAZEV,a_POPIS,a_ZKRATKA,a_CISLOL,a_CISLOH,a_KLIC,a_IDCODE,a_BARCODE,
  a_SKUPREC1,a_SKUPREC2,a_SKUPREC3,a_OBALRECNAZEV,a_PLUCODE,a_PORCI,
  a_GRAMAZ,a_SKUPREC4,a_POSTUP,a_DOBAPRIPRAVY,a_DOBAKONZUMACE,a_VZDYCENA,
  a_RECEPTTYP,a_UNITSALE,a_DPH,a_CENAS_DPHB,a_CENAB_DPHB,a_DPHA_DPHB,a_DPHB_DPHB,
  a_CENAB1_DPHB,a_DPHA1_DPHB,a_DPHB1_DPHB,a_CENAS1_DPHB,a_CENAB2_DPHB,
  a_DPHA2_DPHB,a_DPHB2_DPHB,a_CENAS2_DPHB,a_VCTYP,a_VCZAOKRC,a_VCZAOKRD,
  a_BONUS,a_POUZITDOPL,a_DOPLATEKRECEPT,a_MINMNOZSTVI,a_POVPOPISOBJ,a_DEFPOPISYOBJ,
  a_MNOZSTVI,a_TYP,a_FORCE);
  return query select l_RCPTID as ID;
end; $$;

select grant_func('RECEPTSKLADPOLMAKERCPTInsert', 'SPEXEC');


select ASWDropFunction('RECEPT_CheckSkladpol');
/*
* Funkce zjisti, jestli byla receptura vytvorena primo ze skladpol.
*/
create or replace function admin_septim.RECEPT_CheckSkladpol(
  in a_RCPTID              IDINT
) returns BOOLBIT
language plpgsql security definer as $$
declare
  l_SKPLREC                BOOLBIT;
begin
  begin
    select SKPLREC into strict l_SKPLREC from RECEPT where RCPTID = a_RCPTID;
  exception
    when NO_DATA_FOUND then
  end;
  return coalesce(l_SKPLREC,false);
end; $$;;



select ASWDropFunction('RECEPT_GetSKPLID');
/*
* Funkce u receptury-skladove polozky vrati odpovidajici skplid
*/
create or replace function admin_septim.RECEPT_GetSKPLID(
  in a_RCPTID              IDINT
) returns REFIDINT
language plpgsql security definer as $$
declare
  l_SKPLID                 REFIDINT;
begin
  begin
    select SKPLID into strict l_SKPLID from RECEPT as R join INGRED as I on R.RCPTID = I.RCPTID where
   (R.RCPTID = a_RCPTID) and (R.SKPLREC = true) and (I.SMAZAN = 0);
 exception
    when NO_DATA_FOUND then
  end;
  return l_SKPLID;
end; $$;;



select ASWDropProcedure('RECEPT_GetSKPLIDProVyrNorm');
/*
* Procedura u receptury vrati SKPLID, kterou vytvari normovanim.
* Neresi se porce nebo vyrobe pres subrecepturu.
* Pouziva se pouze v procedurach Crosscafe.
*/
create or replace function admin_septim.RECEPT_GetSKPLIDProVyrNorm(
  in  a_RCPTID             IDINT,
  out a_SKPLID             REFIDINT,
  out a_MNOZSTVI           MNOZSTVIFLT
)
language plpgsql security definer as $$
begin
  begin
    begin
      select I.SKPLID,I.MNOZSTVI/R.PORCI into strict a_SKPLID,a_MNOZSTVI from RECEPT as R join
      INGRED as I on R.RCPTID = I.RCPTID where
      R.RCPTID = a_RCPTID and I.SMAZAN = 0 and INGRED_ProVyrobuNormovanim(I.TYP) = true;
    exception
      when NO_DATA_FOUND then
    end;
  exception
    when too_many_rows then
      perform admin_base.ASWError(35411, cast(array[admin_septim.RECEPT_GetNazev(a_RCPTID)] as text[]));
  end;
  return;
end; $$;



select ASWDropProcedure('RECEPT_UpdateFields');
create or replace function admin_septim.RECEPT_UpdateFields(
  in a_ID                  IDINT,
  in a_NAZEV               NAZEVSTR,
  in a_POPIS               POPISTXT,
  in a_ZKRATKA             ZKRATKASTR_NU,
  in a_CISLOL              CISLOINT_NU,
  in a_CISLOH              CISLOINT_NU,
  in a_KLIC                KLICSTR_NU,
  in a_IDCODE              IDCODESTR,
  in a_BARCODE             BARCODETXT,
  in a_DURABILITY          NUMBERINT
) returns void
language plpgsql security definer as $$
begin

  -- Zatím netřeba, volá se z místa, kde to je ošetřeno. Poud by se to změnilo, je třeba odkomentovat, nebo zajistit jinak
  --  call P_CheckGlobalParamBOOL('SYNCRECEPT','RECEPTIMPORTDB',0,35539);
  perform admin_base.B_UNQ_STR_EX('SEPTIMAPP','RECEPT','NAZEV','ZKRATKA','',a_NAZEV,35303,35304,35330,35331,
  a_ID);
  perform admin_base.B_UNQ_STR_EX('SEPTIMAPP','RECEPT','ZKRATKA','NAZEV','',a_ZKRATKA,35356,35357,35332,35333,
  a_ID);
  perform admin_base.B_UNQ_STR('SEPTIMAPP','RECEPT','KLIC','',a_KLIC,35315,35315,a_ID);
  perform admin_base.B_UNQ_STR('SEPTIMAPP','RECEPT','IDCODE','',a_IDCODE,35326,35326,a_ID);
  -- update values
  update RECEPT set
    NAZEV = a_NAZEV, POPIS = a_POPIS, ZKRATKA = a_ZKRATKA, CISLOL = a_CISLOL,
    CISLOH = RECEPT_GetCisloHByParams(a_ID,a_CISLOH), KLIC = a_KLIC, IDCODE = a_IDCODE,
    DURABILITY = a_DURABILITY
  where
    RCPTID = a_ID;

  perform admin_septim.RCPTBARCODE_RECEPTUpdate(a_ID,a_BARCODE);

  -- half portion recipe must have the same durability as main recipe
  if exists (select 1 from RECEPT where PPMASTERRCPTID = a_ID and SMAZAN = 0) then
    perform RECEPT_UpdateHalfPortionFields(a_ID, a_DURABILITY);
  end if;
  return;
end; $$;


select ASWDropProcedure('RECEPT_UpdateHalfPortionFields');
create or replace function admin_septim.RECEPT_UpdateHalfPortionFields(
  in a_PPMASTERRCPTID      REFIDINT,
  in a_DURABILITY          NUMBERINT
) returns void
language plpgsql security definer as $$
begin
  update RECEPT set
    DURABILITY = a_DURABILITY
  where
    PPMASTERRCPTID = a_PPMASTERRCPTID
    and SMAZAN = 0;
  return;
end; $$;



select ASWDropFunction('RECEPT_H_GetSkladpol');
/* handler pro ziskani udaju skladpol spolecnych s recepturou-skladpol
* pouziva se v edit dlg pro vytvoreni receptury-skladpol vyvolaneho z view receptur
*/
drop type if exists admin_septim.RECEPT_H_GetSkladpol_rs cascade;
create type admin_septim.RECEPT_H_GetSkladpol_rs as (
  NAZEV                    NAZEVSTR,
  POPIS                    POPISTXT,
  ZKRATKA                  ZKRATKASTR_NU,
  CISLOL                   CISLOINT_0, CISLOH CISLOINT_0, KLIC KLICSTR_NU,
  IDCODE                   IDCODESTR,
  SCENA                    MNOZSTVIFLT,
  BARCODE                  BARCODETXT,
  JEDNOTKY                 JEDNOTKYSTR_R
);

create or replace function admin_septim.RECEPT_H_GetSkladpol(
  in a_SKLADPOL            NAZEVSTR,
  in a_MNOZSTVI            MNOZSTVIFLT,
  in a_ID                  IDINT,
  in a_MASTERID            IDINT,
  in a_COMMAND             E_HNDLParam,
  in a_FOCUSED             E_HNDLParam,
  in a_PARAMS              E_HNDLParam
) returns setof admin_septim.RECEPT_H_GetSkladpol_rs
language plpgsql security definer as $$
declare
  l_BARCODE                BARCODETXT;
  l_SKPLID                 REFIDINT;
begin
  select B_REFTABLE_EX.a_ID into l_SKPLID from admin_base.B_REFTABLE_EX('SEPTIMAPP','SKLADPOL','NAZEV','ZKRATKA',a_SKLADPOL,23244,'SKLADPOL');
  -- nesmi jit o slave skladpol
  if (select SKPLIDREF from SKLADPOL where SKPLID = l_SKPLID) is not null then
    perform admin_base.ASWError(35310);
  end if;
  l_BARCODE := SKPLBARCODEGetTXT(l_SKPLID);
  return query select S.NAZEV,S.POPIS,S.ZKRATKA,S.CISLOL,S.CISLOH,S.KLIC,S.IDCODE,cast(S.CENA*coalesce(a_MNOZSTVI,0) as MNOZSTVIFLT) as SCENA,
   l_BARCODE as BARCODE,S.JEDNOTKY from
  SKLADPOL as S where SKPLID = l_SKPLID;
end; $$;

select grant_func('RECEPT_H_GetSkladpol', 'SPEXEC');




select ASWDropProcedure('RECEPT_GetFields');
/**
* Procedura vrací hodnoty polozek spolecnych se skladpol
*/
create or replace function admin_septim.RECEPT_GetFields(
  in  a_RCPTID             IDINT,
  out a_NAZEV              NAZEVSTR,
  out a_POPIS              POPISTXT,
  out a_ZKRATKA            NAZEVSTR,
  out a_CISLOL             CISLOINT_R,
  out a_CISLOH             CISLOINT_R,
  out a_KLIC               KLICSTR,
  out a_IDCODE             IDCODESTR,
  out a_BARCODE            BARCODETXT,
  out a_DURABILITY         NUMBERINT
)
language plpgsql security definer as $$
begin
  select
    NAZEV, POPIS, ZKRATKA, CISLOL, CISLOH, KLIC, IDCODE, DURABILITY
  into
    a_NAZEV, a_POPIS, a_ZKRATKA, a_CISLOL, a_CISLOH, a_KLIC, a_IDCODE, a_DURABILITY
  from
    RECEPT
  where
    RCPTID = a_RCPTID;

  select RCPTBARCODEGetTXT(a_RCPTID) into a_BARCODE;
  return;
end; $$;



select ASWDropProcedure('RECEPT_CheckDiff');
create or replace function admin_septim.RECEPT_CheckDiff(
  in a_SKPLID              REFIDINT,
  in a_NAZEV               NAZEVSTR,
  in a_POPIS               POPISTXT,
  in a_ZKRATKA             NAZEVSTR,
  in a_CISLOL              CISLOINT_R,
  in a_CISLOH              CISLOINT_R,
  in a_KLIC                KLICSTR,
  in a_IDCODE              IDCODESTR,
  in a_BARCODE             BARCODETXT,
  in a_DURABILITY          NUMBERINT,
  in a_FORCE               FORCETXT,
  in a_NAZEVSK             NAZEVSTR,
  in a_POPISSK             POPISTXT,
  in a_ZKRATKASK           ZKRATKASTR,
  in a_CISLOLSK            CISLOINT,
  in a_CISLOHSK            CISLOINT,
  in a_KLICSK              KLICSTR,
  in a_IDCODESK            IDCODESTR,
  in a_BARCODESK           BARCODETXT,
  in a_TRVANLIVOSTSK       MNOZSTVIFLT
) returns void
language plpgsql security definer
-- udaje ze skladpol pri vytvareni receptury ze skladpol
as $$
begin
  if (coalesce(a_NAZEV,'') <> coalesce(a_NAZEVSK,'')) or (coalesce(a_ZKRATKA,'') <> coalesce(a_ZKRATKASK,'')) or
   (coalesce(a_POPIS,'') <> coalesce(a_POPISSK,'')) or (coalesce(a_CISLOL,0) <> a_CISLOLSK) or
   (coalesce(a_CISLOH,0) <> coalesce(a_CISLOHSK,0)) or (coalesce(a_KLIC,'') <> coalesce(a_KLICSK,'')) or
   (coalesce(a_IDCODE,'') <> coalesce(a_IDCODESK,'')) or
   (coalesce(a_DURABILITY,0) <> coalesce(a_TRVANLIVOSTSK,0)) or
   ((coalesce(a_BARCODE,'') <> coalesce(a_BARCODESK,'')) and (SKPLBARCODE_Test(a_SKPLID,a_BARCODE) >= 0)) then
    perform admin_base.ASWError(35337);
  end if;
  return;
end; $$;



select ASWDropProcedure('RECEPT_SKPLUNHIDE');
/* Procedura pro odkryti receptury na zaklade dotazu pri okryvani skladpol.
*  Vola se z SKLADPOL__ZVIDITELNENIPOLOZKY pro receptury-skladpol.
*/
create or replace function admin_septim.RECEPT_SKPLUNHIDE(
  in a_ID                  IDINT
) returns void
language plpgsql security definer as $$
begin
  perform admin_users.U_CheckPerm('SEPTIMAPP',E'RECEPT\\RECEPTDEL',0);

  perform admin_users.U_OPRAVA_P_RowUpdate('SEPTIMAPP','RECEPT',a_ID,'','');
  update RECEPT set HIDE = false where(RCPTID = a_ID);
  return;
end; $$;



select ASWDropProcedure('RECEPTSKLADPOL_CheckRS');
/* Procedura pro test konzistence receptury - skladpol.
*  Pouziva se pri vytvoreni receptury-skladpol z existujicich zaznamu.
*  Vola se v RECEPTSKLADPOLTie.
*/
create or replace function admin_septim.RECEPTSKLADPOL_CheckRS(
  in a_RCPTID              REFIDINT,
  in a_FORCE               FORCETXT
) returns void
language plpgsql security definer as $$
declare
  -- musi byt prave 1 ingred
  l_SKPLID                 REFIDINT;
  l_INGRID                 REFIDINT;
  l_PRCEID                 REFIDINT_NU;
begin
  if (select count(*) from INGRED as I where(I.RCPTID = a_RCPTID) and (I.SMAZAN = 0)) <> 1 then
    perform admin_base.ASWError(35305);
    return;
  end if;
  begin
    select SKPLID,INGRID,PRCEID into strict l_SKPLID,l_INGRID,l_PRCEID from INGRED as I where(I.RCPTID = a_RCPTID) and (I.SMAZAN = 0);
  exception
    when NO_DATA_FOUND then
  end;
  -- nesmi mit prirazenou porci
  if l_PRCEID is not null then
    perform admin_base.ASWError(35488);
  end if;
  -- nesmi jit o slave skladpol
  if SKLADPOL_CheckSlave(l_SKPLID) = true then
    perform admin_base.ASWError(35310);
  end if;
  -- ingred musi mit koefodp=1
  perform admin_septim.INGRED_CheckKoefOdp(l_INGRID,a_FORCE);
  -- nesmi byt v jine recepture-skladove polozce
  if exists(select 1 from INGRED as I join RECEPT as R on I.RCPTID = R.RCPTID where R.SMAZAN = 0 and I.SMAZAN = 0 and R.SKPLREC = true and I.SKPLID = l_SKPLID) then
    perform admin_base.ASWError(35439, cast(array[admin_septim.SKLADPOL_GetNazev(l_SKPLID)] as text[]));
  end if;
  if RECEPT_CheckAlergenDoUctuTyp(a_RCPTID,-1) = true then
    perform admin_base.ASWError(35392);
  end if;
end; $$;



select ASWDropProcedure('RECEPTSKLADPOLTie');
/* Procedura pro vytvoreni receptury - skladpol z uz existujici vazby.
*  Pokud je receptura uz skladpol, nabidne se rozvazani vazby.
*/
create or replace function admin_septim.RECEPTSKLADPOLTie(
  in a_PARAMS              PARAMTXT,
  in a_IDCOUNT             CISLOINT,
  in a_IDList              PARAMTXT,
  in a_FORCE               FORCETXT default null
) returns void
language plpgsql security definer
as $$
declare
  l_SKPLID                 REFIDINT;
  l_NAZEV                  NAZEVSTR;
  l_POPIS                  POPISTXT;
  l_ZKRATKA                ZKRATKASTR_NU;
  l_CISLOL                 CISLOINT;
  l_CISLOH                 CISLOINT;
  l_KLIC                   KLICSTR;
  l_IDCODE                 IDCODESTR;
  l_BARCODE                BARCODETXT;
  l_DURABILITY             NUMBERINT;
  l_NAZEVSK                NAZEVSTR;
  l_POPISSK                POPISTXT;
  l_ZKRATKASK              ZKRATKASTR_NU;
  l_CISLOLSK               CISLOINT;
  l_CISLOHSK               CISLOINT;
  l_KLICSK                 KLICSTR;
  l_IDCODESK               IDCODESTR;
  l_BARCODESK              BARCODETXT;
  l_TRVANLIVOSTSK          MNOZSTVIFLT;
  l_RCPTID                 REFIDINT;
begin
  perform admin_params.P_CheckGlobalParamBOOL('SYNCRECEPT','RECEPTIMPORTDB',false,35539);
  if coalesce(a_IDList,'') = '' then
    return;
  end if;
  if a_IDCOUNT <> 1 then
    perform admin_base.ASWError(35316);
  end if;
  l_RCPTID := cast(a_IDList as REFIDINT);
  -- test opravneni
  perform admin_users.U_CheckPerm('SEPTIMAPP',E'RECEPT\\RECEPTSKLADPOLJOIN',0);

  if RECEPT_CheckSkladpol(l_RCPTID) = true then
    case
      when admin_eng.CheckForce(a_FORCE,'RSUNTIE') is null then
        perform admin_base.ASWError(35301);
      when admin_eng.CheckForce(a_FORCE,'RSUNTIE') = 0 then
        return;
      when admin_eng.CheckForce(a_FORCE,'RSUNTIE') = 1 then
        -- zruseni vazby, receptura prestava byt skladpol
        update RECEPT set SKPLREC = false where RCPTID = l_RCPTID;
      else
        null;-- ADDED EMPTY ELSE
    end case;
  else
    case
      when admin_eng.CheckForce(a_FORCE,'RSTIE') is null then
        perform admin_base.ASWError(35308);
      when admin_eng.CheckForce(a_FORCE,'RSTIE') = 0 then
        return;
      when admin_eng.CheckForce(a_FORCE,'RSTIE') = 1 then
        perform admin_septim.RECEPTSKLADPOL_CheckRS(l_RCPTID,a_FORCE);
        begin
          select SKPLID into strict l_SKPLID from INGRED as I where(I.RCPTID = l_RCPTID) and (I.SMAZAN = 0);
        exception
          when NO_DATA_FOUND then
        end;
        select * into l_NAZEV,l_POPIS,l_ZKRATKA,l_CISLOL,l_CISLOH,l_KLIC,l_IDCODE,l_BARCODE,l_DURABILITY from admin_septim.RECEPT_GetFields(l_RCPTID);
        case
          when admin_eng.CheckForce(a_FORCE,'RSCHANGE') is null then
            select *
            into
              l_NAZEVSK, l_POPISSK, l_ZKRATKASK, l_CISLOLSK, l_CISLOHSK, l_KLICSK, l_IDCODESK, l_BARCODESK, l_TRVANLIVOSTSK
            from
              admin_septim.SKLADPOL_GetFields(l_SKPLID);

            perform admin_septim.RECEPT_CheckDiff(l_SKPLID,l_NAZEV,l_POPIS,l_ZKRATKA,l_CISLOL,l_CISLOH,l_KLIC,l_IDCODE,l_BARCODE,l_DURABILITY,
            a_FORCE,l_NAZEVSK,l_POPISSK,l_ZKRATKASK,l_CISLOLSK,l_CISLOHSK,l_KLICSK,l_IDCODESK,l_BARCODESK,l_TRVANLIVOSTSK);
          when admin_eng.CheckForce(a_FORCE,'RSCHANGE') = 1 then
            perform admin_septim.SKLADPOL_UpdateFields(l_SKPLID,l_NAZEV,l_POPIS,l_ZKRATKA,l_CISLOL,l_CISLOH,l_KLIC,l_IDCODE,l_BARCODE,cast(l_DURABILITY as MNOZSTVIFLT));
          else
            null;-- ADDED EMPTY ELSE
        end case;
        -- nastaveni vazby, receptura zacina byt skladpol
        update RECEPT set SKPLREC = true where RCPTID = l_RCPTID;
      else
        null;-- ADDED EMPTY ELSE
    end case;
  end if;
  perform admin_septim.RECEPT_RecalculateStockPrices(l_RCPTID);
end; $$;

select grant_func('RECEPTSKLADPOLTie', 'SPEXEC');



select ASWDropProcedure('RECEPTSKLADPOLMAKE_BasicInsert');
/*
* Procedura pro vytvoreni receptury ze skladove polozky
*/
create or replace function admin_septim.RECEPTSKLADPOLMAKE_BasicInsert(
  in  a_SKPLID             IDINT,
  in  a_NAZEV              NAZEVSTR,
  in  a_POPIS              POPISTXT,
  in  a_ZKRATKA            NAZEVSTR,
  in  a_CISLOL             CISLOINT_R,
  in  a_CISLOH             CISLOINT_R,
  in  a_KLIC               KLICSTR,
  in  a_IDCODE             IDCODESTR,
  in  a_BARCODE            BARCODETXT,
  in  a_SKUPREC1           NAZEVSTR,
  in  a_SKUPREC2           NAZEVSTR,
  in  a_SKUPREC3           NAZEVSTR,
  in  a_OBALRECNAZEV       NAZEVSTR,
  in  a_PLUCODE            PLUINT,
  in  a_PORCI              MNOZSTVIFLT,
  in  a_GRAMAZ             GRAMAZTXT,
  in  a_SKUPREC4           NAZEVSTR,
  in  a_POSTUP             POSTUPTXT,
  in  a_DOBAPRIPRAVY       TIMEINT,
  in  a_DOBAKONZUMACE      TIMEINT,
  in  a_VZDYCENA           BOOLBIT,
  in  a_RECEPTTYP          NAZEVSTR,
  in  a_UNITSALE           NAMESTR,
  in  a_DPH                NAZEVSTR,
  in  a_CENAS              CENAFLT,
  in  a_CENAB              CENAFLT,
  in  a_DPHA               CENAFLT,
  in  a_DPHB               CENAFLT,
  in  a_CENAB1             CENAFLT,
  in  a_DPHA1              CENAFLT,
  in  a_DPHB1              CENAFLT,
  in  a_CENAS1             CENAFLT,
  in  a_CENAB2             CENAFLT,
  in  a_DPHA2              CENAFLT,
  in  a_DPHB2              CENAFLT,
  in  a_CENAS2             CENAFLT,
  in  a_VCTYP              TYPINT,
  in  a_VCZAOKRC           CISLOINT,
  in  a_VCZAOKRD           CISLOINT,
  in  a_BONUS              CISLOFLT,
  in  a_POUZITDOPL         BOOLBIT,
  in  a_DOPLATEKRECEPT     NAZEVSTR,
  in  a_RECMINMNOZSTVI     MNOZSTVIFLT,
  in  a_POVPOPISOBJ        BOOLBIT,
  in  a_DEFPOPISYOBJ       KOMENTARTXT,
  in  a_MNOZSTVI           MNOZSTVIFLT,
  in  a_TYP                TYPINT,
  in  a_FORCE              FORCETXT,
  out a_RCPTID             REFIDINT_NU
)
language plpgsql security definer
as $$
declare
  l_INGRID                 IDINT;
  l_SKR1ID                 REFIDINT;
  l_SKR2ID                 REFIDINT;
  l_SKR3ID                 REFIDINT;
  l_SKR4ID                 REFIDINT;
  l_DPHID                  REFIDINT;
  l_KOEFA                  DPHKOEFFLT;
  l_KOEFB                  DPHKOEFFLT;
  l_ZADAC                  BOOLBIT;
  l_RECTID                 REFIDINT;
  l_CISLOL                 CISLOINT;
  l_CISLOH                 CISLOINT;
  l_NAZEV                  NAZEVSTR;
  l_POPIS                  POPISTXT;
  l_ZKRATKA                ZKRATKASTR;
  l_KLIC                   KLICSTR;
  l_BARCODE                BARCODETXT;
  l_TRVANLIVOST            MNOZSTVIFLT;
  l_IDCODE                 IDCODESTR;
  l_OBALRCPTID             REFIDINT;
  l_PPMASTERRCPTID         REFIDINT;
  l_DOPLATEKRCPTID         REFIDINT;
  l_MASTERPERM             PARAMTXT;
  l_DRJDID                 REFIDINT;
  l_UNITIDSALE             REFIDINT;
  l_TMP1                   REFIDINT_NU;
begin
  l_MASTERPERM := 'SEPTIMAPP\RECEPT\RECEPTSKLADPOLMAKE';

  perform admin_users.U_CheckPerm('SEPTIMAPP', l_MASTERPERM, 0);
  -- check input data
  select
    R.a_CENAB, R.a_DPHA, R.a_DPHB, R.a_CENAS, R.a_CENAB1, R.a_DPHA1, R.a_DPHB1, R.a_CENAS1, R.a_CENAB2, R.a_DPHA2,
    R.a_DPHB2, R.a_CENAS2, R.a_SKR1ID, R.a_SKR2ID, R.a_SKR3ID, R.a_SKR4ID, R.a_DPHID, R.a_RECTID, R.a_OBALRCPTID,
    R.a_PPMASTERRCPTID, R.a_DOPLATEKRCPTID, R.a_POVPOPISOBJ, R.a_DEFPOPISYOBJ, R.a_CHODID, R.a_DRJDID, R.a_UNITIDSALE
  into
    a_CENAB, a_DPHA, a_DPHB, a_CENAS, a_CENAB1, a_DPHA1, a_DPHB1, a_CENAS1, a_CENAB2, a_DPHA2,
    a_DPHB2, a_CENAS2, l_SKR1ID, l_SKR2ID, l_SKR3ID, l_SKR4ID, l_DPHID, l_RECTID, l_OBALRCPTID,
    l_PPMASTERRCPTID, l_DOPLATEKRCPTID, a_POVPOPISOBJ, a_DEFPOPISYOBJ, l_TMP1, l_DRJDID, l_UNITIDSALE
  from RECEPT__Check(
    a_NAZEV, a_POPIS, a_ZKRATKA, a_DPH, a_KLIC, a_BARCODE, a_IDCODE, a_PLUCODE, a_RECEPTTYP, a_UNITSALE,
    a_CENAB, a_DPHA, a_DPHB, a_CENAS, a_CENAB1, a_DPHA1, a_DPHB1, a_CENAS1,
    a_CENAB2, a_DPHA2, a_DPHB2, a_CENAS2, a_CISLOL, a_CISLOH, a_PORCI, a_SKUPREC1,
    a_SKUPREC2, a_SKUPREC3, a_SKUPREC4, a_OBALRECNAZEV, a_POUZITDOPL, a_DOPLATEKRECEPT,
    a_RECMINMNOZSTVI, '', 1, 1, a_DOBAPRIPRAVY, a_DOBAKONZUMACE, a_BONUS,
    a_POVPOPISOBJ, a_DEFPOPISYOBJ, '', a_FORCE, null, DRUHJIDLA_GetZakladniNazev(), 0, null,
    a_UNITCONTENT => null, a_UNITSOLID => null, a_CONTENTAMOUNT => null,
    a_SOLIDAMOUNT => null, a_DODVVYR => null, a_COUNTRY => null, a_KMSCATEGORY => null, a_KMSITEMTYPE => null,
    a_WELMEC => false, a_TARE => null, a_AKTIVNI => true, a_WEIGHTED => false) as R;

  if exists(select 1 from RECEPTTYP where RECTID = l_RECTID and KLIC in('BONUSOVA','LOGONASTUL','MODIFIKATORVYROBNI','ALERGENDOUCTU')) then
    perform admin_base.ASWError(35454, cast(array['RECEPTTYP'] as text[]));
  end if;
  -- u receptury-skladpol se nesmi rozhodit nazev, popis, zkratka, cislol, cisloh, klic, idcode, barcode
  --  u recept a skladpol
  case
    when admin_eng.CheckForce(a_FORCE,'RSCHANGE') is null then
      select * into l_NAZEV,l_POPIS,l_ZKRATKA,l_CISLOL,l_CISLOH,l_KLIC,l_IDCODE,l_BARCODE,l_TRVANLIVOST from admin_septim.SKLADPOL_GetFields(a_SKPLID);
      perform admin_septim.RECEPT_CheckDiff(a_SKPLID,a_NAZEV,a_POPIS,a_ZKRATKA,a_CISLOL,a_CISLOH,a_KLIC,a_IDCODE,a_BARCODE,0,
      a_FORCE,l_NAZEV,l_POPIS,l_ZKRATKA,l_CISLOL,l_CISLOH,l_KLIC,l_IDCODE,l_BARCODE,0);
    when admin_eng.CheckForce(a_FORCE,'RSCHANGE') = 1 then
      l_TRVANLIVOST := (admin_septim.SKLADPOL_GetFields(a_SKPLID)).a_TRVANLIVOST;
      perform admin_septim.SKLADPOL_UpdateFields(a_SKPLID,a_NAZEV,a_POPIS,a_ZKRATKA,a_CISLOL,a_CISLOH,a_KLIC,a_IDCODE,a_BARCODE,l_TRVANLIVOST);
    else
      null;-- ADDED EMPTY ELSE
  end case;
  -- create a recipe
  a_RCPTID := RECEPT__BasicInsert(
    a_NAZEV, a_POPIS, a_ZKRATKA, a_IDCODE, l_RECTID, l_SKR1ID, l_SKR2ID, l_SKR3ID,
    l_OBALRCPTID, a_PLUCODE, a_PORCI, a_GRAMAZ, l_SKR4ID, a_POSTUP, a_DOBAPRIPRAVY,
    a_DOBAKONZUMACE, a_VZDYCENA, a_CISLOL, a_CISLOH, a_KLIC, a_VCTYP, a_VCZAOKRC,
    a_VCZAOKRD, a_BONUS, true, null, 1, 1, l_DOPLATEKRCPTID, a_RECMINMNOZSTVI,
    a_BARCODE, a_DPH, a_CENAB, a_DPHA, a_DPHB, a_CENAS, a_CENAB1, a_DPHA1, a_DPHB1,
    a_CENAS1, a_CENAB2, a_DPHA2, a_DPHB2, a_CENAS2, a_POVPOPISOBJ, a_DEFPOPISYOBJ,
    null, l_DRJDID, l_UNITIDSALE, null, null, null, null, null, cast(l_TRVANLIVOST as NUMBERINT), null, null,
    a_UNITIDCONTENT=>null, a_UNITIDSOLID=>null, a_CONTENTAMOUNT:=null, a_SOLIDAMOUNT=>null, a_CNTRID=>null,
    a_DODVIDVYR=>null, a_WELMEC=>false, a_TARE=>null, a_AKTIVNI=>true, a_WEIGHTED=>false, a_FORCE=>a_FORCE, a_INSCENY=>true, a_EXTID=>null, a_EXPLICITPERM=>l_MASTERPERM,
    a_KMCTID=>null, a_KMITID=>null);

  select * into l_INGRID from INGRED_Insert(a_RCPTID, a_SKPLID, null, a_MNOZSTVI, 1, a_TYP, a_MNOZSTVI, null, null, a_FORCE, l_MASTERPERM);
  perform RECEPT_PrepoctiSkladCenuVyrobku(a_RCPTID);

end; $$;



select ASWDropProcedure('RECEPTSKLADPOLRCPT_BasicInsert');
create or replace function admin_septim.RECEPTSKLADPOLRCPT_BasicInsert(
  in  a_CISLOL             CISLOINT,
  in  a_CISLOH             CISLOINT,
  in  a_NAZEV              NAZEVSTR,
  in  a_POPIS              POPISTXT,
  in  a_ZKRATKA            ZKRATKASTR,
  in  a_JEDNOTKY           JEDNOTKYSTR,
  in  a_TRVANLIVOST        MNOZSTVIFLT,
  in  a_CENA               CENAFLT,
  in  a_TAXGROUP           NAZEVSTR,
  in  a_DPH                NAZEVSTR,
  in  a_BARCODE            BARCODETXT,
  in  a_IDCODE             IDCODESTR,
  in  a_SKUPSPOL1          NAZEVSTR,
  in  a_SKUPSPOL2          NAZEVSTR,
  in  a_SKUPSPOL3          NAZEVSTR,
  in  a_ZAOKR               MNOZSTVIFLT,
  in  a_OBJBEZCENY          BOOLBIT,
  in  a_TOLERCENANOVAWAR    KOEFICIENTFLT_NU,
  in  a_TOLERCENANOVAPERM   KOEFICIENTFLT_NU,
  in  a_TOLERCENAOBJWAR     KOEFICIENTFLT_NU,
  in  a_TOLERCENAOBJPERM    KOEFICIENTFLT_NU,
  in  a_TOLERCENACENIKWAR   KOEFICIENTFLT_NU,
  in  a_TOLERCENACENIKPERM  KOEFICIENTFLT_NU,
  in  a_DODAVATELOPT        JMENOSTR_NU,
  in  a_DODAVATELVYR        JMENOSTR_NU,
  in  a_VAHA               KOEFICIENTFLT_LARGE,
  in  a_OBJEM              KOEFICIENTFLT_LARGE,
  in  a_KLIC               KLICSTR,
  in  a_SERNRTYP1          TYPINT,
  in  a_SERNRTYP2          TYPINT,
  in  a_FIXCENA            BOOLBIT,
  in  a_MNOZSTVI           MNOZSTVIFLT,
  in  a_TYP                TYPINT,
  in  a_SKUPREC1           NAZEVSTR,
  in  a_SKUPREC2           NAZEVSTR,
  in  a_SKUPREC3           NAZEVSTR,
  in  a_OBALRECNAZEV       NAZEVSTR,
  in  a_PLUCODE            PLUINT,
  in  a_PORCI              MNOZSTVIFLT,
  in  a_GRAMAZ             GRAMAZTXT,
  in  a_SKUPREC4           NAZEVSTR,
  in  a_POSTUP             POSTUPTXT,
  in  a_DOBAPRIPRAVY       TIMEINT,
  in  a_DOBAKONZUMACE      TIMEINT,
  in  a_VZDYCENA           BOOLBIT,
  in  a_RECEPTTYP          NAZEVSTR,
  in  a_UNITSALE           NAMESTR,
  in  a_CENAB              CENAFLT,
  in  a_DPHA               CENAFLT,
  in  a_DPHB               CENAFLT,
  in  a_CENAS              CENAFLT,
  in  a_CENAB1             CENAFLT,
  in  a_DPHA1              CENAFLT,
  in  a_DPHB1              CENAFLT,
  in  a_CENAS1             CENAFLT,
  in  a_CENAB2             CENAFLT,
  in  a_DPHA2              CENAFLT,
  in  a_DPHB2              CENAFLT,
  in  a_CENAS2             CENAFLT,
  in  a_VCTYP              TYPINT,
  in  a_VCZAOKRC           CISLOINT,
  in  a_VCZAOKRD           CISLOINT,
  in  a_BONUS              CISLOFLT,
  in  a_POUZITDOPL         BOOLBIT,
  in  a_DOPLATEKRECEPT     NAZEVSTR,
  in  a_RECMINMNOZSTVI     MNOZSTVIFLT,
  in  a_POVPOPISOBJ        BOOLBIT,
  in  a_DEFPOPISYOBJ       KOMENTARTXT,
  in  a_FORCE              FORCETXT,
  in  a_RS                 BOOLBIT,
  out a_RSID               IDINT
)
language plpgsql security definer
as $$
declare
  l_RCPTID                 IDINT;
  l_SKPLID                 IDINT;
  l_INGRID                 IDINT;
  l_SKR1ID                 REFIDINT;
  l_SKR2ID                 REFIDINT;
  l_SKR3ID                 REFIDINT;
  l_SKR4ID                 REFIDINT;
  l_DPHID                  REFIDINT;
  l_KOEFA                  DPHKOEFFLT;
  l_KOEFB                  DPHKOEFFLT;
  l_ZADAC                  BOOLBIT;
  l_RECTID                 REFIDINT;
  l_OBALRCPTID             REFIDINT;
  l_PPMASTERRCPTID         REFIDINT;
  l_DOPLATEKRCPTID         REFIDINT;
  l_MASTERPERM             PARAMTXT;
  l_DRJDID                 REFIDINT;
  l_UNITIDSALE             REFIDINT;
  l_TMP1                   REFIDINT_NU;
  l_DODVIDVYR              REFIDINT_NU;
begin
  l_MASTERPERM := E'SEPTIMAPP\\RECEPT\\RECEPTSKLADPOLINS';
  perform admin_users.U_CheckPerm('SEPTIMAPP',l_MASTERPERM,0);
  select * into l_SKPLID from admin_septim.SKLADPOL_BasicInsert(
    a_SKPLREF:=null, a_CISLOL:=a_CISLOL, a_CISLOH:=a_CISLOH, a_NAZEV:=a_NAZEV, a_POPIS:=a_POPIS, a_ZKRATKA:=a_ZKRATKA,
    a_JEDNOTKY:=a_JEDNOTKY, a_TRVANLIVOST:=a_TRVANLIVOST, a_CENA:=a_CENA, a_TAXGROUP:=a_TAXGROUP, a_BARCODE:=a_BARCODE,
    a_IDCODE:=a_IDCODE, a_KOEFODP:=1, a_SKUPSPOL1:=a_SKUPSPOL1, a_SKUPSPOL2:=a_SKUPSPOL2, a_SKUPSPOL3:=a_SKUPSPOL3,
    a_POMER:=1, a_VAHA:=a_VAHA, a_OBJEM:=a_OBJEM, a_KLIC:=a_KLIC, a_SERNRTYP1:=a_SERNRTYP1, a_SERNRTYP2:=a_SERNRTYP2,
    a_FIXCENA:=a_FIXCENA, a_POUZIVATSKLDIDLIST:=null, a_ALERIDLIST:=null,
    a_ZAOKR:=a_ZAOKR, a_OBJBEZCENY:=a_OBJBEZCENY, a_TOLERCENANOVAWAR:=a_TOLERCENANOVAWAR, a_TOLERCENANOVAPERM:=a_TOLERCENANOVAPERM,
    a_TOLERCENAOBJWAR:=a_TOLERCENAOBJWAR, a_TOLERCENAOBJPERM:=a_TOLERCENAOBJPERM, a_TOLERCENACENIKWAR:=a_TOLERCENACENIKWAR,
    a_TOLERCENACENIKPERM:=a_TOLERCENACENIKPERM, a_DODAVATELOPT:=a_DODAVATELOPT, a_DODAVATELVYR:=a_DODAVATELVYR,
    a_EXTID:=null, a_PREPCENY:=true, a_FORCE:=a_FORCE, a_TESTIMPORTDB:=true);

  select
    C.a_CENAB, C.a_DPHA, C.a_DPHB, C.a_CENAS, C.a_CENAB1, C.a_DPHA1, C.a_DPHB1, C.a_CENAS1, C.a_CENAB2, C.a_DPHA2,
    C.a_DPHB2, C.a_CENAS2, C.a_SKR1ID, C.a_SKR2ID, C.a_SKR3ID, C.a_SKR4ID, C.a_DPHID, C.a_RECTID, C.a_OBALRCPTID,
    C.a_PPMASTERRCPTID, C.a_DOPLATEKRCPTID, C.a_POVPOPISOBJ, C.a_DEFPOPISYOBJ, C.a_CHODID, C.a_DRJDID, C.a_UNITIDSALE, C.a_DODVIDVYR
  into
    a_CENAB, a_DPHA, a_DPHB, a_CENAS, a_CENAB1, a_DPHA1, a_DPHB1, a_CENAS1, a_CENAB2, a_DPHA2,
    a_DPHB2, a_CENAS2, l_SKR1ID, l_SKR2ID, l_SKR3ID, l_SKR4ID, l_DPHID, l_RECTID, l_OBALRCPTID,
    l_PPMASTERRCPTID, l_DOPLATEKRCPTID, a_POVPOPISOBJ, a_DEFPOPISYOBJ, l_TMP1, l_DRJDID, l_UNITIDSALE, l_DODVIDVYR
  from admin_septim.RECEPT__Check(
    a_NAZEV, a_POPIS, a_ZKRATKA, a_DPH, a_KLIC, a_BARCODE, a_IDCODE, a_PLUCODE, a_RECEPTTYP, a_UNITSALE,
    a_CENAB, a_DPHA, a_DPHB, a_CENAS, a_CENAB1, a_DPHA1, a_DPHB1, a_CENAS1,
    a_CENAB2, a_DPHA2, a_DPHB2, a_CENAS2, a_CISLOL, a_CISLOH, a_PORCI, a_SKUPREC1,
    a_SKUPREC2, a_SKUPREC3, a_SKUPREC4, a_OBALRECNAZEV, a_POUZITDOPL, a_DOPLATEKRECEPT,
    a_RECMINMNOZSTVI, '', 1, 1, a_DOBAPRIPRAVY, a_DOBAKONZUMACE, a_BONUS,
    a_POVPOPISOBJ, a_DEFPOPISYOBJ, '', a_FORCE, null, DRUHJIDLA_GetZakladniNazev(), cast(a_TRVANLIVOST as NUMBERINT), null,
    a_UNITCONTENT=>null, a_UNITSOLID=>null, a_CONTENTAMOUNT=>null, a_SOLIDAMOUNT=>null, a_DODVVYR=>a_DODAVATELVYR, a_COUNTRY=>null,
    a_KMSCATEGORY=>null, a_KMSITEMTYPE=>null, a_WELMEC=>false, a_TARE=>null, a_AKTIVNI=>true, a_WEIGHTED=>false) as C;

  if exists(select 1 from RECEPTTYP where RECTID = l_RECTID and KLIC in('BONUSOVA', 'LOGONASTUL', 'MODIFIKATORVYROBNI', 'ALERGENDOUCTU')) then
    perform admin_base.ASWError(35454, cast(array['RECEPTTYP'] as text[]));
  end if;

  l_RCPTID := RECEPT__BasicInsert(
    a_NAZEV, a_POPIS, a_ZKRATKA, a_IDCODE, l_RECTID, l_SKR1ID, l_SKR2ID, l_SKR3ID,
    l_OBALRCPTID, a_PLUCODE, a_PORCI, a_GRAMAZ, l_SKR4ID, a_POSTUP, a_DOBAPRIPRAVY,
    a_DOBAKONZUMACE, a_VZDYCENA, a_CISLOL, a_CISLOH, a_KLIC, a_VCTYP, a_VCZAOKRC,
    a_VCZAOKRD, a_BONUS, true, null, 1, 1, l_DOPLATEKRCPTID, a_RECMINMNOZSTVI,
    a_BARCODE, a_DPH, a_CENAB, a_DPHA, a_DPHB, a_CENAS, a_CENAB1, a_DPHA1, a_DPHB1,
    a_CENAS1, a_CENAB2, a_DPHA2, a_DPHB2, a_CENAS2, a_POVPOPISOBJ, a_DEFPOPISYOBJ,
    null, l_DRJDID, l_UNITIDSALE, null, null, null, null, null, cast(a_TRVANLIVOST as NUMBERINT),null, null,
    a_UNITIDCONTENT=>null, a_UNITIDSOLID=>null, a_CONTENTAMOUNT=>null, a_SOLIDAMOUNT=>null, a_CNTRID=>null, a_DODVIDVYR=>l_DODVIDVYR, a_WELMEC=>false,
    a_TARE=>null, a_AKTIVNI=>true, a_WEIGHTED=>false, a_FORCE=>a_FORCE, a_INSCENY=>true, a_EXTID=>null, a_EXPLICITPERM=>l_MASTERPERM, a_KMITID=>null, a_KMCTID=>null);

  select * into l_INGRID from INGRED_Insert(l_RCPTID,l_SKPLID,null,a_MNOZSTVI,1,a_TYP,a_MNOZSTVI,null,null,a_FORCE,
  l_MASTERPERM); /*PRCEID*/
  perform RECEPT_PrepoctiSkladCenuVyrobku(l_RCPTID);
  select case when a_RS = true then l_RCPTID else l_SKPLID end into a_RSID;

end; $$;



select ASWDropProcedure ('RECEPT__RecaculatePricesBySkladCenyTemp');
/**
 * Updates stock prices of recipes in storages saved in temporary table SKLADCENYTEMP
 */
create or replace function admin_septim.RECEPT__RecaculatePricesBySkladCenyTemp (
  a_SKLDID                 REFIDINT,
  a_SEGMENTATION           VALUESTR
) returns void
language plpgsql security definer as $$
declare
  l_RCPTID                 REFIDINT;
begin

  for l_RCPTID in
    select
      distinct R.RCPTID
    from
      RECEPT as R
      join RECEPTINGREDFULL as RI on R.RCPTID = RI.RCPTID
    where
      R.SMAZAN = 0
      and exists (select from SKLADCENYTEMP where SKPLID = RI.SKPLID)
  loop
    perform RECEPT__RecalculateRecipeStockPrice(l_RCPTID, null, a_SKLDID, a_SEGMENTATION);
  end loop;

end; $$;



select ASWDropProcedure ('RECEPT_VYPOCETSKLADCENSetPrices');
/**
 * Procedura pro aktualizaci skladovych cen receptur volana z vypoctu skladovych cen.
 */
create or replace function admin_septim.RECEPT_VYPOCETSKLADCENSetPrices (
) returns void
language plpgsql security definer as $$
declare
  l_SKLDID                 REFIDINT;
  l_SEGMENTATION           VALUESTR;
begin

  l_SEGMENTATION := P_GetGlobalParam('VYPOCETSKLADCEN', 'PLATNOSTSKLADCENY');

  if l_SEGMENTATION = 'CENAGLOBALNI' then
    -- We use l_SKLDID = null, so the calculated price will be stored to all stores
    -- in RECSKLADCENA_SetPrices
    perform RECEPT__RecaculatePricesBySkladCenyTemp (a_SKLDID => null, a_SEGMENTATION => l_SEGMENTATION);
  else
    for l_SKLDID in select SKLDID from SKLADCENYSKLADYTEMP loop
      -- If the global stock prices are used, it is enough to calculated prices per one store
      -- they will be used for all stores
      perform RECEPT__RecaculatePricesBySkladCenyTemp (l_SKLDID, l_SEGMENTATION);
    end loop;
  end if;

end; $$;



select ASWDropProcedure('RECEPT_GetZakladniCenu');
/*  Procedura vrátí základní cenu receptury v a_RCPTID s DPH a bez DPH.
 *  POZOR: je třeba počítat, že do a_RCPTID může přijít i receptura typu poloviční porce, která nemá cenu v RECCENIK.
 *  Cenu poloviční porce určuje hlavní receptura.
*/
create or replace function admin_septim.RECEPT_GetZakladniCenu(
  in  a_RCPTID             REFIDINT,
  in  a_CENKID             REFIDINT,
  in  a_SKP1ID             REFIDINT,                      -- skupina pokladen pro ceny
  in  a_DATUMCAS           DATUMCASTS,
  out a_CENAZS             CENAFLT,
  out a_CENAZB             CENAFLT,
  in  a_MASTERRCPTID       REFIDINT default null,         -- hlavni receptura (napr. v pripade modifikatoru modifikovana receptura)
  in  a_USEHAPPYHOURS      TYPINT default  1,             -- zda se maji pouzit HH (0 napr. kdyz se vola pri prepoctu ceny polozky po odebrani v aktualni cas jiz neplatnych HH), 0=ne,1=ano,2=pouzi a_HPPYID
  in  a_HPPYID             REFIDINT_NU default  null      -- pouziva se pokud a_USEHAPPYHOURS=2
)
language plpgsql security definer as $$ -- pouziva se pokud a_USEHAPPYHOURS=2
declare
  l_CENAZTYP               VALUETXT;
  l_CENAZ                  CENAFLT;
  l_RCNKID                 REFIDINT;
  l_ACTCENKID              REFIDINT;
  l_TMP2                   CENAFLT;
  l_TMP3                   CENAFLT;
  l_TMP1                   REFIDINT;
  l_TMP4                   CENAFLT;
begin
  l_CENAZTYP := admin_params.P_GetGlobalParam('MARKOVANI','USEDCENAZTYP',null,false);
  case l_CENAZTYP
    when 'ZAKLADNI' then
      select * into l_RCNKID,l_TMP1,a_CENAZB,l_TMP2,l_TMP3,a_CENAZS from admin_septim.RECCENIK_GetZakladniCenu(a_RCPTID,a_MASTERRCPTID);
    when 'CENKAT' then
      select * into l_RCNKID,l_TMP1,a_CENAZB,l_TMP4,l_TMP4,a_CENAZS from admin_septim.RECCENIK_GetJinouCenu(a_RCPTID,a_SKP1ID,a_CENKID,a_DATUMCAS,null,a_MASTERRCPTID);
       /*CENMID*/
      if l_RCNKID is null then
        select * into l_RCNKID,l_TMP1,a_CENAZB,l_TMP4,l_TMP4,a_CENAZS from admin_septim.RECCENIK_GetZakladniCenu(a_RCPTID,a_MASTERRCPTID);
      end if;
    when 'HAPPYHOURSCENKAT' then
       /*CENMID*/
      if coalesce(a_USEHAPPYHOURS,1) = 1 then
      -- vyhledam HH
        l_ACTCENKID := (HAPPYHOURS_Apply(a_RCPTID,a_SKP1ID,a_CENKID,null,a_DATUMCAS,a_DATUMCAS,HAPPYHOURS_SourceTypePOS())).a_ACTCENKID;
      elseif a_USEHAPPYHOURS = 2 then
      -- pouziju predane HH
        l_ACTCENKID := (HAPPYHOURS_GetInfo(a_HPPYID,a_CENKID,null)).a_ACTCENKID;
      else
      -- bez HH
        l_ACTCENKID := a_CENKID;
      end if;
      select * into l_RCNKID,l_TMP1,a_CENAZB,l_TMP4,l_TMP4,a_CENAZS from admin_septim.RECCENIK_GetJinouCenu(a_RCPTID,a_SKP1ID,l_ACTCENKID,a_DATUMCAS,null,a_MASTERRCPTID);
      if l_RCNKID is null then
        select * into l_RCNKID,l_TMP1,a_CENAZB,l_TMP4,l_TMP4,a_CENAZS from admin_septim.RECCENIK_GetZakladniCenu(a_RCPTID,a_MASTERRCPTID);
      end if;
    when 'BEZNE' then
      select * into l_RCNKID,l_TMP1,a_CENAZB,l_TMP4,l_TMP4,a_CENAZS from RECCENIK_GetJinouCenu(a_RCPTID,a_SKP1ID,CENKAT_GetZakladniID(),a_DATUMCAS,null,a_MASTERRCPTID);
      if l_RCNKID is null then
        select * into l_RCNKID,l_TMP1,a_CENAZB,l_TMP4,l_TMP4,a_CENAZS from RECCENIK_GetZakladniCenu(a_RCPTID,a_MASTERRCPTID);
      end if;
    else
      perform admin_base.ASWError(35387);
  end case;
  return;
end; $$;




select ASWDropProcedure('VYTVORITPOLPORCEMultiGet');
create or replace function admin_septim.VYTVORITPOLPORCEMultiGet(
  in a_IDLIST              IDINTARR
) returns void
language plpgsql security definer as $$
declare
  l_RCPTID                 REFIDINT;
  l_RECNAZEV               NAZEVSTR;
begin
  perform admin_users.U_CheckPerm('SEPTIMAPP',E'RECEPT\\RECEPTMAKEPOLPORCE',0);
  perform admin_params.P_CheckGlobalParamBOOL('SYNCRECEPT','RECEPTIMPORTDB',false,35539);
  for l_RCPTID in (select unnest(a_IDLIST)) loop
    if RECEPT_CheckStandardniTyp(l_RCPTID,-1) = false then
      begin
        select NAZEV into strict l_RECNAZEV from RECEPT where RCPTID = l_RCPTID;
      exception
        when NO_DATA_FOUND then
      end;
      perform admin_base.ASWError(35320, cast(array[l_RECNAZEV] as text[]));
    end if;
  end loop;
end; $$;

select grant_func('VYTVORITPOLPORCEMultiGet', 'SPEXEC');


select ASWDropProcedure('VYTVORITPOLPORCEMultiExec');
create or replace function admin_septim.VYTVORITPOLPORCEMultiExec(
  in a_PREFNAZEV           NAZEVSTR,
  in a_PREFPOPIS           POPISTXT,
  in a_PREFBARCODE         BARCODESTR,
  in a_PREFZKRATKA         ZKRATKASTR,
  in a_PREFKLIC            KLICSTR,
  in a_PREFIDENTCODE       IDCODESTR,
  in a_SUFNAZEV            NAZEVSTR,
  in a_SUFPOPIS            POPISTXT,
  in a_SUFBARCODE          BARCODESTR,
  in a_SUFZKRATKA          ZKRATKASTR,
  in a_SUFKLIC             KLICSTR,
  in a_SUFIDENTCODE        IDCODESTR,
  in a_DELTAPLU            PLUINT,
  in a_CENAKOEF            KOEFICIENTFLT,
  in a_INGREDKOEF          KOEFICIENTFLT,
  in a_BONUSKOEF           KOEFICIENTFLT,
  in a_IDLIST              IDINTARR,
  in a_FORCE               FORCETXT default null
) returns void
language plpgsql security definer as $$
declare
  -- test opravneni
  l_NEWNAZEV               NAZEVSTR;
  l_NEWPOPIS               POPISTXT;
  l_NEWBARCODE             BARCODESTR;
  l_NEWZKRATKA             ZKRATKASTR;
  l_NEWKLIC                KLICSTR;
  l_NEWIDENTCODE           IDCODESTR;
  l_NEWBONUS               CISLOFLT;
  l_NEWPLU                 PLUINT;
  l_RCPTID                 IDINT;
  l_MASTERRECNAZEV         NAZEVSTR;
  l_RECEPTTYP              NAZEVSTR;
  l_NEWRCPTID              REFIDINT;
  l_RECTID                 REFIDINT;
  l_PPMASTERRCPTID         REFIDINT;
  l_OPERACETYP             TYPINT; -- 0 - nic se nedělá;1 - provede se insert receptura ještě nemá poloviční porci;2 - provede se update, receptura má poloviční porci a má se přepsat
  l_POLPORCERCPTID         IDINT;
  l_RETFORCE_PREPSAT       CISLOINT;
  l_RETFORCE_ZALOZIT       CISLOINT;
  l_BARCODELIST            VALUETXT;
  l_SKR1ID                 REFIDINT;
  l_SKR2ID                 REFIDINT;
  l_SKR3ID                 REFIDINT;
  l_SKR4ID                 REFIDINT;
  l_OBALRCPTID             REFIDINT;
  l_MASTERPERM             PARAMTXT;
  l_NEWPOVPOPISOBJ         BOOLBIT;
  l_NEWDEFPOPISYOBJ        KOMENTARTXT;
  l_DOBAPRIPRAVY           TIMEINT;
  l_DOBAKONZUMACE          TIMEINT;
  l_DRJDID                 REFIDINT;
  l_UNITIDSALE             REFIDINT;
  l_DURABILITY             NUMBERINT;
  l_SKLDID                 REFIDINT_NU;
  l_MAXSLEVA               KOEFICIENTFLT_NU;
  l_KMCTID                 REFIDINT_NU;
  l_KMITID                 REFIDINT_NU;
  l_UNITIDCONTENT          REFIDINT_NU;
  l_UNITIDSOLID            REFIDINT_NU;
  l_POLCONTENTAMOUNT       AMOUNTFLT_NU;
  l_POLSOLIDAMOUNT         AMOUNTFLT_NU;
  l_DODVIDVYR              REFIDINT_NU;
  l_CNTRID                 REFIDINT_NU;
  l_WELMEC                 BOOLBIT_0;
  l_TARE                   AMOUNTFLT_NU;
  l_AKTIVNI                BOOLBIT_1;
  l_WEIGHTED               BOOLBIT_0;
  l_UNIT                   NAMESTR;
  cr_cusorinsert           RECORD;
  cr_cusorupdate           RECORD;
begin
  l_MASTERPERM := E'SEPTIMAPP\\RECEPT\\RECEPTMAKEPOLPORCE';
  perform admin_users.U_CheckPerm('SEPTIMAPP',l_MASTERPERM,0);
  perform admin_params.P_CheckGlobalParamBOOL('SYNCRECEPT','RECEPTIMPORTDB',false,35539);
  perform admin_septim.VYTVORITPOLPORCE__Check(a_PREFNAZEV,a_SUFNAZEV,a_CENAKOEF,a_INGREDKOEF);
  if coalesce(cardinality(a_IDList), 0) > 0 then
    for l_RCPTID in (select unnest(a_IDLIST)) loop
      l_NEWPOPIS := null;
      l_NEWBARCODE := null;
      l_NEWZKRATKA := null;
      l_NEWKLIC := null;
      l_NEWIDENTCODE := null;
      l_NEWBONUS := null;
      l_NEWPLU := null;
      l_POLPORCERCPTID := null;
      l_DRJDID := null;
        -- defaultně se dělá insert
      l_OPERACETYP := 1;
        /*
        select SKR1ID,SKR2ID,SKR3ID,SKR4ID
        into l_SKR1ID,l_SKR2ID,l_SKR3ID,l_SKR4ID
        from RECEPT
        where RCPTID=l_RCPTID;
        */
      begin
        begin
          select RCPTID into strict l_POLPORCERCPTID from RECEPT where PPMASTERRCPTID = l_RCPTID and SMAZAN = 0;
        exception
          when NO_DATA_FOUND then
        end;
        if l_POLPORCERCPTID is not null then
          l_RETFORCE_ZALOZIT := admin_eng.CheckForce(a_FORCE,concat('POLPORCEZALOZIT_',l_RCPTID));
          if l_RETFORCE_ZALOZIT is null then
            l_RETFORCE_PREPSAT := admin_eng.CheckForce(a_FORCE,concat('POLPORCEPREPSAT_',l_RCPTID));
          end if;
          if (l_RETFORCE_ZALOZIT is null) and (l_RETFORCE_PREPSAT is null) then
            l_RETFORCE_ZALOZIT := admin_eng.CheckForce(a_FORCE,'POLPORCEZALOZITALL');
          end if;
          if (l_RETFORCE_ZALOZIT is null) and (l_RETFORCE_PREPSAT is null) then
            l_RETFORCE_PREPSAT := admin_eng.CheckForce(a_FORCE,'POLPORCEPREPSATALL');
          end if;
          if (l_RETFORCE_ZALOZIT is null) and (l_RETFORCE_PREPSAT is null) then
            perform admin_base.ASWError(35318, cast(array[admin_septim.RECEPT_GetNazev(l_RCPTID),l_RCPTID] as text[]));
          elseif l_RETFORCE_PREPSAT = 1 then
            l_OPERACETYP := 2; -- update
          elseif l_RETFORCE_ZALOZIT = 1 then
            l_OPERACETYP := 1; -- insert
            l_POLPORCERCPTID := null; -- when inserting id of the found record should be nulled to allow create new one
          else
            l_OPERACETYP := 0; -- nic
          end if;
        end if;
      exception
        when too_many_rows then
          l_RETFORCE_ZALOZIT := admin_eng.CheckForce(a_FORCE,concat('POLPORCEZALOZIT_',l_RCPTID));
          if l_RETFORCE_ZALOZIT is null then
              --message 'force=',string('POLPORCEZALOZ_',l_RCPTID);
            l_RETFORCE_ZALOZIT := admin_eng.CheckForce(a_FORCE,'POLPORCEZALOZITALL');
          end if;
          case
            when l_RETFORCE_ZALOZIT is null then
              perform admin_base.ASWError(35505, cast(array[admin_septim.RECEPT_GetNazev(l_RCPTID),l_RCPTID] as text[]));
            when l_RETFORCE_ZALOZIT = 1 then
              l_OPERACETYP := 1; -- zalozeni dalsi
            when l_RETFORCE_ZALOZIT = 0 then
              l_OPERACETYP := 0; -- nic
            else
              null;-- ADDED EMPTY ELSE
          end case;
      end;

      select * into
        l_NEWNAZEV, l_NEWPOPIS, l_NEWZKRATKA, l_NEWKLIC, l_NEWIDENTCODE, l_NEWPLU, l_NEWBONUS,
        l_MASTERRECNAZEV, l_NEWPOVPOPISOBJ, l_NEWDEFPOPISYOBJ, l_DOBAPRIPRAVY, l_DOBAKONZUMACE
      from
        VYTVORITPOLPORCE__DejHodnoty (
          l_RCPTID, a_PREFNAZEV, a_PREFPOPIS, a_PREFZKRATKA, a_PREFKLIC, a_PREFIDENTCODE, a_SUFNAZEV, a_SUFPOPIS,
          a_SUFZKRATKA, a_SUFKLIC, a_SUFIDENTCODE, a_DELTAPLU, a_BONUSKOEF, l_POLPORCERCPTID
        );

      /*oprava*/
      select NAZEV into l_RECEPTTYP from RECEPTTYP where KLIC = 'POLOVICNIPORCE';

      select
        DURABILITY, SKLDID, MAXSLEVA, UNITIDCONTENT, UNITIDSOLID,
        a_INGREDKOEF*CONTENTAMOUNT, a_INGREDKOEF*SOLIDAMOUNT, DODVIDVYR, CNTRID, WELMEC, UNITIDSALE, TARE, AKTIVNI, WEIGHTED
      into
        l_DURABILITY, l_SKLDID, l_MAXSLEVA, l_UNITIDCONTENT, l_UNITIDSOLID,
        l_POLCONTENTAMOUNT, l_POLSOLIDAMOUNT, l_DODVIDVYR, l_CNTRID, l_WELMEC, l_UNITIDSALE, l_TARE, l_AKTIVNI, l_WEIGHTED
      from
        RECEPT
      where
        RCPTID = l_RCPTID;

      l_UNIT := UNIT_GetName(l_UNITIDSALE);

      select
        R.a_PPCENAKOEF, R.a_PPINGREDKOEF, R.a_SKR1ID, R.a_SKR2ID, R.a_SKR3ID, R.a_SKR4ID, R.a_RECTID, R.a_OBALRCPTID,
        R.a_PPMASTERRCPTID, R.a_POVPOPISOBJ, R.a_DEFPOPISYOBJ, R.a_DRJDID, R.a_UNITIDSALE
      into
        a_CENAKOEF, a_INGREDKOEF, l_SKR1ID, l_SKR2ID, l_SKR3ID, l_SKR4ID, l_RECTID, l_OBALRCPTID,
        l_PPMASTERRCPTID, l_NEWPOVPOPISOBJ, l_NEWDEFPOPISYOBJ, l_DRJDID
      from RECEPT__Check(
        l_NEWNAZEV, l_NEWPOPIS, l_NEWZKRATKA, '0', l_NEWKLIC, 0, l_NEWIDENTCODE, l_NEWPLU,
        l_RECEPTTYP, l_UNIT, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, null, null, null, null, null,
        false, null, null, l_MASTERRECNAZEV, a_CENAKOEF, a_INGREDKOEF, l_DOBAPRIPRAVY,
        l_DOBAKONZUMACE, l_NEWBONUS, l_NEWPOVPOPISOBJ, l_NEWDEFPOPISYOBJ, '', a_FORCE,
        l_POLPORCERCPTID, null, l_DURABILITY, null, a_UNITCONTENT=>null, a_UNITSOLID=>null,
        a_CONTENTAMOUNT=>null, a_SOLIDAMOUNT=>null, a_DODVVYR=>null, a_COUNTRY=>null,
        a_KMSCATEGORY=>null, a_KMSITEMTYPE=>null, a_WELMEC=>false, a_TARE=>null, a_AKTIVNI=>true, a_WEIGHTED=>false) as R;

      l_KMCTID := RECEPT_GetKMCTID(l_RCPTID);
      l_KMITID := RECEPT_GetKMITID(l_RCPTID);

      case l_OPERACETYP
        when 1 then
          l_NEWRCPTID := RECEPT__BasicInsert(
            l_NEWNAZEV, l_NEWPOPIS, l_NEWZKRATKA, l_NEWIDENTCODE, l_RECTID, l_SKR1ID, l_SKR2ID,
            l_SKR3ID, l_OBALRCPTID, l_NEWPLU, 1, '', l_SKR4ID, '', l_DOBAPRIPRAVY,
            l_DOBAKONZUMACE,  --PORCI --GRAMAZ --POSTUP
            false, 1, 1,  --VZDYCENA --CISLOL --CISLOH
            l_NEWKLIC, 0, 1, 2, l_NEWBONUS, false, l_PPMASTERRCPTID,
            a_CENAKOEF,  --VCTYP --VCZAOKRC --VCZAOKRD --SKPLREC
            a_INGREDKOEF, null, null, '', '0',  -- parametry pro doplatkove receptury
            0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
            l_NEWPOVPOPISOBJ, l_NEWDEFPOPISYOBJ, null, l_DRJDID, l_UNITIDSALE, null, null, null, null,
            null, l_DURABILITY, l_MAXSLEVA, l_SKLDID, --CUSTOM1 --CUSTOM2 --CUSTOM3 --CUSTOM4 --CUSTOM5
            a_UNITIDCONTENT=>l_UNITIDCONTENT, a_UNITIDSOLID=>l_UNITIDSOLID, a_CONTENTAMOUNT=>l_POLCONTENTAMOUNT,
            a_SOLIDAMOUNT=>l_POLSOLIDAMOUNT, a_CNTRID=>l_CNTRID, a_DODVIDVYR=>l_DODVIDVYR, a_WELMEC=>l_WELMEC,
            a_TARE=>l_TARE, a_AKTIVNI=>l_AKTIVNI, a_WEIGHTED=>l_WEIGHTED, a_FORCE=>a_FORCE, a_INSCENY=>true, a_EXTID=>null, a_EXPLICITPERM=>l_MASTERPERM,
            a_KMITID=>l_KMCTID, a_KMCTID=>l_KMITID);

          --Vygenerování bar kódu. Dělá se to vee smyčce protože jedna receptura může mít několik barkódů
          for cr_cusorinsert in select BARCODE as cr_BARCODE from RCPTBARCODE where RCPTID = l_RCPTID
          loop
            l_NEWBARCODE := concat(coalesce(a_PREFBARCODE,''),cr_cusorinsert.cr_BARCODE,coalesce(a_SUFBARCODE,''));
            perform admin_septim.RCPTBARCODE_RECEPTInsert(l_NEWRCPTID,l_NEWBARCODE);
          end loop;
        when 2 then
          update RECEPT set
            NAZEV = l_NEWNAZEV, POPIS = l_NEWPOPIS, ZKRATKA = l_NEWZKRATKA, KLIC = l_NEWKLIC,
            IDCODE = l_NEWIDENTCODE, PLUCODE = l_NEWPLU, BONUS = l_NEWBONUS,
            PPCENAKOEF = a_CENAKOEF, PPINGREDKOEF = a_INGREDKOEF, SKR1ID = l_SKR1ID,
            SKR2ID = l_SKR2ID, SKR3ID = l_SKR3ID, SKR4ID = l_SKR4ID, OBALRCPTID = l_OBALRCPTID,
            DRJDID = l_DRJDID, DURABILITY = l_DURABILITY, SKLDID = l_SKLDID, MAXSLEVA = l_MAXSLEVA,
            UNITIDCONTENT = l_UNITIDCONTENT, UNITIDSOLID = l_UNITIDSOLID, CONTENTAMOUNT = l_POLCONTENTAMOUNT,
            SOLIDAMOUNT = l_POLSOLIDAMOUNT, CNTRID = l_CNTRID, DODVIDVYR = l_DODVIDVYR, WELMEC = l_WELMEC, TARE = l_TARE,
            AKTIVNI = l_AKTIVNI, WEIGHTED = l_WEIGHTED, UNITIDSALE = l_UNITIDSALE, KMCTID = l_KMCTID, KMITID = l_KMITID
          where
            RCPTID = l_POLPORCERCPTID;
          l_BARCODELIST := '';
          for cr_cusorupdate in select BARCODE as cr_BARCODE from RCPTBARCODE where RCPTID = l_RCPTID
          loop
            l_NEWBARCODE := concat(coalesce(a_PREFBARCODE,''),cr_cusorupdate.cr_BARCODE,coalesce(a_SUFBARCODE,''));
            if l_BARCODELIST = '' then
              l_BARCODELIST := l_NEWBARCODE;
            else
              l_BARCODELIST := concat(';',l_BARCODELIST,l_NEWBARCODE);
            end if;
            perform admin_septim.RCPTBARCODE_RECEPTUpdate(l_POLPORCERCPTID,l_BARCODELIST);
          end loop;
        else
          null;-- ADDED EMPTY ELSE
      end case;
    end loop;
  end if;
end; $$;

select grant_func('VYTVORITPOLPORCEMultiExec', 'SPEXEC');



select ASWDropProcedure ('VYTVORITPOLPORCE__Check');
create or replace function admin_septim.VYTVORITPOLPORCE__Check(
  in a_PREFNAZEV           NAZEVSTR,
  in a_SUFNAZEV            NAZEVSTR,
  in a_CENAKOEF            KOEFICIENTFLT,
  in a_INGREDKOEF          KOEFICIENTFLT
) returns void
language plpgsql security definer as $$
begin
  if (admin_base.B_NULL_STR('PREFNAZEV',a_PREFNAZEV,-1) = true) and (admin_base.B_NULL_STR('SUFNAZEV',a_SUFNAZEV,-1) = true) then
    perform admin_base.ASWError(35319);
  end if;
  perform admin_base.B_NULL_FLT('CENAKOEF',a_CENAKOEF,35390,'CENAKOEF');
  perform admin_base.B_NULL_FLT('INGREDKOEF',a_INGREDKOEF,35391,'INGREDKOEF');
  if (a_CENAKOEF <= 0) then
    perform admin_base.ASWError(35566);
  end if;
  if (a_INGREDKOEF <= 0) then
    perform admin_base.ASWError(35567);
  end if;

  return;
end; $$;




select ASWDropProcedure ('VYTVORITPOLPORCE__DejHodnoty');
create or replace function admin_septim.VYTVORITPOLPORCE__DejHodnoty(
  in  a_RCPTID             IDINT,
  in  a_PREFNAZEV          NAZEVSTR,
  in  a_PREFPOPIS          POPISTXT,
  in  a_PREFZKRATKA        ZKRATKASTR,
  in  a_PREFKLIC           KLICSTR,
  in  a_PREFIDENTCODE      IDCODESTR,
  in  a_SUFNAZEV           NAZEVSTR,
  in  a_SUFPOPIS           POPISTXT,
  in  a_SUFZKRATKA         ZKRATKASTR,
  in  a_SUFKLIC            KLICSTR,
  in  a_SUFIDENTCODE       IDCODESTR,
  in  a_DELTAPLU           PLUINT,
  in  a_BONUSKOEF          KOEFICIENTFLT,
  out a_NAZEV              NAZEVSTR,
  out a_POPIS              POPISTXT,
  out a_ZKRATKA            ZKRATKASTR,
  out a_KLIC               KLICSTR,
  out a_IDENTCODE          IDCODESTR,
  out a_PLU                PLUINT,
  out a_BONUS              CISLOFLT,
  out a_MASTERRECNAZEV     NAZEVSTR,
  out a_POVPOPISOBJ        BOOLBIT,
  out a_DEFPOPISYOBJ       KOMENTARTXT,
  out a_DOBAPRIPRAVY       TIMEINT,
  out a_DOBAKONZUMACE      TIMEINT,
  in  a_POLPORCERCPTID     IDINT default null
)
language plpgsql security definer as $$
declare
  -- zpracování barcodu se musí řešit samostatně, protože receptura může mít několik čárových kódů
  l_INDEX                  CISLOINT;
  l_COLUMNWIDTH            CISLOINT;
  l_INTERIMNAZEV           NAZEVSTR;
begin

  select R.NAZEV, R.POPIS, R.ZKRATKA, R.KLIC, R.IDCODE, R.BONUS, PLUCODE, R.POVPOPISOBJ, R.DEFPOPISYOBJ, R.DOBAPRIPRAVY, R.DOBAKONZUMACE
    into a_NAZEV, a_POPIS, a_ZKRATKA, a_KLIC, a_IDENTCODE, a_BONUS, a_PLU, a_POVPOPISOBJ, a_DEFPOPISYOBJ, a_DOBAPRIPRAVY, a_DOBAKONZUMACE
  from RECEPT as R
    where RCPTID = a_RCPTID;

  a_MASTERRECNAZEV := a_NAZEV;
  l_INTERIMNAZEV := RECEPT__DejHodnotuPole('NAZEV', a_NAZEV, a_PREFNAZEV, a_SUFNAZEV);
  l_INDEX := 0;

  << smyckanazev >> while B_UNQ_STR_EX('SEPTIMAPP','RECEPT','NAZEV','ZKRATKA','',l_INTERIMNAZEV,-1,-1,-1,-1,a_POLPORCERCPTID) <> 0 loop
    -- opakovat dokud není název unikátní
    l_INDEX := l_INDEX+1;
    l_INTERIMNAZEV := RECEPT__DejHodnotuPole('NAZEV', a_NAZEV, a_PREFNAZEV, concat(a_SUFNAZEV, ' ', l_INDEX));
    -- ochrana proti zacyklení
    if l_INDEX = 20 then
      EXIT smyckanazev;
    end if;
  end loop;
  a_NAZEV := l_INTERIMNAZEV;

  if coalesce(a_POPIS,'') <> '' then
    a_POPIS := concat(coalesce(a_PREFPOPIS,''),a_POPIS,coalesce(a_SUFPOPIS,''));
  end if;

  l_INDEX := 0;
  if coalesce(a_ZKRATKA,'') <> '' then
    a_ZKRATKA := RECEPT__DejHodnotuPole('ZKRATKA',a_ZKRATKA,a_PREFZKRATKA,a_SUFZKRATKA);
    << smyckazkratka >> while
    admin_base.B_UNQ_STR_EX('SEPTIMAPP','RECEPT','ZKRATKA','NAZEV','',a_ZKRATKA,-1,-1,-1,-1,a_POLPORCERCPTID) <> 0 loop
      -- opakovat dokud není ZKRATKA unikátní
      l_INDEX := l_INDEX+1;
      a_ZKRATKA := RECEPT__DejHodnotuPole('ZKRATKA',a_ZKRATKA,null,l_INDEX);
      -- ochrana proti zacyklení
      if l_INDEX = 20 then
        EXIT smyckazkratka;
      end if;
    end loop;
  end if;

  if coalesce(a_KLIC,'') <> '' then
    a_KLIC := RECEPT__DejHodnotuPole('KLIC',a_KLIC,a_PREFKLIC,a_SUFKLIC);
    l_INDEX := 0;
    << smyckaklic >> while
    admin_base.B_UNQ_STR('SEPTIMAPP','RECEPT','KLIC','',a_KLIC,-1,-1,a_POLPORCERCPTID) <> 0 loop
      -- opakovat dokud není KLIC unikátní
      l_INDEX := l_INDEX+1;
      a_KLIC := RECEPT__DejHodnotuPole('KLIC',a_KLIC,null,l_INDEX);
      -- ochrana proti zacyklení
      if l_INDEX = 20 then
        EXIT smyckaklic;
      end if;
    end loop;
  end if;

  if coalesce(a_IDENTCODE,'') <> '' then
    a_IDENTCODE := RECEPT__DejHodnotuPole('IDCODE',a_IDENTCODE,a_PREFIDENTCODE,a_SUFIDENTCODE);
    l_INDEX := 0;
    << smyckaidentcode >> while
    admin_base.B_UNQ_STR('SEPTIMAPP','RECEPT','IDCODE','',a_IDENTCODE,-1,-1,a_POLPORCERCPTID) <> 0 loop
      -- opakovat dokud není IDCODE unikátní
      l_INDEX := l_INDEX+1;
      a_IDENTCODE := RECEPT__DejHodnotuPole('IDCODE',a_IDENTCODE,null,l_INDEX);
      -- ocharna proti zacyklení
      if l_INDEX = 20 then
        EXIT smyckaidentcode;
      end if;
    end loop;
  end if;

  if a_PLU is not null then
    a_PLU := a_PLU+a_DELTAPLU;
    l_INDEX := 0;
    << smyckaplu >> while
    admin_base.B_UNQ_INT('SEPTIMAPP','RECEPT','PLUCODE','',a_PLU,-1,-1,a_POLPORCERCPTID) <> 0 loop
      -- opakovat dokud není PLUCODE unikátní
      l_INDEX := l_INDEX+1;
      a_PLU := a_PLU+1;
      -- ochrana proti zacyklení
      if l_INDEX = 50 then
        EXIT smyckaplu;
      end if;
    end loop;
  end if;

  if a_BONUS is not null then
    a_BONUS := a_BONUS*coalesce(a_BONUSKOEF,0);
  end if;

end; $$;



select ASWDropFunction ('RECEPT__DejHodnotuPole');
/*  Funkce vrátí hodnotu v a_VALUE rozšířenou o a_PREFIX a a_SUFFIX. Když by rošířená hodnota přesáhla povolenou
 *  délku fieldu pro tabulku RECEPT, zkrátí původní hodnotu v a_VALUE , tak aby se vešel prefix i suffix.
*/
create or replace function admin_septim.RECEPT__DejHodnotuPole(
  in a_COLUMNNAME          FIELDNAZEVSTR,
  in a_VALUE               VALUETXT,
  in a_PREFIX              VALUETXT,
  in a_SUFFIX              VALUETXT
) returns VALUETXT
language plpgsql security definer as $$
declare
  -- zjistim délku pole
  l_COLUMNWIDTH            CISLOINT;
  l_VALUE                  VALUETXT;
begin
  begin
    select (case when t.typtype = 'd' then t.typtypmod else a.atttypmod end) - 4 into strict l_COLUMNWIDTH
       from pg_attribute as a
         join pg_type as t on a.atttypid = t.oid
     where a.attrelid = 'recept'::regclass::oid and a.attname = lower(a_COLUMNNAME);
   exception
    when NO_DATA_FOUND then
  end;
  if length(concat(coalesce(a_PREFIX,''),a_VALUE,coalesce(a_SUFFIX,''))) > l_COLUMNWIDTH then
    -- když je po přidání prefixu a sufixu hodnota delší, zkrátím původní název, tak aby při doplnění prefixu a sufixu
    -- nepřesáhla hodnota povolenou délku
    if l_COLUMNWIDTH -(length(a_PREFIX)+length(a_SUFFIX)) > 0 then
      l_VALUE := substr(a_VALUE,1,l_COLUMNWIDTH -(length(a_PREFIX)+length(a_SUFFIX)));
    else
      l_VALUE := '';
    end if;
  else
    l_VALUE := a_VALUE;
  end if;
  return concat(coalesce(a_PREFIX,''),l_VALUE,coalesce(a_SUFFIX,''));
end; $$;;




select ASWDropFunction ('RECEPT_GetReceptByPLU');
/*  Funkce vrátí ID receptury podle zadaného PLU v parametru a_PLUCODE. Když bude a_HIDE=0, bude se hledat mezi
 *  neskrytýmy záznamy, když bude a_HIDE=1, bude se hledat mezi skrytýmy záznamy. Když bude a_HIDE=null, tak při vyhledávání
 *  nezáleží jestli je záznam skrytý nebo ne. Když receptura s PLU neexistuje výsledek
 *  záleží na hodnotě parametru a_ERRBASE. Když je a_ERRBASE:
 *   =0 ......  vyvolá defaultní raiserror
 *   >0 ......  vyvolá zadaný raiserror
 *   <0 ......  vrátí null
*/
create or replace function admin_septim.RECEPT_GetReceptByPLU(
  in a_PLUCODE             PLUINT,
  in a_HIDE                BOOLBIT,
  in a_ERRBASE             INTEGER
) returns REFIDINT
language plpgsql security definer as $$
declare
  l_RCPTID                 REFIDINT;
  l_HOOKDATA               VALUEJSONARR_NU;
  l_RCPTIDTXT              PARAMTXT;
  l_STOPSEARCHTXT          PARAMTXT;
  l_STOPSEARCH             VALUEBOOL;
begin

  l_HOOKDATA := (B_HOOK_CallHooked ('Recipe', 'BeforePLUSearch', json_build_object('plucode', a_PLUCODE, 'hide', a_HIDE), '')).a_OUTDATA;
  l_RCPTIDTXT := B_HOOK_ObtainValueSingle(l_HOOKDATA, 'rcptid');
  l_STOPSEARCHTXT := B_HOOK_ObtainValueSingle(l_HOOKDATA, 'stopSearch');
  l_RCPTID := cast(l_RCPTIDTXT as REFIDINT);
  l_STOPSEARCH := coalesce(cast(l_STOPSEARCHTXT as VALUEBOOL), false);
  if not l_STOPSEARCH and l_RCPTID is null then
    select RCPTID into l_RCPTID from RECEPT where SMAZAN = 0 and (HIDE = a_HIDE or a_HIDE is null) and PLUCODE = a_PLUCODE;
  end if;
  if l_RCPTID is null then
    if a_ERRBASE = 0 then
      perform ASWError(35323, cast(array[a_PLUCODE] as text[]));
    end if;
    if a_ERRBASE > 0 then
      perform ASWError(a_ERRBASE, cast(array[a_PLUCODE] as text[]));
    end if;
  end if;
  return l_RCPTID;
end; $$;;



select ASWDropProcedure ('RECEPT_FindByKey');
create or replace function admin_septim.RECEPT_FindByKey(
  in  a_KLIC               KLICSTR,
  in  a_RECEPTTYPKLIC      KLICSTR,      -- klíč typu receptury
  out a_RCPTID             REFIDINT,
  out a_NAZEV              NAZEVSTR
)
language plpgsql security definer
-- klíč typu receptury
as $$
begin
  begin
    select R.RCPTID,R.NAZEV into strict a_RCPTID,a_NAZEV from RECEPT as R join
    RECEPTTYP as RT on R.RECTID = RT.RECTID where
    R.KLIC = a_KLIC and
    R.HIDE = false and
    R.SMAZAN = 0 and
   (RT.KLIC = a_RECEPTTYPKLIC or a_RECEPTTYPKLIC is null);
 exception
    when NO_DATA_FOUND then
  end;
  if a_RCPTID is null then
    if a_RECEPTTYPKLIC is null then
      perform admin_base.ASWError(35338, cast(array[a_KLIC] as text[]));
    else
      perform admin_base.ASWError(35393, cast(array[a_KLIC,admin_septim.RECEPTTYP_GetNazevByKlic(a_RECEPTTYPKLIC)] as text[]));
    end if;
  end if;
  return;
end; $$;



select ASWDropFunction('RECEPT_GetReceptKlic');
create or replace function admin_septim.RECEPT_GetReceptKlic(
  in a_RCPTID              IDINT
) returns KLICSTR
language plpgsql security definer as $$
declare
  l_RECKLIC                KLICSTR;
begin
  begin
    select KLIC into strict l_RECKLIC from RECEPT where RCPTID = a_RCPTID;
  exception
    when NO_DATA_FOUND then
  end;
  return l_RECKLIC;
end; $$;;



select ASWDropFunction ('RECEPT_ZadavatCenu');
/**  Když se k receptuře s ID a_RCPTID zadává cena vrátí 1. Když ne, záleží výsledek na hodnotě v a_ERROBASE.
 *   0 ....... defaltní raiserror
 *   >1 ...... zadaný raiserror. Do textu chyby se doplní za parametr název typu receptury.
 *   <1 ...... vrátí 0
 *   Zvláštní typ receptury je korunová receptura. U té se zadává vždy zákaldní cena automaticky a vždy 1 Kč.
 *   V editoru je tato položka needitovatelná a ani se nesmí vložit cena pro jinou cenovou kategorii. Funkce se vyhodnotí
 *   podle parametru a_KORUNOVA. Když je 1, vrátí pro korunovou 1, když je 0, vrátí pro korunovou 0. V některých případech
 *   je totiž zapotřebí pro korunovou receoturu vyhodnotit, že se cena zadává např. při vkládání receptury
*/
create or replace function admin_septim.RECEPT_ZadavatCenu(
  in a_RCPTID              REFIDINT,
  in a_ERRBASE             CISLOINT,
  in a_KORUNOVA            BOOLBIT default false      -- jestli to má vrátit 1 v případě, že receptura je korunová
) returns BOOLBIT
language plpgsql security definer -- jestli to má vrátit 1 v případě, že receptura je korunová
as $$
declare
  l_RECTYPNAZEV            NAZEVSTR;
  l_RECTYPKLIC             KLICSTR;
begin
  l_RECTYPKLIC := RECEPT_GetReceptTypKlic(a_RCPTID);
  if l_RECTYPKLIC in('STANDARDNI','LEKCE','TARIF','STANDARDNISTORNO','VKLADANI','SLOZENEMENU',
  'MODIFIKATORCENOVY') or
   (l_RECTYPKLIC = 'KORUNOVA' and a_KORUNOVA = true) then
    return true;
  else
    begin
      select admin_base.B_GetDTTText(RT.SOURCEM,'RECEPTTYP','NAZEV',RT.KLIC,RT.NAZEV) into strict l_RECTYPNAZEV
      from RECEPT as R join RECEPTTYP as RT on R.RECTID = RT.RECTID where
      RCPTID = a_RCPTID;
    exception
      when NO_DATA_FOUND then
    end;
    if a_ERRBASE = 0 then
      perform admin_base.ASWError(35341, cast(array[l_RECTYPNAZEV] as text[]));
    end if;
    if a_ERRBASE > 0 then
      perform admin_base.ASWError(a_ERRBASE, cast(array[l_RECTYPNAZEV] as text[]));
    end if;
  end if;
  -- když to prošlo až sem tak se vrátí 0
  return false;
end; $$;;



select ASWDropFunction ('RECEPT_PovoleneDotace');
/**  Když se k receptuře s ID a_RCPTID může zadávat dotace vrátí 1. Když ne, záleží výsledek na hodnotě v a_ERRBASE.
 *   0 ....... defaltní raiserror
 *   >1 ...... zadaný raiserror. Do textu chyby se doplní za parametr název typu receptury.
 *   <1 ...... vrátí 0
*/
create or replace function admin_septim.RECEPT_PovoleneDotace(
  in a_RCPTID              REFIDINT,
  in a_ERRBASE             CISLOINT
) returns BOOLBIT
language plpgsql security definer as $$
declare
  l_RECTYPNAZEV            NAZEVSTR;
begin
  if exists(select 1 from RECEPT as R join RECEPTTYP as RT on R.RECTID = RT.RECTID where
  R.RCPTID = a_RCPTID and
  RT.KLIC in('STANDARDNI','TARIF','LEKCE','VKLADANI','SLOZENEMENU','MODIFIKATORCENOVY')) then
    return true;
  else
    begin
      select RT.NAZEV into strict l_RECTYPNAZEV
      from RECEPT as R join RECEPTTYP as RT on R.RECTID = RT.RECTID where
      RCPTID = a_RCPTID;
    exception
      when NO_DATA_FOUND then
    end;
    if a_ERRBASE = 0 then
      perform admin_base.ASWError(35342, cast(array[l_RECTYPNAZEV] as text[]));
    end if;
    if a_ERRBASE > 0 then
      perform admin_base.ASWError(a_ERRBASE, cast(array[l_RECTYPNAZEV] as text[]));
    end if;
  end if;
  -- když to prošlo až sem tak se vrátí 0
  return false;
end; $$;;



select ASWDropFunction ('RECEPT_PovolitDoplatky');
create or replace function admin_septim.RECEPT_PovolitDoplatky(
) returns BOOLBIT
language plpgsql security definer as $$
begin
  return admin_base.B_LIMITS_GetLicence('SEPTIMAPP','DOPLATEKRECEPTUR',0);
end; $$;;



select ASWDropProcedure ('RECEPT_H_PouzitDoplatek');
drop type if exists admin_septim.RECEPT_H_PouzitDoplatek_rs cascade;
create type admin_septim.RECEPT_H_PouzitDoplatek_rs as (
  MINMNOZSTVI              CISLOINT,
  "#MINMNOZSTVI"           CISLOINT,
  "~MINMNOZSTVI"           BOOLBIT,
  DOPLATEKRECEPT           CISLOINT,
  "#DOPLATEKRECEPT"        CISLOINT,
  "~DOPLATEKRECEPT"        BOOLBIT
);
create or replace function admin_septim.RECEPT_H_PouzitDoplatek(
  in    a_POUZITDOPL       BOOLBIT,
  in    a_ID               IDINT,
  in    a_MASTERID         IDINT,
  in    a_COMMAND          E_HNDLParam,
  in    a_FOCUSED          E_HNDLParam,
  in    a_PARAMS           E_HNDLParam
) returns RECEPT_H_PouzitDoplatek_rs
language plpgsql security definer as $$
declare
  l_RESULT                 RECEPT_H_PouzitDoplatek_rs;
begin
  l_RESULT.MINMNOZSTVI := null;
  l_RESULT.DOPLATEKRECEPT := null;
  if a_POUZITDOPL = true then
    l_RESULT."~MINMNOZSTVI" := false;
    l_RESULT."#MINMNOZSTVI" := 1;
    l_RESULT."~DOPLATEKRECEPT" := false;
    l_RESULT."#DOPLATEKRECEPT" := 1;
  else
    l_RESULT."#MINMNOZSTVI" := 0;
    l_RESULT."#DOPLATEKRECEPT" := 0;
  end if;
  return l_RESULT;
end; $$;

select grant_func('RECEPT_H_PouzitDoplatek', 'SPEXEC');



select ASWDropFunction ('RECEPT_StandardniCheckVazby');
/**  V systemu existují standardni receptury, ke kterým lze přiřadit obaly nebo doplatky.
 *   Receptury, které se přiřazují jako obaly nebo doplatky jsou taky standardní receptury. Ale některé vazby
 *   nejsou povoleny (například zanoření) a můžou způsobit problémy při markování. Tato funkce otestuje, jestli
 *   nevznikne mezi standardnima recepturama nedovolená vazba.
 *   Nedovolené vazby:
 *     1. receptura nemůže být přiřazená jako obal, protože už má sama obal přířazen
 *     2. je již přiřzena jako obal a proto nemůže mít obal
 *     3. receptura nemůže být přiřazená jako doplatek, protože už má sama doplatek přiřazen
 *     4. je již přiřazena jako doplatek a proto nemůže mít doplatek
 *     5. receptura nemůže být přiřazena jako obal, protože má sama přiřazen doplatek
 *     6. receptura nemůže být přiřazena jako doplatek, protože má sama přiřazen obal
 *     7. receptuře nemůže být přiřazen obal, protože je již přiřazena jako doplatek
 *     8. receptuře nemůže být přiřazen doplatek, protože je již přiřazena jako obal
 *     9. stejná receptura nemůže být zároveň doplatkem a obalem
 *    10. receptura nemůže být přiřazena jako doplatek protože je ingrediencí jiné receptury
 *    11. Doplatek jde přiřadit jen standardní nebo korunové receptuře
*/
create or replace function admin_septim.RECEPT_StandardniCheckVazby(
  in a_RCPTID              REFIDINT,
  in a_RECTYPKLIC          KLICSTR,
  in a_OBALRCPTID          REFIDINT,     -- id receptury obalu, který se případně přiřadil receptuře
  in a_DOPLATEKRCPTID      REFIDINT      -- id receptury doplatku, který se případně přiřadil receptuře
) returns CISLOINT
language plpgsql security definer
-- id receptury obalu, který se případně přiřadil receptuře
-- id receptury doplatku, který se případně přiřadil receptuře
as $$
declare
  l_RECEPTNAZEV            NAZEVSTR;
  l_OBALRECNAZEV           NAZEVSTR;
  l_DOPLATEKRECNAZEV       NAZEVSTR;
begin
  if a_OBALRCPTID is not null then
    perform admin_septim.RECEPT_CheckStandardniTyp(a_OBALRCPTID,35328);
    -- receptura nemuže být samasobě obalem
    if a_RCPTID = a_OBALRCPTID then
      perform admin_base.ASWError(35343);
    end if;
    -- receptura nemůže být přiřazená jako obal, protože už má sama obal přířazen
    if exists(select 1 from RECEPT where RCPTID = a_OBALRCPTID and (OBALRCPTID is not null) and SMAZAN = 0) then
      perform admin_base.ASWError(35398, cast(array[admin_septim.RECEPT_GetNazev(a_OBALRCPTID)] as text[]));
    end if;
    -- je již použita jako obal a proto nemůže mít obal
    if exists(select 1 from RECEPT where OBALRCPTID = a_RCPTID and SMAZAN = 0) then
      perform admin_base.ASWError(35399, cast(array[admin_septim.RECEPT_GetNazev(a_RCPTID)] as text[]));
    end if;
  end if;
  if a_DOPLATEKRCPTID is not null then
    if a_RECTYPKLIC <> 'STANDARDNI' then
      perform admin_base.ASWError(35412);
    end if;
    perform admin_septim.RECEPT_CheckStandardniTyp(a_DOPLATEKRCPTID,35403);
    -- receptura nemůže být samasobě doplatkem
    if a_RCPTID = a_DOPLATEKRCPTID then
      perform admin_base.ASWError(35404);
    end if;
    -- receptura nemůže být přiřazená jako doplatek, protože už má sama doplatek přiřazen
    if exists(select 1 from RECEPT where RCPTID = a_DOPLATEKRCPTID and (DOPLATEKRCPTID is not null) and SMAZAN = 0) then
      perform admin_base.ASWError(35400, cast(array[admin_septim.RECEPT_GetNazev(a_DOPLATEKRCPTID)] as text[]));
    end if;
    -- je již použita jako doplatek a proto nemůže mít doplatek
    if exists(select 1 from RECEPT where DOPLATEKRCPTID = a_RCPTID and SMAZAN = 0) then
      perform admin_base.ASWError(35401, cast(array[admin_septim.RECEPT_GetNazev(a_RCPTID)] as text[]));
    end if;
  end if;
  -- receptura nemůže být přiřazena jako obal, protože má sama přiřazen doplatek
  if exists(select 1 from RECEPT where SMAZAN = 0 and RCPTID = a_OBALRCPTID and DOPLATEKRCPTID is not null) then
    perform admin_base.ASWError(35405, cast(array[admin_septim.RECEPT_GetNazev(a_OBALRCPTID)] as text[]));
  end if;
  -- receptura nemůže být přiřazena jako doplatek, protože má sama přiřazen obal
  if exists(select 1 from RECEPT where SMAZAN = 0 and RCPTID = a_DOPLATEKRCPTID and OBALRCPTID is not null) then
    perform admin_base.ASWError(35406, cast(array[admin_septim.RECEPT_GetNazev(a_DOPLATEKRCPTID)] as text[]));
  end if;
  -- receptuře nemůže být přiřazen obal, protože je již přiřazena jako doplatek
  if exists(select 1 from RECEPT where SMAZAN = 0 and DOPLATEKRCPTID = a_RCPTID and a_OBALRCPTID is not null) then
    perform admin_base.ASWError(35407, cast(array[admin_septim.RECEPT_GetNazev(a_RCPTID)] as text[]));
  end if;
  -- receptuře nemůže být přiřazen doplatek, protože je již přiřazena jako obal
  if exists(select 1 from RECEPT where SMAZAN = 0 and OBALRCPTID = a_RCPTID and a_DOPLATEKRCPTID is not null) then
    perform admin_base.ASWError(35408, cast(array[admin_septim.RECEPT_GetNazev(a_RCPTID)] as text[]));
  end if;
  -- stejná receptura nemůže být zároveň doplatkem a obalem
  if a_OBALRCPTID = a_DOPLATEKRCPTID then
    perform admin_base.ASWError(35409);
  end if;
  -- receptura a_DOPLATEKRCPTID nemůže být přiřazena jako doplatek, protože je ingrediencí receptury
  if exists(select 1 from RLRCPTFULL where RCPTID = a_DOPLATEKRCPTID) then
    perform admin_base.ASWError(35410, cast(array[admin_septim.RECEPT_GetNazev(a_DOPLATEKRCPTID)] as text[]));
  end if;
  return null;
end; $$;;



select ASWDropProcedure('RECEPTPRIDEJSKRECMultiGet');
create or replace function admin_septim.RECEPTPRIDEJSKRECMultiGet(
  in a_IDLIST              IDINTARR
) returns void
language plpgsql security definer as $$
begin
  perform admin_params.P_CheckGlobalParamBOOL('SYNCRECEPT','RECEPTIMPORTDB',false,35539);
  perform admin_users.U_CheckPerm('SEPTIMAPP',E'RECEPT\\RECHROMADNEOPR',0);
  if exists(select 1 from RECEPT where RCPTID in (select unnest(a_IDLIST)) and SMAZAN = 0 and RECEPT_CheckSlozeneMenuTyp(RCPTID,-1) = false) then
    perform admin_users.U_CheckPerm('SEPTIMAPP',E'RECEPT\\RECEPTUPD',0);
  end if;
  if exists(select 1 from RECEPT where RCPTID in (select unnest(a_IDLIST)) and SMAZAN = 0 and RECEPT_CheckSlozeneMenuTyp(RCPTID,-1) = true) then
    perform admin_users.U_CheckPerm('SEPTIMAPP',E'RECEPT\\SLOZENEMENUOPERATIONS',0);
  end if;
  if exists(select 1 from RECEPT where RCPTID in (select unnest(a_IDLIST)) and SMAZAN = 0 and RECEPT_CheckPolPorceTyp(RCPTID,-1) = true) then
    -- u polovicnich porci nelze menit zarazeni
    perform admin_base.ASWError(35497);
  end if;
end; $$;

select grant_func('RECEPTPRIDEJSKRECMultiGet', 'SPEXEC');


select ASWDropProcedure('RECEPTPRIDEJSKRECMultiExec');
/** Procedura pro prirazeni receptur do skuprec1-4, aktualizujice se i pripadne polovicni porce.
*/
create or replace function admin_septim.RECEPTPRIDEJSKRECMultiExec(
  in a_SKUP1_CHECKED       BOOLBIT,
  in a_SKUP2_CHECKED       BOOLBIT,
  in a_SKUP3_CHECKED       BOOLBIT,
  in a_SKUP4_CHECKED       BOOLBIT,
  in a_SKUPREC1            NAZEVSTR,
  in a_SKUPREC2            NAZEVSTR,
  in a_SKUPREC3            NAZEVSTR,
  in a_SKUPREC4            NAZEVSTR,
  in a_IDLIST              IDINTARR,
  in a_FORCE               FORCETXT default null
) returns void
language plpgsql security definer as $$
declare
  l_RCPTID                 REFIDINT;
  l_RCPT1IDPUV             REFIDINT;
  l_RCPT2IDPUV             REFIDINT;
  l_RCPT3IDPUV             REFIDINT;
  l_RCPT4IDPUV             REFIDINT;
  l_RCPT1ID                REFIDINT;
  l_RCPT2ID                REFIDINT;
  l_RCPT3ID                REFIDINT;
  l_RCPT4ID                REFIDINT;
  l_RETFORCE               CISLOINT;
  l_NAZEVREC               NAZEVSTR;
  l_NASTAVIT               BOOLBIT;
  l_UNSET                  BOOLBIT;
begin
  perform admin_params.P_CheckGlobalParamBOOL('SYNCRECEPT','RECEPTIMPORTDB',false,35539);
  perform admin_users.U_CheckPerm('SEPTIMAPP',E'RECEPT\\RECHROMADNEOPR',0);
  if exists(select 1 from RECEPT where RCPTID in (select unnest(a_IDLIST)) and SMAZAN = 0 and RECEPT_CheckSlozeneMenuTyp(RCPTID,-1) = false) then
    perform admin_users.U_CheckPerm('SEPTIMAPP',E'RECEPT\\RECEPTUPD',0);
  end if;
  if exists(select 1 from RECEPT where RCPTID in (select unnest(a_IDLIST)) and SMAZAN = 0 and RECEPT_CheckSlozeneMenuTyp(RCPTID,-1) = true) then
    perform admin_users.U_CheckPerm('SEPTIMAPP',E'RECEPT\\SLOZENEMENUOPERATIONS',0);
  end if;
  if exists(select 1 from RECEPT where RCPTID in (select unnest(a_IDLIST)) and SMAZAN = 0 and RECEPT_CheckPolPorceTyp(RCPTID,-1) = true) then
    -- u polovicnich porci nelze menit zarazeni
    perform admin_base.ASWError(35497);
  end if;
  if a_SKUP1_CHECKED = true or a_SKUP2_CHECKED = true then
    perform admin_users.U_CheckPerm('SEPTIMAPP',E'RECEPT\\RECEPTSKUPREC12EDT',0);
  end if;
  if a_SKUP3_CHECKED = true or a_SKUP4_CHECKED = true then
    perform admin_users.U_CheckPerm('SEPTIMAPP',E'RECEPT\\RECEPTSKUPREC34EDT',0);
  end if;
  if a_SKUP1_CHECKED = true then
    if admin_params.P_GetGlobalParamBOOL('GLOBPARAMSEPTIM','POVSKREC1',null,false) = true then
      perform admin_base.B_NULL_STR('SKUPREC1',a_SKUPREC1,35416);
    end if;
    if a_SKUPREC1 <> '' then
      select B_REFTABLE.a_ID into l_RCPT1ID from admin_base.B_REFTABLE('SEPTIMAPP','SKUPREC1','NAZEV',a_SKUPREC1,35415,'SKUPREC1');
    end if;
  end if;
  if a_SKUP2_CHECKED = true then
    if admin_params.P_GetGlobalParamBOOL('GLOBPARAMSEPTIM','POVSKREC2',null,false) = true then
      perform admin_base.B_NULL_STR('SKUPREC2',a_SKUPREC2,35418);
    end if;
    if a_SKUPREC2 <> '' then
      select B_REFTABLE.a_ID into l_RCPT2ID from admin_base.B_REFTABLE('SEPTIMAPP','SKUPREC2','NAZEV',a_SKUPREC2,35417,'SKUPREC2');
    end if;
  end if;
  if a_SKUP3_CHECKED = true then
    if admin_params.P_GetGlobalParamBOOL('GLOBPARAMSEPTIM','POVSKREC3',null,false) = true then
      perform admin_base.B_NULL_STR('SKUPREC3',a_SKUPREC3,35420);
    end if;
    if a_SKUPREC3 <> '' then
      select B_REFTABLE.a_ID into l_RCPT3ID from admin_base.B_REFTABLE('SEPTIMAPP','SKUPREC3','NAZEV',a_SKUPREC3,35419,'SKUPREC3');
    end if;
  end if;
  if a_SKUP4_CHECKED = true then
    if admin_params.P_GetGlobalParamBOOL('GLOBPARAMSEPTIM','POVSKREC4',null,false) = true then
      perform admin_base.B_NULL_STR('SKUPREC4',a_SKUPREC4,35422);
    end if;
    if a_SKUPREC4 <> '' then
      select B_REFTABLE.a_ID into l_RCPT4ID from admin_base.B_REFTABLE('SEPTIMAPP','SKUPREC4','NAZEV',a_SKUPREC4,35421,'SKUPREC4');
    end if;
  end if;
  for l_RCPTID in (select unnest(a_IDLIST)) loop
    if l_RCPTID is not null then
      begin
        select SKR1ID,SKR2ID,SKR3ID,SKR4ID into strict l_RCPT1IDPUV,l_RCPT2IDPUV,l_RCPT3IDPUV,l_RCPT4IDPUV from RECEPT where
        RCPTID = l_RCPTID and SMAZAN = 0 LIMIT 1;
      exception
        when NO_DATA_FOUND then
      end;
      if((a_SKUP1_CHECKED = true) and (l_RCPT1ID is not null) and (l_RCPT1IDPUV is not null) and (coalesce(l_RCPT1IDPUV,-1) <> coalesce(l_RCPT1ID,-1))) or
       ((a_SKUP2_CHECKED = true) and (l_RCPT2ID is not null) and (l_RCPT2IDPUV is not null) and (coalesce(l_RCPT2IDPUV,-1) <> coalesce(l_RCPT2ID,-1))) or
       ((a_SKUP3_CHECKED = true) and (l_RCPT3ID is not null) and (l_RCPT3IDPUV is not null) and (coalesce(l_RCPT3IDPUV,-1) <> coalesce(l_RCPT3ID,-1))) or
       ((a_SKUP4_CHECKED = true) and (l_RCPT4ID is not null) and (l_RCPT4IDPUV is not null) and (coalesce(l_RCPT4IDPUV,-1) <> coalesce(l_RCPT4ID,-1))) then
        l_RETFORCE := admin_eng.CheckForce(a_FORCE,concat('PRIRADSKR_',l_RCPTID));
        if l_RETFORCE is null then
          l_RETFORCE := admin_eng.CheckForce(a_FORCE,'PRIRADSKRALL');
        end if;
        case
          when l_RETFORCE is null then
            begin
              select NAZEV into strict l_NAZEVREC from RECEPT where RCPTID = l_RCPTID;
            exception
              when NO_DATA_FOUND then
            end;
            perform admin_base.ASWError(35423, cast(array[l_NAZEVREC,l_RCPTID] as text[]));
          when l_RETFORCE = 1 then
            l_NASTAVIT := 1;
          when l_RETFORCE = 0 then
            l_NASTAVIT := 0;
          else
            null;-- ADDED EMPTY ELSE
        end case;
      else
        l_NASTAVIT := 1;
      end if;
      if((a_SKUP1_CHECKED = true) and (l_RCPT1ID is null) and (l_RCPT1IDPUV is not null)) or
       ((a_SKUP2_CHECKED = true) and (l_RCPT2ID is null) and (l_RCPT2IDPUV is not null)) or
       ((a_SKUP3_CHECKED = true) and (l_RCPT3ID is null) and (l_RCPT3IDPUV is not null)) or
       ((a_SKUP4_CHECKED = true) and (l_RCPT4ID is null) and (l_RCPT4IDPUV is not null)) then
        l_RETFORCE := admin_eng.CheckForce(a_FORCE,concat('UNSETSKR_',l_RCPTID));
        if l_RETFORCE is null then
          l_RETFORCE := admin_eng.CheckForce(a_FORCE,'UNSETSKRALL');
        end if;
        case
          when l_RETFORCE is null then
            begin
              select NAZEV into strict l_NAZEVREC from RECEPT where RCPTID = l_RCPTID;
            exception
              when NO_DATA_FOUND then
            end;
            perform admin_base.ASWError(35424, cast(array[l_NAZEVREC,l_RCPTID] as text[]));
          when l_RETFORCE = 1 then
            l_UNSET := 1;
          when l_RETFORCE = 0 then
            l_UNSET := 0;
          else
            null;-- ADDED EMPTY ELSE
        end case;
      else
        l_UNSET := 1;
      end if;
      if l_NASTAVIT = true or l_UNSET = true then
        if (a_SKUP1_CHECKED = true) or (a_SKUP2_CHECKED = true) or (a_SKUP3_CHECKED = true) or (a_SKUP4_CHECKED = true) then
          perform admin_users.U_OPRAVA_P_RowUpdate('SEPTIMAPP','RECEPT',l_RCPTID,admin_base.B_GetTxt('SEPTIMAPP','RECEPT','HROMADPRIRAZRECDOSKUP'),
          '');
        end if;
        if a_SKUP1_CHECKED = true and((l_NASTAVIT = true and l_RCPT1ID is not null) or (l_UNSET = true and l_RCPT1ID is null)) then
          update RECEPT set SKR1ID = l_RCPT1ID where(RCPTID = l_RCPTID or (SMAZAN = 0 and PPMASTERRCPTID = l_RCPTID));
        end if;
        if a_SKUP2_CHECKED = true and((l_NASTAVIT = true and l_RCPT2ID is not null) or (l_UNSET = true and l_RCPT2ID is null)) then
          update RECEPT set SKR2ID = l_RCPT2ID where(RCPTID = l_RCPTID or (SMAZAN = 0 and PPMASTERRCPTID = l_RCPTID));
        end if;
        if a_SKUP3_CHECKED = true and((l_NASTAVIT = true and l_RCPT3ID is not null) or (l_UNSET = true and l_RCPT3ID is null)) then
          update RECEPT set SKR3ID = l_RCPT3ID where(RCPTID = l_RCPTID or (SMAZAN = 0 and PPMASTERRCPTID = l_RCPTID));
        end if;
        if a_SKUP4_CHECKED = true and((l_NASTAVIT = true and l_RCPT4ID is not null) or (l_UNSET = true and l_RCPT4ID is null)) then
          update RECEPT set SKR4ID = l_RCPT4ID where(RCPTID = l_RCPTID or (SMAZAN = 0 and PPMASTERRCPTID = l_RCPTID));
        end if;
      end if;
    end if; --if l_RCPTID is not null
  end loop;
end; $$;

select grant_func('RECEPTPRIDEJSKRECMultiExec', 'SPEXEC');


select ASWDropFunction('RECEPT_CheckPermRECEPTSKLADPOLINS');
create or replace function admin_septim.RECEPT_CheckPermRECEPTSKLADPOLINS(
  in a_ERRORBASE           CISLOINT default 0
) returns BOOLBIT
language plpgsql security definer as $$
begin
  return admin_users.U_CheckPerm('SEPTIMAPP',E'RECEPT\\RECEPTSKLADPOLINS',a_ERRORBASE);
end; $$;;


select ASWDropFunction('RECEPT_CheckPermRECEPTSKLADPOLMAKE');
create or replace function admin_septim.RECEPT_CheckPermRECEPTSKLADPOLMAKE(
  in a_ERRORBASE           CISLOINT default 0
) returns BOOLBIT
language plpgsql security definer as $$
begin
  return admin_users.U_CheckPerm('SEPTIMAPP',E'RECEPT\\RECEPTSKLADPOLMAKE',a_ERRORBASE);
end; $$;


select ASWDropFunction('RECEPT_CheckPermRECEPTDEL');
create or replace function admin_septim.RECEPT_CheckPermRECEPTDEL(
  in a_ERRORBASE           CISLOINT default 0
) returns BOOLBIT
language plpgsql security definer as $$
begin
  return admin_users.U_CheckPerm('SEPTIMAPP',E'RECEPT\\RECEPTDEL',a_ERRORBASE);
end; $$;;


select ASWDropFunction('RECEPT_GetRCPTIDBy');
create or replace function admin_septim.RECEPT_GetRCPTIDBy(
  in a_IDFIELD             PARAMTXT,
  in a_VALUE               VALUETXT,
  in a_ERRORBASE           CISLOINT default 0
) returns REFIDINT
language plpgsql security definer as $$
declare
  l_RCPTID                 IDINT;
  l_ERRORBASE              CISLOINT;
begin
  l_RCPTID := null;
  case Upper(a_IDFIELD) when 'NAZEV' then
      select RCPTID into l_RCPTID from RECEPT where SMAZAN = 0 and NAZEV = a_VALUE;
      l_ERRORBASE := 35441;
    when 'KLIC' then
      select RCPTID into l_RCPTID from RECEPT where SMAZAN = 0 and KLIC = a_VALUE;
      l_ERRORBASE := 35442;
    when 'ZKRATKA' then
      select RCPTID into l_RCPTID from RECEPT where SMAZAN = 0 and ZKRATKA = a_VALUE;
      l_ERRORBASE := 35445;
    when 'IDENTCODE' then
      select RCPTID into l_RCPTID from RECEPT where SMAZAN = 0 and IDCODE = a_VALUE;
      l_ERRORBASE := 35443;
    else
      perform ASWError(35440, cast(array[a_IDFIELD] as text[]));
  end case;
  if l_RCPTID is null and a_ERRORBASE >= 0 then
    if a_ERRORBASE > 0 then
      perform ASWError(a_ERRORBASE, cast(array[a_IDFIELD, a_VALUE] as text[]));
    else
      perform ASWError(l_ERRORBASE, cast(array[a_VALUE] as text[]));
    end if;
  end if;
  return l_RCPTID;
end; $$;;



select ASWDropFunction ('RECEPT_BANKAExportXMLTree');
/**
 * Function returns XML  tree with data of recipe. Foreign keys are replaced by XML tree of data of subtable.
 */
create or replace function admin_septim.RECEPT_BANKAExportXMLTree(
  in a_ID                   IDINT
) returns XMLTEXT
language plpgsql security definer as $$
begin
  return XmlElement(name RECEPT,
           XmlElement(name RCPTID, RCPTID),
           --XmlElement(name RECTID, RECTID),                                     -- for DTT record ID is enough for identification
           XmlElement(name RECEPTTYPKLIC, RECEPTTYP_GetKlicByID(RECTID)),       -- for compatibility between S3 and S4 = IDs of DTT records could be different
           XmlElement(name SKR1ID, SKUPREC1_BANKAExportXMLTree(SKR1ID)),
           XmlElement(name SKR2ID, SKUPREC2_BANKAExportXMLTree(SKR2ID)),
           XmlElement(name SKR3ID, SKUPREC3_BANKAExportXMLTree(SKR3ID)),
           XmlElement(name SKR4ID, SKUPREC4_BANKAExportXMLTree(SKR4ID)),
           XmlElement(name OBALRCPTID, RECEPT_BANKAExportXMLTree(OBALRCPTID)),
           --XmlElement(name CHODID, CHODID),
           --XmlElement(name DRJDID, DRJDID),
           --XmlElement(name TISKZARZID, TISKZARZID),
           XmlElement(name CISLOL, CISLOL),
           XmlElement(name CISLOH, CISLOH),
           XmlElement(name NAZEV, NAZEV),
           XmlElement(name POPIS, POPIS),
           XmlElement(name KOMENTAR, KOMENTAR),
           XmlElement(name ZKRATKA, ZKRATKA),
           XmlElement(name PLUCODE, PLUCODE),
           XmlElement(name IDCODE, IDCODE),
           XmlElement(name KLIC, KLIC),
           XmlElement(name PORCI, PORCI),
           XmlElement(name GRAMAZ, GRAMAZ),
           XmlElement(name POSTUP, POSTUP),
           XmlElement(name DOBAPRIPRAVY, DOBAPRIPRAVY),
           XmlElement(name DOBAKONZUMACE, DOBAKONZUMACE),
           --XmlElement(name SCENA, 0),                                            -- SCENA: for backward compatibility
           XmlElement(name VZDYCENA, VZDYCENA),
           XmlElement(name PPMASTERRCPTID, RECEPT_BANKAExportXMLTree(PPMASTERRCPTID)),
           XmlElement(name PPCENAKOEF, PPCENAKOEF),
           XmlElement(name PPINGREDKOEF, PPINGREDKOEF),
           XmlElement(name VCTYP, VCTYP),
           XmlElement(name VCZAOKRC, VCZAOKRC),
           XmlElement(name VCZAOKRD, VCZAOKRD),
           XmlElement(name BONUS, BONUS),
           XmlElement(name SKPLREC, SKPLREC),
           XmlElement(name DOPLATEKRCPTID, RECEPT_BANKAExportXMLTree(DOPLATEKRCPTID)),
           XmlElement(name MINMNOZSTVI, MINMNOZSTVI),
           --XmlElement(name MAXSLEVA, MAXSLEVA),
           XmlElement(name POVPOPISOBJ, POVPOPISOBJ),
           XmlElement(name DEFPOPISYOBJ, DEFPOPISYOBJ),
           --XmlElement(name ALERGENY, ALERGENY),
           --XmlElement(name ALERGENYIDENT, ALERGENYIDENT),
           --XmlElement(name BARVA, BARVA),
           XmlElement(name AKTIVNI, AKTIVNI),
           XmlElement(name DURABILITY, DURABILITY),
           XmlElement(name CUSTOM1, CUSTOM1),
           XmlElement(name CUSTOM2, CUSTOM2),
           XmlElement(name CUSTOM3, CUSTOM3),
           XmlElement(name CUSTOM4, CUSTOM4),
           XmlElement(name CUSTOM5, CUSTOM5),
           XmlElement(name HIDE, HIDE),
           XmlElement(name SMAZAN, SMAZAN),
           XmlElement(name RKRS, RKRS)
      )
    from RECEPT
    where RCPTID = a_ID;
end; $$;



select ASWDropFunction ('RECEPT_BANKAImportXMLTree');
/**
 * Function to import XML tree of recipe.
 */
create or replace function admin_septim.RECEPT_BANKAImportXMLTree(
  in  a_XMLTREE             XMLTEXT,
  in  a_CREATE              BOOLBIT default true
) returns IDINT
language plpgsql security definer as $$
declare
  l_ID                      IDINT;
  l_RCPTID                  IDINT;
  l_RECEPTTYPKLIC           KLICSTR;
  l_SKR1IDXML               XMLTEXT;
  l_SKR2IDXML               XMLTEXT;
  l_SKR3IDXML               XMLTEXT;
  l_SKR4IDXML               XMLTEXT;
  l_OBALRCPTIDXML           XMLTEXT;
  l_CISLOL                  CISLOINT_R;
  l_CISLOH                  CISLOINT_R;
  l_NAZEV                   NAZEVSTR;
  l_POPIS                   POPISTXT;
  l_ZKRATKA                 ZKRATKASTR_NU;
  l_PLUCODE                 PLUINT;
  l_IDCODE                  IDCODESTR;
  l_KLIC                    KLICSTR_NU;
  l_PORCI                   MNOZSTVIFLT;
  l_GRAMAZ                  GRAMAZTXT;
  l_POSTUP                  POSTUPTXT;
  l_VZDYCENA                BOOLBIT;
  l_PPMASTERRCPTIDXML       XMLTEXT;
  l_PPCENAKOEF              KOEFICIENTFLT_1;
  l_PPINGREDKOEF            KOEFICIENTFLT_1;
  l_VCTYP                   TYPINT;
  l_VCZAOKRC                CISLOINT;
  l_VCZAOKRD                CISLOINT;
  l_BONUS                   CISLOFLT;
  l_SKPLREC                 BOOLBIT;
  l_DOPLATEKRCPTIDXML       XMLTEXT;
  l_MINMNOZSTVI             MNOZSTVIFLT_NU;
  l_AKTIVNI                 BOOLBIT_1;
  l_DURABILITY              NUMBERINT;
  l_CUSTOM1                 CUSTOMSTR;
  l_CUSTOM2                 CUSTOMSTR;
  l_CUSTOM3                 CUSTOMTXT;
  l_CUSTOM4                 CUSTOMTXT;
  l_CUSTOM5                 CUSTOMTXT;
  l_HIDE                    HIDEBOOL;
  l_SMAZAN                  SMAZANINT;
  l_RKRS                    RKRS;
begin
  if a_XMLTREE is not null then
    -- ignored fields: DOBAPRIPRAVY, DOBAKONZUMACE, ALERGENY, ALERGENYIDENT
    with XROWS as (
      select cast(unnest(xpath('/RECEPT', a_XMLTREE)) as xml) as rw)
    select
      cast((cast(xpath('RCPTID/text()',rw) as text[]))[1] as IDINT),
      cast((cast(xpath('RECEPTTYPKLIC/text()',rw) as text[]))[1] as KLICSTR),
      cast((cast(xpath('SKR1ID/SKUPREC1',rw) as text[]))[1] as XMLTEXT),
      cast((cast(xpath('SKR2ID/SKUPREC2',rw) as text[]))[1] as XMLTEXT),
      cast((cast(xpath('SKR3ID/SKUPREC3',rw) as text[]))[1] as XMLTEXT),
      cast((cast(xpath('SKR4ID/SKUPREC4',rw) as text[]))[1] as XMLTEXT),
      cast((cast(xpath('OBALRCPTID/RECEPT',rw) as text[]))[1] as XMLTEXT),
      cast((cast(xpath('CISLOL/text()',rw) as text[]))[1] as CISLOINT_R),
      cast((cast(xpath('CISLOH/text()',rw) as text[]))[1] as CISLOINT_R),
      cast((cast(xpath('NAZEV/text()',rw) as text[]))[1] as NAZEVSTR),
      cast((cast(xpath('POPIS/text()',rw) as text[]))[1] as POPISTXT),
      cast((cast(xpath('ZKRATKA/text()',rw) as text[]))[1] as ZKRATKASTR_NU),
      cast((cast(xpath('PLUCODE/text()',rw) as text[]))[1] as PLUINT),
      cast((cast(xpath('IDCODE/text()',rw) as text[]))[1] as IDCODESTR),
      cast((cast(xpath('KLIC/text()',rw) as text[]))[1] as KLICSTR_NU),
      cast((cast(xpath('PORCI/text()',rw) as text[]))[1] as MNOZSTVIFLT),
      cast((cast(xpath('GRAMAZ/text()',rw) as text[]))[1] as GRAMAZTXT),
      cast((cast(xpath('POSTUP/text()',rw) as text[]))[1] as POSTUPTXT),
      cast((cast(xpath('VZDYCENA/text()',rw) as text[]))[1] as BOOLBIT),
      cast((cast(xpath('PPMASTERRCPTID/RECEPT',rw) as text[]))[1] as XMLTEXT),
      cast((cast(xpath('PPCENAKOEF/text()',rw) as text[]))[1] as KOEFICIENTFLT_1),
      cast((cast(xpath('PPINGREDKOEF/text()',rw) as text[]))[1] as KOEFICIENTFLT_1),
      cast((cast(xpath('VCTYP/text()',rw) as text[]))[1] as TYPINT),
      cast((cast(xpath('VCZAOKRC/text()',rw) as text[]))[1] as CISLOINT),
      cast((cast(xpath('VCZAOKRD/text()',rw) as text[]))[1] as CISLOINT),
      cast((cast(xpath('BONUS/text()',rw) as text[]))[1] as CISLOFLT),
      cast((cast(xpath('SKPLREC/text()',rw) as text[]))[1] as BOOLBIT),
      cast((cast(xpath('DOPLATEKRCPTID/RECEPT',rw) as text[]))[1] as XMLTEXT),
      cast((cast(xpath('MINMNOZSTVI/text()',rw) as text[]))[1] as MNOZSTVIFLT_NU),
      cast((cast(xpath('AKTIVNI/text()',rw) as text[]))[1] as BOOLBIT_1),
      cast((cast(xpath('DURABILITY/text()',rw) as text[]))[1] as NUMBERINT),
      cast((cast(xpath('CUSTOM1/text()',rw) as text[]))[1] as CUSTOMSTR),
      cast((cast(xpath('CUSTOM2/text()',rw) as text[]))[1] as CUSTOMSTR),
      cast((cast(xpath('CUSTOM3/text()',rw) as text[]))[1] as CUSTOMTXT),
      cast((cast(xpath('CUSTOM4/text()',rw) as text[]))[1] as CUSTOMTXT),
      cast((cast(xpath('CUSTOM5/text()',rw) as text[]))[1] as CUSTOMTXT),
      cast((cast(xpath('HIDE/text()',rw) as text[]))[1] as HIDEBOOL),
      cast((cast(xpath('SMAZAN/text()',rw) as text[]))[1] as SMAZANINT),
      cast((cast(xpath('RKRS/text()',rw) as text[]))[1] as RKRS)
    into
      l_RCPTID, l_RECEPTTYPKLIC, l_SKR1IDXML, l_SKR2IDXML, l_SKR3IDXML, l_SKR4IDXML, l_OBALRCPTIDXML,
      l_CISLOL, l_CISLOH, l_NAZEV, l_POPIS, l_ZKRATKA, l_PLUCODE, l_IDCODE, l_KLIC, l_PORCI,
      l_GRAMAZ, l_POSTUP, l_VZDYCENA, l_PPMASTERRCPTIDXML, l_PPCENAKOEF, l_PPINGREDKOEF,
      l_VCTYP, l_VCZAOKRC, l_VCZAOKRD, l_BONUS, l_SKPLREC, l_DOPLATEKRCPTIDXML,
      l_MINMNOZSTVI, l_AKTIVNI, l_DURABILITY, l_CUSTOM1, l_CUSTOM2, l_CUSTOM3, l_CUSTOM4, l_CUSTOM5,
      l_HIDE, l_SMAZAN, l_RKRS
    from XROWS;

    -- if key of recipe is not set, try to find recipe by its name
    if coalesce(l_KLIC, '') <> '' then
      select RCPTID into l_ID from RECEPT where KLIC = l_KLIC and SMAZAN = 0;
    else
      select RCPTID into l_ID from RECEPT where NAZEV = l_NAZEV and SMAZAN = 0;
    end if;

    if l_ID is null then
      if a_CREATE = true then

        if exists(select 1 from RECEPT where ZKRATKA = l_ZKRATKA and SMAZAN = 0) then
          l_ZKRATKA := null; -- collision in abbreviation (zkratka), using NULL
        end if;
        if exists(select 1 from RECEPT where PLUCODE = l_PLUCODE and SMAZAN = 0) then
          l_PLUCODE := null; -- collision in PLU code, using NULL
        end if;
        if exists(select 1 from RECEPT where IDCODE = l_IDCODE and SMAZAN = 0) then
          l_IDCODE := null; -- collision in IDENTCODE, using NULL
        end if;

        perform P_CheckGlobalParamBOOL('SYNCRECEPT', 'RECEPTIMPORTDB', false, 35539);

        -- neimportuji se: DOBAPRIPRAVY, DOBAKONZUMACE, ALERGENY, ALERGENYIDENT, TISKZARZID, SKLDID, MAXSLEVA, EXTID, BARVA
        l_ID := B_GetID('SEPTIMAPP', 'RECEPT');
        insert into RECEPT (RCPTID, RECTID, SKR1ID, SKR2ID, SKR3ID, SKR4ID, OBALRCPTID, DRJDID, UNITIDSALE, WELMEC, WEIGHTED,
                            CISLOL, CISLOH, NAZEV, POPIS, ZKRATKA, PLUCODE, IDCODE, KLIC, PORCI, GRAMAZ, POSTUP, DOBAPRIPRAVY, DOBAKONZUMACE, VZDYCENA,
                            PPMASTERRCPTID, PPCENAKOEF, PPINGREDKOEF, VCTYP, VCZAOKRC, VCZAOKRD, BONUS, SKPLREC,
                            DOPLATEKRCPTID, MINMNOZSTVI, POVPOPISOBJ, DEFPOPISYOBJ, ALERGENY, ALERGENYIDENT, AKTIVNI, DURABILITY,
                            CUSTOM1, CUSTOM2, CUSTOM3, CUSTOM4, CUSTOM5, SALESTOCKPRICE, HIDE, SMAZAN, RKRS)
          values (l_ID, RECEPTTYP_GetIdByKlic(l_RECEPTTYPKLIC),
                  SKUPREC1_BankaImportXMLTree(l_SKR1IDXML),
                  SKUPREC2_BankaImportXMLTree(l_SKR2IDXML),
                  SKUPREC3_BankaImportXMLTree(l_SKR3IDXML),
                  SKUPREC4_BankaImportXMLTree(l_SKR4IDXML),
                  RECEPT_BANKAImportXMLTree(l_OBALRCPTIDXML),
                  DRUHJIDLA_GetZakladniID(),
                  (select UNITID from UNIT where DELETED = 0 order by UNITID limit 1),
                  false,  -- welmec
                  false,  -- weighted
                  l_CISLOL, RECEPT_GetCisloHByParams(l_ID, l_CISLOH),
                  B_GetUniqueValue('SEPTIMAPP', 'RECEPT', 'NAZEV', '', l_NAZEV, 80, ' (%d)'),
                  l_POPIS, l_ZKRATKA, l_PLUCODE, l_IDCODE, l_KLIC, l_PORCI, l_GRAMAZ, l_POSTUP, 0, 0, l_VZDYCENA, --DOBAPRIPRAVY --DOBAKONZUMACE
                  RECEPT_BANKAImportXMLTree(l_PPMASTERRCPTIDXML), l_PPCENAKOEF, l_PPINGREDKOEF, l_VCTYP, l_VCZAOKRC, l_VCZAOKRD, l_BONUS, false,                 -- l_SKPLREC (s recepturou se neimportuje sklad.pol.)
                  RECEPT_BANKAImportXMLTree(l_DOPLATEKRCPTIDXML), l_MINMNOZSTVI, false, null, '-', '-', coalesce(l_AKTIVNI, true), coalesce(l_DURABILITY,0),     --POVPOPISOBJ --DEFPOPISYOBJ --ALERGENY --ALERGENYIDENT
                  l_CUSTOM1, l_CUSTOM2, l_CUSTOM3, l_CUSTOM4, l_CUSTOM5, 0/*SALESTOCKPRICE*/, l_HIDE, l_SMAZAN, l_RKRS);

        -- zaznam nulove skladove ceny pro zakladni porci
        perform RECSKLADCENA_RECEPTInsert(l_ID);

      else
        if l_KLIC is not null then
          perform ASWError(35442, cast(array[l_KLIC] as text[]));
        else
          perform ASWError(35441, cast(array[l_NAZEV] as text[]));
        end if;
      end if;
    end if;
  end if;

  return l_ID;

end; $$;


select ASWDropProcedure ('RECEPTEasyImport_CheckDouble');
/**
* Procedura na kontrolu zdvojených položek vyžadujících unikátnost a to již v importní tabulce SKLADPOLEASYIMPORTTEMP
* plus kontrola budoucích kolizí při importu s existujícími položkami v databázi
**/
create or replace function admin_septim.RECEPTEasyImport_CheckDouble(
  in a_NAZEVJINYJAZYK      NAZEVSTR default null
) returns void
language plpgsql security definer as $$
declare
  l_LISTDUBLE              VALUETXT;
begin
  l_LISTDUBLE := '';
  begin
    select list(NAZEV) into strict l_LISTDUBLE from RECEPTEASYIMPORTTEMP as REI where exists(select 1 from RECEPT where SMAZAN = 0 and NAZEV = REI.NAZEV);
  exception
    when NO_DATA_FOUND then
  end;
  if coalesce(l_LISTDUBLE,'') <> '' then
    perform admin_base.ASWError(35480, cast(array[l_LISTDUBLE] as text[]));
  end if;
  l_LISTDUBLE := '';
  begin
    select list(NAZEV) into strict l_LISTDUBLE from((select NAZEV from RECEPTEASYIMPORTTEMP group by NAZEV having count(*) > 1)) as X;
  exception
    when NO_DATA_FOUND then
  end;
  if coalesce(l_LISTDUBLE,'') <> '' then
    perform admin_base.ASWError(35490, cast(array[l_LISTDUBLE] as text[]));
  end if;
  l_LISTDUBLE := '';
  begin
    select list(NAZEVJINYJAZYK) into strict l_LISTDUBLE from RECEPTEASYIMPORTTEMP as REI where coalesce(NAZEVJINYJAZYK,'') <> '' and
    exists(select 1 from RECNAZVY as RN join JAZYK as J on J.JZYKID = RN.JZYKID where J.SMAZAN = 0 and RN.SMAZAN = 0 and J.NAZEV = a_NAZEVJINYJAZYK and RN.NAZEV = REI.NAZEVJINYJAZYK);
  exception
    when NO_DATA_FOUND then
  end;
  if coalesce(l_LISTDUBLE,'') <> '' then
    perform admin_base.ASWError(35481, cast(array[a_NAZEVJINYJAZYK,l_LISTDUBLE] as text[]));
  end if;
  l_LISTDUBLE := '';
  begin
    select list(NAZEVJINYJAZYK) into strict l_LISTDUBLE from((select NAZEVJINYJAZYK from RECEPTEASYIMPORTTEMP group by NAZEVJINYJAZYK having count(*) > 1)) as X;
  exception
    when NO_DATA_FOUND then
  end;
  if coalesce(l_LISTDUBLE,'') <> '' then
    perform admin_base.ASWError(35491, cast(array[a_NAZEVJINYJAZYK,l_LISTDUBLE] as text[]));
  end if;
  l_LISTDUBLE := '';
  begin
    select list(ZKRATKA) into strict l_LISTDUBLE from RECEPTEASYIMPORTTEMP as REI where exists(select 1 from RECEPT where SMAZAN = 0 and ZKRATKA = REI.ZKRATKA);
  exception
    when NO_DATA_FOUND then
  end;
  if coalesce(l_LISTDUBLE,'') <> '' then
    perform admin_base.ASWError(35482, cast(array[l_LISTDUBLE] as text[]));
  end if;
  l_LISTDUBLE := '';
  begin
    select list(ZKRATKA) into strict l_LISTDUBLE from((select ZKRATKA from RECEPTEASYIMPORTTEMP group by ZKRATKA having count(*) > 1)) as X;
  exception
    when NO_DATA_FOUND then
  end;
  if coalesce(l_LISTDUBLE,'') <> '' then
    perform admin_base.ASWError(35492, cast(array[l_LISTDUBLE] as text[]));
  end if;
  l_LISTDUBLE := '';
  begin
    select list(KLIC) into strict l_LISTDUBLE from RECEPTEASYIMPORTTEMP as REI where exists(select 1 from RECEPT where SMAZAN = 0 and KLIC = REI.KLIC);
  exception
    when NO_DATA_FOUND then
  end;
  if coalesce(l_LISTDUBLE,'') <> '' then
    perform admin_base.ASWError(35483, cast(array[l_LISTDUBLE] as text[]));
  end if;
  l_LISTDUBLE := '';
  begin
    select list(KLIC) into strict l_LISTDUBLE from((select KLIC from RECEPTEASYIMPORTTEMP group by KLIC having count(*) > 1)) as X;
  exception
    when NO_DATA_FOUND then
  end;
  if coalesce(l_LISTDUBLE,'') <> '' then
    perform admin_base.ASWError(35493, cast(array[l_LISTDUBLE] as text[]));
  end if;
  l_LISTDUBLE := '';
  begin
    select list(PLUCODE) into strict l_LISTDUBLE from RECEPTEASYIMPORTTEMP as REI where exists(select 1 from RECEPT where SMAZAN = 0 and PLUCODE = REI.PLUCODE);
  exception
    when NO_DATA_FOUND then
  end;
  if coalesce(l_LISTDUBLE,'') <> '' then
    perform admin_base.ASWError(35484, cast(array[l_LISTDUBLE] as text[]));
  end if;
  l_LISTDUBLE := '';
  begin
    select list(PLUCODE) into strict l_LISTDUBLE from((select PLUCODE from RECEPTEASYIMPORTTEMP group by PLUCODE having count(*) > 1)) as X;
  exception
    when NO_DATA_FOUND then
  end;
  if coalesce(l_LISTDUBLE,'') <> '' then
    perform admin_base.ASWError(35494, cast(array[l_LISTDUBLE] as text[]));
  end if;
  l_LISTDUBLE := '';
  begin
    select list(IDCODE) into strict l_LISTDUBLE from RECEPTEASYIMPORTTEMP as REI where exists(select 1 from RECEPT where SMAZAN = 0 and IDCODE = REI.IDCODE);
  exception
    when NO_DATA_FOUND then
  end;
  if coalesce(l_LISTDUBLE,'') <> '' then
    perform admin_base.ASWError(35485, cast(array[l_LISTDUBLE] as text[]));
  end if;
  l_LISTDUBLE := '';
  begin
    select list(IDCODE) into strict l_LISTDUBLE from((select IDCODE from RECEPTEASYIMPORTTEMP group by IDCODE having count(*) > 1)) as X;
  exception
    when NO_DATA_FOUND then
  end;
  if coalesce(l_LISTDUBLE,'') <> '' then
    perform admin_base.ASWError(35495, cast(array[l_LISTDUBLE] as text[]));
  end if;
  l_LISTDUBLE := '';
  begin
    select list(BARCODE) into strict l_LISTDUBLE from RECEPTEASYIMPORTTEMP as REI where exists(select 1 from RECEPT as RC join RCPTBARCODE as BC on BC.RCPTID = RC.RCPTID where SMAZAN = 0 and BC.BARCODE = REI.BARCODE);
  exception
    when NO_DATA_FOUND then
  end;
  if coalesce(l_LISTDUBLE,'') <> '' then
    perform admin_base.ASWError(35486, cast(array[l_LISTDUBLE] as text[]));
  end if;
  l_LISTDUBLE := '';
  begin
    select list(BARCODE) into strict l_LISTDUBLE from((select BARCODE from RECEPTEASYIMPORTTEMP group by BARCODE having count(*) > 1)) as X;
  exception
    when NO_DATA_FOUND then
  end;
  if coalesce(l_LISTDUBLE,'') <> '' then
    perform admin_base.ASWError(35496, cast(array[l_LISTDUBLE] as text[]));
  end if;
  l_LISTDUBLE := '';
  begin
    select list(SKUPOB) into strict l_LISTDUBLE from RECEPTEASYIMPORTTEMP as REI where exists(select 1 from SKUPINA where SMAZAN = 0 and RECEPT = cast(0 as BOOLBIT) and NAZEV = REI.SKUPOB);
  exception
    when NO_DATA_FOUND then
  end;
  if coalesce(l_LISTDUBLE,'') <> '' then
    perform admin_base.ASWError(35489, cast(array[l_LISTDUBLE] as text[]));
  end if;
  l_LISTDUBLE := '';
  return;
end; $$;



select ASWDropProcedure ('RECEPTEasyImportProcess');
/**
* Procedura na import receptur za pomoci položek připravených v pomocné tabulce RECEPTEASYIMPORTTEMP
* Procedura volá též import případně ještě nezaložených skupin.
**/
create or replace function admin_septim.RECEPTEasyImportProcess(
  in a_NAZEVJINYJAZYK      NAZEVSTR_NU,
  in a_FORCE               FORCETXT default null
) returns void
language plpgsql security definer as $$
declare
  l_ID                     IDINT;
  l_JZYKID                 IDINT;
  l_SKUPID                 IDINT;
  l_RCPTID                 IDINT;
  l_CENAB                  CENAFLT;
  l_DPHA                   CENAFLT;
  l_DPHB                   CENAFLT;
  l_CENAS                  CENAFLT;
  cr_cursorRECEPT          RECORD;
begin
  if a_NAZEVJINYJAZYK is not null then
    select B_REFTABLE.a_ID into l_JZYKID from admin_base.B_REFTABLE('SEPTIMAPP','JAZYK','NAZEV',a_NAZEVJINYJAZYK,35499,'NAZEVJINYJAZYK');
  end if;
  update RECEPTEASYIMPORTTEMP set NAZEV = trim(NAZEV),DPH = trim(DPH),POPIS = trim(POPIS),KLIC = trim(KLIC),
  ZKRATKA = trim(ZKRATKA),SKUP1 = trim(SKUP1),SKUP2 = trim(SKUP2),SKUP3 = trim(SKUP3),
  SKUP4 = trim(SKUP4),SKUPOB = trim(SKUPOB),NAZEVJINYJAZYK = trim(NAZEVJINYJAZYK),
  IDCODE = trim(IDCODE),BARCODE = trim(BARCODE);
  perform admin_septim.RECEPTEasyImport_CheckDouble(a_NAZEVJINYJAZYK);
  perform admin_septim.SKUPREC1_EasyImportCreateAll(a_FORCE);
  perform admin_septim.SKUPREC2_EasyImportCreateAll(a_FORCE);
  perform admin_septim.SKUPREC3_EasyImportCreateAll(a_FORCE);
  perform admin_septim.SKUPREC4_EasyImportCreateAll(a_FORCE);
  perform admin_septim.SKUPINA_RecEasyImportCreateAll(a_FORCE);
  for cr_cursorRECEPT in select NAZEV as cr_NAZEV,DPH as cr_DPH,CENAS as cr_CENAS,POPIS as cr_POPIS,KLIC as cr_KLIC,ZKRATKA as cr_ZKRATKA,
    SKUP1 as cr_SKUP1,SKUP2 as cr_SKUP2,SKUP3 as cr_SKUP3,SKUP4 as cr_SKUP4,SKUPOB as cr_SKUPOB,
    NAZEVJINYJAZYK as cr_NAZEVJINYJAZYK,PLUCODE as cr_PLUCODE,IDCODE as cr_IDCODE,(case when coalesce(BARCODE,'') <> '' and BARCODE <> '0' then BARCODE else null end) as cr_BARCODE from
  RECEPTEASYIMPORTTEMP
  loop
    l_ID := null;
    if not exists(select 1 from RECEPT where SMAZAN = 0 and (NAZEV = cr_cursorRECEPT.cr_NAZEV or ZKRATKA = cr_cursorRECEPT.cr_ZKRATKA or IDCODE = cr_cursorRECEPT.cr_IDCODE or PLUCODE = cr_cursorRECEPT.cr_PLUCODE or KLIC = cr_cursorRECEPT.cr_KLIC)) then
      -- ceny se vypocitaji stejnym zpusobem jako v pripade editacniho formulare, proto se pouziva DPH_H_Prepocet a ne B_DPH_Vypocitej
      select CENAB,DPHA,DPHB,CENAS into l_CENAB,l_DPHA,l_DPHB,l_CENAS from DPH_H_Prepocet(cr_cursorRECEPT.cr_DPH,0,0,0,cr_cursorRECEPT.cr_CENAS,null,null,'','cenas',
      ''); --CENAB --DPHA --DPHB --ID --MASTERID --COMMAND --FOCUSED --PARAMS

      select * into l_RCPTID from admin_septim.RECEPT_BasicInsert(cr_cursorRECEPT.cr_NAZEV,cr_cursorRECEPT.cr_POPIS,cr_cursorRECEPT.cr_ZKRATKA,
      cr_cursorRECEPT.cr_IDCODE,cr_cursorRECEPT.cr_BARCODE,cr_cursorRECEPT.cr_SKUP1,
      cr_cursorRECEPT.cr_SKUP2,cr_cursorRECEPT.cr_SKUP3,'',cr_cursorRECEPT.cr_PLUCODE,
      1,'',cr_cursorRECEPT.cr_SKUP4,'',900000,0,false,
      1,1,'Standardní','Kusy',cr_cursorRECEPT.cr_KLIC,cr_cursorRECEPT.cr_DPH,l_CENAB,
      l_DPHA,l_DPHB,l_CENAS,0,0,0,0,0,0,0,0,0,1,2,0,null,1,1,false,null,
      null,false,null,admin_septim.CHODY_GetZakladniNazev(),admin_septim.DRUHJIDLA_GetZakladniNazev(),
      true,null,null,null,null,null,null,0,null,null,a_UNITCONTENT=>null,a_UNITSOLID=>null,a_CONTENTAMOUNT=>null,
      a_SOLIDAMOUNT=>null,a_DODVVYR=>null,a_COUNTRY=>null,a_WELMEC=>false,a_TARE=>null, a_AKTIVNI=>true, a_WEIGHTED=>false, a_FORCE=>a_FORCE,a_TESTIMPORTDB=>true,
      a_KMSCATEGORY=>null, a_KMSITEMTYPE=>null);

      if cr_cursorRECEPT.cr_NAZEVJINYJAZYK <> '' and cr_cursorRECEPT.cr_NAZEV <> cr_cursorRECEPT.cr_NAZEVJINYJAZYK then
        select * into l_ID from admin_septim.RECNAZVY_BasicInsert(l_RCPTID,cr_cursorRECEPT.cr_NAZEVJINYJAZYK,'','',a_NAZEVJINYJAZYK,null); --POPISKR --POPISDL
      end if;
      if cr_cursorRECEPT.cr_SKUPOB <> '' then
        select * into l_ID from RLSKUPRCPT_Insert(null,l_RCPTID,cr_cursorRECEPT.cr_SKUPOB,null,null,null,null,null,null,null);
      end if;
    end if;
  end loop;
  return;
end; $$;

select grant_func('RECEPTEasyImportProcess', 'SPEXEC');



--call ASWDropTrigger('RECEPTInsertCheck');
/*
* Trigger, nezbytný pro replikace záznamů převzatých z banky, kdy může dojít k situaci, že se stejný záznam přenese
* na víc replikovaných míst a odtud na CD. Insert existujícího záznamu by pak způsobil nemalé problémy.
*/
/* bylo potreba kvuli bance; kedze na remote db uz nejde tyto zaznami zakladat, tento problem odpada
create trigger RECEPTInsertCheck
  before insert,update on RECEPT
  referencing
    NEW as new_row
  for each row
begin
  -- Trigger funkční jen při replikacích
  if current remote user is not null and new_row.SMAZAN is not null then
    if INSERTING and exists(select 1 from admin_septim.RECEPT where RCPTID=new_row.RCPTID) then
      -- jedná se o replikaci (typicky v konfiguraci s bankou, kde se v bance nový záznam dostane do více replikovaných pokladen a pak i vícekrát zreplikuje)
      rollback trigger;
    end if;
  end if;
end\
*/


select ASWDropProcedure('RECEPT_FinishSkladOpCheckIngred');
/* Procedura zkontroluje počty ingrediencí před uzavřením skladové operace
*/
create or replace function admin_septim.RECEPT_FinishSkladOpCheckIngred(
  in a_RCPTID              REFIDINT,
  in a_PRCEID              REFIDINT,
  in a_KLICSKLADOP         KLICSTR
) returns void
language plpgsql security definer as $$
declare
  l_COUNTINGR              CISLOINT;
begin
  l_COUNTINGR := 0;
  select count(*) into l_COUNTINGR from RECEPT_SeznamIngred(a_RCPTID,3,KASASKLADOPERACE_GetPorceID(a_PRCEID,a_KLICSKLADOP));
  if coalesce(l_COUNTINGR,0) = 0 then
    perform admin_base.ASWError(35475, cast(array[admin_septim.RECEPT_GetNazev(a_RCPTID)] as text[]));
  end if;
  if coalesce(l_COUNTINGR,0) > 1 and a_KLICSKLADOP = 'KSODODAK' then
    perform admin_base.ASWError(35476, cast(array[admin_septim.RECEPT_GetNazev(a_RCPTID)] as text[]));
  end if;
  return;
end; $$;



select ASWDropFunction('RECEPT_IsHidden');
/** Funkce vrati jestli je receptura skryta.
 */
create or replace function admin_septim.RECEPT_IsHidden(
  in a_RCPTID              REFIDINT
) returns BOOLBIT
language plpgsql security definer as $$
declare
  l_HIDE                   HIDEBOOL;
begin
  begin
    select HIDE into strict l_HIDE from RECEPT where RCPTID = a_RCPTID;
  exception
    when NO_DATA_FOUND then
  end;
  if l_HIDE = true then
    -- skryta
    return true;
  else
    -- neni skryta
    return false;
  end if;
end; $$;;



select ASWDropFunction('RECEPT_GetRKRSByID');
/**
* Funkce vracejici RKRS dle ID receptury. Pokud receptura neexistuje, vrati chybu.
*/
create or replace function admin_septim.RECEPT_GetRKRSByID(
  in a_RCPTID              IDINT
) returns RKRS
language plpgsql security definer as $$
declare
  l_RKRS                   RKRS;
  l_RowCount               INTEGER;
begin
  begin
    select RKRS into strict l_RKRS from RECEPT where RCPTID = a_RCPTID and SMAZAN = 0;
  exception
    when NO_DATA_FOUND then
  end;
  get diagnostics l_RowCount = ROW_COUNT;
  if l_RowCount = 0 then
    perform admin_base.ASWError(35487, cast(array[a_RCPTID] as text[]));
  end if;
  return l_RKRS;
end; $$;;



select ASWDropProcedure('RECEPT_SkladOpCheckBezPorce');
/**
* Procedura pro kontrolu, zda receptura neobsahuje ingredience s prirazenou porci.
* Pokud ano, zobrazi se upozorneni, se ingredience s prirazenou porci se budou ignorovoat.
* Pouziva se napriklad pri vlozeni receptury do skladovych operaci, ktere nepodporuji porce.
*/
create or replace function admin_septim.RECEPT_SkladOpCheckBezPorce(
  in a_RCPTID              IDINT,
  in a_FORCE               FORCETXT
) returns void
language plpgsql security definer as $$
begin
  if (RECEPT_SkladOpPouzivaPorce(a_RCPTID) = true) and (admin_eng.CheckForce(a_FORCE,'DOIGNOREINGREDSPORCEMI') is null) then
    perform admin_base.ASWError(35444, cast(array[admin_septim.RECEPT_GetNazev(a_RCPTID),'DOIGNOREINGREDSPORCEMI'] as text[]));
  end if;
  return;
end; $$;



select ASWDropFunction('RECEPT_SkladOpPouzivaPorce');
/**
* Funkce pro zjisteni, zda receptura (i typu polovicni porce) pouziva pro skladove operace ingredience s porcemi.
* Pokud ano, vraci 1, jinak vrati 0.
*/
create or replace function admin_septim.RECEPT_SkladOpPouzivaPorce(
  in a_RCPTID              IDINT,
  in a_PRCEID              REFIDINT_NU default null      -- pokud je ID porce zadano, kontroluje se pouzivani zvolene porce
) returns BOOLBIT
language plpgsql security definer -- pokud je ID porce zadano, kontroluje se pouzivani zvolene porce
as $$
declare
  l_AKTRCPTID              REFIDINT;
  l_CENAKOEF               CENAFLT;
  l_INGREDKOEF             CENAFLT;
begin
  select * into l_AKTRCPTID,l_CENAKOEF,l_INGREDKOEF from admin_septim.RECEPT_PolovicniPorceInfo(a_RCPTID);
  --pouziti funkce misto primeho porovnani hodnot zaremovano z duvodu mozneho padani DB
  if exists(select 1 from RECEPTINGREDFULL where
  RCPTID = l_AKTRCPTID and TYP in(2,3) and /*INGRED_ProSkladOperace(TYP)=1*/
    ((a_PRCEID is null and PRCEID is not null) or (a_PRCEID is not null and PRCEID is not null and a_PRCEID = PRCEID))) then
    -- pouziva porce v skladovych operacich
    return true;
  else
    -- nepouziva porce v skladovych operacich
    return false;
  end if;
end; $$;;



select ASWDropFunction('RECEPT_VyrNormPouzivaPorce');
/**
* Funkce pro zjisteni, zda receptura (i typu polovicni porce) pouziva pri vyrobe normovanim ingredience s porcemi.
* Pokud ano, vraci 1, jinak vrati 0.
*/
create or replace function admin_septim.RECEPT_VyrNormPouzivaPorce(
  in a_RCPTID              IDINT,
  in a_PRCEID              REFIDINT_NU default null      -- pokud je ID porce zadano, kontroluje se pouzivani zvolene porce
) returns BOOLBIT
language plpgsql security definer -- pokud je ID porce zadano, kontroluje se pouzivani zvolene porce
as $$
declare
  l_AKTRCPTID              REFIDINT;
  l_CENAKOEF               CENAFLT;
  l_INGREDKOEF             CENAFLT;
begin
  select * into l_AKTRCPTID,l_CENAKOEF,l_INGREDKOEF from admin_septim.RECEPT_PolovicniPorceInfo(a_RCPTID);
  --pouziti funkce misto primeho porovnani hodnot zaremovano z duvodu mozneho padani DB
  if exists(select 1 from RECEPTINGREDFULL where
  RCPTID = l_AKTRCPTID and TYP in(4,5) and /*INGRED_ProVyrobuNormovanim(TYP)=1*/
    ((a_PRCEID is null and PRCEID is not null) or (a_PRCEID is not null and PRCEID is not null and a_PRCEID = PRCEID))) then
    -- pouziva porce pri vyrobe normovanim
    return true;
  else
    -- nepouziva porce pri vyrobe normovanim
    return false;
  end if;
end; $$;;



select ASWDropFunction('RECEPT_GetPostup');
/**
* Funkce vracejici postup vyroby receptury.
*/
create or replace function admin_septim.RECEPT_GetPostup(
  in a_RCPTID              IDINT
) returns POSTUPTXT
language plpgsql security definer as $$
declare
  l_POSTUP                 POSTUPTXT;
begin
  begin
    select POSTUP into strict l_POSTUP from RECEPT where RCPTID = a_RCPTID;
  exception
    when NO_DATA_FOUND then
  end;
  return l_POSTUP;
end; $$;;




select ASWDropProcedure('RECEPT_H_GetPostup');
/**
* Procedura volana handlerem pri zmene receptury, vraci postup vyroby receptury.
*/
drop type if exists admin_septim.RECEPT_H_GetPostup_rs cascade;
create type admin_septim.RECEPT_H_GetPostup_rs as (
  POSTUP                   POSTUPTXT
);

create or replace function admin_septim.RECEPT_H_GetPostup(
  in a_RECEPT              NAZEVSTR,
  in a_ID                  INTEGER,
  in a_MASTERID            INTEGER,
  in a_COMMAND             E_HNDLParam,
  in a_FOCUSED             E_HNDLParam,
  in a_PARAMS              E_HNDLParam
) returns setof admin_septim.RECEPT_H_GetPostup_rs
language plpgsql security definer as $$
declare
  --- zjištění ID receptury
  l_RCPTID                 REFIDINT_NU;
  l_POSTUP                 POSTUPTXT;
begin
  select B_REFTABLE_EX.a_ID into l_RCPTID from admin_base.B_REFTABLE_EX('SEPTIMAPP','RECEPT','NAZEV','ZKRATKA',a_RECEPT,-1,'RECEPT');
  if l_RCPTID is not null then
    l_POSTUP := RECEPT_GetPostup(l_RCPTID);
  end if;
  return query select CAST( coalesce(l_POSTUP,'') AS POSTUPTXT) as POSTUP;
end; $$;

select grant_func('RECEPT_H_GetPostup', 'SPEXEC');


select ASWDropProcedure('RECEPT_RLRCPTPrepoctiSklCenuVyr');
/**
* Procedura pro vypocet a nastaveni skladove ceny skladovych polozek, ktere se vyrabi pres recepturu, pripadne master recepturu.
* Vola se z procedur tabulky RLRCPT.
*/
create or replace function admin_septim.RECEPT_RLRCPTPrepoctiSklCenuVyr(
  in a_RCPTIDP             REFIDINT,        -- master receptura
  in a_RCPTID              REFIDINT_NU      -- vlozena receptura, NULL v pripade smazani RLRCPT vazby
) returns void
language plpgsql security definer
-- master receptura
-- vlozena receptura, NULL v pripade smazani RLRCPT vazby
as $$
begin
  if a_RCPTID is null then
    -- smazani vlozene receptury, prepocet master receptury
    perform admin_septim.RECEPT__PrepoctiSkladCenuVyrobkuMaster(a_RCPTIDP,null,true); --PRCEID --IGNOREPORCE
  elseif not exists(select 1 from INGRED where SMAZAN = 0 and RCPTID = a_RCPTID and INGRED_ProVyrobuNormovanim(TYP) = true) then
    -- NOT, protoze pokud obsahuje vyrobky, na ty nema vlozeni do master receptury vliv
    -- prepocet master receptury, protoze puvodni receptura mohla mit vliv na ceny
    perform admin_septim.RECEPT__PrepoctiSkladCenuVyrobkuMaster(a_RCPTID,null,true,a_RCPTIDP); --PRCEID --IGNOREPORCE
  end if;
  return;
end; $$;



select ASWDropProcedure('RECEPT_INGREDPrepoctiSklCenuVyr');
/**
* Procedura pro vypocet a nastaveni skladove ceny skladove polozky, ktera se vyrabi pres recepturu, ktere slozeni se meni.
* Vola se z procedur tabulky INGRED.
*/
create or replace function admin_septim.RECEPT_INGREDPrepoctiSklCenuVyr(
  in a_RCPTID              REFIDINT,
  in a_SKPLID              REFIDINT,
  in a_INGREDTYP           TYPINT,          -- 1=pokladna,2=sklad,3=pokladna+sklad,4=vyroba,5=vyroba+pokladna
  in a_MNOZSTVI            MNOZSTVIFLT,
  in a_PRCEID              REFIDINT_NU      -- ID porce ingrediece
) returns void
language plpgsql security definer
-- 1=pokladna,2=sklad,3=pokladna+sklad,4=vyroba,5=vyroba+pokladna
-- ID porce ingrediece
as $$
declare
  -- resim pouze typy 2,3 a 4,5, typ 1 nema vliv na nic
  l_CENA                   CENAFLT;
begin
  if INGRED_ProSkladOperace(a_INGREDTYP) = true then
    -- vliv na cenu pripadneho vyrobku
    if exists(select 1 from INGRED where SMAZAN = 0 and RCPTID = a_RCPTID and INGRED_ProVyrobuNormovanim(TYP) = true) then
      -- receptura primo obsahuje vyrobek, kontrola ze souhlasi porce
      if not exists(select 1 from INGRED where SMAZAN = 0 and RCPTID = a_RCPTID and INGRED_ProVyrobuNormovanim(TYP) = true and
       ((PRCEID is null) or (PRCEID is not null and a_PRCEID is null) or (coalesce(PRCEID,0) = coalesce(a_PRCEID,0)))) then
        -- nesouhlasi porce, polozka nema vliv na zadny vyrobek
        return;
      else
        -- prepocitavat se budou vyrobky aktualni receptury
        perform admin_septim.RECEPT__PrepoctiSkladCenuVyrobkuRecept(a_RCPTID,a_PRCEID,false); /*IGNOREPORCE*/
      end if;
    else
      -- receptura neobsahuje vyrobek, bud se nic nevyrabi nebo se vyrabi pres master recepturu a tato receptura obsahuje pouze ingredience pro vyrobu
      -- pokusim se ziskat ID nektere master receptury, ktera obsahuje vyrobek
      if a_PRCEID is null then
        -- ignoruji porce, protoze surovina bez porce ma vliv na vyrobky vsech porci
        perform admin_septim.RECEPT__PrepoctiSkladCenuVyrobkuMaster(a_RCPTID,a_PRCEID,true); /*IGNOREPORCE*/
      else
        -- resi se konkretni porce
        perform admin_septim.RECEPT__PrepoctiSkladCenuVyrobkuMaster(a_RCPTID,a_PRCEID,false); /*IGNOREPORCE*/
      end if;
    end if;
  elseif INGRED_ProVyrobuNormovanim(a_INGREDTYP) = true then
    -- vyrobek, na ktereho cenu maji vliv ostatni polozky
    if a_MNOZSTVI <> 0 then
      l_CENA := RECEPT__GetSkladCenaSurovin(a_RCPTID,a_PRCEID,false)/a_MNOZSTVI; /*REKURZIVNE*/
    else
      l_CENA := 0;
    end if;
    perform admin_septim.SKLADPOL_CenaUpdate(a_SKPLID,l_CENA);
  end if;
end; $$;



select ASWDropFunction('RECEPT__GetSkladCenaSurovin');
/**
* Funkce vracejici skladovou cenu ingredienci receptury vcetne ingredienci ze subreceptur, ktere nevyrabeji jinou polozku.
*/
create or replace function admin_septim.RECEPT__GetSkladCenaSurovin(
  in a_RCPTID              IDINT,
  in a_PRCEID              REFIDINT_NU,
  in a_REKURZIVNE          BOOLBIT          -- rekurzivne volani: 0-ne, 1-ano
) returns CENAFLT
language plpgsql security definer
-- rekurzivne volani: 0-ne, 1-ano
as $$
declare
  l_CENA                   CENAFLT;
  cr_cursorSubrecept       RECORD;
begin
  if (a_REKURZIVNE = true) and exists(select 1 from INGRED where SMAZAN = 0 and RCPTID = a_RCPTID and INGRED_ProVyrobuNormovanim(TYP) = true and
    (PRCEID is null or coalesce(PRCEID,0) = coalesce(a_PRCEID,0))) then
    -- jedna se o rekurzivni volani a receptura obsahuje ingredienci, ktera neco vyrabi, teda jedna se o skladovou cenu jineho vyrobku
    -- u prvniho volani muze obsahovat vyrabenou polozku, protoze je to prave ta polozka, ktere skladovou cenu zjistujeme
    return 0;
  end if;
  -- ingredience - suroviny
  begin
    select sum((case when I.MNOZSTVI = 0 then 0 else S.CENA*I.MNOZSTVI end)) into strict l_CENA
    from INGRED as I join
    SKLADPOL as S on I.SKPLID = S.SKPLID where
    I.SMAZAN = 0 and I.RCPTID = a_RCPTID and INGRED_ProSkladOperace(I.TYP) = true and
   ((I.PRCEID is null) or (coalesce(I.PRCEID,0) = coalesce(a_PRCEID,0)));
 exception
    when NO_DATA_FOUND then
  end;
  -- zpracovani subreceptur
  for cr_cursorSubrecept in select RCPTID as cr_RCPTID,sum(MNOZSTVI) as cr_MNOZSTVI from
  RLRCPT where
  SMAZAN = 0 and RCPTIDP = a_RCPTID
  group by RCPTID
  loop
    l_CENA := coalesce(l_CENA,0)+RECEPT__GetSkladCenaSurovin(cr_cursorSubrecept.cr_RCPTID,a_PRCEID,true)*cr_cursorSubrecept.cr_MNOZSTVI;
  end loop; /*REKURZIVNE*/
  return coalesce(l_CENA,0);
end; $$;;



select ASWDropProcedure('RECEPT__PrepoctiSkladCenuVyrobkuRecept');
/**
* Procedura pro prepocet a aktualizaci skladove ceny vsech ingredienci - vyrobku (dle porce) dane receptury.
*/
create or replace function admin_septim.RECEPT__PrepoctiSkladCenuVyrobkuRecept(
  in a_RCPTID              REFIDINT,
  in a_PRCEID              REFIDINT_NU,
  in a_IGNOREPORCE         BOOLBIT          -- zda se maji ignorovat porce = prepocitaji se vsechny vyrobky
) returns void
language plpgsql security definer
-- zda se maji ignorovat porce = prepocitaji se vsechny vyrobky
as $$
declare
  -- cyklus nad vsemi vyrobky (dle porce)
  l_CENA                   CENAFLT;
  cr_rec                   RECORD;
begin
  for cr_rec in select SKPLID as cr_SKPLID,PRCEID as cr_PRCEID,sum(MNOZSTVI) as cr_MNOZSTVI from
  INGRED where
  SMAZAN = 0 and RCPTID = a_RCPTID and INGRED_ProVyrobuNormovanim(TYP) = true and
    ((a_IGNOREPORCE = true) or (PRCEID is null) or (PRCEID is not null and a_PRCEID is null) or (coalesce(PRCEID,0) = coalesce(a_PRCEID,0)))
  group by SKPLID,PRCEID order by
      -- poradi prepoctu - "SKPLID asc" neni dulezite, dulezite je "PRCEID desc", aby se v pripade Zakladni a Jine porce naposledy spocitala skladova cena pro zakladni porci
      -- pokud se zakladni porce nepouziva, pak prvni porce dle poradi
  SKPLID asc,PRCEID desc
  loop
    if cr_rec.cr_MNOZSTVI <> 0 then
      l_CENA := RECEPT__GetSkladCenaSurovin(a_RCPTID,cr_rec.cr_PRCEID,false)/cr_rec.cr_MNOZSTVI; /*REKURZIVNE*/
    else
      l_CENA := 0;
    end if;
    perform admin_septim.SKLADPOL_CenaUpdate(cr_rec.cr_SKPLID,l_CENA);
  end loop;
  return;
end; $$;



select ASWDropProcedure('RECEPT__PrepoctiSkladCenuVyrobkuMaster');
/**
* Procedura pro prepocet skladove ceny vyrobku master receptur receptury.
* Pokud receptura obsahuje ingredienci-vyrobek, prepocita skladove ceny vsech vyrobku dle porce.
* Pokud neobsahuje ingredienci-vyrobek, pres cyklus vola proceduru pro vsechny master receptury.
*/
create or replace function admin_septim.RECEPT__PrepoctiSkladCenuVyrobkuMaster(
  in a_RCPTID              REFIDINT,
  in a_PRCEID              REFIDINT_NU,                  -- ID porce, NULL pokud se nepouziva
  in a_IGNOREPORCE         BOOLBIT,                      -- zda se maji ignorovat porce = prepocitaji se vsechny vyrobky
  in a_RCPTIDP             REFIDINT_NU default null      -- master receptura, pri vlozeni/update pre RLRCPT se prepocet omezi pouze na tohto mastra
) returns void
language plpgsql security definer -- master receptura, pri vlozeni/update pre RLRCPT se prepocet omezi pouze na tohto mastra

  -- kontrola, zda neobsahuje ingredienci - vyrobek
as $$
declare
  cr_rec                   RECORD;
begin
  if exists(select 1 from INGRED where SMAZAN = 0 and RCPTID = a_RCPTID and INGRED_ProVyrobuNormovanim(TYP) = true and
    ((a_IGNOREPORCE = true) or (PRCEID is null) or (coalesce(PRCEID,0) = coalesce(a_PRCEID,0)))) then
    -- pokud ano, prepocet
    perform admin_septim.RECEPT__PrepoctiSkladCenuVyrobkuRecept(a_RCPTID,a_PRCEID,a_IGNOREPORCE);
  else
    -- pokud ne, prepocet master receptur - rekurzivnim volanim procedury
    for cr_rec in select RCPTIDP as cr_RCPTID from RLRCPT where RCPTID = a_RCPTID and SMAZAN = 0 and (a_RCPTIDP is null or RCPTIDP = a_RCPTIDP)
    loop
      perform admin_septim.RECEPT__PrepoctiSkladCenuVyrobkuMaster(cr_rec.cr_RCPTID,a_PRCEID,a_IGNOREPORCE);
    end loop;
  end if;
  return;
end; $$;



select ASWDropProcedure('RECEPT_PrepoctiSkladCenuVyrobku');
/**
* Obalka pro volani prepoctu skladovych cen vyrobku. Vola se napr. z procedury pro kopirovani ingredienci z receptury do receptury.
*/
create or replace function admin_septim.RECEPT_PrepoctiSkladCenuVyrobku(
  in a_RCPTID              REFIDINT
) returns void
language plpgsql security definer as $$
begin
  perform admin_septim.RECEPT__PrepoctiSkladCenuVyrobkuMaster(a_RCPTID,null,true);
  return; --PRCEID --IGNOREPORCE
end; $$;


select ASWDropFunction('RECEPT_GetAlergens');

drop type if exists admin_septim.RECEPT_GetAlergens_rs cascade;
create type admin_septim.RECEPT_GetAlergens_rs as (
  RCPTID                   CISLOINT_NU,
  ALERID                   IDINT,
  ZKRATKA                  ZKRATKASTR_NU,
  NAZEV                    NAZEVSTR_LONG
);

create or replace function admin_septim.RECEPT_GetAlergens(
  in a_RCPTID              IDINT,                          -- ID receptury, muze se jednat i o polovicni porci
  in a_JZYKID              REFIDINT_NU default null,       -- jazyk nazvu/zkratky alergenu, muze byt NULL, jedna se napr. o preferovany jazyk zakaznika
  in a_PRCEID              REFIDINT_NU default  null       -- porce zakaznika
) returns setof admin_septim.RECEPT_GetAlergens_rs
language plpgsql security definer
as $$
declare
  l_AKTRCPTID              REFIDINT;
begin

  if (a_RCPTID is null) or (RECEPT_CheckSlozeneMenuTyp(a_RCPTID,-1) = true) then
    -- pojistka, napr. kdyz neni pres jidelnicek prirazena receptura k jidlu, pripadne se jedna o slozene menu
    return;
  end if;
  -- muze se jednat o recepturu typu polovicni porce
  select RECEPT_PolovicniPorceInfo.a_MASTERRCPTID into l_AKTRCPTID from admin_septim.RECEPT_PolovicniPorceInfo(a_RCPTID);

  return
    query
      -- subselect protoze abych mohl pouzit v ramci list() distinct a order by, musel bych pouzit stejne sloupce, ale jine se zobrazuj a dle jinych se radi
    select
      distinct
        cast(A.PORADI as CISLOINT_NU) as PORADI,
        cast(A.ALERID as IDINT) as ALERID,
        cast(coalesce(AN.ZKRATKA,A.ZKRATKA,' ') as ZKRATKASTR_NU) as ZKRATKA,
        cast(coalesce(AN.NAZEV,A.NAZEV) as NAZEVSTR_LONG) as NAZEV
      from
        RLRCPTFULL as RF join RECEPT as RC on RF.RCPTID = RC.RCPTID join
        INGRED as I on I.RCPTID = coalesce(RC.PPMASTERRCPTID,RC.RCPTID) join
        SKLADPOLALER as SPA on I.SKPLID = SPA.SKPLID join
        ALERGEN as A on SPA.ALERID = A.ALERID left outer join
        ALERNAZVY as AN on A.ALERID = AN.ALERID and AN.JZYKID = a_JZYKID and AN.SMAZAN = 0
      where
        RF.RCPTIDR = l_AKTRCPTID and I.SMAZAN = 0 and I.TYP in(1,2,3,5) and /*(INGRED_ProProdejPokladnou(I.TYP)=1 or INGRED_ProSkladOperace(I.TYP)=1)*/
        (a_PRCEID is null or I.PRCEID is null or a_PRCEID = I.PRCEID) and
        SPA.SMAZAN = 0
    union
    select
      distinct
        cast(A.PORADI as CISLOINT_NU) as PORADI,
        cast(A.ALERID as IDINT) as ALERID,
        cast(coalesce(AN.ZKRATKA,A.ZKRATKA,' ') as ZKRATKASTR_NU) as ZKRATKA,
        cast(coalesce(AN.NAZEV,A.NAZEV) as NAZEVSTR_LONG) as NAZEV
      from
          RECEPT as R join INGRED as I on I.RCPTID = R.RCPTID join
          SKLADPOLALER as SPA on I.SKPLID = SPA.SKPLID join
          ALERGEN as A on SPA.ALERID = A.ALERID left outer join
          ALERNAZVY as AN on A.ALERID = AN.ALERID and AN.JZYKID = a_JZYKID and AN.SMAZAN = 0
      where
          R.RCPTID = l_AKTRCPTID and I.SMAZAN = 0 and I.TYP in(1,2,3,5) and /*(INGRED_ProProdejPokladnou(I.TYP)=1 or INGRED_ProSkladOperace(I.TYP)=1)*/
          (a_PRCEID is null or I.PRCEID is null or a_PRCEID = I.PRCEID) and
          SPA.SMAZAN = 0;
end; $$;


select ASWDropFunction('RECEPT_GetAlergenyList');
/**
* Funkce vracejici seznam alergenu receptury.
* Jedna se o alergeny skladovych polozek - ingredienci receptury (vcetne skladovych polozek ze subreceptur),
* ktere se pouzivaji pri prodeji pokladnou nebo ve skladovych operacich.
*/
-- jazyk nazvu/zkratky alergenu, muze byt null, jedna se napr. o preferovany jazyk zakaznika
-- porce zakaznika
create or replace function admin_septim.RECEPT_GetAlergenyList(
  in a_RCPTID              IDINT,                          -- ID receptury, muze se jednat i o polovicni porci
  in a_JZYKID              REFIDINT_NU default null,       -- jazyk nazvu/zkratky alergenu, muze byt NULL, jedna se napr. o preferovany jazyk zakaznika
  in a_PRCEID              REFIDINT_NU default  null,      -- porce zakaznika
  in a_DELIMITER           KLICSTR default  null           -- delimiter, pokud by se mel pouzit jiny jako windows enter (#13#10), protoze na webu to zpusobuje problemy
) returns VALUETXT
language plpgsql security definer -- delimiter, pokud by se mel pouzit jiny jako windows enter (#13#10), protoze na webu to zpusobuje problemy
as $$
declare
  l_LIST                   VALUETXT;
begin
  -- delimiter
  a_DELIMITER := coalesce(a_DELIMITER,E'\n');
  begin
    select string_agg(concat(X.ZKRATKA,' - ',X.NAZEV),a_DELIMITER)
      into strict l_LIST
    from admin_septim.RECEPT_GetAlergens(a_RCPTID, a_JZYKID, a_PRCEID) as X;
  exception
    when NO_DATA_FOUND or TOO_MANY_ROWS then
  end;

  if coalesce(l_LIST,'') = '' then
    return null;
  end if;

  return l_LIST;
end; $$;


select ASWDropFunction('RECEPT_GetAlergenyZkratkyList');
/**
* Funkce vracejici seznam zkratek alergenu receptury.
* Jedna se o alergeny skladovych polozek - ingredienci receptury (vcetne skladovych polozek ze subreceptur),
* ktere se pouzivaji pri prodeji pokladnou nebo ve skladovych operacich.
*/
-- jazyk zkratky alergenu, muze byt null, jedna se napr. o preferovany jazyk zakaznika
create or replace function admin_septim.RECEPT_GetAlergenyZkratkyList(
  in a_RCPTID              IDINT,                         -- ID receptury, muze se jednat i o polovicni porci
  in a_JZYKID              REFIDINT_NU default null,      -- jazyk zkratky alergenu, muze byt NULL, jedna se napr. o preferovany jazyk zakaznika
  in a_PRCEID              REFIDINT_NU default  null      -- porce zakaznika
) returns VALUETXT
language plpgsql security definer -- porce zakaznika
as $$
declare
  l_LIST                   VALUETXT;
begin

  begin
    select string_agg(X.ZKRATKA,', ') into strict l_LIST
    from admin_septim.RECEPT_GetAlergens(a_RCPTID, a_JZYKID, a_PRCEID) as X;
    exception
      when NO_DATA_FOUND or TOO_MANY_ROWS then
  end;

  if coalesce(l_LIST,'') = '' then
    return null;
  end if;

  return l_LIST;
end; $$;


select ASWDropProcedure('RECEPT__CheckAlergenyVyrobku');
/**
* Procedura pro kontrolu alergenu skladovych polozek vyrabenych pres recepturu.
* Alergeny se kontroluji vuci alergenum skladovych polozek, ktere se pouzivaji na vyrobu. Tyto alergeny ziskava z temporary tabulky procedury, ze ktere je volana.
* Pokud receptura vyrabi vice ruznych skladpol (pres porce), zobrazi se upozorneni, ze kontrola neni mozna.
*/
create or replace function admin_septim.RECEPT__CheckAlergenyVyrobku(
  in  a_RCPTID             IDINT,
  in  a_FORCE              FORCETXT,
  out a_REFRESHLIST        BOOLBIT
)
language plpgsql security definer as $$
declare
  l_FORCERES               CISLOINT_NU;
  l_SKPLID                 REFIDINT;
  l_IDS                    INTEGER[];
  cr_cursorDel             RECORD;
  cr_cursorIns             RECORD;
begin

  select array(select ALERID::INTEGER from l_ALERIDLIST where PROSKLADOP) into l_IDS;

  a_REFRESHLIST := 0;
  l_FORCERES := admin_eng.CheckForce(a_FORCE,concat('DOIGNORUJALERGENYVYRABENESKLADPOL_',a_RCPTID));
  if (l_FORCERES is null) then
    l_FORCERES := admin_eng.CheckForce(a_FORCE,'DOIGNORUJALERGENYVYRABENESKLADPOL_ALL');
  end if;
  if (l_FORCERES is not null) then
    -- ignorovani kontroly (neresim Ano/Ne), ukoncim proceduru
    return;
  end if;
  l_FORCERES := admin_eng.CheckForce(a_FORCE,concat('DOAKTUALIZUJALERGENYVYRABENESKLADPOL_',a_RCPTID));
  if (l_FORCERES is null) then
    l_FORCERES := admin_eng.CheckForce(a_FORCE,'DOAKTUALIZUJALERGENYVYRABENESKLADPOL_ALL');
  end if;
  if (l_FORCERES is not null) and (l_FORCERES = 0) then
    -- odpoved NE na dotaz pro aktualizaci alergenu, ukoncim proceduru
    return;
  end if;
  -- vyrabena polozka obsahuje alergeny, ktere neobsahuji suroviny
  if exists(select 1 from INGRED as I join SKLADPOLALER as SPA on I.SKPLID = SPA.SKPLID left outer join
  (select unnest(l_IDS) as ALERID) A on A.ALERID = SPA.ALERID where
  I.SMAZAN = 0 and I.RCPTID = a_RCPTID and I.TYP in(4,5) and SPA.SMAZAN = 0 and A.ALERID is null) or /*INGRED_ProVyrobuNormovanim(I.TYP)=1*/
    -- suroviny obsahuji alergeny, ktere neobsahuje vyrabena polozka
  exists(select 1 from (select unnest(l_IDS) as ALERID) A left outer join((select SPA.ALERID from INGRED as I join SKLADPOLALER as SPA on I.SKPLID = SPA.SKPLID where
      I.SMAZAN = 0 and I.RCPTID = a_RCPTID and I.TYP in(4,5) and SPA.SMAZAN = 0)) as X on A.ALERID = X.ALERID where /*INGRED_ProVyrobuNormovanim(I.TYP)=1*/
  X.ALERID is null) then
    -- nacteni ID vyrabene skladpol, v pripade vyroby vice ruznych skladpol skonci v exception casti
    begin  /*INGRED_ProVyrobuNormovanim(TYP)=1*/
      begin
        select distinct SKPLID into strict l_SKPLID
        from INGRED where
        SMAZAN = 0 and RCPTID = a_RCPTID and TYP in(4,5);
      exception
        when NO_DATA_FOUND then
      end;
    exception
      when too_many_rows then
        -- vyrabi se vice ruznych skladpol, pouze upozorneni
        perform admin_base.ASWError(35509, cast(array[admin_septim.RECEPT_GetNazev(a_RCPTID),concat('DOIGNORUJALERGENYVYRABENESKLADPOL_',a_RCPTID),
        'DOIGNORUJALERGENYVYRABENESKLADPOL_ALL'] as text[]));
    end;
    -- bud nemam odpoved, nebo je odpoved ANO, protoze NE se odchytava na zacatku procedury
    if l_FORCERES is null then
      -- zobrazeni dotazu
      perform admin_base.ASWError(35508, cast(array[admin_septim.SKLADPOL_GetNazev(l_SKPLID),admin_septim.RECEPT_GetNazev(a_RCPTID),
      concat('DOAKTUALIZUJALERGENYVYRABENESKLADPOL_',a_RCPTID),
      'DOAKTUALIZUJALERGENYVYRABENESKLADPOL_ALL'] as text[]));
    else
      -- smazani alergenu, ktere obsahuje vyrabena skladpol, ale neobsahuji je suroviny
      for cr_cursorDel in select SPA.SPALID as cr_SPALID,max(I.TYP) as cr_INGREDTYPMAX from
      INGRED as I join
      SKLADPOLALER as SPA on I.SKPLID = SPA.SKPLID left outer join
      (select unnest(l_IDS) as ALERID) A on A.ALERID = SPA.ALERID where
      I.SMAZAN = 0 and I.RCPTID = a_RCPTID and I.TYP in(4,5) and SPA.SMAZAN = 0 and A.ALERID is null /*INGRED_ProVyrobuNormovanim(I.TYP)=1*/
      group by SPA.SPALID
      loop
        perform admin_septim.SKLADPOLALER_CheckAlerVyrDelete(cr_cursorDel.cr_SPALID,a_FORCE);
        -- pokud doslo k odebrani a jednalo o ingredienci pro normovani a prodej pokladnou (TYP=5), jeji alergen jiz byl soucasti alergenu receptury
        -- takze je potrebne pred slozenim noveho seznamu alergenu receptury zaktualizovat data v temporary tabulce
        -- v pripade vlozeni noveho alergenu se to resit nemusi, protoze se vklada z ingredience pro skladovou operaci nebo prodej pokladnou a tyto alergeny jsou
        -- soucasti seznamu alergenu receptury z techto ingredienci
        if cr_cursorDel.cr_INGREDTYPMAX = 5 then
          a_REFRESHLIST := 1;
        end if;
      end loop;
      -- vlozeni alergenu surovin, ktere neobsahuje vyrabena skladpol
      for cr_cursorIns in select distinct A.ALERID as cr_ALERID from
      (select unnest(l_IDS) as ALERID) A left outer join((select SPA.ALERID from INGRED as I join SKLADPOLALER as SPA on I.SKPLID = SPA.SKPLID where
          I.SMAZAN = 0 and I.RCPTID = a_RCPTID and I.TYP in(4,5) and SPA.SMAZAN = 0)) as X on A.ALERID = X.ALERID where /*INGRED_ProVyrobuNormovanim(I.TYP)=1*/
      X.ALERID is null
      loop
        perform admin_septim.SKLADPOLALER_CheckAlerVyrInsert(l_SKPLID,cr_cursorIns.cr_ALERID,a_FORCE);
      end loop;
    end if;
  end if; -- l_FORCERES
end; $$;



select ASWDropProcedure('RECEPT__RefreshAlergenyList');
/**
* Zakladani procedura pro aktualizaci seznamu aleergenu receptury ve fieldech ALERGENY a ALERGENYIDENT.
* Resi aktualizaci pro konkretni recepturu. Procedura neresi porce.
*/
create or replace function admin_septim.RECEPT__RefreshAlergenyList(
  in a_RCPTID              IDINT,
  in a_CHECKALER           BOOLBIT,      -- zda se maji kontrolovat alergeny vyrabenych ingredienci
  in a_FORCE               FORCETXT
) returns void
language plpgsql security definer as $$
declare
  l_NAZEVLIST              ALERGENYLISTSTR;
  l_ZKRATKALIST            ALERGENYLISTSTR;
  l_REFRESHLIST            BOOLBIT;
begin
  begin
    drop table l_ALERIDLIST;
  exception when others then
      -- asi jeste neexistovala
  end;
  begin
    create temporary table l_ALERIDLIST
    (
      ALERID  REFIDINT,
      PROSKLADOP  BOOLBIT
    );
    exception when others then
      truncate table l_ALERIDLIST;
   end;
  if RECEPT_CheckSlozeneMenuTyp(a_RCPTID,-1) = true then
    -- u slozeneho menu se neresi
    return;
  end if;
  -- nacteni seznamu vsech alergenu + priznak zda se jedna o alergen ingredience pro skladove operace
  -- pokud se ma seznam nacitat po aktualizaci opet, resi se jenom ingredience pro skladove operace
  insert into l_ALERIDLIST(ALERID,PROSKLADOP)
  select SPA.ALERID, I.TYP in(2,3) as PROSKLADOP from /*INGRED_ProSkladOperace(I.TYP)=1*/
  RLRCPTFULL as RF join
  RECEPT as RC on RF.RCPTID = RC.RCPTID join
  INGRED as I on I.RCPTID = coalesce(RC.PPMASTERRCPTID,RC.RCPTID) join
  SKLADPOLALER as SPA on I.SKPLID = SPA.SKPLID where
  RF.RCPTIDR = a_RCPTID and I.SMAZAN = 0 and
  I.TYP in(1,2,3,5) and /*(INGRED_ProProdejPokladnou(I.TYP)=1 or INGRED_ProSkladOperace(I.TYP)=1)*/
  SPA.SMAZAN = 0 union all
  select SPA.ALERID, I.TYP in(2,3) as PROSKLADOP from /*INGRED_ProSkladOperace(I.TYP)=1*/
  RECEPT as R join
  INGRED as I on I.RCPTID = R.RCPTID join
  SKLADPOLALER as SPA on I.SKPLID = SPA.SKPLID where
  R.RCPTID = a_RCPTID and I.SMAZAN = 0 and
  I.TYP in(1,2,3,5) and /*(INGRED_ProProdejPokladnou(I.TYP)=1 or INGRED_ProSkladOperace(I.TYP)=1)*/
  SPA.SMAZAN = 0;
  if a_CHECKALER = true then
    -- pokud receptura neobsahuje ingredience pro vyrobu normovanim
    if exists(select 1 from INGRED where SMAZAN = 0 and RCPTID = a_RCPTID and TYP in(4,5)) then /*INGRED_ProVyrobuNormovanim(TYP)=1*/
      -- kontrola alergenu vyrobku - pouziva temporary tabulku l_ALERIDLIST
      select * into l_REFRESHLIST from admin_septim.RECEPT__CheckAlergenyVyrobku(a_RCPTID,a_FORCE);
    end if;
  end if;
  if coalesce(l_REFRESHLIST,false) = true then
    -- seznam z realnich dat, protoze doslo k odebrani alergenu vyrobku
    begin
      select string_agg(X.NAZEV,', ' order by X.PORADI, X.ALERID),string_agg(X.ZKRATKA,',' order by X.PORADI, X.ALERID) into strict l_NAZEVLIST,l_ZKRATKALIST from((
      -- subselect protoze abych mohl pouzit v ramci list() distinct a order by, musel bych pouzit stejne sloupce, ale jine se zobrazuj a dle jinych se radi
    select distinct A.PORADI,A.ALERID,A.NAZEV,coalesce(A.ZKRATKA,' ') as ZKRATKA from
          RLRCPTFULL as RF join
          RECEPT as RC on RF.RCPTID = RC.RCPTID join
          INGRED as I on I.RCPTID = coalesce(RC.PPMASTERRCPTID,RC.RCPTID) join
          SKLADPOLALER as SPA on I.SKPLID = SPA.SKPLID join
          ALERGEN as A on SPA.ALERID = A.ALERID where
          RF.RCPTIDR = a_RCPTID and I.SMAZAN = 0 and I.TYP in(1,2,3,5) and /*(INGRED_ProProdejPokladnou(I.TYP)=1 or INGRED_ProSkladOperace(I.TYP)=1)*/
          SPA.SMAZAN = 0 union
          select distinct A.PORADI,A.ALERID,A.NAZEV,coalesce(A.ZKRATKA,' ') as ZKRATKA from
          RECEPT as R join
          INGRED as I on I.RCPTID = R.RCPTID join
          SKLADPOLALER as SPA on I.SKPLID = SPA.SKPLID join
          ALERGEN as A on SPA.ALERID = A.ALERID where
          R.RCPTID = a_RCPTID and I.SMAZAN = 0 and I.TYP in(1,2,3,5) and /*(INGRED_ProProdejPokladnou(I.TYP)=1 or INGRED_ProSkladOperace(I.TYP)=1)*/
          SPA.SMAZAN = 0)) as X;
        exception
      when NO_DATA_FOUND then
    end;
  else
    -- seznam z temporary tabulky
    begin
      select string_agg(X.NAZEV,', ' order by X.PORADI, X.ALERID),string_agg(X.ZKRATKA,',' order by X.PORADI, X.ALERID) into strict l_NAZEVLIST,l_ZKRATKALIST from
      -- subselect protoze abych mohl pouzit v ramci list() distinct a order by, musel bych pouzit stejne sloupce, ale jine se zobrazuj a dle jinych se radi
    ((select distinct A.PORADI,A.ALERID,A.NAZEV,coalesce(A.ZKRATKA,' ') as ZKRATKA from
          l_ALERIDLIST as L join
          ALERGEN as A on L.ALERID = A.ALERID)) as X;
        exception
      when NO_DATA_FOUND then
    end;
  end if;
  -- aktualizace bez oprav
  update RECEPT set ALERGENY =(case when trim(coalesce(l_NAZEVLIST,'')) = '' then '-' else l_NAZEVLIST
   end),ALERGENYIDENT =(case when trim(coalesce(l_ZKRATKALIST,'')) = '' then '-' else l_ZKRATKALIST
   end) where RCPTID = a_RCPTID;
  -- stejne hodnoty ulozim i u polovicnych porci, taky bez oprav
  update RECEPT set ALERGENY =(case when trim(coalesce(l_NAZEVLIST,'')) = '' then '-' else l_NAZEVLIST
   end),ALERGENYIDENT =(case when trim(coalesce(l_ZKRATKALIST,'')) = '' then '-' else l_ZKRATKALIST
   end) where SMAZAN = 0 and PPMASTERRCPTID = a_RCPTID;
end; $$;



select ASWDropProcedure('RECEPT_RefreshAlergenyList');
/**
* Procedura pro aktualizaci seznamu alergenu ve fieldech ALERGENY a ALERGENYIDENT pri zmene slozeni receptury.
* Resi recepturu dle ID i receptury, do kterych je vlozena.
*/
create or replace function admin_septim.RECEPT_RefreshAlergenyList(
  in a_RCPTID              IDINT,
  in a_FORCE               FORCETXT
) returns void
language plpgsql security definer
as $$
declare
  cr_rec                   RECORD;
begin
  if RECEPT_CheckSlozeneMenuTyp(a_RCPTID,-1) = true then
    -- u slozeneho menu se neresi
    return;
  end if;
  -- aktualizace receptury
  perform admin_septim.RECEPT__RefreshAlergenyList(a_RCPTID,true,a_FORCE); /*CHECKALER*/
  -- aktualizace nadrizenych receptur
  for cr_rec in select distinct RCPTIDR as cr_RCPTID from RLRCPTFULL where RCPTID = a_RCPTID and RCPTIDR <> RCPTID
  loop
    perform admin_septim.RECEPT__RefreshAlergenyList(cr_rec.cr_RCPTID,true,a_FORCE);
  end loop; /*CHECKALER*/
end; $$;



select ASWDropProcedure('RECEPT_ALERGENUpdate');
/**
* Procedura volana pri aktualizaci zaznamu alergenu (zmene nazvu, zkratky, poradi).
* Provede aktualizaci seznamu alergenu u receptur.
*/
create or replace function admin_septim.RECEPT_ALERGENUpdate(
  in a_ALERID              REFIDINT,
  in a_FORCE               FORCETXT
) returns void
language plpgsql security definer
as $$
declare
  cr_rec                   RECORD;
begin
  -- cyklus nad recepturami obsahujicimi alergen (primo i neprimo pres subreceptury)
  for cr_rec in select distinct X.RCPTID as cr_RCPTID from((select RF.RCPTIDR as RCPTID from
      RLRCPTFULL as RF join
      RECEPT as RC on RF.RCPTID = RC.RCPTID join
      INGRED as I on I.RCPTID = coalesce(RC.PPMASTERRCPTID,RC.RCPTID) join
      SKLADPOLALER as SPA on I.SKPLID = SPA.SKPLID where
      RC.SMAZAN = 0 and I.SMAZAN = 0 and I.TYP in(1,2,3,5) and /*(INGRED_ProProdejPokladnou(I.TYP)=1 or INGRED_ProSkladOperace(I.TYP)=1)*/
      SPA.SMAZAN = 0 and SPA.ALERID = a_ALERID union all
      select R.RCPTID from
      RECEPT as R join
      INGRED as I on I.RCPTID = R.RCPTID join
      SKLADPOLALER as SPA on I.SKPLID = SPA.SKPLID where
      R.SMAZAN = 0 and I.SMAZAN = 0 and I.TYP in(1,2,3,5) and /*(INGRED_ProProdejPokladnou(I.TYP)=1 or INGRED_ProSkladOperace(I.TYP)=1)*/
      SPA.SMAZAN = 0 and SPA.ALERID = a_ALERID)) as X
  loop
    perform admin_septim.RECEPT__RefreshAlergenyList(cr_rec.cr_RCPTID,false,a_FORCE);
  end loop;
  return; /*CHECKALER*/
end; $$;



select ASWDropProcedure('RECEPT_SKLADPOLMultiEditFinish');
/**
* Procedura pro finalizaci zmen prirazeni alergenu skladovym polozkam. Provede aktualizaci seznamu alergenu u receptur,
* do kterych jsou skladove polozky vlozeny.
*/
create or replace function admin_septim.RECEPT_SKLADPOLMultiEditFinish(
  in a_SKPLIDLIST          IDINTARR,
  in a_CHECKALER           BOOLBIT,
  in a_FORCE               FORCETXT
) returns void
language plpgsql security definer
as $$
declare
  cr_rec                   RECORD;
begin
  for cr_rec in select distinct X.RCPTID as cr_RCPTID from((
    select RF.RCPTIDR as RCPTID
    from
      RLRCPTFULL as RF
      join RECEPT as RC on RF.RCPTID = RC.RCPTID
      join INGRED as I on I.RCPTID = coalesce(RC.PPMASTERRCPTID,RC.RCPTID)
    where
      RC.SMAZAN = 0 and I.SKPLID in (select unnest(a_SKPLIDLIST)) and I.SMAZAN = 0 and I.TYP in(1,2,3,5)
    union all /*(INGRED_ProProdejPokladnou(I.TYP)=1 or INGRED_ProSkladOperace(I.TYP)=1)*/
    select R.RCPTID
    from
      RECEPT as R
      join INGRED as I on I.RCPTID = R.RCPTID
    where R.SMAZAN = 0 and I.SKPLID in (select unnest(a_SKPLIDLIST)) and I.SMAZAN = 0 and I.TYP in(1,2,3,5))) as X
  loop /*(INGRED_ProProdejPokladnou(I.TYP)=1 or INGRED_ProSkladOperace(I.TYP)=1)*/
    perform admin_septim.RECEPT__RefreshAlergenyList(cr_rec.cr_RCPTID,a_CHECKALER,a_FORCE);
  end loop;
end; $$;



select ASWDropProcedure('RECEPT_SKLADPOLALERModify');
/**
* Procedura volana pri zmene vazby mezi skladpol a alergenem (insert, update, delete).
* Provede aktualizaci seznamu alergenu receptur, ktere obsahuji skladovou polozku z vazby.
*/
create or replace function admin_septim.RECEPT_SKLADPOLALERModify(
  in a_SKPLID              REFIDINT,
  in a_CHECKALER           BOOLBIT,
  in a_FORCE               FORCETXT
) returns void
language plpgsql security definer
as $$
declare
  cr_rec                   RECORD;
begin
  for cr_rec in select distinct X.RCPTID as cr_RCPTID from((select RF.RCPTIDR as RCPTID from
      RLRCPTFULL as RF join
      RECEPT as RC on RF.RCPTID = RC.RCPTID join
      INGRED as I on I.RCPTID = coalesce(RC.PPMASTERRCPTID,RC.RCPTID) where
      RC.SMAZAN = 0 and I.SMAZAN = 0 and I.TYP in(1,2,3,5) and /*(INGRED_ProProdejPokladnou(I.TYP)=1 or INGRED_ProSkladOperace(I.TYP)=1)*/
      I.SKPLID = a_SKPLID union all
      select R.RCPTID from
      RECEPT as R join
      INGRED as I on I.RCPTID = R.RCPTID where
      R.SMAZAN = 0 and I.SMAZAN = 0 and I.TYP in(1,2,3,5) and /*(INGRED_ProProdejPokladnou(I.TYP)=1 or INGRED_ProSkladOperace(I.TYP)=1)*/
      I.SKPLID = a_SKPLID)) as X
  loop
    perform admin_septim.RECEPT__RefreshAlergenyList(cr_rec.cr_RCPTID,a_CHECKALER,a_FORCE);
  end loop;
  return;
end; $$;



select ASWDropProcedure('RECEPT_CISLOHGENIDENTChangeCheck');
/**
* Procedura volana pri zmene parametru "Generovat identifikátor do Číslo H"
* Pokud se meni na 1, tak se musí zajistit zkopírování RCPTID do CISLOH
*/
create or replace function admin_septim.RECEPT_CISLOHGENIDENTChangeCheck(
  in a_OLDVALUE            VALUETXT,
  in a_NEWVALUE            VALUETXT,
  in a_FORCE               FORCETXT
) returns void
language plpgsql security definer as $$
begin
  if (a_OLDVALUE <> a_NEWVALUE) and (a_NEWVALUE = '1') then
    if exists(select 1 from RECEPT where SMAZAN = 0 and CISLOH <> RCPTID) then
      if admin_eng.CheckForce(a_FORCE,'CISLOHGENIDENTREPLACE') is null then
        perform admin_base.ASWError(35507);
      end if;
      update RECEPT set CISLOH = RCPTID where SMAZAN = 0 and CISLOH <> RCPTID;
    end if;
  end if;
  return;
end; $$;



select ASWDropProcedure('RECEPT_RECEPTIMPORTEXTIDCheck');
/**
* kontrola, že všechny receptury a podřízené záznamy jsou importované
*/
create or replace function admin_septim.RECEPT_RECEPTIMPORTEXTIDCheck(
  in a_CHECKTYPE           CISLOINT      -- 0 - při změně globálního paramtru, 1 - test konzistence pro importní DB
) returns void
language plpgsql security definer
-- 0 - při změně globálního paramtru, 1 - test konzistence pro importní DB
as $$
begin
  if exists(select 1 from RECEPT where HIDE = false and SMAZAN = 0 and coalesce(EXTID,0) = 0) then
    if a_CHECKTYPE = 0 then
      perform admin_base.ASWError(35540);
    elseif a_CHECKTYPE = 1 then
      perform admin_base.ASWError(35541);
    end if;
  end if;
  perform admin_septim.SKLADPOL_RECEPTIMPORTEXTIDCheck(a_CHECKTYPE);
  perform admin_septim.SKUPSPOL1_RECEPTIMPORTEXTIDCheck(a_CHECKTYPE);
  perform admin_septim.SKUPSPOL2_RECEPTIMPORTEXTIDCheck(a_CHECKTYPE);
  perform admin_septim.SKUPSPOL3_RECEPTIMPORTEXTIDCheck(a_CHECKTYPE);
  perform admin_septim.SKUPREC1_RECEPTIMPORTEXTIDCheck(a_CHECKTYPE);
  perform admin_septim.SKUPREC2_RECEPTIMPORTEXTIDCheck(a_CHECKTYPE);
  perform admin_septim.SKUPREC3_RECEPTIMPORTEXTIDCheck(a_CHECKTYPE);
  perform admin_septim.SKUPREC4_RECEPTIMPORTEXTIDCheck(a_CHECKTYPE);
  perform admin_septim.JAZYK_RECEPTIMPORTEXTIDCheck(a_CHECKTYPE);
  perform admin_septim.PORCE_RECEPTIMPORTEXTIDCheck(a_CHECKTYPE);
  perform admin_septim.ALERGEN_RECEPTIMPORTEXTIDCheck(a_CHECKTYPE);
  perform admin_septim.NUTRIKANT_RECEPTIMPORTEXTIDCheck(a_CHECKTYPE);
  return;
end; $$;



select ASWDropProcedure('RECEPT_RECEPTIMPORTDBChangeCheck');
/**
* Procedura volana pri zmene parametru "DB s importovanými recepturami"
* Pokud se meni na 1, tak se musí zkontrolovat, že všechny receptury a podřízené záznamy jsou importované
*/
create or replace function admin_septim.RECEPT_RECEPTIMPORTDBChangeCheck(
  in a_OLDVALUE            VALUETXT,
  in a_NEWVALUE            VALUETXT,
  in a_FORCE               FORCETXT
) returns void
language plpgsql security definer as $$
begin
  if (a_OLDVALUE <> a_NEWVALUE) and (a_NEWVALUE = '1') then
    perform admin_septim.RECEPT_RECEPTIMPORTEXTIDCheck(0);
  end if;
  return;
end; $$;




select ASWDropFunction('RECEPT_GetCisloHByParams');
/**
* Funkce, která vrátí CISLOH ze vstupu, nebo RCPTID ze vstupu dle nastavení globálního parametru
*/
create or replace function admin_septim.RECEPT_GetCisloHByParams(
  in a_RCPTID              REFIDINT,
  in a_CISLOH              CISLOINT_R
) returns CISLOINT_R
language plpgsql security definer as $$
begin
  if admin_params.P_GetGlobalParamBOOL('RECEPTURA','CISLOHGENIDENT',null,false) = true then
    return a_RCPTID;
  end if;
  return a_CISLOH;
end; $$;;



select ASWDropProcedure('RECEPT_CheckPorceConsistSkladOp');
/**
* Procedura pro kontrolu konzistence receptury z pohledu porci.
* Vola se z check procedur nekterych skladovych operaci.
* V pripade chyby zobrazi upozorneni.
*/
create or replace function admin_septim.RECEPT_CheckPorceConsistSkladOp(
  in a_RCPTID              IDINT,                        -- zvolena receptura, muze byt i polovicni porce, pak je hlavni receptura v a_AKTRCPTID
  in a_PRCEID              REFIDINT_NU,                  -- zvolena porce nebo NULL v pripade nezvoleni porce
  in a_TYPINGRED           TYPINT,                       -- typ ingredienci: 1-pro skladove operace, 2-pro vyrobu normovanim
  in a_FORCE               FORCETXT,
  in a_AKTRCPTID           REFIDINT_NU default null      -- hlavni receptura v pripade polovicni porce v a_RCPTID, jedna se o recepturu, ktera se kontroluje, pokud je NULL, pouzije se a_RCPTID
) returns void
language plpgsql security definer as $$ -- hlavni receptura v pripade polovicni porce v a_RCPTID, jedna se o recepturu, ktera se kontroluje, pokud je null, pouzije se a_RCPTID
begin
  if admin_eng.CheckForce(a_FORCE,'DOPORCEOK') is null then
    a_AKTRCPTID := coalesce(a_AKTRCPTID,a_RCPTID);
    if a_PRCEID is null then
      -- upozorneni na ignorovani ingredienci s porcemi
      if (a_TYPINGRED = 1 and RECEPT_SkladOpPouzivaPorce(a_AKTRCPTID) = true) or (a_TYPINGRED = 2 and RECEPT_VyrNormPouzivaPorce(a_AKTRCPTID) = true) then
        perform admin_base.ASWError((case when a_TYPINGRED = 1 then 35515 else 35516 end), cast(array[admin_septim.RECEPT_GetNazev(a_RCPTID),
        'DOPORCEOK'] as text[]));
      end if;
    else
      -- upozorneni na recepturu bez porci
      if (a_TYPINGRED = 1 and RECEPT_SkladOpPouzivaPorce(a_AKTRCPTID) = false) or (a_TYPINGRED = 2 and RECEPT_VyrNormPouzivaPorce(a_AKTRCPTID) = false) then
        perform admin_base.ASWError((case when a_TYPINGRED = 1 then 35517 else 35518 end), cast(array[admin_septim.RECEPT_GetNazev(a_RCPTID),
        'DOPORCEOK'] as text[]));
      else
        case RECEPT_ConsistPorce(a_AKTRCPTID,a_PRCEID,true,false,a_TYPINGRED = 2, --VSECHNYAKTPORCE --TYPPRODEJPOKL --TYPVYROBANORM
          a_TYPINGRED = 1) /*TYPSKLADOPER*/
          when 1 then
          -- neobsahuje ingredience zvolene porce
            perform admin_base.ASWError((case when a_TYPINGRED = 1 then 35519 else 35520 end), cast(array[admin_septim.RECEPT_GetNazev(a_RCPTID),
            admin_septim.PORCE_GetNazevByID(a_PRCEID),'DOPORCEOK'] as text[]));
          when 2 then
          -- slozeni jednotlivych porci se lisi
            perform admin_base.ASWError(35521, cast(array[admin_septim.RECEPT_GetNazev(a_RCPTID),'DOPORCEOK'] as text[]));
          when 3 then
          -- neobsahuje ingredience vsech aktivnich porci
            perform admin_base.ASWError(35522, cast(array[admin_septim.RECEPT_GetNazev(a_RCPTID),'DOPORCEOK'] as text[]));
          else
            null;-- ADDED EMPTY ELSE
        end case;
      end if;
    end if;
  end if;
  return;
end; $$;



select ASWDropProcedure('RECEPTCOPYINGREDPORCEMultiGet');
/**
* Get procedura pro kopirovani ingredienci dle zdrojove porce zvolenych receptur do cilove porce stejnych receptur.
*/
create or replace function admin_septim.RECEPTCOPYINGREDPORCEMultiGet(
  in a_IDLIST              IDINTARR,
  inout r_CURSOR           refcursor default null,
  inout r_CURSOR2          refcursor default null
)
language plpgsql security definer as $$
begin
  perform admin_params.P_CheckGlobalParamBOOL('SYNCRECEPT','RECEPTIMPORTDB',false,35539);
  if coalesce(cardinality(a_IDList), 0) = 0 then
    --ak nie je poslane ID, teda je list prazdny, nech sa nezobrazi okno
    open r_CURSOR for
    select 1 as "$DONOTSHOW";
    return;
  end if;
  -- test licence
  perform admin_base.B_LIMITS_CheckLicence('SEPTIMAPP','VYROBNAJIDEL',1,35534);
  -- test opravneni
  perform admin_users.U_CheckPerm('SEPTIMAPP',E'RECEPT\\RECEPTCOPYINGRED',0);
  open r_CURSOR2 for
  select 1 as "$MODIFIED";
end; $$;

select grant_func('RECEPTCOPYINGREDPORCEMultiGet', 'SPEXEC');


select ASWDropProcedure('RECEPTCOPYINGREDPORCEMultiExec');
/**
* Exec procedura pro kopirovani ingredienci dle zdrojove porce zvolenych receptur do cilove porce stejnych receptur.
*/
drop type if exists admin_septim.RECEPTCOPYINGREDPORCEMultiExec_rs cascade;
create type admin_septim.RECEPTCOPYINGREDPORCEMultiExec_rs as (
  "$DONOTSHOW"             INTEGER
);

create or replace function admin_septim.RECEPTCOPYINGREDPORCEMultiExec(
  in a_IDLIST              IDINTARR,
  in a_PORCEZDROJ          NAZEVSTR,
  in a_PORCECIL            NAZEVSTR,
  in a_KOEFICIENT          KOEFICIENTFLT,
  in a_TYP                 TYPINT,            -- 0 = presun, 1 = kopirovani
  in a_FORCE               FORCETXT default null
) returns setof admin_septim.RECEPTCOPYINGREDPORCEMultiExec_rs
language plpgsql security definer as $$
declare
  l_PRCEID_ZDROJ           REFIDINT;
  l_PRCEID_CIL             REFIDINT;
  l_ID                     IDINT;
  l_MASTERPERM             PARAMTXT;
  l_RCPTID_LAST            REFIDINT_NU;
  cr_rec                   RECORD;
begin
  perform admin_params.P_CheckGlobalParamBOOL('SYNCRECEPT','RECEPTIMPORTDB',false,35539);
  if coalesce(cardinality(a_IDList), 0) = 0 then
    --ak nie je poslane ID, teda je list prazdny, nech sa nezobrazi okno
    return query select 1 as "$DONOTSHOW";
  end if;
  -- test licence
  perform admin_base.B_LIMITS_CheckLicence('SEPTIMAPP','VYROBNAJIDEL',1,35534);
  -- test opravneni
  l_MASTERPERM := E'SEPTIMAPP\\RECEPT\\RECEPTCOPYINGRED';
  perform admin_users.U_CheckPerm('SEPTIMAPP',l_MASTERPERM,0);
  -- test vstupu - zdrojova porce (nepovinna)
  select B_REFTABLE.a_ID into l_PRCEID_ZDROJ from admin_base.B_REFTABLE('SEPTIMAPP','PORCE','NAZEV',a_PORCEZDROJ,35535,'PORCEZDROJ');
  if l_PRCEID_ZDROJ is not null then
    if PORCE_IsActive(l_PRCEID_ZDROJ) = false or PORCE_IsHidden(l_PRCEID_ZDROJ) = true then
      perform admin_base.ASWError(35527, cast(array['PORCEZDROJ'] as text[]));
    end if;
  end if;
  -- test vstupu - cilova porce (nepovinna)
  select B_REFTABLE.a_ID into l_PRCEID_CIL from admin_base.B_REFTABLE('SEPTIMAPP','PORCE','NAZEV',a_PORCECIL,35536,'PORCECIL');
  if l_PRCEID_ZDROJ is not null then
    if PORCE_IsActive(l_PRCEID_CIL) = false or PORCE_IsHidden(l_PRCEID_CIL) = true then
      perform admin_base.ASWError(35527, cast(array['PORCECIL'] as text[]));
    end if;
  end if;
  if l_PRCEID_ZDROJ = l_PRCEID_CIL then
    -- porce se nesmi shodovat
    perform admin_base.ASWError(35528, cast(array['PORCEZDROJ'] as text[]));
  end if;
  if l_PRCEID_ZDROJ is null and l_PRCEID_CIL is null then
    -- alespon jedna porce musi byt zadana
    perform admin_base.ASWError(35524, cast(array['PORCEZDROJ'] as text[]));
  end if;
  -- test vstupu - koeficient
  perform admin_base.B_NULL_FLT('KOEFICIENT',a_KOEFICIENT,35526);
  if a_KOEFICIENT <= 0 then
    perform admin_base.ASWError(35529, cast(array['KOEFICIENT'] as text[]));
  end if;
  -- test porci vuci zpusobu kopirovani
  if (a_TYP = 1) and (l_PRCEID_ZDROJ is null or l_PRCEID_CIL is null) then
    -- v pripade kopirovani musi byt nastavena zdrojova i cilova porce
    if l_PRCEID_ZDROJ is null then
      -- focus na zdrojovou porci
      perform admin_base.ASWError(35525, cast(array['PORCEZDROJ'] as text[]));
    else
      -- focus na cilovou porci
      perform admin_base.ASWError(35525, cast(array['PORCECIL'] as text[]));
    end if;
  end if;
  if not exists(select 1 from INGRED where RCPTID in (select unnest(a_IDLIST)) and SMAZAN = 0 and RECEPT_CheckSkladpol(RCPTID) = false and -- skladpol-recept ignoruji
    ((l_PRCEID_ZDROJ is not null and PRCEID is not null and PRCEID = l_PRCEID_ZDROJ) or (l_PRCEID_ZDROJ is null and PRCEID is null))) then
    if l_PRCEID_ZDROJ is not null then
      -- ve vyberu se nenachazi receptura obsahujici ingredience se zdrojovou porci
      perform admin_base.ASWError(35530, cast(array[a_PORCEZDROJ,'PORCEZDROJ'] as text[]));
    else
      -- ve vyberu se nenachazi receptura obsahujici ingredience bez porce
      perform admin_base.ASWError(35523, cast(array['PORCEZDROJ'] as text[]));
    end if;
  end if;
  -- kontrola recept bez ingredienci v zdrojove porci
  if admin_eng.CheckForce(a_FORCE,'VYNECHATRECEPTBEZZDROJPORCE') is null and
    exists(select 1 from RECEPT as R left outer join INGRED as I on R.RCPTID = I.RCPTID and I.SMAZAN = 0 and
      ((l_PRCEID_ZDROJ is not null and I.PRCEID is not null and I.PRCEID = l_PRCEID_ZDROJ) or (l_PRCEID_ZDROJ is null and I.PRCEID is null))
      where R.RCPTID in (select unnest(a_IDLIST)) and R.SMAZAN = 0 and I.INGRID is null) then
    -- upozorneni
    if l_PRCEID_ZDROJ is not null then
      perform admin_base.ASWError(35531, cast(array[a_PORCEZDROJ,'VYNECHATRECEPTBEZZDROJPORCE'] as text[]));
    else
      perform admin_base.ASWError(35537, cast(array['VYNECHATRECEPTBEZZDROJPORCE'] as text[]));
    end if;
  end if;
  -- potvrzeni (pouze pokud existuji ingredience s cilovou porci)
  if admin_eng.CheckForce(a_FORCE,'KOPIRUJINGREDPORCE') is null and
    exists(select 1 from INGRED
    where RCPTID in (select unnest(a_IDLIST)) and SMAZAN = 0 and
      ((l_PRCEID_CIL is not null and PRCEID is not null and PRCEID = l_PRCEID_CIL) or (l_PRCEID_CIL is null and PRCEID is null)) and
      RECEPT_CheckSkladpol(RCPTID) = false) then -- skladpol-recept ignoruji
    if l_PRCEID_CIL is not null then
      -- s porci
      perform admin_base.ASWError(35532, cast(array[a_PORCECIL,'KOPIRUJINGREDPORCE'] as text[]));
    else
      -- bez porce
      perform admin_base.ASWError(35533, cast(array['KOPIRUJINGREDPORCE'] as text[]));
    end if;
  end if;
  l_RCPTID_LAST := null;
  for cr_rec in select INGRID as cr_ID,RCPTID as cr_RCPTID,SKPLID as cr_SKPLID,MNOZSTVI as cr_MNOZSTVI,MNOZSTVIC as cr_MNOZSTVIC,KOEFODP as cr_KOEFODP,TYP as cr_TYP,PORADI as cr_PORADI,KOMENTAR as cr_KOMENTAR
    from INGRED
    where RCPTID in (select unnest(a_IDLIST)) and SMAZAN = 0 and RECEPT_CheckSkladpol(RCPTID) = false and -- skladpol-recept ignoruji
     ((l_PRCEID_ZDROJ is not null and PRCEID is not null and PRCEID = l_PRCEID_ZDROJ) or (l_PRCEID_ZDROJ is null and PRCEID is null))
  loop
    if (l_RCPTID_LAST is null or l_RCPTID_LAST <> cr_rec.cr_RCPTID) then
        -- odstranim puvodni ingredience cilove porce
      perform admin_septim.INGRED_RECEPTDeleteAll(cr_rec.cr_RCPTID,l_MASTERPERM,l_PRCEID_CIL,l_PRCEID_CIL is null); /*BEZPORCE*/
      l_RCPTID_LAST := cr_rec.cr_RCPTID;
    end if;
    if a_TYP = 0 then
        -- presun - update ingredienci = nastaveni porce + uprava mnozstvi
        -- RECCOPYINGREDPORCE+ nemenit, pouziva se pro detekci kopirovani ingredienci v check procedure INGRED, aby se nezobrazovali nektere dotazy
      perform admin_septim.INGRED_Update(cr_rec.cr_ID,cr_rec.cr_SKPLID,l_PRCEID_CIL,cr_rec.cr_MNOZSTVI*a_KOEFICIENT,
      cr_rec.cr_KOEFODP,cr_rec.cr_TYP,cr_rec.cr_MNOZSTVIC*a_KOEFICIENT,
      cr_rec.cr_PORADI,cr_rec.cr_KOMENTAR,concat('RECCOPYINGREDPORCE+,',a_FORCE),
      l_MASTERPERM);
    else
        -- kopirovani - insert nove ingredience
        -- RECCOPYINGREDPORCE+ nemenit, pouziva se pro detekci kopirovani ingredienci v check procedure INGRED, aby se nezobrazovali nektere dotazy
      select * into l_ID from admin_septim.INGRED_Insert(cr_rec.cr_RCPTID,cr_rec.cr_SKPLID,l_PRCEID_CIL,cr_rec.cr_MNOZSTVI*a_KOEFICIENT,
      cr_rec.cr_KOEFODP,cr_rec.cr_TYP,cr_rec.cr_MNOZSTVIC*a_KOEFICIENT,
      cr_rec.cr_PORADI,cr_rec.cr_KOMENTAR,concat('RECCOPYINGREDPORCE+,',a_FORCE),
      l_MASTERPERM);
    end if;
  end loop;
  return query select 0 as "$DONOTSHOW";
end; $$;

select grant_func('RECEPTCOPYINGREDPORCEMultiExec', 'SPEXEC');


select ASWDropProcedure('RECEPTRECCENPREP__BasicCheck');
/**
* Základní funkce pro kontrolu licence a oprávnění.
*/
create or replace function admin_septim.RECEPTRECCENPREP__BasicCheck(
  out a_MASTERPERM        PARAMTXT
)
language plpgsql security definer as $$
begin
  -- kontrola licence
  perform RECCENPREP_CheckLicence();
  -- kontrola práva
  select * into a_MASTERPERM from RECCENPREP_CheckApplyPerm();
end; $$;


select ASWDropProcedure('RECEPTRECCENPREPMultiGet');
create or replace function admin_septim.RECEPTRECCENPREPMultiGet(
  in a_IDLIST              IDINTARR,
  inout r_CURSOR           refcursor default null,
  inout r_CURSOR2          refcursor default null
)
language plpgsql security definer as $$
begin
  if coalesce(cardinality(a_IDList), 0) = 0 then
    --ak nie je poslane ID, teda je list prazdny, nech sa nezobrazi okno
    open r_CURSOR for
    select 1 as "$DONOTSHOW";
    return;
  end if;

  -- kontrola (licence, právo...)
  perform RECEPTRECCENPREP__BasicCheck();

  open r_CURSOR2 for
  select 1 as "$MODIFIED";
end; $$;

select grant_func('RECEPTRECCENPREPMultiGet', 'SPEXEC');


select ASWDropProcedure('RECEPTRECCENPREPMultiExec');
create or replace function admin_septim.RECEPTRECCENPREPMultiExec(
  in a_RECCENPREP          NAZEVSTR,
  in a_IDLIST              IDINTARR,
  in a_FORCE               FORCETXT default null
) returns void
language plpgsql security definer as $$
declare
  l_MASTERPERM             PARAMTXT;
  l_RCPRID                 REFIDINT;
begin
  -- kontrola (licence, právo...)
  select * into l_MASTERPERM from RECEPTRECCENPREP__BasicCheck();

  -- kontrola vstupu
  perform B_NULL_STR('RECCENPREP',a_RECCENPREP,35455);
  select B_REFTABLE.a_ID into l_RCPRID from B_REFTABLE('SEPTIMAPP','RECCENPREP','NAZEV',a_RECCENPREP,35456,'RECCENPREP');

  -- potvrzení vynechání receptur, kterých se přepočet cen netýká
  if admin_eng.CheckForce(a_FORCE,'IGNORERCPT') is null then
    -- kontrola skrytých receptur nebo receptur, u kterých se nezadává cena (včetně korunových, které se ignorují také)
    if exists(select 1 from RECEPT where SMAZAN = 0 and RCPTID in (select unnest(a_IDList)) and (HIDE = true or RECEPT_ZadavatCenu(RCPTID,-1,false) = false)) then
      perform ASWError(35538, cast(array['IGNORERCPT'] as text[]));
    end if;
  end if;

  -- potvrzení přepočtu
  if admin_eng.CheckForce(a_FORCE,'DORECCENPREP') is null then
    perform ASWError(35542, cast(array[a_RECCENPREP, 'DORECCENPREP'] as text[]));
  end if;

  -- přepočet
  perform RECCENPREP_Prepocet(l_RCPRID, a_FORCE, l_MASTERPERM, a_IDLIST);

end; $$;

select grant_func('RECEPTRECCENPREPMultiExec', 'SPEXEC');



/************ View funkce ************/

select ASWDropFunction('V_RECEPTGetReceptTypKlic');
create or replace function admin_septim.V_RECEPTGetReceptTypKlic(
  in a_RCPTID              IDINT
) returns NAZEVSTR
language plpgsql security definer as $$
begin
  return RECEPT_GetReceptTypKlic(a_RCPTID);
end; $$;;

select grant_func('V_RECEPTGetReceptTypKlic', 'SPEXEC');



select ASWDropFunction('V_RECEPTGetNazev');
/**
* Funkce vracejici nazev receptury dle vstupnych parametru.
* Pouziva se napr. v reportech pro WebCare.
*/
create or replace function admin_septim.V_RECEPTGetNazev(
  in a_RCPTID              IDINT,
  in a_TYPZOBRAZENI        VALUETXT,        -- RECNAZVYNAZEV / RECNAZVYPOPIS / NAZEV / POPIS, neplatna nebo nezadana hodnota = NAZEV
  in a_ZKZNID              REFIDINT_NU,     -- pokud je zadany zakaznik, zjistuje se jeho jazyk
  in a_KLICJAZYK           KLICSTR_NU,      -- neplatny klic = nezadany jazyk, pouziva se pouze kdyz neni zadan zakaznik
  in a_KLICRECNAZEV        KLICSTR_NU,
  in a_DEFNAZEV            NAZEVSTR,
  in a_DEFPOPIS            POPISTXT
) returns KOMENTARTXT
language plpgsql security definer
-- RECNAZVYNAZEV / RECNAZVYPOPIS / NAZEV / POPIS, neplatna nebo nezadana hodnota = NAZEV
-- pokud je zadany zakaznik, zjistuje se jeho jazyk
-- neplatny klic = nezadany jazyk, pouziva se pouze kdyz neni zadan zakaznik
as $$
declare
  l_RECNAZEV               KOMENTARTXT;
  l_JZYKID                 REFIDINT_NU;
begin
  if coalesce(a_TYPZOBRAZENI,'') not in('NAZEV','POPIS','RECNAZVYNAZEV','RECNAZVYPOPIS') then
    a_TYPZOBRAZENI := 'NAZEV';
  end if;
  -- jenom pokud se jedna o nazvy z RECNAZVY
  if a_TYPZOBRAZENI in('RECNAZVYNAZEV','RECNAZVYPOPIS') then
    if a_ZKZNID is not null then
      -- pokud je zadany zakaznik, zjistim jeho jazyk
      l_JZYKID := ZAKAZNIK_GetJazykID(a_ZKZNID);
    else
      -- pokud je zadany neplatny klic jazyku, vraci NULL
      select B_REFTABLE.a_ID into l_JZYKID from admin_base.B_REFTABLE('SEPTIMAPP','JAZYK','KLIC',a_KLICJAZYK,-1,'');
    end if;
    -- nacteni hodnoty nazvu
    if a_KLICRECNAZEV is not null and trim(a_KLICRECNAZEV) = '' then
      a_KLICRECNAZEV := null;
    end if;
    select RECNAZVY_GetData.a_NAZEV into l_RECNAZEV from admin_septim.RECNAZVY_GetData(a_RCPTID,l_JZYKID,a_KLICRECNAZEV,null,null); --DEFNAZEV --DEFPOPIS
  end if;
  if l_RECNAZEV is null then
    -- nazev v RECNAZVY nebyl nalezen
    if a_TYPZOBRAZENI in('POPIS','RECNAZVYPOPIS') and coalesce(a_DEFPOPIS,'') <> '' then
      -- ma se zobrazit popis a je zadan
      l_RECNAZEV := a_DEFPOPIS;
    else
      -- jinak nazev
      l_RECNAZEV := a_DEFNAZEV;
    end if;
  end if;
  return l_RECNAZEV;
end; $$;;

select grant_func('V_RECEPTGetNazev', 'SPEXEC');



/**
 * Aktualizuje hodnoty, které se nenastavují pomocí existujících basic insert/update procedur
*/
select ASWDropFunction('RECEPT_SimplePRODUCTUpdateFields');
create or replace function admin_septim.RECEPT_SimplePRODUCTUpdateFields (
  in a_ID            IDINT,
  in a_COMMENT       KOMENTARTXT,
  in a_COLOR         BARVASTR_NU,
  in a_RECTID        REFIDINT
)
returns void volatile language plpgsql security definer as $$
begin

  update RECEPT set
    KOMENTAR = a_COMMENT, BARVA = a_COLOR, RECTID = a_RECTID
  where RCPTID = a_ID;

end; $$;



select ASWDropFunction('RECEPTEXTPOSProductsView');
/**
 * Funkce pro zobrazení produktů pro zjednodušenou editaci
*/
drop type if exists admin_septim.RECEPTEXTPOSProductsView_rs cascade;
create type admin_septim.RECEPTEXTPOSProductsView_rs as (
  _ID             IDINT,
  NAME            NAZEVSTR,
  DESCRIPTION     POPISTXT,
  COMMENT         KOMENTARTXT,
  _PGRPID         REFIDINT_NU,
  PRODUCTGROUP    NAZEVSTR,
  COLOR           BARVASTR_NU,
  _TAXGID         REFIDINT,
  TAXGROUP        NAZEVSTR,
  NETPRICE        BOOLBIT_0,
  P0              CENAFLT,
  P1              CENAFLT,
  P2              CENAFLT,
  P3              CENAFLT,
  MAXDISCOUNT     KOEFICIENTFLT_NU,
  PICTURE         FILELB_NU,
  BARCODE         BARCODETXT,
  PLUCODE         PLUINT,
  ACTIVE          BOOLBIT_1,
  WITHOUTPRICE    BOOLBIT,
  SKLAD           NAZEVSTR,
  SKUPREC2        NAZEVSTR,
  SKUPREC1        NAZEVSTR
);

create or replace function admin_septim.RECEPTEXTPOSProductsView (
) returns setof admin_septim.RECEPTEXTPOSProductsView_rs
language plpgsql security definer as $$
begin
  perform U_CheckPerm('SEPTIMAPP','RECEPT\RECEPTVIEW', 0);
  return query select
    R.RCPTID as _ID,
    R.NAZEV as NAME,
    R.POPIS as DESCRIPTION,
    R.KOMENTAR as COMMENT,
    R.SKR4ID as _PGRPID,
    SK4.NAZEV as PRODUCTGROUP,
    R.BARVA as COLOR,
    CEN.TAXGID as _TAXGID,
    TG.NAME as TAXGROUP,
    CEN.CENAJEBEZDANI as NETPRICE,
    (select case when (RT.KLIC = 'KORUNOVA') then cast(null as CENAFLT) when CEN.CENAJEBEZDANI then a_CENAB else a_CENAS end from RECCENIK_GetZakladniCenu(R.RCPTID)) as P0,
    (select case when (RT.KLIC = 'KORUNOVA') then cast(null as CENAFLT) when CEN.CENAJEBEZDANI then a_CENAB else a_CENAS end from RECCENIK_GetJinouCenu(R.RCPTID, SKP.SKP1ID, CENKAT_FindByKlic('P1', -1), LOCALTIMESTAMP, null)) as P1,
    (select case when (RT.KLIC = 'KORUNOVA') then cast(null as CENAFLT) when CEN.CENAJEBEZDANI then a_CENAB else a_CENAS end from RECCENIK_GetJinouCenu(R.RCPTID, SKP.SKP1ID, CENKAT_FindByKlic('P2', -1), LOCALTIMESTAMP, null)) as P2,
    (select case when (RT.KLIC = 'KORUNOVA') then cast(null as CENAFLT) when CEN.CENAJEBEZDANI then a_CENAB else a_CENAS end from RECCENIK_GetJinouCenu(R.RCPTID, SKP.SKP1ID, CENKAT_FindByKlic('P3', -1), LOCALTIMESTAMP, null)) as P3,
    R.MAXSLEVA as MAXDISCOUNT,
    (select cast(B_FILE_ObtainData(BMP.BFLEID) as FILELB_NU) from RECBMP as BMP where R.RCPTID = BMP.RCPTID and BMP.DELETED = 0 order by RBMPID limit 1) as PICTURE,
    (SELECT cast(string_agg(BARCODE,';') as BARCODETXT) from RCPTBARCODE as BCD where R.RCPTID = BCD.RCPTID) as BARCODE,
    R.PLUCODE,
    R.AKTIVNI as ACTIVE,
    cast(RT.KLIC = 'KORUNOVA' as BOOLBIT) as WITHOUTPRICE,
    S.NAZEV as SKLAD,
    SK2.NAZEV as SKUPREC2,
    SK1.NAZEV as SKUPREC1
  from
    SKUPPOKL1 SKP,
    RECEPT R
    left join SKUPREC2 SK2 on R.SKR2ID = SK2.SKR2ID and SK2.SMAZAN = 0
    left join SKUPREC4 SK4 on R.SKR4ID = SK4.SKR4ID and SK4.SMAZAN = 0
    inner join RECCENIK CEN on R.RCPTID = CEN.RCPTID and CEN.CENMID is null and CEN.SKP1ID is null and CEN.CENKID is null and CEN.SMAZAN=0
    inner join TAXGROUP TG on CEN.TAXGID = TG.TAXGID and TG.DELETED=0
    inner join RECEPTTYP RT on R.RECTID = RT.RECTID
    left join SKLAD S on R.SKLDID = S.SKLDID and S.SMAZAN = 0
    left join SKUPREC1 SK1 on R.SKR1ID = SK1.SKR1ID and SK1.SMAZAN = 0
  where
    R.SMAZAN = 0
    and SKP.KLIC = 'EXTPOS'
    and SKP.SMAZAN = 0;
end; $$;
select grant_func('RECEPTEXTPOSProductsView', 'SPEXEC');



select ASWDropFunction('RECEPT_KeyListToIdList');
/**
 * On the input it takes a list of recipes separated by the delimiter a_DELIMITER
 * Returns a list of IDs separated by a_OUTDELIMITER
*/
create or replace function admin_septim.RECEPT_KeyListToIdList (
  in a_KEYLIST            VALUETXT,
  in a_INDELIMITER        VALUESTR default ';',
  in a_OUTDELIMITER       VALUESTR default ','
) returns VALUETXT
language plpgsql security definer as $$
begin
  return
    string_agg(cast(RCPTID as text), a_OUTDELIMITER order by RCPTID)
  from
    RECEPT
  where
    KLIC in (select unnest(string_to_array(a_KEYLIST, a_INDELIMITER)))
    and SMAZAN = 0;
end; $$;



select ASWDropFunction('RECEPT_GetDURABILITY');
/*
* Function returns number of days of durability of the recipe
*/
create or replace function admin_septim.RECEPT_GetDURABILITY (
  in a_RCPTID              IDINT
) returns NUMBERINT
language plpgsql security definer as $$
begin
  return DURABILITY from RECEPT where RCPTID = a_RCPTID;
end; $$;;

select ASWDropFunction('RECEPT_GetSKLDID');
/*
* Function returns store of the recipe
*/
create or replace function admin_septim.RECEPT_GetSKLDID (
  in a_RCPTID              IDINT
) returns REFIDINT_NU
language sql security definer as $$
  select SKLDID from RECEPT where RCPTID = a_RCPTID;
$$;;


select ASWDropFunction('RECEPT_GetMAXSLEVA');
/*
* Function returns max discount of the recipe
*/
create or replace function admin_septim.RECEPT_GetMAXSLEVA (
  in a_RCPTID              IDINT
) returns KOEFICIENTFLT_NU
language plpgsql security definer as $$
begin
  return MAXSLEVA from RECEPT where RCPTID = a_RCPTID;
end; $$;;


select ASWDropFunction('RECEPT_GetPPINGREDKOEF');
create or replace function admin_septim.RECEPT_GetPPINGREDKOEF (
  in a_RCPTID              IDINT
) returns KOEFICIENTFLT
language plpgsql security definer as $$
begin
  return PPINGREDKOEF from RECEPT where RCPTID = a_RCPTID;
end; $$;;



select ASWDropFunction('RECEPT_GetCONTENTAMOUNT');
create or replace function admin_septim.RECEPT_GetCONTENTAMOUNT (
  in a_RCPTID              IDINT
) returns AMOUNTFLT_NU
language plpgsql security definer as $$
begin
  return CONTENTAMOUNT from RECEPT where RCPTID = a_RCPTID;
end; $$;;



select ASWDropFunction('RECEPT_GetSOLIDAMOUNT');
create or replace function admin_septim.RECEPT_GetSOLIDAMOUNT (
  in a_RCPTID              IDINT
) returns AMOUNTFLT_NU
language plpgsql security definer as $$
begin
  return SOLIDAMOUNT from RECEPT where RCPTID = a_RCPTID;
end; $$;;




select ASWDropFunction('RECEPT_GetKMCTID');
/*
* Function returns ID categories KMC from Recept
*/
create or replace function admin_septim.RECEPT_GetKMCTID (
  in a_RCPTID              IDINT
) returns REFIDINT_NU
language plpgsql security definer as $$
begin
  return KMCTID from RECEPT where RCPTID = a_RCPTID;
end; $$;;




select ASWDropFunction('RECEPT_GetKMITID');
/*
* Function returns ID sale item type KMC from Recept
*/
create or replace function admin_septim.RECEPT_GetKMITID (
  in a_RCPTID              IDINT
) returns REFIDINT_NU
language plpgsql security definer as $$
begin
  return KMITID from RECEPT where RCPTID = a_RCPTID;
end; $$;;



select ASWDropFunction('RECEPT_CalcExpirationDate');
/**
 * Function to calculate expiration date of recipe. Adds number of day from recipe durability to source date.
 */
create or replace function admin_septim.RECEPT_CalcExpirationDate (
  in  a_RCPTID            REFIDINT,
  in  a_DATEFROM          DATETS
) returns DATETS
language plpgsql security definer as $$
begin
  return a_DATEFROM + (interval '1 day' * DURABILITY) from RECEPT where RCPTID = a_RCPTID;
end; $$;


select ASWDropProcedure('RECEPT_GetCustomValues');
/**
 * Function returns values of CUSTOMx fields of recipe by its ID.
 */
create or replace function admin_septim.RECEPT_GetCustomValues(
  in  a_RCPTID             REFIDINT,        -- ID of recipe
  out a_CUSTOM1            CUSTOMSTR,
  out a_CUSTOM2            CUSTOMSTR,
  out a_CUSTOM3            CUSTOMTXT,
  out a_CUSTOM4            CUSTOMTXT,
  out a_CUSTOM5            CUSTOMTXT
)
language plpgsql security definer as $$
begin

  select CUSTOM1, CUSTOM2, CUSTOM3, CUSTOM4, CUSTOM5 into a_CUSTOM1, a_CUSTOM2, a_CUSTOM3, a_CUSTOM4, a_CUSTOM5
    from RECEPT
    where RCPTID = a_RCPTID;

end; $$;



select ASWDropFunction('RECEPT_GetCHODID');
create or replace function admin_septim.RECEPT_GetCHODID (
  in a_RCPTID              IDINT
) returns REFIDINT_NU
language plpgsql security definer as $$
begin
  return CHODID from RECEPT where RCPTID = a_RCPTID;
end; $$;;



select ASWDropProcedure('RECEPTBULKPROCESSDOCMultiGet');
create or replace function admin_septim.RECEPTBULKPROCESSDOCMultiGet(
  in a_ID                  IDINT,
  in a_PARAMS              PARAMTXT,
  in a_IDList              IDINTARR
) returns void
language plpgsql security definer as $$
begin
  return;
end; $$;
select grant_func('RECEPTBULKPROCESSDOCMultiGet', 'SPEXEC');



select ASWDropProcedure('RECEPTBULKPROCESSDOCMultiExec');
create or replace function admin_septim.RECEPTBULKPROCESSDOCMultiExec(
  in a_ADDTEXT_CHECKED     BOOLBIT,
  in a_DELTEXT_CHECKED     BOOLBIT,
  in a_ADDFILE_CHECKED     BOOLBIT,
  in a_DELFILE_CHECKED     BOOLBIT,
  in a_ADDTEXT             IDNAMESTR,
  in a_DELTEXT             IDNAMESTR,
  in a_ADDFILE             IDNAMESTR,
  in a_DELFILE             IDNAMESTR,
  in a_PARAMS              PARAMTXT,
  in a_IDList              IDINTARR,
  in a_FORCE               FORCETXT default null
) returns void
language plpgsql security definer as $$
declare
  l_RCPTID                 REFIDINT;
  l_RLRTID                 REFIDINT;
  l_RLRFID                 REFIDINT;
  l_TDEFID                 REFIDINT;
  l_BFLEID                 REFIDINT;
begin

  if coalesce(cardinality(a_IDLIST), 0) = 0 then
    return;
  end if;

  -- check if we add and del same content
  if a_ADDTEXT_CHECKED and a_DELTEXT_CHECKED and a_ADDTEXT = a_DELTEXT and coalesce(a_DELTEXT, '') <> ''then
    perform ASWError(35545);
  end if;
  if a_ADDFILE_CHECKED and a_DELFILE_CHECKED and a_ADDFILE = a_DELFILE and coalesce(a_DELFILE, '') <> ''then
    perform ASWError(35546);
  end if;

  -- ADD TEXT
  if a_ADDTEXT_CHECKED and coalesce(a_ADDTEXT, '') <> '' then
    l_TDEFID := (B_REFTABLE('SEPTIMAPP', 'TEXTDEFINITION', 'IDNAME', a_ADDTEXT, 35547, 'ADDTEXT')).a_ID;

    for l_RCPTID in (
      select
        RCPTID
      from
        unnest(a_IDLIST) as RCPTID
      except
      select
        RL.RCPTID
      from
        RLRCPTTEXT RL
      where
        RL.RCPTID in (select unnest(a_IDLIST))
        and RL.DELETED = 0
        and RL.TDEFID = l_TDEFID
      order by RCPTID)
    loop
      perform RLRCPTTEXT_Insert(l_RCPTID, a_ADDTEXT, a_BULKASSIGN := true, a_FORCE := a_FORCE);
    end loop;
  end if;

  -- DELETE TEXT
  if a_DELTEXT_CHECKED and coalesce(a_DELTEXT, '') <> '' then
    l_TDEFID := (B_REFTABLE('SEPTIMAPP', 'TEXTDEFINITION', 'IDNAME', a_DELTEXT, 35547, 'DELTEXT')).a_ID;

    for l_RLRTID in (
      select
        RLRTID
      from
        RLRCPTTEXT
      where
        TDEFID = l_TDEFID
        and RCPTID in (select unnest(a_IDLIST))
        and DELETED = 0)
    loop
      perform RLRCPTTEXT_Delete(l_RLRTID);
    end loop;
  end if;

  -- ADD FILE
  if a_ADDFILE_CHECKED and coalesce(a_ADDFILE, '') <> '' then
    l_BFLEID := (B_REFTABLE('BASE', 'B_FILE', 'IDNAME', a_ADDFILE, 35548, 'ADDFILE')).a_ID;

    for l_RCPTID in (
      select
        RCPTID
      from
        unnest(a_IDLIST) as RCPTID
      except
      select
        RL.RCPTID
      from
        RLRCPTFILE RL
      where
        RL.RCPTID in (select unnest(a_IDLIST))
        and RL.DELETED = 0
        and RL.BFLEID = l_BFLEID
        order by RCPTID)
    loop
      perform RLRCPTFILE_Insert(l_RCPTID, a_ADDFILE, null, null, a_BULKASSIGN := true, a_FORCE := a_FORCE); -- KEY = null, ORDNUMBER = null
    end loop;
  end if;

  -- DELETE FILE
  if a_DELFILE_CHECKED and coalesce(a_DELFILE, '') <> '' then
    l_BFLEID := (B_REFTABLE('BASE', 'B_FILE', 'IDNAME', a_DELFILE, 35548, 'DELFILE')).a_ID;

    for l_RLRFID in (
      select
        RLRFID
      from
        RLRCPTFILE
      where
        BFLEID = l_BFLEID
        and RCPTID in (select unnest(a_IDLIST))
        and DELETED = 0)
    loop
      perform RLRCPTFILE_Delete(l_RLRFID);
    end loop;
  end if;

  return;
end; $$;
select grant_func('RECEPTBULKPROCESSDOCMultiExec', 'SPEXEC');


select ASWDropProcedure('RECEPT_ODPISYDisableSimpleWriteOff');
/*
* Function removes stores for write-off which are assigned to recipes
*/
create or replace function admin_septim.RECEPT_ODPISYDisableSimpleWriteOff (
) returns void
language plpgsql security definer as $$
declare
  l_RCPTID                 IDINT;
begin
  for l_RCPTID in
    select RCPTID from RECEPT where SMAZAN = 0 and SKLDID is not null
  loop
    perform U_OPRAVADETAIL_P_RowUpdate('SEPTIMAPP', 'RECEPT', l_RCPTID);
    update RECEPT set
      SKLDID = null
    where
      RCPTID = l_RCPTID;
  end loop;
end; $$;;




select ASWDropProcedure('RECEPT_GetSALESTOCKPRICE');
create or replace function admin_septim.RECEPT_GetSALESTOCKPRICE (
  in a_RCPTID              IDINT
) returns PRICEFLT
language plpgsql security definer as $$
begin
  return SALESTOCKPRICE from RECEPT where RCPTID = a_RCPTID;
end; $$;;



select ASWDropProcedure('RECEPT__CalcStockPrice');
/*
* Function calculates sale stock price of the recipe as arithmetic means from individual sale stock prices for stores and basic portion from table RECSKLADCENA.
*/
create or replace function admin_septim.RECEPT__CalcStockPrice (
  in a_RCPTID              IDINT
) returns PRICEFLT
language plpgsql security definer as $$
begin
  return avg(SALESTOCKPRICE) from RECSKLADCENA where RCPTID = a_RCPTID and PRCEID = PORCE_GetZakladniID();
end; $$;;



select ASWDropProcedure('RECEPT_RECSKLADCENAUpdateStockPrice');
create or replace function admin_septim.RECEPT_RECSKLADCENAUpdateStockPrice (
  in a_RCPTID              IDINT
) returns void
language plpgsql security definer as $$
declare
  l_SALESTOCKPRICE         PRICEFLT;
begin
  l_SALESTOCKPRICE := RECEPT__CalcStockPrice(a_RCPTID);

  if l_SALESTOCKPRICE <> RECEPT_GetSALESTOCKPRICE(a_RCPTID) then
    update RECEPT set
      SALESTOCKPRICE = l_SALESTOCKPRICE
    where
      RCPTID = a_RCPTID;
  end if;
end; $$;;



select ASWDropProcedure('RECEPT__UpdateSaleStockPrice');
create or replace function admin_septim.RECEPT__UpdateSaleStockPrice (
  in a_RCPTID              IDINT,
  in a_SALESTOCKPRICE      PRICEFLT
) returns void
language plpgsql security definer as $$
begin
  update RECEPT set
    SALESTOCKPRICE = a_SALESTOCKPRICE
  where
    RCPTID = a_RCPTID and SALESTOCKPRICE <> a_SALESTOCKPRICE;
end; $$;;



select ASWDropFunction('RECEPT_GetIdByKlic');
create or replace function admin_septim.RECEPT_GetIdByKlic(
  in a_KLIC             KLICSTR
) returns IDINT
language plpgsql security definer as $$
begin
  return RCPTID from RECEPT where KLIC = a_KLIC and SMAZAN = 0;
end; $$;



select ASWDropFunction('RECEPT_GetPriceRounding');
create or replace function admin_septim.RECEPT_GetPriceRounding (
  in a_RCPTID              IDINT
) returns CISLOINT
language plpgsql security definer as $$
declare
  l_VCTYP                  TYPINT;
  l_VCZAOKRC               CISLOINT;
  l_ACTRCPTID              REFIDINT;
begin

  l_ACTRCPTID := (RECEPT_PolovicniPorceInfo(a_RCPTID)).a_MASTERRCPTID;
  select VCTYP, VCZAOKRC into l_VCTYP, l_VCZAOKRC from RECEPT where RCPTID = l_ACTRCPTID;

  if l_VCTYP = 0 then
    l_VCTYP := P_GetGlobalParam('NUMBERPAR', 'VCTYPZAOKR', null, false);
    if l_VCTYP = 5 then
      -- there is no round
      l_VCZAOKRC := null;
    else
      l_VCZAOKRC := P_GetGlobalParam('NUMBERPAR', 'PRODEJZAOKRCENA', null, false);
    end if;
  end if;

  return l_VCZAOKRC;

end;$$;



select ASWDropProcedure('RECEPT_GetWELMEC');
create or replace function admin_septim.RECEPT_GetWELMEC (
  in a_RCPTID              IDINT
) returns BOOLBIT
language plpgsql security definer as $$
begin
  return WELMEC from RECEPT where RCPTID = a_RCPTID;
end;$$;



select ASWDropProcedure('RECEPT_GetUNITIDSALE');
create or replace function admin_septim.RECEPT_GetUNITIDSALE (
  in a_RCPTID              IDINT
) returns REFIDINT
language plpgsql security definer as $$
begin
  return UNITIDSALE from RECEPT where RCPTID = a_RCPTID;
end; $$;



select ASWDropProcedure('RECEPT_DeleteHidden');
create or replace function admin_septim.RECEPT_DeleteHidden (
) returns void
language plpgsql security definer as $$
declare
  l_CURSOR                 RECORD;
begin
  for l_CURSOR in select RCPTID, SKR4ID from RECEPT where HIDE and SMAZAN=0
  loop
    begin
      perform RECEPT_Delete(l_CURSOR.RCPTID, l_CURSOR.SKR4ID, 'DELSUBZAZNAMY+,DELRLSKUPRECALL+');
    exception
      when others then null;
    end;
  end loop;
end; $$;



select ASWDropProcedure('RECEPT_GetActivni');
create or replace function admin_septim.RECEPT_GetActivni (
  in a_RCPTID              IDINT
) returns BOOLBIT
language plpgsql security definer as $$
begin
  return AKTIVNI from RECEPT where RCPTID = a_RCPTID;
end; $$;



select ASWDropProcedure('RECEPT_CheckActive');
create or replace function admin_septim.RECEPT_CheckActive (
  in a_RCPTID              IDINT
) returns void
language plpgsql security definer as $$
begin
  if not coalesce(RECEPT_GetActivni(a_RCPTID), false) then
    perform ASWError(35572, cast(array[RECEPT_GetNazev(a_RCPTID)] as text[]));
  end if;
end; $$;



select ASWDropProcedure('RECEPT_RowsToXML');
create or replace function admin_septim.RECEPT_RowsToXML (
  in a_IDS                 IDINTARR,
  in a_CONFIG              JSONTXT,
  in a_DECIMALSEP          CHAR_NU default null,
  in a_FORCE               FORCETXT default null
) returns setof XMLEXPORTROWSTOXML_rs
language plpgsql security definer as $$
declare
  l_STRDID                 REFIDINT_NU;
  l_IDFIELD                VALUESTR;
begin

  l_STRDID := STREDISKO_GetIdByKlic(a_CONFIG->>'CostCenter');
  l_IDFIELD := lower(a_CONFIG->>'idfield');

  return query select
    cast (
      xmlconcat (
        xmlforest (
          R.RCPTID as "id",
          R.NAZEV as "name",
          R.KLIC as "key",
          R.POPIS as "description",
          -- Annotation is corrently not supported by a standard insert/update functions and it is not possible to set nor display it in Manazer
          -- R.KOMENTAR as "annotation",
          R.ZKRATKA as "abbreviation",
          RT.KLIC as "rectype",
          TAXGROUP_GetName(RC.TAXGID) as "taxgroup",
          cm_FltToStr(RC.CENAS, a_DECIMALSEP) as "price",
          'true' as "taxisincluded",
          case when l_STRDID is null then cm_FltToStr(R.SALESTOCKPRICE, a_DECIMALSEP) else cm_FltToStr(RECSKLADCENA_GetCostCenterAvgBasicSaleStockPrice(R.RCPTID, l_STRDID), a_DECIMALSEP) end as "salestockprice",
          xmlforest (RO.NAZEV as "name", RO.KLIC as "key") as "packagingrec",
          xmlforest (RM.NAZEV as "name", RM.KLIC as "key") as "masterrec",
          cm_FltToStr(R.CONTENTAMOUNT, a_DECIMALSEP) as "contentamount",
          cm_FltToStr(R.SOLIDAMOUNT, a_DECIMALSEP) as "solidamount",
          R.WELMEC,
          cm_FltToStr(R.PPCENAKOEF, a_DECIMALSEP) as "halfportioncoef",
          cm_FltToStr(R.PPINGREDKOEF, a_DECIMALSEP) as "halfportioningredcoef",
          R.CISLOL as "numberlow",
          R.CISLOH as "numberhigh",
          R.PLUCODE,
          R.IDCODE,
          cm_FltToStr(R.PORCI, a_DECIMALSEP) as "portionamount",
          R.GRAMAZ as "portionsize",
          R.POSTUP as "cookingdesc",
          cm_FltToStr(R.BONUS, a_DECIMALSEP) as "bonus",
          cm_FltToStr(R.MAXSLEVA, a_DECIMALSEP) as "maxdiscount",
          R.EXTID as "externalid",
          R.AKTIVNI as "active",
          R.DURABILITY,
          R.CUSTOM1,
          R.CUSTOM2,
          R.CUSTOM3,
          R.CUSTOM4,
          R.CUSTOM5,
          RCPTBARCODE_Get(R.RCPTID, ',') as "barcodes"
        ),
        -- References are processed separately, because xmlforest does not enable to define xmlattributes
        case when R.SKR1ID        is not null then xmlelement(name recgroup1,    xmlattributes(R.SKR1ID as id), SKUPREC1_RowToXMLAsRef(R.SKR1ID)) end,
        case when R.SKR2ID        is not null then xmlelement(name recgroup2,    xmlattributes(R.SKR2ID as id), SKUPREC2_RowToXMLAsRef(R.SKR2ID)) end,
        case when R.SKR3ID        is not null then xmlelement(name recgroup3,    xmlattributes(R.SKR3ID as id), SKUPREC3_RowToXMLAsRef(R.SKR3ID)) end,
        case when R.SKR4ID        is not null then xmlelement(name recgroup4,    xmlattributes(R.SKR4ID as id), SKUPREC4_RowToXMLAsRef(R.SKR4ID)) end,
        case when R.UNITIDSALE    is not null then xmlelement(name unitsale,     xmlattributes(US.NAME as id),  UNIT_RowToXMLAsRef(R.UNITIDSALE)) end,
        case when R.UNITIDCONTENT is not null then xmlelement(name unitcontent,  xmlattributes(UC.NAME as id),  UNIT_RowToXMLAsRef(R.UNITIDCONTENT)) end,
        case when R.UNITIDSOLID   is not null then xmlelement(name unitsolid,    xmlattributes(UD.NAME as id),  UNIT_RowToXMLAsRef(R.UNITIDSOLID)) end
      )
    as VALUEXML),
    cast (
      case l_IDFIELD
        when 'id'           then cast(R.RCPTID as VALUETXT)
        when 'name'         then R.NAZEV
        when 'plucode'      then cast(R.PLUCODE as VALUETXT)
        when 'key'          then R.KLIC
        when 'idcode'       then R.IDCODE
        when 'externalid'   then cast(R.EXTID as VALUETXT)
        when 'abbreviation' then R.ZKRATKA
        else cast(R.RCPTID as VALUETXT)
      end as VALUETXT
    )
  from
    RECEPT R
    join RECEPTTYP as RT on RT.RECTID = R.RECTID
    left join UNIT as US on R.UNITIDSALE = US.UNITID
    left join UNIT as UC on R.UNITIDCONTENT = UC.UNITID
    left join UNIT as UD on R.UNITIDSOLID = UD.UNITID
    left join RLSKUPRCPT as RLR on R.RCPTID = RLR.RCPTID
    left join SKUPINA as SK on SK.SKUPID = RLR.SKUPID
    left join RECEPT as RM on R.PPMASTERRCPTID = RM.RCPTID
    left join RECEPT as RO on R.OBALRCPTID = RO.RCPTID
    left join RECCENIK as RC on R.RCPTID = RC.RCPTID and RC.CENMID is null
                                      and RC.CENKID is null and RC.SKP1ID is null and RC.SMAZAN = 0
  where
    (a_IDS is null or R.RCPTID in (select unnest(a_IDS)))
    and R.SMAZAN = 0
  order by
    case
      when R.OBALRCPTID is null and R.PPMASTERRCPTID is null then 0
      when R.PPMASTERRCPTID is null then 1
      else 2
    end;
end; $$;



select ASWDropProcedure('RECEPT_ToXML');
drop type if exists admin_septim.RECEPT_ToXML_rs;
create type admin_septim.RECEPT_ToXML_rs as (
  OUTPUT                   VALUEXML,
  LOGMESSAGES              TEXTARR
);

/**
 * Export function for recipes.
 * Returns XML with root tag 'recipes', containing 'recept' tag for each recept row.
 */
create or replace function admin_septim.RECEPT_ToXML (
  in a_IDS                 IDINTARR,
  in a_CONFIG              JSONTXT,
  in a_DECIMALSEP          CHAR_NU default null,
  in a_FORCE               FORCETXT default null
) returns RECEPT_ToXML_rs
language plpgsql security definer as $$
declare
  l_RESULT                 RECEPT_ToXML_rs;
  l_UNQIDENT               VALUESTR;
begin

  perform U_CheckPerm('SEPTIMAPP', 'RECEPT\EXPORTREC', 0);
  perform U_CheckPerm('SEPTIMAPP', 'RECEPT\RECEPTVIEW',0);

  l_RESULT.OUTPUT := xmlelement (
    name recipes,
    xmlattributes('2.0' AS version),
    (select xmlagg(xmlelement(name recipe, xmlattributes(IDVALUE AS id), OUTPUT))
      from RECEPT_RowsToXML(a_IDS, a_CONFIG, a_DECIMALSEP, a_FORCE)
    )
  );

  return l_RESULT;

end; $$;



select ASWDropProcedure('RECEPT__XmlImportGetIDForUpdate');
/**
 * Tries getting the ID of the existing RECIPE row according to parameters.
 * Accepted values for a_IDFIELD are:
 *  - name
 *  - key
 *  - abbreviation
 *  - idcode
 *  - plucode
 *  - barcode
 *  - extid
 */
drop type if exists admin_septim.RECEPT__XmlImportGetIDForUpdate_rs;
create type admin_septim.RECEPT__XmlImportGetIDForUpdate_rs as (
  RCPTID                   IDINT,
  _STATUS                  VALUESTR
);

create or replace function admin_septim.RECEPT__XmlImportGetIDForUpdate (
  in a_IDFIELD             VALUESTR,
  in a_IDVALUE             VALUESTR
) returns RECEPT__XmlImportGetIDForUpdate_rs
language plpgsql security definer as $$
declare
  l_RESULT                 RECEPT__XmlImportGetIDForUpdate_rs;
  l_SEARCHBY               VALUESTR;
begin

  case lower(a_IDFIELD)
    when 'plucode' then
      l_SEARCHBY := 'PLU';
    when 'barcode' then
      l_SEARCHBY := 'BARCODE';
    else
      begin
        select
          RCPTID,
          'I' as _STATUS
        into strict
          l_RESULT
        from
          RECEPT
        where
          SMAZAN = 0
          and (
               (a_IDFIELD = 'key'          and KLIC = a_IDVALUE)
            or (a_IDFIELD = 'name'         and NAZEV = a_IDVALUE)
            or (a_IDFIELD = 'idcode'       and IDCODE = a_IDVALUE)
            or (a_IDFIELD = 'plucode'      and NAZEV = a_IDVALUE)
            or (a_IDFIELD = 'abbreviation' and ZKRATKA = a_IDVALUE)
            or (a_IDFIELD = 'externalid'   and EXTID = a_IDVALUE)
          );
      exception
        when TOO_MANY_ROWS then
          l_RESULT._STATUS := 'E';
        when NO_DATA_FOUND then
          l_RESULT._STATUS := 'N';
      end;
  end case;

  if l_SEARCHBY is not null then
    case l_SEARCHBY
      when 'PLU' then
        l_RESULT.RCPTID := RECEPT_GetReceptByPLU(cm_StrToInt(a_IDVALUE), a_HIDE => null, a_ERRBASE => -1);
      when 'BARCODE' then
        l_RESULT.RCPTID := RCPTBARCODE_FindRecept(a_IDVALUE, -1);
      else
        null;
    end case;
    l_RESULT._STATUS := case when l_RESULT.RCPTID is not null then 'I' else 'E' end as _STATUS;
  end if;

  return l_RESULT;

end; $$;



select ASWDropFunction('RECEPT__XmlImportGetReference');
/**
 * Tries to get the ID of the existing RECIPE row according to parameters.
 * For internal use. Expects XML in format
 * <anytagname>
 *   <name>MasterRecipeName</name>
 *   <key>MASTERRECIPEKEY</key>
 * </anytagname>
 * If nor key or name is present, it returns null.
 * If any of these fields is present, but the corresponding record is not found, it throws error.
 */
create or replace function admin_septim.RECEPT__XmlImportGetReference (
  in a_XMLDATA             VALUEXML
) returns IDINT
returns null on null input
language plpgsql security definer as $$
declare
  l_NAME                   NAMESTR;
  l_KEY                    KEYSTR;
  l_RCPTID                 REFIDINT_NU;
begin

  l_KEY := (xpath('/*/key/text()', a_XMLDATA))[1];
  if l_KEY is null then
    l_NAME := (xpath('/*/name/text()', a_XMLDATA))[1];
  end if;

  if l_KEY is not null then
    l_RCPTID := RECEPT_GetRCPTIDBy ('KLIC', l_KEY, 35576);
  elsif l_NAME is not null then
    l_RCPTID := RECEPT_GetRCPTIDBy ('NAZEV', l_NAME, 35577);
  else
    return null;
  end if;

  return l_RCPTID;

end; $$;



select ASWDropFunction('RECEPT__XmlImportProcesTaxes');

drop type if exists admin_septim.RECEPT__XmlImportProcesTaxes_rs;
create type admin_septim.RECEPT__XmlImportProcesTaxes_rs as (
  TAXGID                   REFIDINT,
  DPHID                    REFIDINT,
  DPHNAME                  NAMESTR,
  CENAB                    PRICEFLT,
  DPHA                     PRICEFLT,
  CENAS                    PRICEFLT
);

/**
 * Converts taxgroup and price provided by import into something which RECEPT_BasicInsert and RECEPT_BasicUpdate would understand.
 * If TAXGROUP is null, the default is 0
 * If TAXINCLUDED is null, the default is true
 * If PRICE is null, the default is 0
 */
create or replace function admin_septim.RECEPT__XmlImportProcesTaxes (
  in a_TAXGROUP            NAMESTR,
  in a_TAXINCLUDED         VALUEBOOL,
  in a_PRICE               PRICEFLT
) returns RECEPT__XmlImportProcesTaxes_rs
language plpgsql security definer as $$
declare
  l_RESULT                 RECEPT__XmlImportProcesTaxes_rs;
begin

  -- Get the ID of the TaxGroup by it's name
  l_RESULT.TAXGID := TAXGROUP_FindByName(coalesce(a_TAXGROUP, '0'));
  -- Convert the tax group to VAT name, because recipes are stil using old table B_DPH
  l_RESULT.DPHID := TAXGROUP_TaxgIDToDPHID(l_RESULT.TAXGID);
  l_RESULT.DPHNAME := B_DPH_GetNazev(l_RESULT.DPHID);

  -- Calculate the correct price acording to the flag a_TAXINCLUDED
  if coalesce(a_TAXINCLUDED, true) then
    -- 4 = CENAS is the source price for calculation
    select a_CENAB, a_DPHA, a_CENAS
      into l_RESULT.CENAB, l_RESULT.DPHA, l_RESULT.CENAS
    from B_DPH_Vypocitej(l_RESULT.DPHNAME, null, 4, null, null, null, coalesce(a_PRICE, 0));
  else
    -- 1 = CENAB is the source price for calculation
    select a_CENAB, a_DPHA, a_CENAS
      into l_RESULT.CENAB, l_RESULT.DPHA, l_RESULT.CENAS
    from B_DPH_Vypocitej(l_RESULT.DPHNAME, null, 1, coalesce(a_PRICE, 0), null, null, null);
  end if;

  return l_RESULT;

end; $$;



select ASWDropProcedure('RECEPT__XmlImportParseRecipe');
select ASWDropProcedure('RECEPT__XmlImportInsert');
select ASWDropProcedure('RECEPT__XmlImportUpdate');
select ASWDropProcedure('RECEPT_XMLToRow');

/**
 * This type is also used in functions RECEPT__XmlImportInsert and RECEPT__XmlImportUpdate
 */
drop type if exists admin_septim.RECEPT__XmlImportParseRecipe_rs;
create type admin_septim.RECEPT__XmlImportParseRecipe_rs as (
    ELEMENTSCOUNT          NUMBERINT, -- A number of elements in the source tag.
    IDVALUE                VALUETXT,
    RCPTID                 IDINT,
    NAME                   NAMESTR,
    NAME_SET               VALUEBOOL,
    ABBREVIATION           ZKRATKASTR_NU,
    ABBREVIATION_SET       VALUEBOOL,
    RECTYPE                KEYSTR,
    RECTYPE_SET            VALUEBOOL,
    KEY                    KEYSTR,
    KEY_SET                VALUEBOOL,
    IDCODE                 IDCODESTR,
    IDCODE_SET             VALUEBOOL,
    PLUCODE                PLUINT,
    PLUCODE_SET            VALUEBOOL,
    DESCRIPTION            DESCRIPTIONTXT,
    DESCRIPTION_SET        VALUEBOOL,
    -- Annotation is corrently not supported by a standard insert/update functions and it is not possible to set nor display it in Manazer
    -- ANNOTATION             ANNOTATIONTXT,
    -- ANNOTATION_SET         VALUEBOOL,
    MASTERREC              XML,
    MASTERREC_SET          VALUEBOOL,
    RECGROUP1              XML,
    RECGROUP1_SET          VALUEBOOL,
    RECGROUP2              XML,
    RECGROUP2_SET          VALUEBOOL,
    RECGROUP3              XML,
    RECGROUP3_SET          VALUEBOOL,
    RECGROUP4              XML,
    RECGROUP4_SET          VALUEBOOL,
    PACKAGINGREC           XML,
    PACKAGINGREC_SET       VALUEBOOL,
    UNITSALE               XML,
    UNITSALE_SET           VALUEBOOL,
    UNITCONTENT            XML,
    UNITCONTENT_SET        VALUEBOOL,
    UNITSOLID              XML,
    UNITSOLID_SET          VALUEBOOL,
    TAXGROUP               NAMESTR,
    TAXGROUP_SET           VALUEBOOL,
    TAXISINCLUDED          VALUEBOOL,
    TAXISINCLUDED_SET      VALUEBOOL,
    PRICE                  PRICEFLT,
    PRICE_SET              VALUEBOOL,
    SALESTOCKPRICE         PRICEFLT,
    SALESTOCKPRICE_SET     VALUEBOOL,
    CONTENTAMOUNT          AMOUNTFLT_NU,
    CONTENTAMOUNT_SET      VALUEBOOL,
    SOLIDAMOUNT            AMOUNTFLT_NU,
    SOLIDAMOUNT_SET        VALUEBOOL,
    WELMEC                 VALUEBOOL,
    WELMEC_SET             VALUEBOOL,
    HALFPORTIONCOEF        COEFFICIENTFLT_NU,
    HALFPORTIONCOEF_SET    VALUEBOOL,
    HALFPORTIONINGREDCOEF  COEFFICIENTFLT_NU,
    HALFPORTIONINGREDCOEF_SET VALUEBOOL,
    NUMBERLOW              NUMBERINT,
    NUMBERLOW_SET          VALUEBOOL,
    NUMBERHIGH             NUMBERINT,
    NUMBERHIGH_SET         VALUEBOOL,
    PORTIONAMOUNT          AMOUNTFLT_0,
    PORTIONAMOUNT_SET      VALUEBOOL,
    PORTIONSIZE            GRAMAZTXT,
    PORTIONSIZE_SET        VALUEBOOL,
    COOKINGDESC            POSTUPTXT,
    COOKINGDESC_SET        VALUEBOOL,
    BONUS                  NUMBERFLT,
    BONUS_SET              VALUEBOOL,
    MAXDISCOUNT            COEFFICIENTFLT_NU,
    MAXDISCOUNT_SET        VALUEBOOL,
    EXTERNALID             CISLOINT_NU,
    EXTERNALID_SET         VALUEBOOL,
    ACTIVE                 VALUEBOOL,
    ACTIVE_SET             VALUEBOOL,
    WEIGHTED               VALUEBOOL,
    WEIGHTED_SET           VALUEBOOL,
    DURABILITY             NUMBERINT,
    DURABILITY_SET         VALUEBOOL,
    CUSTOM1                CUSTOMSTR,
    CUSTOM1_SET            VALUEBOOL,
    CUSTOM2                CUSTOMSTR,
    CUSTOM2_SET            VALUEBOOL,
    CUSTOM3                CUSTOMSTR,
    CUSTOM3_SET            VALUEBOOL,
    CUSTOM4                CUSTOMSTR,
    CUSTOM4_SET            VALUEBOOL,
    CUSTOM5                CUSTOMSTR,
    CUSTOM5_SET            VALUEBOOL,
    BARCODES               BARCODETXT,
    BARCODES_SET           VALUEBOOL
);

/**
 * Parses the recipe data from provided XML and returns a resultset
 * with data the converted to correct types.
 * Input expects one recipe row (e. g. '<recept><name>Something</name>...</recept>')
 */
create or replace function admin_septim.RECEPT__XmlImportParseRecipe (
  in a_XMLDATA             VALUEXML,
  in a_ROOTTAG             VALUESTR default null
) returns RECEPT__XmlImportParseRecipe_rs
language plpgsql security definer as $$
declare
  l_RECIPE                 RECEPT__XmlImportParseRecipe_rs;
  l_XPATH                  VALUESTR;
begin

  l_XPATH := concat('/', coalesce(a_ROOTTAG, 'recipe'));

  -- Parse XML data
  -- Important note: references are using plain XML type, because there
  -- where some problems regading xpath resultis if we used our proprietary domains
  begin
    select
      cardinality(xpath(concat(l_XPATH, '/*[text()]'), a_XMLDATA)),
      (xpath(concat(l_XPATH, '/@id'), a_XMLDATA))[1],
      (xpath(concat(l_XPATH, '/id/text()'), a_XMLDATA))[1],
      cast((xpath(concat(l_XPATH, '/name/text()'), a_XMLDATA))[1] as NAMESTR),
      xpath_exists(concat(l_XPATH, '/name'), a_XMLDATA),
      (xpath(concat(l_XPATH, '/abbreviation/text()'), a_XMLDATA))[1],
      xpath_exists(concat(l_XPATH, '/abbreviation'), a_XMLDATA),
      (xpath(concat(l_XPATH, '/rectype/text()'), a_XMLDATA))[1],
      xpath_exists(concat(l_XPATH, '/rectype'), a_XMLDATA),
      (xpath(concat(l_XPATH, '/key/text()'), a_XMLDATA))[1],
      xpath_exists(concat(l_XPATH, '/key'), a_XMLDATA),
      (xpath(concat(l_XPATH, '/idcode/text()'), a_XMLDATA))[1],
      xpath_exists(concat(l_XPATH, '/idcode'), a_XMLDATA),
      (xpath(concat(l_XPATH, '/plucode/text()'), a_XMLDATA))[1],
      xpath_exists(concat(l_XPATH, '/plucode'), a_XMLDATA),
      (xpath(concat(l_XPATH, '/description/text()'), a_XMLDATA))[1],
      xpath_exists(concat(l_XPATH, '/description'), a_XMLDATA),
      -- Annotation is currently not supported by a standard insert/update functions and it is not possible to set nor display it in Manazer
      -- (xpath(concat(l_XPATH, '/annotation/text()'), a_XMLDATA))[1],
      -- xpath_exists(concat(l_XPATH, '/annotation'), a_XMLDATA),
      (xpath(concat(l_XPATH, '/masterrec'), a_XMLDATA))[1],
      xpath_exists(concat(l_XPATH, '/masterrec'), a_XMLDATA),
      (xpath(concat(l_XPATH, '/recgroup1'), a_XMLDATA))[1],
      xpath_exists(concat(l_XPATH, '/recgroup1'), a_XMLDATA),
      (xpath(concat(l_XPATH, '/recgroup2'), a_XMLDATA))[1],
      xpath_exists(concat(l_XPATH, '/recgroup2'), a_XMLDATA),
      (xpath(concat(l_XPATH, '/recgroup3'), a_XMLDATA))[1],
      xpath_exists(concat(l_XPATH, '/recgroup3'), a_XMLDATA),
      (xpath(concat(l_XPATH, '/recgroup4'), a_XMLDATA))[1],
      xpath_exists(concat(l_XPATH, '/recgroup4'), a_XMLDATA),
      (xpath(concat(l_XPATH, '/packagingrec'), a_XMLDATA))[1],
      xpath_exists(concat(l_XPATH, '/packagingrec'), a_XMLDATA),
      (xpath(concat(l_XPATH, '/unitsale'), a_XMLDATA))[1],
      xpath_exists(concat(l_XPATH, '/unitsale'), a_XMLDATA),
      (xpath(concat(l_XPATH, '/unitcontent'), a_XMLDATA))[1],
      xpath_exists(concat(l_XPATH, '/unitcontent'), a_XMLDATA),
      (xpath(concat(l_XPATH, '/unitsolid'), a_XMLDATA))[1],
      xpath_exists(concat(l_XPATH, '/unitsolid'), a_XMLDATA),
      (xpath(concat(l_XPATH, '/taxgroup/text()'), a_XMLDATA))[1],
      xpath_exists(concat(l_XPATH, '/taxgroup'), a_XMLDATA),
      (xpath(concat(l_XPATH, '/taxisincluded/text()'), a_XMLDATA))[1],
      xpath_exists(concat(l_XPATH, '/taxisincluded'), a_XMLDATA),
      cm_StrToFlt(cast((xpath(concat(l_XPATH, '/price/text()'), a_XMLDATA))[1] as text)),
      xpath_exists(concat(l_XPATH, '/price'), a_XMLDATA),
      cm_StrToFlt(cast((xpath(concat(l_XPATH, '/salestockprice/text()'), a_XMLDATA))[1] as text)),
      xpath_exists(concat(l_XPATH, '/salestockprice'), a_XMLDATA),
      cm_StrToFlt(cast((xpath(concat(l_XPATH, '/contentamount/text()'), a_XMLDATA))[1] as text)),
      xpath_exists(concat(l_XPATH, '/contentamount'), a_XMLDATA),
      cm_StrToFlt(cast((xpath(concat(l_XPATH, '/solidamount/text()'), a_XMLDATA))[1] as text)),
      xpath_exists(concat(l_XPATH, '/solidamount'), a_XMLDATA),
      (xpath(concat(l_XPATH, '/welmec/text()'), a_XMLDATA))[1],
      xpath_exists(concat(l_XPATH, '/welmec'), a_XMLDATA),
      cm_StrToFlt(cast((xpath(concat(l_XPATH, '/halfportioncoef/text()'), a_XMLDATA))[1] as text)),
      xpath_exists(concat(l_XPATH, '/halfportioncoef'), a_XMLDATA),
      cm_StrToFlt(cast((xpath(concat(l_XPATH, '/halfportioningredcoef/text()'), a_XMLDATA))[1] as text)),
      xpath_exists(concat(l_XPATH, '/numberlow'), a_XMLDATA),
      (xpath(concat(l_XPATH, '/numberlow/text()'), a_XMLDATA))[1],
      xpath_exists(concat(l_XPATH, '/numberlow'), a_XMLDATA),
      (xpath(concat(l_XPATH, '/numberhigh/text()'), a_XMLDATA))[1],
      xpath_exists(concat(l_XPATH, '/numberhigh'), a_XMLDATA),
      cm_StrToFlt(cast((xpath(concat(l_XPATH, '/portionamount/text()'), a_XMLDATA))[1] as text)),
      xpath_exists(concat(l_XPATH, '/portionamount'), a_XMLDATA),
      (xpath(concat(l_XPATH, '/portionsize/text()'), a_XMLDATA))[1],
      xpath_exists(concat(l_XPATH, '/portionsize'), a_XMLDATA),
      (xpath(concat(l_XPATH, '/cookingdesc/text()'), a_XMLDATA))[1],
      xpath_exists(concat(l_XPATH, '/cookingdesc'), a_XMLDATA),
      cm_StrToFlt(cast((xpath(concat(l_XPATH, '/bonus/text()'), a_XMLDATA))[1] as text)),
      xpath_exists(concat(l_XPATH, '/bonus'), a_XMLDATA),
      cm_StrToFlt(cast((xpath(concat(l_XPATH, '/maxdiscount/text()'), a_XMLDATA))[1] as text)),
      xpath_exists(concat(l_XPATH, '/maxdiscount'), a_XMLDATA),
      (xpath(concat(l_XPATH, '/externalid/text()'), a_XMLDATA))[1],
      xpath_exists(concat(l_XPATH, '/externalid'), a_XMLDATA),
      (xpath(concat(l_XPATH, '/active/text()'), a_XMLDATA))[1],
      xpath_exists(concat(l_XPATH, '/active'), a_XMLDATA),
      (xpath(concat(l_XPATH, '/weighted/text()'), a_XMLDATA))[1],
      xpath_exists(concat(l_XPATH, '/weighted'), a_XMLDATA),
      (xpath(concat(l_XPATH, '/durability/text()'), a_XMLDATA))[1],
      xpath_exists(concat(l_XPATH, '/durability'), a_XMLDATA),
      (xpath(concat(l_XPATH, '/custom1/text()'), a_XMLDATA))[1],
      xpath_exists(concat(l_XPATH, '/custom1'), a_XMLDATA),
      (xpath(concat(l_XPATH, '/custom2/text()'), a_XMLDATA))[1],
      xpath_exists(concat(l_XPATH, '/custom2'), a_XMLDATA),
      (xpath(concat(l_XPATH, '/custom3/text()'), a_XMLDATA))[1],
      xpath_exists(concat(l_XPATH, '/custom3'), a_XMLDATA),
      (xpath(concat(l_XPATH, '/custom4/text()'), a_XMLDATA))[1],
      xpath_exists(concat(l_XPATH, '/custom4'), a_XMLDATA),
      (xpath(concat(l_XPATH, '/custom5/text()'), a_XMLDATA))[1],
      xpath_exists(concat(l_XPATH, '/custom5'), a_XMLDATA),
      (xpath(concat(l_XPATH, '/barcodes/text()'), a_XMLDATA))[1],
      xpath_exists(concat(l_XPATH, '/barcodes'), a_XMLDATA)
    into l_RECIPE;
  exception
    when invalid_text_representation then
      perform ASWError(35581, cast(array[SQLERRM] as text[]));
    when others then
      raise;
  end;

  return l_RECIPE;

end; $$;



/**
 * This function is used to process one row from a recipe node.
 * It does not support insert nor update.
 *
 * If ID field is not provided in the configuration, the default is 'name'.
 * If the roottag is not set, 'recipe' is used.
 *
 * Important note!
 * This function is currently used onyl from the import of closed bills.
 * It must be merged / unified with RECEPT_XmlImport
 * The difference between RECEPT_XmlImport and RECEPT_XMLToRow is, that
 * RECEPT_XMLToRow does not support insert or update and it is using
 * "idfield" for the identification of the target record.
 */
create or replace function admin_septim.RECEPT_XMLToRow (
  in a_INPUT               XMLTEXT,
  in a_CONFIG              VALUEJSON,
  in a_FORCE               FORCETXT,
  in a_ROOTTAG             VALUESTR default null
) returns XMLIMPORT_rs
language plpgsql security definer as $$
declare
  l_RECIPE                 RECEPT__XmlImportParseRecipe_rs;
  l_RESULT                 XMLIMPORT_rs;
  l_IDFIELD                VALUESTR;
  l_RCPTID                 REFIDINT;
  l_STATUS                 VALUESTR;
  l_ERRMSGPARAMS           TEXTARR;
  l_LOGMESSAGEINFO         TEXTARR;
  l_TMPLOG                 TEXTARR;
  l_FOUNDACTION            VALUESTR;
  l_FOUNDMOREACTION        VALUESTR;
  l_NOTFOUNDACTION         VALUESTR;
  l_XPATH                  VALUESTR;
begin

  if a_INPUT is null then
    return l_RESULT;
  end if;

  l_IDFIELD := coalesce(a_CONFIG->>'idfield', 'name');

  select * into l_RECIPE from RECEPT__XmlImportParseRecipe(a_INPUT, a_ROOTTAG);

  -- The imported record info. Names match the tags in XML import.
  -- Operator || is used on purpose to eliminate null values.
  l_LOGMESSAGEINFO := array [
     array_to_string(array [
      'idfield: ' || l_IDFIELD,
      'idvalue: ' || l_RECIPE.IDVALUE
    ], ', ') ];

  -- Resolve if it is insert or update by getting ID of the existing recipe
  select RCPTID, _STATUS
    into l_RCPTID, l_STATUS
  from RECEPT__XmlImportGetIDForUpdate (l_IDFIELD, l_RECIPE.IDVALUE);

  -- params for messages
  l_ERRMSGPARAMS := cast(array[l_IDFIELD, l_RECIPE.IDVALUE] as text[]);

  -- Old record found, upsert
  if l_RCPTID is not null then

    -- Log it
    l_RESULT.LOGMESSAGES := S_AddToProtocol(l_RESULT.LOGMESSAGES, 'INFO_RECIPE_FOUND', 'RECEPT', 'IMPORTFOUND', cast(RECEPT_GetNazev(l_RCPTID) as TEXT) || l_LOGMESSAGEINFO);

    -- Ask about the update only if the recipe tag contains any other tags
    -- If it contains only id attribute, then we can be sure there will be no update
    if l_RECIPE.ELEMENTSCOUNT <> 0 then
      -- Find out what to do
      l_FOUNDACTION := cm_ResolveParameterValue('RCPTIMONUPDATE', coalesce(a_CONFIG->>'foundaction', 'ask'), array['skip', 'error', 'update', 'noupdate', 'ask'], 35574, a_FORCE, l_ERRMSGPARAMS);
      -- Take action according to the result
      case l_FOUNDACTION
        when 'error' then
          perform ASWError(35575, l_ERRMSGPARAMS);
        when 'noupdate' then
          l_RESULT.LOGMESSAGES := S_AddToProtocol(l_RESULT.LOGMESSAGES, 'INFO_RECIPE_NOUPDATE', 'RECEPT', 'IMPORTNOUPDATE', cast(array[RECEPT_GetNazev(l_RCPTID)] as text[]));
        when 'skip' then
          -- Log and keep ID set on null
          l_RESULT.LOGMESSAGES := S_AddToProtocol(l_RESULT.LOGMESSAGES, 'WARN_RECIPE_SKIP', 'RECEPT', 'IMPORTUPDATESKIPPED', l_LOGMESSAGEINFO);
        when 'update' then
          l_TMPLOG := RECEPT__XmlImportUpdate(l_RCPTID, l_RECIPE, a_CONFIG, a_FORCE);
          l_RESULT.LOGMESSAGES := array_cat(l_RESULT.LOGMESSAGES, l_TMPLOG);
        else
          perform ASWError(35579, cast(array[l_FOUNDACTION] as text[]));
      end case;

    end if;

    -- ID of the updated row to be returned in the result set
    l_RESULT.ID := l_RCPTID;

  -- Recipe not found or not unique
  else

    -- More then one record was found.
    if l_STATUS = 'E' then

      l_FOUNDMOREACTION := cm_ResolveParameterValue('IMPORTRECIPEFOUNDMORE', COALESCE(a_CONFIG->>'foundmoreaction', 'ask'), array['skip', 'error', 'ask'], 35587, a_FORCE, l_MESSAGEPARAMS);
      case l_FOUNDMOREACTION
        when 'skip' then
          -- Log and keep ID set on null
          l_RESULT.LOGMESSAGES := S_AddToProtocol(l_RESULT.LOGMESSAGES, 'WARN_RECIPE_FOUNDMORE_SKIP', 'RECEPT', 'IMPORTFOUNDMORESKIP', l_LOGMESSAGEINFO);
        when 'error' then
          -- Abort the import
          perform ASWError(35585, l_LOGMESSAGEINFO);
        else
          -- Invalid action type
          perform ASWError(35579, l_LOGMESSAGEINFO);
      end case;

    else
      -- The record is not found
      -- The behavior is determined by calling cm_ResolveParameterValue with 'notfoundaction' configuration value and with possible output:
      --   - error .. The error is thrown
      --   - skip .. Null is returned as ID
      l_NOTFOUNDACTION := cm_ResolveParameterValue('IMPORTRECIPENOTFOUND', coalesce(a_CONFIG->>'notfoundaction', 'insert'), array['insert', 'skip', 'error', 'ask'], 35586, a_FORCE, l_ERRMSGPARAMS);

      case l_NOTFOUNDACTION
        when 'insert' then
          l_RESULT.LOGMESSAGES := S_AddToProtocol(l_RESULT.LOGMESSAGES, 'INFO_RECIPE_INSERT', 'RECEPT', 'IMPORTINSERT', l_LOGMESSAGEINFO);
          perform RECEPT__XmlImportInsert(l_RECIPE, a_CONFIG, a_FORCE);
        when 'skip' then
          -- Log and keep ID set on null
          l_RESULT.LOGMESSAGES := S_AddToProtocol(l_RESULT.LOGMESSAGES, 'WARN_RECIPE_NOTFOUND_SKIP', 'RECEPT', 'IMPORTNOTFOUNDSKIP', l_LOGMESSAGEINFO);
        when 'error' then
          -- Abort the import
          perform ASWError(35583, l_ERRMSGPARAMS);
        else
          -- Invalid action type
          perform ASWError(35579, l_LOGMESSAGEINFO);
      end case;
    end if;
  end if;

  return l_RESULT;

end; $$;



select ASWDropProcedure('RECEPT_XmlImport');
/**
 * Import function for recipes.
 */
create or replace function admin_septim.RECEPT_XmlImport (
  in a_INPUT               VALUEXML,
  in a_CONFIG              VALUEJSON,
  in a_IDS                 IDINTARR default null,  -- Just for the sake of the general import functions compatibility
  in a_FORCE               FORCETXT default null
) returns TEXTARR
language plpgsql security definer as $$
declare
  l_RECIPE                 RECEPT__XmlImportParseRecipe_rs;
  l_RECIPEXML              VALUEXML;
  l_OLDID                  REFIDINT_NU;
  l_ONUPDATE               VALUESTR;
  l_ORDNUMBER              NUMBERINT;
  l_MESSAGEINFO            TEXTARR;
  l_LOGMESSAGES            TEXTARR;
  l_ORDNUMBERSTR           VALUESTR;
  l_TMPLOG                 TEXTARR;
begin

  -- The basic permission to import recipes
  perform U_CheckPerm('SEPTIMAPP', 'RECEPT\IMPORTREC', 0);
  perform U_CheckPerm('SEPTIMAPP', 'RECEPT\RECEPTUPD', 0);

  -- Check import version
  perform B_IMPORTDEF_CheckImportVersion(cast((xpath('/recipes/@version', a_INPUT))[1] as VALUETXT), array['2.0']);

  -- Parse XML data
  for l_RECIPEXML, l_ORDNUMBER in select * from unnest(xpath('/recipes/recipe', a_INPUT)) with ordinality loop
    l_LOGMESSAGES := S_AddToProtocol(l_LOGMESSAGES, 'INFO_RECIPE_START', 'RECEPT', 'IMPORTROWIMPORTSTART', cast(array[l_ORDNUMBER] as text[]));
    select LOGMESSAGES into l_TMPLOG from RECEPT_XMLToRow (l_RECIPEXML, a_CONFIG, a_FORCE);
    l_LOGMESSAGES := array_cat(l_LOGMESSAGES, l_TMPLOG);
  end loop;

  return l_LOGMESSAGES;

end; $$;



drop type if exists admin_septim.RECEPT__XmlImportInsert_rs;
create type admin_septim.RECEPT__XmlImportInsert_rs as (
  ID                        IDINT,   -- the ID of the inserted
  LOGMESSAGES               TEXTARR
);

/**
 * Insert one recipe from XML source.
 * Returns the inserted recipe ID
 */
create or replace function admin_septim.RECEPT__XmlImportInsert (
  in a_RECIPE              RECEPT__XmlImportParseRecipe_rs,
  in a_CONFIG              VALUEJSON,
  in a_FORCE               FORCETXT default null
) returns RECEPT__XmlImportInsert_rs
language plpgsql security definer as $$
declare
  l_RESULT                 RECEPT__XmlImportInsert_rs;
  l_DPHNAME                NAZEVSTR;
  l_CENAB                  CENAFLT;
  l_DPHA                   CENAFLT;
  l_CENAS                  CENAFLT;
  l_SKR1ID                 REFIDINT_NU;
  l_SKR2ID                 REFIDINT_NU;
  l_SKR3ID                 REFIDINT_NU;
  l_SKR4ID                 REFIDINT_NU;
  l_UNITIDCONTENT          REFIDINT_NU;
  l_UNITIDSALE             REFIDINT_NU;
  l_UNITIDSOLID            REFIDINT_NU;
  l_RECTYPEKEY             KEYSTR;
begin

  if a_RECIPE is null then
    return null;
  end if;

  -- Price and VAT calculation
  select DPHNAME, CENAB, DPHA, CENAS
    into l_DPHNAME, l_CENAB, l_DPHA, l_CENAS
  from RECEPT__XmlImportProcesTaxes (a_RECIPE.TAXGROUP, a_RECIPE.TAXISINCLUDED, a_RECIPE.PRICE);

  if a_RECIPE.RECGROUP1_SET then
    select ID, array_cat(l_RESULT.LOGMESSAGES, LOGMESSAGES)
      into l_SKR1ID, l_RESULT.LOGMESSAGES
    from SKUPREC1_XMLToRow(a_RECIPE.RECGROUP1, a_CONFIG->'recgroup1', a_FORCE);
    if l_SKR1ID is null then
      return l_RESULT; -- The import was configured to skip the row if referenced record not found
    end if;
  end if;

  if a_RECIPE.RECGROUP2_SET then
    select ID, array_cat(l_RESULT.LOGMESSAGES, LOGMESSAGES)
      into l_SKR2ID, l_RESULT.LOGMESSAGES
    from SKUPREC2_XMLToRow(a_RECIPE.RECGROUP2, a_CONFIG->'recgroup2', a_FORCE);
    if l_SKR2ID is null then
      return l_RESULT; -- The import was configured to skip the row if referenced record not found
    end if;
  end if;

  if a_RECIPE.RECGROUP3_SET then
    select ID, array_cat(l_RESULT.LOGMESSAGES, LOGMESSAGES)
      into l_SKR3ID, l_RESULT.LOGMESSAGES
    from SKUPREC3_XMLToRow(a_RECIPE.RECGROUP3, a_CONFIG->'recgroup3', a_FORCE);
    if l_SKR3ID is null then
      return l_RESULT; -- The import was configured to skip the row if referenced record not found
    end if;
  end if;

  if a_RECIPE.RECGROUP4_SET then
    select ID, array_cat(l_RESULT.LOGMESSAGES, LOGMESSAGES)
      into l_SKR4ID, l_RESULT.LOGMESSAGES
    from SKUPREC4_XMLToRow(a_RECIPE.RECGROUP4, a_CONFIG->'recgroup4', a_FORCE);
    if l_SKR4ID is null then
      return l_RESULT; -- The import was configured to skip the row if referenced record not found
    end if;
  end if;

  if a_RECIPE.UNITSALE_SET then
    select ID, array_cat(l_RESULT.LOGMESSAGES, LOGMESSAGES)
      into l_UNITIDSALE, l_RESULT.LOGMESSAGES
    from UNIT_XMLToRow(a_RECIPE.UNITSALE, a_CONFIG->'unitsale', a_FORCE, 'unitsale');
    if l_UNITIDSALE is null then
      return l_RESULT; -- The import was configured to skip the row if referenced record not found
    end if;
  end if;

  if a_RECIPE.UNITCONTENT_SET then
    select ID, array_cat(l_RESULT.LOGMESSAGES, LOGMESSAGES)
      into l_UNITIDCONTENT, l_RESULT.LOGMESSAGES
    from UNIT_XMLToRow(a_RECIPE.UNITCONTENT, a_CONFIG->'unitcontent', a_FORCE, 'unitcontent');
    if l_UNITIDCONTENT is null then
      return l_RESULT; -- The import was configured to skip the row if referenced record not found
    end if;
  end if;

  if a_RECIPE.UNITSOLID_SET then
    select ID, array_cat(l_RESULT.LOGMESSAGES, LOGMESSAGES)
      into l_UNITIDSOLID, l_RESULT.LOGMESSAGES
    from UNIT_XMLToRow(a_RECIPE.UNITSOLID, a_CONFIG->'unitsolid', a_FORCE, 'unitsolid');
    if l_UNITIDSOLID is null then
      return l_RESULT; -- The import was configured to skip the row if referenced record not found
    end if;
  end if;

  l_RECTYPEKEY := coalesce(a_RECIPE.RECTYPE, 'STANDARDNI');

  l_RESULT.ID := RECEPT_BasicInsert(
    a_NAZEV           => a_RECIPE.NAME,
    a_POPIS           => a_RECIPE.DESCRIPTION,
    a_ZKRATKA         => a_RECIPE.ABBREVIATION,
    a_IDCODE          => a_RECIPE.IDCODE,
    a_SKUPREC1        => SKUPREC1_GetName(l_SKR1ID),
    a_SKUPREC2        => SKUPREC2_GetName(l_SKR2ID),
    a_SKUPREC3        => SKUPREC3_GetName(l_SKR3ID),
    a_SKUPREC4        => SKUPREC4_GetName(l_SKR4ID),
    a_UNITSALE        => case when l_UNITIDSALE is null then (UNIT_GetDefaultUnits()).UNITNAME else UNIT_GetName(l_UNITIDSALE) end,
    a_UNITCONTENT     => UNIT_GetName(l_UNITIDCONTENT),
    a_UNITSOLID       => UNIT_GetName(l_UNITIDSOLID),
    a_CONTENTAMOUNT   => a_RECIPE.CONTENTAMOUNT,
    a_SOLIDAMOUNT     => a_RECIPE.SOLIDAMOUNT,
    a_OBALRECNAZEV    => RECEPT_GetName(RECEPT__XmlImportGetReference(a_RECIPE.PACKAGINGREC)),
    a_PLUCODE         => a_RECIPE.PLUCODE,
    a_PORCI           => coalesce(a_RECIPE.PORTIONAMOUNT, 1),
    a_GRAMAZ          => a_RECIPE.PORTIONSIZE,
    a_POSTUP          => a_RECIPE.COOKINGDESC,
    a_CISLOL          => coalesce(a_RECIPE.NUMBERLOW, 0),
    a_CISLOH          => coalesce(a_RECIPE.NUMBERHIGH, 0),
    a_RECEPTTYP       => RECEPTTYP_GetNazevByKlic(l_RECTYPEKEY), -- by default use the base recipe type
    a_PPMASTERRECNAZEV => RECEPT_GetName(RECEPT__XmlImportGetReference(a_RECIPE.MASTERREC)),
    a_PPCENAKOEF      => a_RECIPE.HALFPORTIONCOEF,
    a_PPINGREDKOEF    => a_RECIPE.HALFPORTIONINGREDCOEF,
    a_KLIC            => nullif(a_RECIPE.KEY, ''),
    a_DPH             => l_DPHNAME,
    a_CENAB           => l_CENAB,
    a_DPHA            => l_DPHA,
    a_CENAS           => l_CENAS,
    a_BONUS           => coalesce(a_RECIPE.BONUS, 0),
    a_EXTID           => a_RECIPE.EXTERNALID,
    a_CUSTOM1         => a_RECIPE.CUSTOM1,
    a_CUSTOM2         => a_RECIPE.CUSTOM2,
    a_CUSTOM3         => a_RECIPE.CUSTOM3,
    a_CUSTOM4         => a_RECIPE.CUSTOM4,
    a_CUSTOM5         => a_RECIPE.CUSTOM5,
    a_DURABILITY      => coalesce(a_RECIPE.DURABILITY, 0),
    a_MAXSLEVA        => coalesce(a_RECIPE.MAXDISCOUNT, 0),
    a_WELMEC          => coalesce(a_RECIPE.WELMEC, false),
    a_AKTIVNI         => coalesce(a_RECIPE.ACTIVE, true),
    a_WEIGHTED        => coalesce(a_RECIPE.WEIGHTED, false),
    a_BARCODE         => a_RECIPE.BARCODES,
    a_FORCE           => a_FORCE,
    -- Fields currently using default values
    a_KMSCATEGORY     => null,
    a_KMSITEMTYPE     => null,
    a_TARE            => null,
    a_DODVVYR         => null,
    a_COUNTRY         => null,
    a_SKLAD           => null,
    a_DOBAPRIPRAVY    => 0,       -- currently not processed
    a_DOBAKONZUMACE   => 0,       -- currently not processed
    a_VZDYCENA        => false,   -- currently not processed
    a_VCTYP           => 0,
    a_VCZAOKRC        => 1,
    a_VCZAOKRD        => 2,
    a_POUZITDOPL      => false,
    a_DOPLATEKRECEPT  => null,
    a_MINMNOZSTVI     => null,
    a_POVPOPISOBJ     => false,
    a_DEFPOPISYOBJ    => null,
    a_CHOD            => case when RECEPTTYP_CourseForbidden(l_RECTYPEKEY) then null else CHODY_GetZakladniNazev() end,
    a_DRUHJIDLA       => DRUHJIDLA_GetZakladniNazev(),
    a_INSCENY         => true,
    -- Deprecated price values
    a_DPHB            => null,
    a_CENAB1          => 0,
    a_DPHA1           => 0,
    a_DPHB1           => 0,
    a_CENAS1          => 0,
    a_CENAB2          => 0,
    a_DPHA2           => 0,
    a_DPHB2           => 0,
    a_CENAS2          => 0
  );

  if a_RECIPE.SALESTOCKPRICE_SET then
    perform RECEPT__UpdateSaleStockPrice (l_RESULT.ID, a_RECIPE.SALESTOCKPRICE);
    perform RECSKLADCENA_UpdateSaleStockPriceForBasicPortion (l_RESULT.ID, a_RECIPE.SALESTOCKPRICE);
  end if;

  return l_RESULT;

end; $$;



/**
 * Updates one recipe from XML source.
 * Returns true, if the recipe was updated, false if not (e. g. there where no values to change)
 */
create or replace function admin_septim.RECEPT__XmlImportUpdate (
  in a_ID                  IDINT,
  in a_RECIPE              RECEPT__XmlImportParseRecipe_rs,
  in a_CONFIG              VALUEJSON,
  in a_FORCE               FORCETXT default null
) returns TEXTARR
language plpgsql security definer as $$
declare
  l_RECIPEUPD              RECORD;
  l_RECIPEORG              RECORD;
  l_DPHNAME                NAZEVSTR;
  l_CENAB                  CENAFLT;
  l_DPHA                   CENAFLT;
  l_CENAS                  CENAFLT;
  l_UPDATEPRICE            VALUEBOOL;
  l_LOGMESSAGES            TEXTARR;
  l_SKR1ID                 REFIDINT_NU;
  l_SKR2ID                 REFIDINT_NU;
  l_SKR3ID                 REFIDINT_NU;
  l_SKR4ID                 REFIDINT_NU;
  l_UNITIDSALE             REFIDINT_NU;
  l_UNITIDCONTENT          REFIDINT_NU;
  l_UNITIDSOLID            REFIDINT_NU;
  l_PPMASTERRCPTID         REFIDINT_NU;
  l_OBALRCPTID             REFIDINT_NU;
begin

  if a_RECIPE is null then
    return l_LOGMESSAGES;
  end if;

  -- Load the current data
  select
    R.NAZEV          as NAZEV,
    R.POPIS          as POPIS,
    R.ZKRATKA        as ZKRATKA,
    R.IDCODE         as IDCODE,
    SR1.NAZEV        as SKUPREC1,
    R.SKR1ID         as SKR1ID,
    SR2.NAZEV        as SKUPREC2,
    R.SKR2ID         as SKR2ID,
    SR3.NAZEV        as SKUPREC3,
    R.SKR3ID         as SKR3ID,
    SR4.NAZEV        as SKUPREC4,
    R.SKR4ID         as SKR4ID,
    RO.NAZEV         as OBALRECNAZEV,
    R.OBALRCPTID     as OBALRCPTID,
    RM.NAZEV         as PPMASTERRECNAZEV,
    R.PPMASTERRCPTID as PPMASTERRCPTID,
    R.PPCENAKOEF     as PPCENAKOEF,
    R.PPINGREDKOEF   as PPINGREDKOEF,
    R.PLUCODE        as PLUCODE,
    R.PORCI          as PORCI,
    R.GRAMAZ         as GRAMAZ,
    R.POSTUP         as POSTUP,
    R.CISLOL         as CISLOL,
    R.CISLOH         as CISLOH,
    RT.NAZEV         as RECEPTTYP,
    RT.KLIC          as RECEPTTYPKLIC,
    R.KLIC           as KLIC,
    USE.NAME         as UNITSALE,
    R.UNITIDSALE     as UNITIDSALE,
    USC.NAME         as UNITCONTENT,
    R.UNITIDCONTENT  as UNITIDCONTENT,
    USD.NAME         as UNITSOLID,
    R.UNITIDSOLID    as UNITIDSOLID,
    R.CONTENTAMOUNT  as CONTENTAMOUNT,
    R.SOLIDAMOUNT    as SOLIDAMOUNT,
    R.EXTID          as EXTID,
    R.CUSTOM1        as CUSTOM1,
    R.CUSTOM2        as CUSTOM2,
    R.CUSTOM3        as CUSTOM3,
    R.CUSTOM4        as CUSTOM4,
    R.CUSTOM5        as CUSTOM5,
    R.DURABILITY     as DURABILITY,
    R.MAXSLEVA       as MAXSLEVA,
    R.AKTIVNI        as AKTIVNI,
    R.WEIGHTED       as WEIGHTED,
    R.WELMEC         as WELMEC,
    R.BONUS          as BONUS,
    DPH.NAZEV        as DPH,
    RCN.a_CENAB      as CENAB,
    RCN.a_DPHA       as DPHA,
    RCN.a_CENAS      as CENAS,
    0                as UPDATECENY,
    RCPTBARCODE_Get(a_ID) as BARCODE,
    -- Values currently unsupported by XML import, they will always use the original values
    R.DOBAPRIPRAVY  as DOBAPRIPRAVY,
    R.DOBAKONZUMACE as DOBAKONZUMACE,
    R.VZDYCENA      as VZDYCENA,
    RCN.a_DPHB      as DPHB,
    R.VCTYP         as VCTYP,
    R.VCZAOKRC      as VCZAOKRC,
    R.VCZAOKRD      as VCZAOKRD,
    R.DOPLATEKRCPTID is not null as POUZITDOPL,
    RP.NAZEV        as DOPLATEKRECEPT,
    R.MINMNOZSTVI   as MINMNOZSTVI,
    R.POVPOPISOBJ   as POVPOPISOBJ,
    R.DEFPOPISYOBJ  as DEFPOPISYOBJ,
    CH.NAZEV        as CHOD,
    DJ.NAZEV        as DRUHJIDLA,
    SKL.NAZEV       as SKLAD,
    DOD.JMENO       as DODVVYR,
    CTR.NAME        as COUNTRY,
    KMC.NAME        as KMSCATEGORY,
    KMI.NAME        as KMSITEMTYPE,
    R.TARE          as TARE,
    DR.CENAB1       as CENAB1,
    DR.DPHA1        as DPHA1,
    DR.DPHB1        as DPHB1,
    DR.CENAS1       as CENAS1,
    DR.CENAB2       as CENAB2,
    DR.DPHA2        as DPHA2,
    DR.DPHB2        as DPHB2,
    DR.CENAS2       as CENAS2
  into l_RECIPEORG
  from RECEPT R
      join RECEPTTYP as RT on RT.RECTID = R.RECTID
      join DRUHJIDLA as DJ on DJ.DRJDID = R.DRJDID
      left join SKUPREC1 as SR1 on R.SKR1ID = SR1.SKR1ID
      left join SKUPREC2 as SR2 on R.SKR2ID = SR2.SKR2ID
      left join SKUPREC3 as SR3 on R.SKR3ID = SR3.SKR3ID
      left join SKUPREC4 as SR4 on R.SKR4ID = SR4.SKR4ID
      left join RECEPT as RM on R.PPMASTERRCPTID = RM.RCPTID
      left join RECEPT as RO on R.OBALRCPTID = RO.RCPTID
      left join RECEPT as RP on R.DOPLATEKRCPTID = RP.RCPTID
      left join CHODY as CH on R.CHODID = CH.CHODID
      left join SKLAD as SK on R.SKLDID = SK.SKLDID
      left join KMSCATEGORY as KMC on KMC.KMCTID = R.KMCTID
      left join KMSITEMTYPE as KMI on KMI.KMITID = R.KMITID
      left join DODAVATEL AS DOD on DOD.DODVID = R.DODVIDVYR
      left join COUNTRY AS CTR on CTR.CNTRID = R.CNTRID
      left join UNIT AS USE on USE.UNITID = R.UNITIDSALE
      left join UNIT AS USC on USC.UNITID = R.UNITIDCONTENT
      left join UNIT AS USD on USD.UNITID = R.UNITIDSOLID
      left join SKLAD AS SKL on SKL.SKLDID = R.SKLDID
      join lateral (select X.a_RCNKID, X.a_DPHID, X.a_CENAB, X.a_DPHA, X.a_DPHB, X.a_CENAS from RECCENIK_GetZakladniCenu(R.RCPTID, R.PPMASTERRCPTID) X ) RCN on true
      left join B_DPH DPH on RCN.a_DPHID = DPH.DPHID
      left join DOTACEREC as DR on RCN.a_RCNKID = DR.RCNKID
    where R.RCPTID = a_ID
      and R.SMAZAN = 0;

  l_RECIPEUPD := l_RECIPEORG;

  -- Price and VAT calculation
  -- Only if all required values are present in the import
  l_UPDATEPRICE := a_RECIPE.TAXGROUP_SET and a_RECIPE.TAXISINCLUDED_SET and a_RECIPE.PRICE_SET;
  if l_UPDATEPRICE then
    select DPHNAME, CENAB, DPHA, CENAS
      into l_RECIPEUPD.DPH, l_RECIPEUPD.CENAB, l_RECIPEUPD.DPHA, l_RECIPEUPD.CENAS
    from RECEPT__XmlImportProcesTaxes (a_RECIPE.TAXGROUP, a_RECIPE.TAXISINCLUDED, a_RECIPE.PRICE);
    l_RECIPEUPD.UPDATECENY := 1;
  end if;

  -- Detect changed columns
  if a_RECIPE.NAME_SET and a_RECIPE.NAME is distinct from l_RECIPEUPD.NAZEV then
    l_RECIPEUPD.NAZEV := a_RECIPE.NAME;
  end if;

  if a_RECIPE.DESCRIPTION_SET and a_RECIPE.DESCRIPTION is distinct from l_RECIPEUPD.POPIS then
    l_RECIPEUPD.POPIS := a_RECIPE.DESCRIPTION;
  end if;

  if a_RECIPE.ABBREVIATION_SET and a_RECIPE.ABBREVIATION is distinct from l_RECIPEUPD.ZKRATKA then
    l_RECIPEUPD.ZKRATKA := a_RECIPE.ABBREVIATION;
  end if;

  if a_RECIPE.IDCODE_SET and a_RECIPE.IDCODE is distinct from l_RECIPEUPD.IDCODE then
    l_RECIPEUPD.IDCODE := a_RECIPE.IDCODE;
  end if;

  if a_RECIPE.BARCODES_SET and a_RECIPE.BARCODES is distinct from l_RECIPEUPD.BARCODE then
    l_RECIPEUPD.BARCODE := a_RECIPE.BARCODES;
  end if;

  if a_RECIPE.HALFPORTIONCOEF_SET and a_RECIPE.HALFPORTIONCOEF is distinct from l_RECIPEUPD.PPCENAKOEF then
    l_RECIPEUPD.PPCENAKOEF := a_RECIPE.HALFPORTIONCOEF;
  end if;

  if a_RECIPE.HALFPORTIONINGREDCOEF_SET and a_RECIPE.HALFPORTIONINGREDCOEF is distinct from l_RECIPEUPD.PPINGREDKOEF then
    l_RECIPEUPD.PPINGREDKOEF := a_RECIPE.HALFPORTIONINGREDCOEF;
  end if;

  if a_RECIPE.PLUCODE_SET and a_RECIPE.PLUCODE is distinct from l_RECIPEUPD.PLUCODE then
    l_RECIPEUPD.PLUCODE := a_RECIPE.PLUCODE;
  end if;

  if a_RECIPE.PORTIONAMOUNT_SET and a_RECIPE.PORTIONAMOUNT is distinct from l_RECIPEUPD.PORCI then
    l_RECIPEUPD.PORCI := a_RECIPE.PORTIONAMOUNT;
  end if;

  if a_RECIPE.PORTIONSIZE_SET and a_RECIPE.PORTIONSIZE is distinct from l_RECIPEUPD.GRAMAZ then
    l_RECIPEUPD.GRAMAZ := a_RECIPE.PORTIONSIZE;
  end if;

  if a_RECIPE.COOKINGDESC_SET and a_RECIPE.COOKINGDESC is distinct from l_RECIPEUPD.POSTUP as POSTUP then
    l_RECIPEUPD.POSTUP := a_RECIPE.COOKINGDESC;
  end if;

  if a_RECIPE.NUMBERLOW_SET and a_RECIPE.NUMBERLOW is distinct from l_RECIPEUPD.CISLOL then
    l_RECIPEUPD.CISLOL := a_RECIPE.NUMBERLOW;
  end if;

  if a_RECIPE.NUMBERHIGH_SET and a_RECIPE.NUMBERHIGH is distinct from l_RECIPEUPD.CISLOH then
    l_RECIPEUPD.CISLOH := a_RECIPE.NUMBERHIGH;
  end if;

  if a_RECIPE.KEY_SET and a_RECIPE.KEY is distinct from l_RECIPEUPD.KLIC then
    l_RECIPEUPD.KLIC := a_RECIPE.KEY;
  end if;

  if a_RECIPE.CONTENTAMOUNT_SET and a_RECIPE.CONTENTAMOUNT is distinct from l_RECIPEUPD.CONTENTAMOUNT then
    l_RECIPEUPD.CONTENTAMOUNT := a_RECIPE.CONTENTAMOUNT;
  end if;

  if a_RECIPE.SOLIDAMOUNT_SET and a_RECIPE.SOLIDAMOUNT is distinct from l_RECIPEUPD.SOLIDAMOUNT then
    l_RECIPEUPD.SOLIDAMOUNT := a_RECIPE.SOLIDAMOUNT;
  end if;

  if a_RECIPE.EXTERNALID_SET and a_RECIPE.EXTERNALID is distinct from l_RECIPEUPD.EXTID then
    l_RECIPEUPD.EXTID := a_RECIPE.EXTERNALID;
  end if;

  if a_RECIPE.CUSTOM1_SET and a_RECIPE.CUSTOM1 is distinct from l_RECIPEUPD.CUSTOM1 then
    l_RECIPEUPD.CUSTOM1 := a_RECIPE.CUSTOM1;
  end if;

  if a_RECIPE.CUSTOM2_SET and a_RECIPE.CUSTOM2 is distinct from l_RECIPEUPD.CUSTOM2 then
    l_RECIPEUPD.CUSTOM2 := a_RECIPE.CUSTOM2;
  end if;

  if a_RECIPE.CUSTOM3_SET and a_RECIPE.CUSTOM3 is distinct from l_RECIPEUPD.CUSTOM3 then
    l_RECIPEUPD.CUSTOM3 := a_RECIPE.CUSTOM3;
  end if;

  if a_RECIPE.CUSTOM4_SET and a_RECIPE.CUSTOM4 is distinct from l_RECIPEUPD.CUSTOM4 then
    l_RECIPEUPD.CUSTOM4 := a_RECIPE.CUSTOM4;
  end if;

  if a_RECIPE.CUSTOM1_SET and a_RECIPE.CUSTOM5 is distinct from l_RECIPEUPD.CUSTOM5 then
    l_RECIPEUPD.CUSTOM5 := a_RECIPE.CUSTOM5;
  end if;

  if a_RECIPE.DURABILITY_SET and a_RECIPE.DURABILITY is distinct from l_RECIPEUPD.DURABILITY then
    l_RECIPEUPD.DURABILITY := a_RECIPE.DURABILITY;
  end if;

  if a_RECIPE.MAXDISCOUNT_SET and a_RECIPE.MAXDISCOUNT is distinct from l_RECIPEUPD.MAXSLEVA then
    l_RECIPEUPD.MAXSLEVA := a_RECIPE.MAXDISCOUNT;
  end if;

  if a_RECIPE.ACTIVE_SET and a_RECIPE.ACTIVE is distinct from l_RECIPEUPD.AKTIVNI then
    l_RECIPEUPD.AKTIVNI := a_RECIPE.ACTIVE;
  end if;

  if a_RECIPE.WEIGHTED_SET and a_RECIPE.WEIGHTED is distinct from l_RECIPEUPD.WEIGHTED then
    l_RECIPEUPD.WEIGHTED := a_RECIPE.WEIGHTED;
  end if;

  if a_RECIPE.WELMEC_SET and a_RECIPE.WELMEC is distinct from l_RECIPEUPD.WELMEC then
    l_RECIPEUPD.WELMEC := a_RECIPE.WELMEC;
  end if;

  if a_RECIPE.BONUS_SET and a_RECIPE.BONUS is distinct from l_RECIPEUPD.BONUS then
    l_RECIPEUPD.BONUS := a_RECIPE.BONUS;
  end if;

  -- References
  if a_RECIPE.RECTYPE_SET and a_RECIPE.RECTYPE <> l_RECIPEUPD.RECEPTTYPKLIC then
    l_RECIPEUPD.RECEPTTYP := RECEPTTYP_GetNazevByKlic(a_RECIPE.RECTYPE);
  end if;

  if a_RECIPE.RECGROUP1_SET then
    select ID, array_cat(l_LOGMESSAGES, LOGMESSAGES)
      into l_SKR1ID, l_LOGMESSAGES
    from SKUPREC1_XMLToRow(a_RECIPE.RECGROUP1, a_CONFIG->'recgroup1', a_FORCE);
    if l_SKR1ID is null then
      return l_LOGMESSAGES; -- The import was configured to skip the row if referenced record not found
    end if;
    if l_RECIPEUPD.SKR1ID is distinct from l_SKR1ID then
      l_RECIPEUPD.SKUPREC1 := SKUPREC1_GetName(l_SKR1ID);
    end if;
  end if;

  if a_RECIPE.RECGROUP2_SET then
    select ID, array_cat(l_LOGMESSAGES, LOGMESSAGES)
      into l_SKR2ID, l_LOGMESSAGES
    from SKUPREC2_XMLToRow(a_RECIPE.RECGROUP2, a_CONFIG->'recgroup2', a_FORCE);
    if l_SKR2ID is null then
      return l_LOGMESSAGES; -- The import was configured to skip the row if referenced record not found
    end if;
    if l_RECIPEUPD.SKR2ID is distinct from l_SKR2ID then
      l_RECIPEUPD.SKUPREC2 := SKUPREC2_GetName(l_SKR2ID);
    end if;
  end if;

  if a_RECIPE.RECGROUP3_SET then
    select ID, array_cat(l_LOGMESSAGES, LOGMESSAGES)
      into l_SKR3ID, l_LOGMESSAGES
    from SKUPREC3_XMLToRow(a_RECIPE.RECGROUP3, a_CONFIG->'recgroup3', a_FORCE);
    if l_SKR3ID is null then
      return l_LOGMESSAGES; -- The import was configured to skip the row if referenced record not found
    end if;
    if l_RECIPEUPD.SKR3ID is distinct from l_SKR3ID then
      l_RECIPEUPD.SKUPREC3 := SKUPREC3_GetName(l_SKR3ID);
    end if;
  end if;

  if a_RECIPE.RECGROUP4_SET then
    select ID, array_cat(l_LOGMESSAGES, LOGMESSAGES)
      into l_SKR4ID, l_LOGMESSAGES
    from SKUPREC4_XMLToRow(a_RECIPE.RECGROUP4, a_CONFIG->'recgroup4', a_FORCE);
    if l_SKR4ID is null then
      return l_LOGMESSAGES; -- The import was configured to skip the row if referenced record not found
    end if;
    if l_RECIPEUPD.SKR4ID is distinct from l_SKR4ID then
      l_RECIPEUPD.SKUPREC4 := SKUPREC4_GetName(l_SKR4ID);
    end if;
  end if;

  if a_RECIPE.UNITSALE_SET then
    select ID, array_cat(l_LOGMESSAGES, LOGMESSAGES)
      into l_UNITIDSALE, l_LOGMESSAGES
    from UNIT_XMLToRow(a_RECIPE.UNITSALE, a_CONFIG->'unitsale', a_FORCE, 'unitsale');
    if l_UNITIDSALE is null then
      return l_LOGMESSAGES; -- The import was configured to skip the row if referenced record not found
    end if;
    if l_RECIPEUPD.UNITIDSALE <> l_UNITIDSALE then
      l_RECIPEUPD.UNITSALE := UNIT_GetName(l_UNITIDSALE);
    end if;
  end if;

  if a_RECIPE.UNITCONTENT_SET then
    select ID, array_cat(l_LOGMESSAGES, LOGMESSAGES)
      into l_UNITIDCONTENT, l_LOGMESSAGES
    from UNIT_XMLToRow(a_RECIPE.UNITCONTENT, a_CONFIG->'unitcontent', a_FORCE, 'unitcontent');
    if l_UNITIDSALE is null then
      return l_LOGMESSAGES; -- The import was configured to skip the row if referenced record not found
    end if;
    if l_RECIPEUPD.UNITIDCONTENT is distinct from l_UNITIDCONTENT then
      l_RECIPEUPD.UNITCONTENT := UNIT_GetName(l_UNITIDCONTENT);
    end if;
  end if;

  if a_RECIPE.UNITSOLID_SET then
    select ID, array_cat(l_LOGMESSAGES, LOGMESSAGES)
      into l_UNITIDSOLID, l_LOGMESSAGES
    from UNIT_XMLToRow(a_RECIPE.UNITSOLID, a_CONFIG->'unitsolid', a_FORCE, 'unitsolid');
    if l_UNITIDSOLID is null then
      return l_LOGMESSAGES; -- The import was configured to skip the row if referenced record not found
    end if;
    if l_RECIPEUPD.UNITIDSOLID is distinct from l_UNITIDSOLID then
      l_RECIPEUPD.UNITSOLID := UNIT_GetName(l_UNITIDSOLID);
    end if;
  end if;

  if a_RECIPE.PACKAGINGREC_SET then
    l_OBALRCPTID := RECEPT__XmlImportGetReference(a_RECIPE.PACKAGINGREC);
    if l_RECIPEUPD.OBALRCPTID is distinct from l_OBALRCPTID then
      l_RECIPEUPD.OBALRECNAZEV := RECEPT_GetName(l_OBALRCPTID);
    end if;
  end if;

  if a_RECIPE.MASTERREC_SET then
    l_PPMASTERRCPTID := RECEPT__XmlImportGetReference(a_RECIPE.MASTERREC);
    if l_RECIPEUPD.PPMASTERRCPTID is distinct from l_PPMASTERRCPTID then
      l_RECIPEUPD.PPMASTERRECNAZEV := RECEPT_GetName(l_PPMASTERRCPTID);
    end if;
  end if;

  -- If something has changed, it's update
  if l_RECIPEUPD <> l_RECIPEORG then

    l_LOGMESSAGES := S_AddToProtocol(l_LOGMESSAGES, 'INFO_RECIPE_UPDATE', 'RECEPT', 'IMPORTUPDATE', cast(array[a_RECIPE.NAME] as text[]));

    perform RECEPT_BasicUpdate (
      a_ID                => a_ID,
      a_NAZEV             => l_RECIPEUPD.NAZEV,
      a_POPIS             => l_RECIPEUPD.POPIS,
      a_ZKRATKA           => l_RECIPEUPD.ZKRATKA,
      a_IDCODE            => l_RECIPEUPD.IDCODE,
      a_BARCODE           => l_RECIPEUPD.BARCODE,
      a_SKUPREC1          => l_RECIPEUPD.SKUPREC1,
      a_SKUPREC2          => l_RECIPEUPD.SKUPREC2,
      a_SKUPREC3          => l_RECIPEUPD.SKUPREC3,
      a_SKUPREC4          => l_RECIPEUPD.SKUPREC4,
      a_OBALRECNAZEV      => l_RECIPEUPD.OBALRECNAZEV,
      a_PPMASTERRECNAZEV  => l_RECIPEUPD.PPMASTERRECNAZEV,
      a_PPCENAKOEF        => l_RECIPEUPD.PPCENAKOEF,
      a_PPINGREDKOEF      => l_RECIPEUPD.PPINGREDKOEF,
      a_PLUCODE           => l_RECIPEUPD.PLUCODE,
      a_PORCI             => l_RECIPEUPD.PORCI,
      a_GRAMAZ            => l_RECIPEUPD.GRAMAZ,
      a_POSTUP            => l_RECIPEUPD.POSTUP,
      a_CISLOL            => l_RECIPEUPD.CISLOL,
      a_CISLOH            => l_RECIPEUPD.CISLOH,
      a_RECEPTTYP         => l_RECIPEUPD.RECEPTTYP,
      a_KLIC              => l_RECIPEUPD.KLIC,
      a_UNITSALE          => l_RECIPEUPD.UNITSALE,
      a_UNITCONTENT       => l_RECIPEUPD.UNITCONTENT,
      a_UNITSOLID         => l_RECIPEUPD.UNITSOLID,
      a_CONTENTAMOUNT     => l_RECIPEUPD.CONTENTAMOUNT,
      a_SOLIDAMOUNT       => l_RECIPEUPD.SOLIDAMOUNT,
      a_EXTID             => l_RECIPEUPD.EXTID,
      a_CUSTOM1           => l_RECIPEUPD.CUSTOM1,
      a_CUSTOM2           => l_RECIPEUPD.CUSTOM2,
      a_CUSTOM3           => l_RECIPEUPD.CUSTOM3,
      a_CUSTOM4           => l_RECIPEUPD.CUSTOM4,
      a_CUSTOM5           => l_RECIPEUPD.CUSTOM5,
      a_DURABILITY        => l_RECIPEUPD.DURABILITY,
      a_MAXSLEVA          => l_RECIPEUPD.MAXSLEVA,
      a_AKTIVNI           => l_RECIPEUPD.AKTIVNI,
      a_WEIGHTED          => l_RECIPEUPD.WEIGHTED,
      a_DPH               => l_RECIPEUPD.DPH,
      a_CENAB             => l_RECIPEUPD.CENAB,
      a_DPHA              => l_RECIPEUPD.DPHA,
      a_CENAS             => l_RECIPEUPD.CENAS,
      a_WELMEC            => l_RECIPEUPD.WELMEC,
      a_BONUS             => l_RECIPEUPD.BONUS,
      a_FORCE             => a_FORCE,
      a_LOGOPRAVA         => 1,
      a_UPDCENY           => l_RECIPEUPD.UPDATECENY,
      a_DOBAPRIPRAVY      => l_RECIPEUPD.DOBAPRIPRAVY,
      a_DOBAKONZUMACE     => l_RECIPEUPD.DOBAKONZUMACE,
      a_VZDYCENA          => l_RECIPEUPD.VZDYCENA,
      a_DPHB              => l_RECIPEUPD.DPHB,
      a_VCTYP             => l_RECIPEUPD.VCTYP,
      a_VCZAOKRC          => l_RECIPEUPD.VCZAOKRC,
      a_VCZAOKRD          => l_RECIPEUPD.VCZAOKRD,
      a_POUZITDOPL        => l_RECIPEUPD.POUZITDOPL,
      a_DOPLATEKRECEPT    => l_RECIPEUPD.DOPLATEKRECEPT,
      a_MINMNOZSTVI       => l_RECIPEUPD.MINMNOZSTVI,
      a_POVPOPISOBJ       => l_RECIPEUPD.POVPOPISOBJ,
      a_DEFPOPISYOBJ      => l_RECIPEUPD.DEFPOPISYOBJ,
      a_CHOD              => l_RECIPEUPD.CHOD,
      a_DRUHJIDLA         => l_RECIPEUPD.DRUHJIDLA,
      a_SKLAD             => l_RECIPEUPD.SKLAD,
      a_DODVVYR           => l_RECIPEUPD.DODVVYR,
      a_COUNTRY           => l_RECIPEUPD.COUNTRY,
      a_KMSCATEGORY       => l_RECIPEUPD.KMSCATEGORY,
      a_KMSITEMTYPE       => l_RECIPEUPD.KMSITEMTYPE,
      a_TARE              => l_RECIPEUPD.TARE,
      a_CENAB1            => l_RECIPEUPD.CENAB1,
      a_DPHA1             => l_RECIPEUPD.DPHA1,
      a_DPHB1             => l_RECIPEUPD.DPHB1,
      a_CENAS1            => l_RECIPEUPD.CENAS1,
      a_CENAB2            => l_RECIPEUPD.CENAB2,
      a_DPHA2             => l_RECIPEUPD.DPHA2,
      a_DPHB2             => l_RECIPEUPD.DPHB2,
      a_CENAS2            => l_RECIPEUPD.CENAS2
    );

    if a_RECIPE.SALESTOCKPRICE_SET then
      perform RECEPT__UpdateSaleStockPrice (a_ID, a_RECIPE.SALESTOCKPRICE);
      perform RECSKLADCENA_UpdateSaleStockPriceForBasicPortion (a_ID, a_RECIPE.SALESTOCKPRICE);
    end if;

  else
    l_LOGMESSAGES := S_AddToProtocol(l_LOGMESSAGES, 'INFO_RECIPE_NOUPDATE', 'RECEPT', 'IMPORTNOCHANGES', cast(array[l_RECIPEUPD.NAZEV] as text[]));
  end if;

  return l_LOGMESSAGES;

end; $$;



select ASWDropProcedure('RECEPTIsWeighted');
create or replace function admin_septim.RECEPTIsWeighted  (
  in a_RCPTID              IDINT
) returns BOOLBIT
language plpgsql security definer as $$
begin
  return WEIGHTED from RECEPT where RCPTID = a_RCPTID;
end; $$;

select grant_func('RECEPTIsWeighted', 'SPEXEC');



select ASWDropProcedure('RECEPTIsWeightedbyName');
create or replace function admin_septim.RECEPTIsWeightedbyName (
  in a_NAZEV              VALUESTR
) returns BOOLBIT
language plpgsql security definer as $$
begin
  return WEIGHTED from RECEPT where SMAZAN = 0 and NAZEV = a_NAZEV;
end; $$;

select grant_func('RECEPTIsWeightedbyName', 'SPEXEC');



select ASWDropFunction('RECEPT_EvalPcsCount');
/*
 * Function used to get the value for OUPOL.PCSCOUNT
 */
create or replace function admin_septim.RECEPT_EvalPcsCount (
  in a_RCPTID                IDINT,
  in a_MNOZSTVI              MNOZSTVIFLT
) returns AMOUNTFLT
language plpgsql security definer as $$
declare
  l_PIECES                 TYPECHR;
begin
  -- For KORUNOVA, LEKCE, POLOVICNIPORCE, STANDARDNI, STANDARDNISTORNO or TARIF recipe's types,
  -- we will use information from UNIT.PIECES to decide the value of OUPOL.PCSCOUNT.
  -- For any other type, PCSCOUNT is alway 0.
  select U.PIECES
    into l_PIECES
  from UNIT U
    join RECEPT R on R.UNITIDSALE = U.UNITID
  where R.RCPTID = a_RCPTID
    and R.RECTID in (select unnest(RECEPTTYP_BillItemPiecesAllowed()));

  if not found then
    return 0;
  end if;

  if l_PIECES = 'M' then
    return cast(a_MNOZSTVI as AMOUNTFLT);
  else
    return 1;
  end if;

end; $$;



select ASWDropFunction('RECEPT_IsInGroup');
/**
 * The function returns 1 when the recipe is in a group with the specified key in a_GROUPKEY.
 * The a_DEFRECGROUP parameter defines in which table the recipe group is searched.
 * 0 - General group
 * 1 - Recipe group 1
 * 2 - Recipe group 2
 * 3 - Recipe group 3
 */
create or replace function admin_septim.RECEPT_IsInGroup (
  in a_RCPTID              REFIDINT,     -- recipe id
  in a_GROUPKEY            KEYSTR,       -- the key of recipe group 1, recipe group 2 or recipe group 3
  in a_DEFRECGROUP         CISLOINT      -- which table we will look through. 0-General 1-SKUPREC1;2-SKUPREC2;3-SKUPREC3
) returns VALUEBOOL
language plpgsql security definer as $$
begin
  case a_DEFRECGROUP
    when 0 then
      if exists (select 1 from RLSKUPRCPT R join SKUPINA S on S.SKUPID = R.SKUPID where
                 R.RCPTID = a_RCPTID and S.KLIC = a_GROUPKEY and R.SMAZAN = 0 and S.SMAZAN =0) then
        return true;
      end if;
    when 1 then
      if exists(select 1 from RECEPT as R join SKUPREC1 as SR on R.SKR1ID = SR.SKR1ID where
                R.RCPTID = a_RCPTID and R.SMAZAN = 0 and SR.SMAZAN = 0 and SR.KLIC = a_GROUPKEY) then
        return true;
      end if;
    when 2 then
      if exists(select 1 from RECEPT as R join SKUPREC2 as SR on R.SKR2ID = SR.SKR2ID where
                R.RCPTID = a_RCPTID and R.SMAZAN = 0 and SR.SMAZAN = 0 and SR.KLIC = a_GROUPKEY) then
        return true;
      end if;
    when 3 then
      if exists(select 1 from RECEPT as R join SKUPREC3 as SR on R.SKR3ID = SR.SKR3ID where
                R.RCPTID = a_RCPTID and R.SMAZAN = 0 and SR.SMAZAN = 0 and SR.KLIC = a_GROUPKEY) then
        return true;
      end if;
    else
      null;
  end case;

  return false;

end; $$;
