-- ERRBASE 39100,39199
select ASWAddMessage(39102, 'Položka Sklad musí být vyplněná!|R%1!');
select ASWAddMessage(39103, 'Sklad "%1!" neexistuje.|RS%2!');
select ASWAddMessage(39104, 'Položka Skladová položka musí být vyplněná!|R%1!');
select ASWAddMessage(39105, 'Skladová položka "%1!" neexistuje.|R%2!');
select ASWAddMessage(39106, 'Pokud je množství kladné a cena je za celé množství, tak musí být kladné i ceny.|R%1!');
select ASWAddMessage(39107, 'Pokud je množství záporné a cena je za celé množství, tak musí být záporné i ceny.|R%1!');
select ASWAddMessage(39111, 'Množství musí být vyplněné a různé od 0!|R%1!');
select ASWAddMessage(39112, 'Položka Trvanlivost musí být vyplněná|R%1!');
select ASWAddMessage(39113, 'Položky Cena před slevou musí být vyplněna!|R%1!');
select ASWAddMessage(39114, 'Položky Cena po slevě musí být vyplněna!|R%1!');
select ASWAddMessage(39115, 'Položka Daň musí být vyplněná!|R%1!');
select ASWAddMessage(39116, 'Daňová skupina "%1!" neexistuje!|R%2!');
select ASWAddMessage(39117, 'Skladová položka "%1!" pro sklad "%2!" je již v dodacím listu zahrnuta. Chcete ji přesto vložit?|FYC;%3!');
select ASWAddMessage(39118, 'Sleva může být maximálně 100%% a musí být větší nebo rovna 0%% (Vámi zadaná sleva je %1!%%).|R%2!');
select ASWAddMessage(39119, 'Zadali jste slevu %1!%%, ale v dodacím listu je sleva %2!%%. Chcete nastavit slevu podle dodacího listu?|FYNC;%3!');
select ASWAddMessage(39120, 'Skladová položka "%3!" má daňovou skupinu "%1!", ale v položce dodacího listu máte daňovou skupinu "%2!". Pokračovat?|FYC;%4!');
select ASWAddMessage(39121, 'Byla nalezena sprárovaná objednávka obsahující skladovou položkou "%1!" pro sklad "%2!" s nedodaným množstvím %3!. Spárovat založenou položku dodacího listu s nalezenou položkou objednávky?|FYNC;%4!');
select ASWAddMessage(39122, 'Daňová skupina "%1!" je neaktivní. Použít lze pouze aktivní skupinu!|R%2!');
select ASWAddMessage(39123, 'Dodavatelská skladová položka "%1!" a skladová položka "%2!" pro sklad "%3!" je již v dodacím listu zahrnuta. Chcete ji přesto vložit?|FYC;%4!');
select ASWAddMessage(39124, 'Pro dodavatelskou skladovou položku "%1!" existuje spárovaná skladová položka "%2!". Chcete jí použít do dodacího listu?|FYNC;DODPOLLINKEDSKPL');
select ASWAddMessage(39125, 'U položky spárované s položkou objednávky nelze měnit dodavatelskou skladovou položku, interní skladovou položku ani sklad!');
select ASWAddMessage(39126, 'Poměr množství dodavatelské skladové položky "%1!" (%3!) a interní skladové položky "%2!" (%4!) neodpovídá poměru %5!. Množství které položky zaktualizovat dle poměru?|F[Dodavatel.|%6!+][Interní|%7!+][Neaktualiz.|%8!+]C');
select ASWAddMessage(39127, 'Poměr množství dodavatelské skladové položky (%1!) a interní skladové položky (%2!) neodpovídá poměru %3!. Množství které položky zaktualizovat dle poměru?|F[Dodavatel.|%4!+][Interní|%5!+][Neaktualiz.|%6!+]C');
select ASWAddMessage(39128, 'Pokud je množství dodavatelské skladové položky kladné, musí být kladné i množství interní skladové položky!|R%1!');
select ASWAddMessage(39129, 'Pokud je množství dodavatelské skladové položky záporné, musí být záporné i množství interní skladové položky!|R%1!');
-- __SlevyPrepocet
select ASWAddMessage(39130, 'Cena po slevě neodpovídá ceně před slevou a použité slevě. Chcete nastavit cenu po slevě správně?|FYNC;DODPOL_SLEVA');
select ASWAddMessage(39131, 'U skladové položky "%2!" na skladě "%3!" neodpovídá cena po slevě ceně před slevou a použité slevě. Chcete nastavit cenu po slevě správně?|F[Ano|DODPOL_SLEVA%1!+][Ano všem|DODPOL_SLEVA_ALL+][Ne|DODPOL_SLEVA%1!-][Ne všem|DODPOL_SLEVA_ALL-][Zpět|]');
-- __KontrolaCena
select ASWAddMessage(39139, 'Cena po slevě neodpovídá ceně před slevou a použité slevě. Kterou cenu zaktualizovat dle zadané slevy?|F[Před slevou|%1!+][Po slevě|%2!+][Nepřepoč.|%3!+]C');
select ASWAddMessage(39140, 'Přepočítat cenu po slevě dle ceny před slevou a zadané slevy?|FYNC;%1!');
select ASWAddMessage(39141, 'Přepočítat cenu před slevou dle ceny po slevě a zadané slevy?|FYNC;%1!');
--select ASWAddMessage(39142, '');
select ASWAddMessage(39143, 'Nelze pracovat s dodacími listy v cizí měně (omezení limitů)!');
select ASWAddMessage(39144, 'Vypočítaný poměr nesouhlasí se zadaným množství dodavatelské a interní skladové položky!');
select ASWAddMessage(39145, 'Musí být nastaveno, zda je položka zkontrolována!|R%1!');
select ASWAddMessage(39146, 'Dodací list má vyplněné datum uhrazení, chcete přesto provést jeho úpravu?|FYC;UPRAVDODPOL');
select ASWAddMessage(39147, 'Smazáním položky dodacího listu se zruší vazba mezi položkou dodacího listu a položkou objednávky. Dodané množství položky objednávky bude sníženo o množství položky dodacího listu. Pokračovat?|FYC;DOZRUSVAZBUDODOBJDODPOL');
select ASWAddMessage(39148, 'Změnou skladové položky u položky dodacího listu se zruší vazba mezi položkou dodacího listu a položkou objednávky. Dodané množství bude u položky objednávky odečteno o množství položky dodacího listu. Pokračovat?|FYC;DOZRUSVAZBUDODOBJDODPOL');
select ASWAddMessage(39149, 'Dle existující vazby mezi dodavatelskou skladovou položkou "%1!" a interní skladovou položkou "%2!" je poměr %3!, který se liší od zadaného (%4!). Zaktualizovat zadaný poměr dle vazby?|FYNC;%5!');
select ASWAddMessage(39150, 'Položka "%1!" má slevu %2!%%. Chcete změnit slevu na %3!%% nebo o rozdíl na %4!%%?|F[Ano|%5!+][Ano všem|DODPOL_UPDATE_ALL+][Ano rozdíl|%5!R+][Rozdíl všem|DODPOL_UPDATE_ALLR+][Neměnit|%5!-]C');
select ASWAddMessage(39151, 'Položka "%1!" má slevu %2!%%. Chcete změnit slevu na %3!%% ?|F[Ano|%4!+][Ano všem|DODPOL_UPDATE_ALL+][Neměnit|%4!-]C');
select ASWAddMessage(39152, 'Musí být zadáno, zda se počítá poměr!|R%1!');
select ASWAddMessage(39153, 'Dodavatelská skladová položka "%1!" neexistuje nebo nepatří dodavateli dodacího listu!|R%2!');
select ASWAddMessage(39154, 'Dodavatelská skladová položka "%1!" je neaktivní. Použít lze pouze aktivní položku!|R%2!');
select ASWAddMessage(39155, 'Pokud je zadaný poměr nebo množství dodavatelské skladové položky, musí být zadána i dodavatelská skladová položka!|R%1!');
select ASWAddMessage(39156, 'Poměr musí být vyplněn!|R%1!');
select ASWAddMessage(39157, 'Poměr musí být kladné číslo větší než 0!|R%1!');
select ASWAddMessage(39158, 'Množství dodavatelské skladové položky musí být vyplněné a různé od 0!|R%1!');
select ASWAddMessage(39159, 'Položka Sleva musí být vyplněna!|R%1!');
select ASWAddMessage(39160, 'Množství interní skladové položky dle zadaného poměru neodpovídá množství dodavatelské skladové položky!|R%1!');
select ASWAddMessage(39161, 'Musí být zadáno, zda se jedná o cenu s daní nebo bez daně!|R%1!');
select ASWAddMessage(39162, 'Musí být zadáno, zda se jedná o cenu za jednotku nebo za celé množství!|R%1!');
select ASWAddMessage(39163, 'Neexistuje vazba mezi dodavatelskou skladovou položkou "%1!" a interní skladovou položkou "%2!". Chcete jí vytvořit?|FYNC;%3!');
select ASWAddMessage(39164, 'Zadaný poměr (%4!) mezi dodavatelskou skladovou položkou "%1!" a interní skladovou položkou "%2!" se liší od evidovaného (%3!). Chcete zaktualizovat poměr?|FYNC;%5!');
select ASWAddMessage(39165, 'U vazby mezi dodavatelskou skladovou položkou "%1!" a interní skladovou položkou "%2!" je nastaveno, že se poměr počítá. Chcete u vazby zrušit nastavení počítání poměru?|FYNC;%3!');
select ASWAddMessage(39166, 'U vazby mezi dodavatelskou skladovou položkou "%1!" a interní skladovou položkou "%2!" je nastaveno, že se poměr nepočítá. Chcete u vazby nastavit počítání poměru?|FYNC;%3!');
select ASWAddMessage(39167, 'Zadaný poměr (%4!) mezi dodavatelskou skladovou položkou "%1!" a interní skladovou položkou "%2!" se liší od evidovaného (%3!), liší se i, zda se má počítat poměr. Chcete zaktualizovat poměr a nastavení počítání poměru?|FYNC;%5!');
select ASWAddMessage(39168, 'Pro zadání jiné ceny než je uvedeno v objednávce a mimo rozsah %1! - %2! je nutné oprávnění "%3!"!');
select ASWAddMessage(39169, 'Pro zadání jiné ceny než je uvedeno v objednávce je nutné oprávnění "%1!" nebo "%2!"!');
select ASWAddMessage(39170, 'Zadaná cena je %1!, což je mimo doporučený rozsah %2! - %3! odvozený od objednávkové ceny. Pokračovat?|FYC;%4!');
select ASWAddMessage(39171, 'Pro zadání jiné ceny než je uvedeno u interní skladové položky a mimo rozsah %1! - %2! je nutné oprávnění "%3!"!');
select ASWAddMessage(39172, 'Pro zadání jiné ceny než je uvedeno u interní skladové položky je nutné oprávnění "%1!" nebo "%2!"!');
select ASWAddMessage(39173, 'Jednotková cena je %1!, což je mimo doporučený rozsah %2! - %3! odvozený od ceny interní skladové položky. Pokračovat?|FYC;%4!');
select ASWAddMessage(39174, 'Delivery note currency "%1!" other than the order currency "%2!"!');
select ASWAddMessage(39175, 'Pro zadání jiného množství než v objednávce a mimo rozsah %1! - %2! je nutné oprávnění "%3!"!');
select ASWAddMessage(39176, 'Pro zadání jiného položky než v objednávce je nutné oprávnění "%1!" nebo "%2!"!');
select ASWAddMessage(39177, 'Dodané množství je %1!, což je mimo rozsah %2! - %3! odvozený od objednaného množství. Pokračovat?|FYC;%4!');
select ASWAddMessage(39178, 'Bylo označeno %1! záznamů. Chcete je označit jako %2!?|FYC;VYKONAJZMENU');
select ASWAddMessage(39179, 'Bylo označeno %1! záznamů. Chcete jim zrušit označení %2!?|FYC;VYKONAJZMENU');
select ASWAddMessage(39180, 'Musí být vybrán pouze jeden záznam!');
select ASWAddMessage(39181, 'Položka dodacího listu s ID %1! nebyla nalezena!');
select ASWAddMessage(39182, 'Položka dodacího listu je již označena jako zkontrolována!');
select ASWAddMessage(39183, 'Označit zvolenou položku jako zkontrolovanou?|FYC;%1!');
select ASWAddMessage(39184, 'Cena za jednotkové množství nesmí být záporná!|R%1!');
select ASWAddMessage(39185, 'Pro zadání jiné ceny skladové položky "%4!" na skladě "%5!" než je uvedeno u interní skladové položky a mimo rozsah %1! - %2! je nutné oprávnění "%3!"!');
select ASWAddMessage(39186, 'Pro zadání jiné ceny skladové položky "%3!" na skladě "%4!" než je uvedeno u interní skladové položky je nutné oprávnění "%1!" nebo "%2!"!');
select ASWAddMessage(39187, 'Jednotková cena skladové položky "%6!" na skladě "%7!" je %1!, což je mimo doporučený rozsah %2! - %3! odvozený od ceny interní skladové položky. Pokračovat?|F[Ano|%4!+][Ano všem|%5!+]C');
select ASWAddMessage(39188, 'Alespoň jedna z hodnot dodavatelská skladová položka nebo interní skladová položka musí být vyplněná!|R%1!');
select ASWAddMessage(39189, 'Ve formuláři je nastaveno, že cena je za dodavatelskou skladovou položku. Použijete-li cenu z interní skladové položky, bude příznak zrušen. Pokračovat?|FYC;%1!');
select ASWAddMessage(39190, 'At least one delivery note item must be selected!');
select ASWAddMessage(39191, 'To enter the price other than the supplier stock item most actual price and outside the range %1! - %2! permission "%3!" is required!');
select ASWAddMessage(39192, 'Permission "%1!" or "%2!" is required to enter the price other than the supplier stock item most actual price!');
select ASWAddMessage(39193, 'The unit price is %1!, which is outside the recommended range %2! - %3! derived from the most actual price of the supplier stock item. Continue?|FYC;%4!');
select ASWAddMessage(39194, 'As far as there is no actual supplier price for delivery note currency "%1!" then max and min difference will not be checked!|FO;NOTCHECKPRICEDIFF');
--select ASWAddInerror(39199, 'DEBUG %1!, "%2!", "%3!"','PGM');

select ASWAddTxt('SEPTIMAPP', 'DODPOL', 'NAHRADASKLADPOLPOPIS', 'Náhrada položky dodacího listu');
select ASWAddTxt('SEPTIMAPP', 'DODPOL', 'ZMENAPRIZNAKUPOLOZKY', 'Změna příznaku položky');
select ASWAddTxt('SEPTIMAPP', 'DODPOL', 'ZKONTR',               'zkontrolované');
select ASWAddTxt('SEPTIMAPP', 'DODPOL', 'IMPORT_INSERT', 'Založena nová položka dodacího listu pro zadané údaje (%1:s).');
select ASWAddTxt('SEPTIMAPP', 'DODPOL', 'IMPORT_ROWIMPORTSTART', 'Import položky dodacího listu %s v pořadí %s');
select ASWAddTxt('SEPTIMAPP', 'DODPOL', 'IMPORT_ISIMATCHED', 'Položka "%1:s" byla spárována s interní skladovou položkou "%2:s", množství %4:s %3:s, poměr %5:s.');

select ASWAddTxt('SEPTIMAPP', 'DODPOL', 'STORAGE',   'Sklad: ');
select ASWAddTxt('SEPTIMAPP', 'DODPOL', 'SSI',       'Dodavatelská sklad. pol.: ');
select ASWAddTxt('SEPTIMAPP', 'DODPOL', 'SSIAMOUNT', 'Množství dod. sklad. pol.: ');
select ASWAddTxt('SEPTIMAPP', 'DODPOL', 'ISI',       'Skladová položka.: ');
select ASWAddTxt('SEPTIMAPP', 'DODPOL', 'ISIAMOUNT', 'Množství sklad. pol.: ');

select ASWDropProcedure('DODPOLInsert');
drop type if exists admin_septim.DODPOLInsert_rs cascade;
create type admin_septim.DODPOLInsert_rs as (
  ID                       IDINT
);

create or replace function admin_septim.DODPOLInsert(
  in a_MASTERID             IDINT,
  in a_DODSKLADPOL          NAZEVSTR,
  in a_POMER                KOEFICIENTFLT_LARGE,
  in a_CALCPOMER            BOOLBIT,
  in a_MNOZSTVIDSKP         MNOZSTVIFLT,
  in a_SKLADPOL             NAZEVSTR_NU,
  in a_SKLAD                NAZEVSTR_NU,
  in a_MNOZSTVI             MNOZSTVIFLT_NU,
  in a_TRVAN                DATUMCASTS_NU,
  in a_SLEVAPROC            KOEFICIENTFLT,
  in a_TAXGROUP             NAZEVSTR,
  in a_CENA                 CENAFLT,
  in a_CENASL               CENAFLT,
  in a_PRICEISFORSSI        VALUEBOOL,
  in a_CENAJEBEZDANI        BOOLBIT,
  in a_CENAJEZAJEDNOTKU     BOOLBIT,
  in a_SERNR                SERNRTXT,
  in a_ZKONTR               BOOLBIT_0,
  in a_FORCE                FORCETXT default null
) returns setof admin_septim.DODPOLInsert_rs
language plpgsql security definer as $$
declare
  l_ID                    IDINT;
  l_SKLDID                REFIDINT;
  l_REALNASKL             DATUMCASTS;
  l_ZKONTR                BOOLBIT_0;
  l_ZAUCT                 BOOLBIT_0;
  l_UHRADA                DATUMTS_NU;
  l_DODVID                REFIDINT;
  l_ISREALIZED_DN         BOOLBIT;
begin
  a_SKLAD := coalesce(a_SKLAD,SKLAD_GetNazevDef()); -- Není nezbytně nutné, ale preventivně se zavolá to, co v Lite založí základní sklad

  select
    REALNASKL, ZKONTR, ZAUCT, UHRADA, DODVID, REALNASKL is not null
  into
    l_REALNASKL, l_ZKONTR, l_ZAUCT, l_UHRADA, l_DODVID, l_ISREALIZED_DN
  from
    DODAK
  where
    DODKID = a_MASTERID;

  select * into l_SKLDID from DODPOL__CheckSklad(a_SKLAD, l_ISREALIZED_DN);

  -- Permission checks
  -- Realized DN
  if l_ISREALIZED_DN then
    -- The storage is known, check the time permission related to storage
    if l_SKLDID is not null then
      perform SKLAD_CheckPerm('SKLADPRIJMY\INSDODKSKPL', l_REALNASKL, l_SKLDID, 0, null, 'DODPOL', null, a_MASTERID, 'DODAK', 'SKLADPRIJMY\INSVLDODKSKPL');
      perform SKLAD_StrediskaCheck('SKLADZAKLAD\STRDUNLIMITED', 0, l_SKLDID);
    -- The storage is not known, just check simplle acces
    else
      perform SKLAD_CheckPermNoTime('SKLADPRIJMY\INSDODKSKPL', 0, null, 'DODPOL', null, a_MASTERID, 'DODAK', 'SKLADPRIJMY\INSVLDODKSKPL');
    end if;
  -- Pending delivery note
  else
    perform SKLAD_CheckPermNoTime('SKLADPRIJMY\PENDINGDNITEMEDT', 0, null, 'DODPOL', null, a_MASTERID, 'DODAK', 'SKLADPRIJMY\PENDINGDNITEMOWNEREDT');
  end if;

  if a_ZKONTR then
    perform SKLADPERM_TestFlagPerm('ZKONTR', true, 'DODPOL', a_FORCE);
  end if;
  -- test spárování s fakturou
  perform admin_septim.DODAK_CheckSparovanSFakturou(a_MASTERID);
  --- test DODAK - ZKONTR, ZAUCT
  perform admin_septim.SKLADPERM_CheckEditPerm(l_ZKONTR,l_ZAUCT);
  if l_UHRADA is not null then
    if admin_eng.CheckForce(a_FORCE,'UPRAVDODPOL') is null then
      perform admin_base.ASWError(39146); --potvrdenie upravy dodacieho listu, ak ma vyplneny datum uhrazeni
    end if;
  end if;
  perform admin_septim.SKLADPERM_CheckFlag(l_ZKONTR,l_ZAUCT,true,0,a_FORCE);
  --- insert
  select * into l_ID
    from DODPOL_Insert(a_MASTERID,a_DODSKLADPOL,null,a_POMER,a_CALCPOMER,a_MNOZSTVIDSKP,a_SKLADPOL,null,a_SKLAD,null,a_MNOZSTVI,a_TRVAN,a_SLEVAPROC,a_TAXGROUP,
                                    a_CENA,a_CENASL,a_PRICEISFORSSI,a_CENAJEBEZDANI,a_CENAJEZAJEDNOTKU,a_SERNR,a_ZKONTR,a_FORCE);
  return query select l_ID as ID;
end; $$;

select grant_func('DODPOLInsert', 'SPEXEC');



select ASWDropProcedure('DODPOL_Insert');
create or replace function admin_septim.DODPOL_Insert(
  in  a_MASTERID            IDINT,
  in  a_DODSKLADPOL         NAZEVSTR,
  in  a_DSKPID              REFIDINT,
  in  a_POMER               KOEFICIENTFLT_LARGE,
  in  a_CALCPOMER           BOOLBIT,
  in  a_MNOZSTVIDSKP        MNOZSTVIFLT,
  in  a_SKLADPOL            NAZEVSTR_NU,
  in  a_SKPLID              REFIDINT_NU,
  in  a_SKLAD               NAZEVSTR_NU,
  in  a_SKLDID              REFIDINT_NU,
  in  a_MNOZSTVI            MNOZSTVIFLT_NU,
  in  a_TRVAN               DATUMCASTS_NU,
  in  a_SLEVAPROC           KOEFICIENTFLT,
  in  a_TAXGROUP            NAZEVSTR,
  in  a_CENA                CENAFLT,
  in  a_CENASL              CENAFLT,
  in  a_PRICEISFORSSI       VALUEBOOL,
  in  a_CENAJEBEZDANI       BOOLBIT,
  in  a_CENAJEZAJEDNOTKU    BOOLBIT,
  in  a_SERNR               SERNRTXT,
  in  a_ZKONTR              BOOLBIT_0,
  in  a_FORCE               FORCETXT,
  out a_ID                  IDINT
)
language plpgsql security definer as $$
declare
  l_TAXGID                      REFIDINT;
  l_UPDATEPOMER                 BOOLBIT;
  l_UPDATECALCPOMER             BOOLBIT;
  l_CREATERLDODSKLADPOLSKLADPOL BOOLBIT;
  l_POMER                       KOEFICIENTFLT_LARGE;
  l_CALCPOMER                   BOOLBIT;
  l_DOBSID                      REFIDINT;
begin
  select *
  into
    a_POMER, a_CALCPOMER, a_MNOZSTVIDSKP, a_SLEVAPROC, a_CENA, a_CENASL, a_DSKPID, a_SKPLID, a_SKLDID, l_TAXGID, l_UPDATEPOMER, l_UPDATECALCPOMER, l_CREATERLDODSKLADPOLSKLADPOL
  from
    admin_septim.DODPOL__Check(null, a_MASTERID, a_DODSKLADPOL, a_POMER, a_CALCPOMER, a_MNOZSTVIDSKP, a_SKLADPOL, a_SKLAD, a_MNOZSTVI, a_TRVAN, a_SLEVAPROC,
                               a_TAXGROUP, a_CENA, a_CENASL, a_CENAJEBEZDANI, a_CENAJEZAJEDNOTKU, a_SERNR, a_DSKPID, a_SKPLID, a_SKLDID, a_ZKONTR, a_FORCE);

  if (l_UPDATECALCPOMER = true) then
    -- aktualizace pocitani pomeru
    perform RLDODSKLADPOLSKLADPOL_DODOBJSKPLSetCalcPomer(a_DSKPID, a_SKPLID, a_CALCPOMER);
  elseif (l_CREATERLDODSKLADPOLSKLADPOL = true) or (l_UPDATEPOMER = true) then
    -- create a link or update ratio
    perform RLDODSKLADPOLSKLADPOL_DODOBJSKPLSetPomer(a_DSKPID, a_SKPLID, a_POMER, a_CALCPOMER);
  end if;

  -- kontrola pomeru
  if a_DSKPID is not null then
    select * into l_POMER, l_CALCPOMER from DODSKLADPOL_GetPomerExt(a_DSKPID, a_SKPLID);
    if l_POMER is null then
      -- bez vazby
      perform U_CheckPerm('SEPTIMAPP', 'SKLADPRIJMY\DODKSKPLNASKLADDODSKLADPOLBEZVAZBY',0);
    elseif (l_POMER <> a_POMER) or (l_CALCPOMER <> a_CALCPOMER) then
      -- jiny pomer
      perform U_CheckPerm('SEPTIMAPP', 'SKLADPRIJMY\DODKSKPLZMENITPOMERDODSKLADPOL',0);
    end if;
  end if;

  -- kontrola moznosti svazani s polozkou objednavky
  l_DOBSID := DODPOL__GetDODOBJSKPLToPair(a_MASTERID, a_DSKPID, a_SKPLID, a_SKLDID, a_MNOZSTVI);
  if (l_DOBSID is not null) then
    case
      when admin_eng.CheckForce(a_FORCE, concat('DOSPARUJPOLOZKUOBJ_',l_DOBSID)) is null then
        -- dotaz
        perform ASWError(39121, cast(array[SKLADPOL_GetNazev(a_SKPLID),SKLAD_GetNazev(a_SKLDID),
                                           cms_MnozstviToStr(DODOBJSKPL_GetNedodaneMnozstvi(l_DOBSID)),concat('DOSPARUJPOLOZKUOBJ_',l_DOBSID)] as text[]));
      when admin_eng.CheckForce(a_FORCE, concat('DOSPARUJPOLOZKUOBJ_',l_DOBSID)) = 0 then
        -- odpoved NE
        l_DOBSID := null;
      else
        -- odpoved ANO, dojde k sparovani s l_DOBSID
    end case;
  end if;

  perform DODPOL__CheckMnozstviCena (
    null, a_MASTERID, l_DOBSID, a_SKPLID, a_SKLDID, a_DSKPID, l_TAXGID, a_MNOZSTVI, a_MNOZSTVIDSKP, a_POMER, a_CENA, a_CENASL, a_PRICEISFORSSI, a_CENAJEBEZDANI, a_CENAJEZAJEDNOTKU, a_FORCE
  );

  select * into a_ID
    from admin_septim.DODPOL__BasicInsert(a_MASTERID,a_DSKPID,a_POMER,a_CALCPOMER,a_MNOZSTVIDSKP,a_SKPLID,a_SKLDID,a_MNOZSTVI,a_TRVAN,a_SLEVAPROC,l_TAXGID,
                                          a_CENA,a_CENASL,a_PRICEISFORSSI,a_CENAJEBEZDANI,a_CENAJEZAJEDNOTKU,a_SERNR,a_ZKONTR,a_FORCE);

  if l_DOBSID is not null then
    -- vytvoreni vazby DODOBJDODPOL
    perform DODOBJDODPOL_Insert(l_DOBSID, a_ID);
    -- uprava dodaneho mnozstvi polozky
    perform DODOBJSKPL_UpdateDodMnozstvi(l_DOBSID, a_MNOZSTVI, false); -- false=oprava
    -- release ordered amount from stock levels
    perform DODOBJSKPL_ReleaseFromStockDodpolPair(l_DOBSID, a_FORCE);
  end if;

  --- refresh ceny v dodaku
  perform admin_septim.DODAK_RefreshCeny(a_MASTERID);

end; $$;



select ASWDropProcedure('DODPOL__BasicInsert');
create or replace function admin_septim.DODPOL__BasicInsert(
  in  a_MASTERID            REFIDINT,
  in  a_DSKPID              REFIDINT_NU,
  in  a_POMER               KOEFICIENTFLT_LARGENU,
  in  a_CALCPOMER           BOOLBIT,
  in  a_MNOZSTVIDSKP        MNOZSTVIFLT_NU,
  in  a_SKPLID              REFIDINT_NU,
  in  a_SKLDID              REFIDINT_NU,
  in  a_MNOZSTVI            MNOZSTVIFLT_NU,
  in  a_TRVAN               DATUMCASTS_NU,
  in  a_SLEVAPROC           KOEFICIENTFLT,
  in  a_TAXGID              REFIDINT,
  in  a_CENA                CENAFLT,
  in  a_CENASL              CENAFLT,
  in  a_PRICEISFORSSI       VALUEBOOL,
  in  a_CENAJEBEZDANI       BOOLBIT,
  in  a_CENAJEZAJEDNOTKU    BOOLBIT,
  in  a_SERNR               SERNRTXT,
  in  a_ZKONTR              BOOLBIT_0,
  in  a_FORCE               FORCETXT,
  out a_ID                  IDINT
)
language plpgsql security definer as $$
declare
  l_CENAB                 CENAFLT;
  l_CENABSL               CENAFLT;
  l_CENAS                 CENAFLT;
  l_CENASSL               CENAFLT;
  l_CENABJ                CENAFLT;
  l_CENABJSL              CENAFLT;
  l_CENABC                CENAFLT;
  l_CENABCSL              CENAFLT;
  l_CENABJZM              CENAFLT;
  l_CENABJZMSL            CENAFLT;
  l_CENABDSKPJ            CENAFLT_NU;
  l_CENABDSKPJSL          CENAFLT_NU;
  c_RKRS                  TEXT;
  l_ISREALIZED_DN           BOOLBIT;
begin
  l_ISREALIZED_DN := DODAK_IsRealized(a_MASTERID);

  select * into l_CENAB,l_CENABSL,l_CENAS,l_CENASSL,l_CENABJ,l_CENABJSL,l_CENABC,l_CENABCSL,l_CENABJZM,l_CENABJZMSL,l_CENABDSKPJ,l_CENABDSKPJSL
    from DODPOL__CalcCeny(a_MASTERID,a_TAXGID,a_MNOZSTVI,a_MNOZSTVIDSKP,a_POMER,a_CENA,a_CENASL,a_PRICEISFORSSI,a_CENAJEBEZDANI,a_CENAJEZAJEDNOTKU);

  a_ID := admin_base.B_GetID('SEPTIMAPP','DODPOL');
  c_RKRS := SESSIONVarGet('c_RKRS');
  insert into DODPOL
    (DODPID, DODKID, SKLDID, SKPLID, TAXGID, DSKPID, TRVAN, MNOZSTVI, MNOZSTVIDSKP, POMER, CALCPOMER, SERNR, CENA, CENASL,
     PRICEISFORSSI, CENAJEBEZDANI, CENAJEZAJEDNOTKU, CENAB, CENAS, CENABSL, CENASSL, CENABJ, CENABJSL, CENABC, CENABCSL,
     CENABJZM, CENABJZMSL, CENABDSKPJ, CENABDSKPJSL, SLEVAPROC, ZKONTR, RKRS)
  values
    (a_ID, a_MASTERID, a_SKLDID, a_SKPLID, a_TAXGID, a_DSKPID, a_TRVAN, a_MNOZSTVI, a_MNOZSTVIDSKP, a_POMER, a_CALCPOMER, a_SERNR, a_CENA, a_CENASL,
     a_PRICEISFORSSI, a_CENAJEBEZDANI, a_CENAJEZAJEDNOTKU, l_CENAB, l_CENAS, l_CENABSL, l_CENASSL, l_CENABJ, l_CENABJSL, l_CENABC,l_CENABCSL,
     l_CENABJZM, l_CENABJZMSL, l_CENABDSKPJ, l_CENABDSKPJSL, a_SLEVAPROC, a_ZKONTR, c_RKRS);

  perform admin_users.U_OPRAVA_P_RowInsert('SEPTIMAPP', 'DODPOL', a_ID, '', '');

  -- recalculate taxes
  perform DODPOLTAX_DODPOLInsert(a_ID, a_FORCE);

  if l_ISREALIZED_DN then
    --- changes in stock levels
    perform admin_septim.ZASOBY_Zmen(a_SKLDID, a_SKPLID, a_MNOZSTVI, DODAK_GetRealnasklDC(a_MASTERID), a_FORCE);
    --- recalculate store prices
    perform admin_septim.SKLADPOL_PrepoctiCenu(a_SKPLID,a_SKLDID,null);
  end if;

  perform admin_users.U_OPRAVA_P_Finish();
end; $$;



select ASWDropProcedure('DODPOL_SABLONYEDITORInsert');
create or replace function admin_septim.DODPOL_SABLONYEDITORInsert(
  in  a_MASTERID           REFIDINT,
  in  a_NASKLADNENI        DATUMCASTS,
  in  a_SKPLID             REFIDINT_NU,
  in  a_SKLDID             REFIDINT_NU,
  in  a_TAXGID             REFIDINT,
  in  a_MNOZSTVI           MNOZSTVIFLT_NU,
  in  a_SLEVAPROC          KOEFICIENTFLT,
  in  a_TRVAN              DATUMCASTS_NU,
  in  a_CENA               CENAFLT,
  in  a_CENASL             CENAFLT,
  in  a_CENAJEBEZDANI      BOOLBIT,
  in  a_CENAJEZAJEDNOTKU   BOOLBIT,
  in  a_PRICEISFORSSI      BOOLBIT,
  in  a_FORCE              FORCETXT,
  out a_ID                 IDINT
)
language plpgsql security definer as $$
declare
  l_CENABJZMSL              CENAFLT;
  l_AKTCENASKLADPOL         CENAFLT;
begin

  if a_NASKLADNENI is not null then
    -- The storage is known, check the time permission related to storage
    if a_SKLDID is not null then
      perform SKLAD_CheckPerm('SKLADPRIJMY\INSDODKSKPL', a_NASKLADNENI, a_SKLDID, 0, null, 'DODPOL', null, a_MASTERID, 'DODAK', 'SKLADPRIJMY\INSVLDODKSKPL');
      perform SKLAD_StrediskaCheck('SKLADZAKLAD\STRDUNLIMITED', 0, a_SKLDID);
    -- The storage is not known, just check simple access
    else
      perform SKLAD_CheckPermNoTime('SKLADPRIJMY\INSDODKSKPL', 0, null, 'DODPOL', null, a_MASTERID, 'DODAK', 'SKLADPRIJMY\INSVLDODKSKPL');
    end if;
  -- Pending delivery note
  else
    perform SKLAD_CheckPermNoTime('SKLADPRIJMY\PENDINGDNITEMEDT', 0, null, 'DODPOL', null, a_MASTERID, 'DODAK', 'SKLADPRIJMY\PENDINGDNITEMOWNEREDT');
  end if;

  -- test spárování s fakturou
  perform DODAK_CheckSparovanSFakturou(a_MASTERID);

  -- kontrola cen a slevy
  select DODPOL_CheckCenyDleSlevy.a_CENA, DODPOL_CheckCenyDleSlevy.a_CENASL into a_CENA,a_CENASL
    from DODPOL_CheckCenyDleSlevy(SKLADPOL_GetNazev(a_SKPLID),SKLAD_GetNazev(a_SKLDID),a_SLEVAPROC,a_CENA,a_CENASL,a_FORCE,39131,concat(a_SKPLID,'_',a_SKLDID));

  -- kontrola tolerance ceny - similar as in DODPOL__CheckMnozstviCena

  -- zjištění ceny dodpol, použijeme jednotkovou cenu skladpol v základní měně
  select a_CENABJZMSL into l_CENABJZMSL
    from DODPOL__CalcCeny(a_MASTERID, a_TAXGID, a_MNOZSTVI, null/*MNOZSTVIDSKP*/, null/*POMER*/, a_CENA, a_CENASL, a_PRICEISFORSSI, a_CENAJEBEZDANI, a_CENAJEZAJEDNOTKU);

  -- zjistíme aktuální cenu skladové položky
  select a_CENA0S into l_AKTCENASKLADPOL from SKLADPOL_GetCeny(a_SKPLID, a_SKLDID, 1, null);

  perform DODPOL__CheckCenaJeVToleranci (
    a_CENA := l_CENABJZMSL,           -- porovnáváme jednotkovou cenu bez daně po slevě
    a_CENAREF := l_AKTCENASKLADPOL,   -- s cenou skladové položky
    a_PERMNEOMEZENE := 'SKLADPRIJMY\DODOBJSKPLSKLADPOLCENYNEOMEZENE',
    a_PERMROZSAH := 'SKLADPRIJMY\DODOBJSKPLSKLADPOLCENYROZSAH',
    a_ODCHYLKA_PERM := SKLADPOL_GetToleranceCeny(a_SKPLID, 'TOLERCENANOVAPERM'),
    a_ODCHYLKA_VAROVANI := SKLADPOL_GetToleranceCeny(a_SKPLID, 'TOLERCENANOVAWAR'),
    a_ERRORBASE_MIMOROZSAH := 39185,
    a_ERRORBASE_VROZSAHU := 39186,
    a_ERRORBASE_VAR := 39187,
    a_FORCE := a_FORCE,
    a_FORCEID := concat(a_SKPLID,'_',a_SKLDID),
    a_SKLADPOL := SKLADPOL_GetNazev(a_SKPLID),
    a_SKLAD := SKLAD_GetNazev(a_SKLDID)
  );

  select * into a_ID
    from DODPOL__BasicInsert(a_MASTERID,null/*DSKPID*/,null/*POMER*/,null/*CALCPOMER*/,null/*MNOZSTVIDSKP*/,a_SKPLID,a_SKLDID,a_MNOZSTVI,a_TRVAN,a_SLEVAPROC,a_TAXGID,
                             a_CENA,a_CENASL,a_PRICEISFORSSI,a_CENAJEBEZDANI,a_CENAJEZAJEDNOTKU,null/*SERNR*/,false/*ZKONTR*/,a_FORCE);
end; $$;



select ASWDropProcedure('DODPOL__BasicUpdate');
create or replace function admin_septim.DODPOL__BasicUpdate(
  in a_ID                   IDINT,
  in a_DSKPID               REFIDINT_NU,
  in a_POMER                KOEFICIENTFLT_LARGENU,
  in a_CALCPOMER            BOOLBIT,
  in a_MNOZSTVIDSKP         MNOZSTVIFLT_NU,
  in a_SKPLID               REFIDINT_NU,
  in a_SKLDID               REFIDINT_NU,
  in a_MNOZSTVI             MNOZSTVIFLT_NU,
  in a_TRVAN                DATUMCASTS_NU,
  in a_SLEVAPROC            KOEFICIENTFLT,
  in a_TAXGID               REFIDINT,
  in a_CENA                 CENAFLT,
  in a_CENASL               CENAFLT,
  in a_PRICEISFORSSI        VALUEBOOL,
  in a_CENAJEBEZDANI        BOOLBIT,
  in a_CENAJEZAJEDNOTKU     BOOLBIT,
  in a_SERNR                SERNRTXT,
  in a_ZKONTR               BOOLBIT_0,
  in a_FORCE                FORCETXT
) returns void
language plpgsql security definer as $$
declare
  l_SKLDID_OLD            REFIDINT;
  l_SKPLID_OLD            REFIDINT;
  l_MNOZSTVI_OLD          MNOZSTVIFLT;
  l_MASTERID              REFIDINT;
  l_CENAB                 CENAFLT;
  l_CENABSL               CENAFLT;
  l_CENAS                 CENAFLT;
  l_CENASSL               CENAFLT;
  l_CENABJ                CENAFLT;
  l_CENABJSL              CENAFLT;
  l_CENABC                CENAFLT;
  l_CENABCSL              CENAFLT;
  l_CENABJZM              CENAFLT;
  l_CENABJZMSL            CENAFLT;
  l_CENABDSKPJ            CENAFLT_NU;
  l_CENABDSKPJSL          CENAFLT_NU;
  l_ISREALIZED_DN         BOOLBIT;
begin
  --- poznamenani informaci o puvodnim stavu
  select
    SKLDID, SKPLID, MNOZSTVI, DODKID, DODAK_IsRealized(DODKID)
  into
    l_SKLDID_OLD,l_SKPLID_OLD,l_MNOZSTVI_OLD,l_MASTERID, l_ISREALIZED_DN
  from
    DODPOL
  where
    DODPID = a_ID;

  -- vypocet cen
  select * into l_CENAB,l_CENABSL,l_CENAS,l_CENASSL,l_CENABJ,l_CENABJSL,l_CENABC,l_CENABCSL,l_CENABJZM,l_CENABJZMSL,l_CENABDSKPJ,l_CENABDSKPJSL
    from DODPOL__CalcCeny(l_MASTERID,a_TAXGID,a_MNOZSTVI,a_MNOZSTVIDSKP,a_POMER,a_CENA,a_CENASL,a_PRICEISFORSSI,a_CENAJEBEZDANI,a_CENAJEZAJEDNOTKU);

  perform admin_users.U_OPRAVA_P_RowUpdate('SEPTIMAPP','DODPOL',a_ID,'','');
  --- oprava DODPOL
  update DODPOL set SKLDID = a_SKLDID, SKPLID = a_SKPLID, TAXGID = a_TAXGID, DSKPID = a_DSKPID,
                    TRVAN = a_TRVAN, MNOZSTVI = a_MNOZSTVI, MNOZSTVIDSKP = a_MNOZSTVIDSKP, POMER = a_POMER, CALCPOMER = a_CALCPOMER,
                    SERNR = a_SERNR, CENA = a_CENA, CENASL = a_CENASL, CENAJEBEZDANI = a_CENAJEBEZDANI, CENAJEZAJEDNOTKU = a_CENAJEZAJEDNOTKU,
                    CENAB = l_CENAB, CENABSL = l_CENABSL, CENAS = l_CENAS, CENASSL = l_CENASSL,
                    CENABJ = l_CENABJ, CENABJSL = l_CENABJSL, CENABC = l_CENABC, CENABCSL = l_CENABCSL,
                    CENABJZM = l_CENABJZM, CENABJZMSL = l_CENABJZMSL, CENABDSKPJ = l_CENABDSKPJ, CENABDSKPJSL = l_CENABDSKPJSL,
                    SLEVAPROC = a_SLEVAPROC, ZKONTR = a_ZKONTR, PRICEISFORSSI = a_PRICEISFORSSI
    where DODPID = a_ID;

  -- prepocet dani
  perform DODPOLTAX_DODPOLUpdate(a_ID, a_FORCE);

  --- refresh DN prices
  perform DODAK_RefreshCeny(l_MASTERID);

  if l_ISREALIZED_DN then
    --- update stock levels
    perform ZASOBY_Zmen(a_SKLDID, a_SKPLID, a_MNOZSTVI, DODAK_GetNaskladneniDC(l_MASTERID), a_FORCE, l_SKLDID_OLD, l_SKPLID_OLD, l_MNOZSTVI_OLD);
    --- recalculate stock prices
    perform SKLADPOL_PrepoctiCenu(a_SKPLID,a_SKLDID,null);
  end if;

  --- kdyz doslo ke zmene polozky, tak prepoctu i cenu stare skladpol
  if l_SKPLID_OLD <> a_SKPLID then
    if l_ISREALIZED_DN then
      perform SKLADPOL_PrepoctiCenu(l_SKPLID_OLD, l_SKLDID_OLD, null);
    end if;
    -- zruseni vazby, protoze se zmenila skladova polozka
    perform DODOBJDODPOL_DODPOLDelete(a_ID, l_MNOZSTVI_OLD, a_FORCE, 39148);
  else
    perform DODOBJDODPOL_DODPOLUpdate(a_ID, a_MNOZSTVI, l_MNOZSTVI_OLD, a_SKLDID, l_SKLDID_OLD, a_FORCE);
  end if;

  perform U_OPRAVA_P_Finish();

end; $$;



select ASWDropProcedure('DODPOLUpdate');
create or replace function admin_septim.DODPOLUpdate(
  in a_ID                   IDINT,
  in a_DODSKLADPOL          NAZEVSTR,
  in a_POMER                KOEFICIENTFLT_LARGE,
  in a_CALCPOMER            BOOLBIT,
  in a_MNOZSTVIDSKP         MNOZSTVIFLT,
  in a_SKLADPOL             NAZEVSTR_NU,
  in a_SKLAD                NAZEVSTR_NU,
  in a_MNOZSTVI             MNOZSTVIFLT_NU,
  in a_TRVAN                DATUMCASTS_NU,
  in a_SLEVAPROC            KOEFICIENTFLT,
  in a_TAXGROUP             NAZEVSTR,
  in a_CENA                 CENAFLT,
  in a_CENASL               CENAFLT,
  in a_PRICEISFORSSI        VALUEBOOL,
  in a_CENAJEBEZDANI        BOOLBIT,
  in a_CENAJEZAJEDNOTKU     BOOLBIT,
  in a_SERNR                SERNRTXT,
  in a_ZKONTR               BOOLBIT_0,
  in a_FORCE                FORCETXT default null
) returns void
language plpgsql security definer as $$
declare
  l_MASTERID                REFIDINT;
  l_SKLDID                  REFIDINT;
  l_SKPLID                  REFIDINT;
  l_DSKPID                  REFIDINT;
  l_TAXGID                  REFIDINT;
  l_REALNASKL             DATUMCASTS;
  l_SKLDIDOLD               REFIDINT;
  l_ZKONTR                  BOOLBIT_0;
  l_ZAUCT                   BOOLBIT_0;
  l_UHRADA                  DATUMTS_NU;
  l_UPDATEPOMER             BOOLBIT;
  l_UPDATECALCPOMER         BOOLBIT;
  l_POMER                   KOEFICIENTFLT_LARGE;
  l_CALCPOMER               BOOLBIT;
  l_CREATERLDODSKLADPOLSKLADPOL BOOLBIT;
  l_ZKONTRPOL               BOOLBIT_0;
  l_ISREALIZED_DN           VALUEBOOL;
begin
  select
    DP.DODKID, DP.SKLDID, D.REALNASKL, D.ZKONTR, D.ZAUCT, D.UHRADA, DP.ZKONTR, D.REALNASKL is not null
  into
    l_MASTERID, l_SKLDIDOLD, l_REALNASKL, l_ZKONTR, l_ZAUCT, l_UHRADA, l_ZKONTRPOL, l_ISREALIZED_DN
  from
    DODPOL as DP
    join DODAK as D on DP.DODKID = D.DODKID
  where
    DP.DODPID = a_ID;

  select * into l_SKLDID from DODPOL__CheckSklad(a_SKLAD, l_ISREALIZED_DN);

  -- Permission checks
  -- Realized DN
  if l_ISREALIZED_DN then
    -- The storage is known, check the time permission related to storage
    if l_SKLDID is not null then
      perform SKLAD_CheckPerm2('SKLADPRIJMY\UPDDELDODKSKPL',l_REALNASKL,l_REALNASKL,l_SKLDIDOLD,l_SKLDID,0,a_ID,
                                            'DODPOL','SKLADPRIJMY\UPDDELDODKVLSKPL',l_MASTERID,'DODAK','SKLADPRIJMY\UPDDELVLDODKSKPL');
      if U_CheckPerm('SEPTIMAPP','SKLADZAKLAD\STRDUNLIMITED',-1) = false then
        perform SKLAD_StrediskaCheck(null,0,l_SKLDIDOLD);
        if l_SKLDIDOLD <> l_SKLDID then
          -- kontrola jenom kdyz se zmenil sklad, aby se zbytecne nevykonala 2x
          perform SKLAD_StrediskaCheck(null,0,l_SKLDID);
        end if;
      end if;
    -- The storage is not known, just a simple check
    else
      perform SKLAD_CheckPermNoTime('SKLADPRIJMY\UPDDELDODKSKPL', 0, null, 'DODPOL', null, l_MASTERID, 'DODAK', 'SKLADPRIJMY\UPDDELVLDODKSKPL');
    end if;
  -- Pending delivery note
  else
    perform SKLAD_CheckPermNoTime('SKLADPRIJMY\PENDINGDNITEMEDT', 0, null, 'DODPOL', null, l_MASTERID, 'DODAK', 'SKLADPRIJMY\PENDINGDNITEMOWNEREDT');
  end if;

  if (a_ZKONTR = true and l_ZKONTRPOL = false) or (a_ZKONTR = false and l_ZKONTRPOL = true) then
    -- nastaveni nebo zruseni ZKONTR
    perform SKLADPERM_TestFlagPerm('ZKONTR', a_ZKONTR, 'DODPOL', a_FORCE);
  end if;
  -- test spárování s fakturou
  perform DODAK_CheckSparovanSFakturou(l_MASTERID);
  --- test DODAK - ZKONTR, ZAUCT + ZKONTR u DODPOL
  perform SKLADPERM_CheckEditPerm(l_ZKONTR or l_ZKONTRPOL,l_ZAUCT);
  if l_UHRADA is not null then
    if CheckForce(a_FORCE,'UPRAVDODPOL') is null then
      perform ASWError(39146); --potvrdenie upravy dodacieho listu, ak ma vyplneny datum uhrazeni
    end if;
  end if;
  perform SKLADPERM_CheckFlag(l_ZKONTR,l_ZAUCT,true,1,a_FORCE);
  perform SKLADPERM_CheckFlag(l_ZKONTRPOL,false,false,1,a_FORCE);

  l_SKLDID := null;
  l_SKPLID := null;
  l_DSKPID := null;
  SELECT * INTO a_POMER,a_CALCPOMER,a_MNOZSTVIDSKP,a_SLEVAPROC,a_CENA,a_CENASL,l_DSKPID,l_SKPLID,l_SKLDID,l_TAXGID,l_UPDATEPOMER,l_UPDATECALCPOMER,l_CREATERLDODSKLADPOLSKLADPOL
    FROM admin_septim.DODPOL__Check(a_ID,l_MASTERID,a_DODSKLADPOL,a_POMER,a_CALCPOMER,a_MNOZSTVIDSKP,a_SKLADPOL,a_SKLAD,a_MNOZSTVI,a_TRVAN,a_SLEVAPROC,a_TAXGROUP,a_CENA,a_CENASL,a_CENAJEBEZDANI,a_CENAJEZAJEDNOTKU,
                                    a_SERNR,l_DSKPID,l_SKPLID,l_SKLDID,a_ZKONTR,a_FORCE);

  if (l_UPDATECALCPOMER = true) then
    -- aktualizace pocitani pomeru
    perform RLDODSKLADPOLSKLADPOL_DODOBJSKPLSetCalcPomer(l_DSKPID, l_SKPLID, a_CALCPOMER);
  elseif (l_CREATERLDODSKLADPOLSKLADPOL = true) or (l_UPDATEPOMER = true) then
    -- create a link or update ratio
    perform RLDODSKLADPOLSKLADPOL_DODOBJSKPLSetPomer(l_DSKPID, l_SKPLID, a_POMER, a_CALCPOMER);
  end if;

  -- kontrola pomeru
  if l_DSKPID is not null then
    select * into l_POMER, l_CALCPOMER from DODSKLADPOL_GetPomerExt(l_DSKPID, l_SKPLID);
    if l_POMER is null then
      -- bez vazby
      perform U_CheckPerm('SEPTIMAPP','SKLADPRIJMY\DODKSKPLNASKLADDODSKLADPOLBEZVAZBY',0);
    elseif (l_POMER <> a_POMER) or (l_CALCPOMER <> a_CALCPOMER) then
      -- jiny pomer
      perform U_CheckPerm('SEPTIMAPP','SKLADPRIJMY\DODKSKPLZMENITPOMERDODSKLADPOL',0);
    end if;
  end if;

  -- kontrola tolerance ceny
  perform DODPOL__CheckMnozstviCena (
    a_ID, l_MASTERID, null, l_SKPLID, l_SKLDID, l_DSKPID, l_TAXGID, a_MNOZSTVI, a_MNOZSTVIDSKP, a_POMER, a_CENA, a_CENASL, a_PRICEISFORSSI, a_CENAJEBEZDANI, a_CENAJEZAJEDNOTKU, a_FORCE
  );

  perform DODPOL__BasicUpdate(a_ID, l_DSKPID, a_POMER, a_CALCPOMER, a_MNOZSTVIDSKP, l_SKPLID, l_SKLDID, a_MNOZSTVI, a_TRVAN, a_SLEVAPROC, l_TAXGID,
                                           a_CENA, a_CENASL, a_PRICEISFORSSI, a_CENAJEBEZDANI, a_CENAJEZAJEDNOTKU, a_SERNR, a_ZKONTR, a_FORCE);
end; $$;

select grant_func('DODPOLUpdate', 'SPEXEC');


select ASWDropProcedure('DODPOLSETSTORAGE__GetDodak');
create or replace function admin_septim.DODPOLSETSTORAGE__GetDodak(
  in a_IDLIST              IDINTARR
) returns REFIDINT
language plpgsql security definer as $$
begin
  -- MasterID is the same for all delivery items as for the first one
  return DP.DODKID from DODPOL as DP where DP.DODPID = a_IDLIST[1];
end; $$;


select ASWDropProcedure('DODPOL_SetStorage');
create or replace function admin_septim.DODPOL_SetStorage(
  in a_ID                  IDINT,
  in a_SKLDID              REFIDINT
) returns void
language plpgsql security definer as $$
begin
  perform admin_users.U_OPRAVA_P_RowUpdate('SEPTIMAPP','DODPOL',a_ID,'','');
  update DODPOL set SKLDID = a_SKLDID where DODPID = a_ID;
end; $$;


select ASWDropProcedure('DODPOLSETSTORAGEMultiGet');
create or replace function admin_septim.DODPOLSETSTORAGEMultiGet(
  in a_IDLIST              IDINTARR
) returns void
language plpgsql security definer as $$
declare
  l_MASTERID               REFIDINT;
begin
  if coalesce(cardinality(a_IDLIST), 0) = 0 then
    perform admin_base.ASWError(39190);
  end if;
  select DODPOLSETSTORAGE__GetDodak(a_IDLIST) into l_MASTERID;
  perform SKLAD_CheckPermNoTime('SKLADPRIJMY\PENDINGDNITEMEDT', 0, null, 'DODPOL', null, l_MASTERID, 'DODAK', 'SKLADPRIJMY\PENDINGDNITEMOWNEREDT');
end; $$;

select grant_func('DODPOLSETSTORAGEMultiGet', 'SPEXEC');


select ASWDropProcedure('DODPOLSETSTORAGEMultiExec');
create or replace function admin_septim.DODPOLSETSTORAGEMultiExec(
  in a_IDLIST              IDINTARR,
  in a_SKLAD               NAZEVSTR
) returns void
language plpgsql security definer as $$
declare
  l_DODPID                 IDINT;
  l_SKLDID                 REFIDINT;
  l_MASTERID               REFIDINT;
begin
  if coalesce(cardinality(a_IDLIST), 0) = 0 then
    perform admin_base.ASWError(39190);
  end if;
  select DODPOL__CheckSklad(a_SKLAD, true) into l_SKLDID;
  perform SKLAD_StrediskaCheck('SKLADZAKLAD\STRDUNLIMITED', 0, l_SKLDID);
  select DODPOLSETSTORAGE__GetDodak(a_IDLIST) into l_MASTERID;
  perform SKLAD_CheckPermNoTime('SKLADPRIJMY\PENDINGDNITEMEDT', 0, null, 'DODPOL', null, l_MASTERID, 'DODAK', 'SKLADPRIJMY\PENDINGDNITEMOWNEREDT');

  for l_DODPID in (select unnest(a_IDLIST)) loop
    perform DODPOL_SetStorage(l_DODPID, l_SKLDID);
  end loop;
end; $$;

select grant_func('DODPOLSETSTORAGEMultiExec', 'SPEXEC');


select ASWDropProcedure('DODPOLDelete');
/**
* Dokumentace k chování ZASOBY_ZMEN je u ZASOBY_ZMEN
*/
create or replace function admin_septim.DODPOLDelete(
  in a_ID                  IDINT,
  in a_FORCE               FORCETXT default null
) returns void
language plpgsql security definer as $$
declare
  l_SKLDID                 REFIDINT;
  l_REALNASKL              DATUMCASTS;
  l_MASTERID               REFIDINT;
  l_MENAID                 REFIDINT;
  l_ZKONTR                 BOOLBIT_0;
  l_ZAUCT                  BOOLBIT_0;
  l_UHRADA                 DATUMTS_NU;
  l_TAXDIDLIST             int[];
  l_ZKONTRPOL              BOOLBIT_0;
  l_ISREALIZED_DN          BOOLBIT;
begin
  -- ziskani informaci o DODPOL a DODAKu
  select
    DP.DODKID, DP.SKLDID, D.REALNASKL, D.MENAID, D.ZKONTR, D.ZAUCT, D.UHRADA, DP.ZKONTR, D.REALNASKL is not null
  into
    l_MASTERID, l_SKLDID, l_REALNASKL, l_MENAID, l_ZKONTR, l_ZAUCT, l_UHRADA, l_ZKONTRPOL, l_ISREALIZED_DN
  from
    DODPOL as DP
    join DODAK as D on DP.DODKID = D.DODKID
  where
    DP.DODPID = a_ID;

  -- Permission checks
  -- Realized DN
  if l_ISREALIZED_DN then
    -- The storage is known, check the time permission related to storage
    if l_SKLDID is not null then
      perform SKLAD_CheckPerm('SKLADPRIJMY\UPDDELDODKSKPL', l_REALNASKL, l_SKLDID, 0, a_ID, 'DODPOL',
                                           'SKLADPRIJMY\UPDDELDODKVLSKPL', l_MASTERID, 'DODAK', 'SKLADPRIJMY\UPDDELVLDODKSKPL');
      perform SKLAD_StrediskaCheck('SKLADZAKLAD\STRDUNLIMITED', 0, l_SKLDID);

      -- The storage is not known, just a simple check
    else
      perform SKLAD_CheckPermNoTime('SKLADPRIJMY\UPDDELDODKSKPL', 0, null, 'DODPOL', null, l_MASTERID, 'DODAK', 'SKLADPRIJMY\UPDDELVLDODKSKPL');
    end if;
  -- Pending delivery note
  else
    perform SKLAD_CheckPermNoTime('SKLADPRIJMY\PENDINGDNITEMEDT', 0, null, 'DODPOL', null, l_MASTERID, 'DODAK', 'SKLADPRIJMY\PENDINGDNITEMOWNEREDT');
  end if;

  if l_MENAID <> MENA_ZAKLADNIMENAGETID() then
    --- test licence, zda lze editovat dod. list v cizí měně
    perform admin_base.B_LIMITS_CheckLicence('SEPTIMAPP','DODAKCIZIMENA',1,39143);
  end if;
  -- test spárování s fakturou
  perform admin_septim.DODAK_CheckSparovanSFakturou(l_MASTERID);
  --- test DODAK - ZKONTR, ZAUCT + ZKONTR u DODPOL
  perform admin_septim.SKLADPERM_CheckEditPerm(l_ZKONTR or l_ZKONTRPOL,l_ZAUCT);
  if l_UHRADA is not null then
    if admin_eng.CheckForce(a_FORCE,'UPRAVDODPOL') is null then
      perform admin_base.ASWError(39146); --potvrdenie upravy dodacieho listu, ak ma vyplneny datum uhrazeni
    end if;
  end if;
  perform admin_septim.SKLADPERM_CheckFlag(l_ZKONTR,l_ZAUCT,true,2,a_FORCE);
  perform admin_septim.SKLADPERM_CheckFlag(l_ZKONTRPOL,false,false,2,a_FORCE);

  -- uložení všech TAXDID smazané položky
  select array(select cast(TAXDID as int) TAXDID
    from DODPOLTAX
    where DODPID = a_ID
    group by TAXDID
  ) into l_TAXDIDLIST;

  perform DODPOL__Delete(a_ID, a_FORCE);

  -- smazani nadbytečných DODAKTAX
  perform admin_septim.DODAKTAX_DeleteUnused(l_MASTERID);

  -- upozornění na změny v daních
  perform admin_septim.DODAKTAX_CheckZmenyList(l_MASTERID, l_TAXDIDLIST, a_FORCE);

  -- refresh ceny v dodaku
  perform admin_septim.DODAK_RefreshCeny(l_MASTERID);
end; $$;

select grant_func('DODPOLDelete', 'SPEXEC');


select ASWDropProcedure('DODPOL__Delete');
/**
* Funkce pro smazani polozky dodaciho listu vcetne vazby DODOBJDODPOL.
*/
create or replace function admin_septim.DODPOL__Delete(
  in a_ID                 IDINT,
  in a_FORCE              FORCETXT,
  in a_MULTIOPERACE       BOOLBIT default false
) returns void
language plpgsql security definer as $$
declare
  l_SKLDID                 REFIDINT;
  l_SKPLID                 REFIDINT;
  l_NASKLADNENI            DATUMCASTS;
  l_MNOZSTVI               MNOZSTVIFLT;
  l_MASTERID               REFIDINT;
  l_ISREALIZED_DN          BOOLBIT;
begin
  -- ziskani informaci o DODPOL a DODAKu
  select
    DP.DODKID, DP.SKLDID, DP.SKPLID, DP.MNOZSTVI, coalesce(D.REALNASKL,D.PLANNASKL), D.REALNASKL is not null
  into
    l_MASTERID, l_SKLDID, l_SKPLID, l_MNOZSTVI, l_NASKLADNENI, l_ISREALIZED_DN
  from
    DODPOL as DP
    join DODAK as D on DP.DODKID = D.DODKID
  where
    DP.DODPID = a_ID;

  -- otestovani referencni integrity
  perform admin_base.B_RI('SEPTIMAPP','DODPOL',a_ID,'DODOBJDODPOL,DODPOLTAX',0,0);

  perform admin_septim.DODOBJDODPOL_DODPOLDelete(a_ID,l_MNOZSTVI,a_FORCE,39147,a_MULTIOPERACE);

  -- DODPOLTAX se neresi, protoze nema SMAZAN
  perform admin_users.U_OPRAVA_P_RowDelete('SEPTIMAPP','DODPOL',a_ID,'','');

  if l_ISREALIZED_DN then
    -- change stock levels
    perform admin_septim.ZASOBY_Zmen(l_SKLDID,l_SKPLID,-l_MNOZSTVI,l_NASKLADNENI,a_FORCE);
    -- recalculate stock prices
    perform admin_septim.SKLADPOL_PrepoctiCenu(l_SKPLID,l_SKLDID,null);
  end if;
  perform admin_users.U_OPRAVA_P_Finish();
end; $$;


select ASWDropProcedure('DODPOLGet');
drop type if exists admin_septim.DODPOLGet_rs cascade;
create type admin_septim.DODPOLGet_rs as (
  "@DodSkladPolPanel"       INTEGER,
  DODSKLADPOL               NAZEVSTR,
  "#DODSKLADPOL"            CISLOINT,
  JEDNOTKYDSKP              JEDNOTKYSTR,
  POMER                     KOEFICIENTFLT_LARGENU,
  "#POMER"                  CISLOINT,
  CALCPOMER                 BOOLBIT_NU,
  "#CALCPOMER"              CISLOINT,
  MNOZSTVIDSKP              MNOZSTVIFLT_NU,
  "#MNOZSTVIDSKP"           CISLOINT,
  SKLADPOL                  NAZEVSTR,
  "#SKLADPOL"               CISLOINT,
  "@btnReadBarCode"         CISLOINT,
  SKLAD                     NAZEVSTR,
  "#SKLAD"                  CISLOINT,
  MNOZSTVI                  MNOZSTVIFLT_NU,
  JEDNOTKY                  JEDNOTKYSTR_R,
  TRVAN                     DATUMCASTS_NU,
  "#TRVAN"                  INTEGER,
  OBJEDNANO                 B_VALUETXT,
  DODANO                    B_VALUETXT,
  ZASOBY                    VALUETXT,
  AKTCENAS                  B_VALUETXT,
  SLEVAPROC                 KOEFICIENTFLT,
  "#SLEVAPROC"              INTEGER,
  TAXGROUP                  NAZEVSTR,
  CENA                      CENAFLT,
  CENASL                    CENAFLT,
  PRICEISFORSSI             VALUEBOOL,
  "#PRICEISFORSSI"          INTEGER,
  CENAJEBEZDANI             BOOLBIT,
  CENAJEZAJEDNOTKU          BOOLBIT,
  MENAZKR                   ZKRATKASTR_R,
  CENAB                     B_VALUETXT,
  CENABSL                   B_VALUETXT,
  CENAS                     B_VALUETXT,
  CENASSL                   B_VALUETXT,
  CENABJ                    B_VALUETXT,
  CENABJSL                  B_VALUETXT,
  CENABC                    B_VALUETXT,
  CENABCSL                  B_VALUETXT,
  CENABDSKPJ                B_VALUETXT,
  CENABDSKPJSL              B_VALUETXT,
  CENABJZM                  B_VALUETXT,
  CENABJZMSL                B_VALUETXT,
  SERNR                     SERNRTXT,
  ZKONTR                    BOOLBIT_0,
  "@lblJednotkovaCenaDSKP"  INTEGER,
  "@edblblCenaBDSKPJ"       INTEGER,
  "@edblblCenaBDSKPJSL"     INTEGER,
  "$MODIFIED"               INTEGER
);

create or replace function admin_septim.DODPOLGet(
  in a_ID                  IDINT,
  in a_FORCE               FORCETXT default null
) returns setof admin_septim.DODPOLGet_rs
language plpgsql security definer as $$
declare
  l_PARMID                 REFIDINT;
  l_ZADTRVAN               BOOLBIT;
  l_ZADSLEVA               BOOLBIT;
  l_USEDODSKLADPOL         BOOLBIT;
  c_KAPPID                 INTEGER;
  l_EDITABLE               CISLOINT;
  l_OBJEDNANO              MNOZSTVIFLT;
  l_DODANO                 MNOZSTVIFLT;
  l_ISREALIZED_DN          BOOLBIT;
  l_SKPLID                 REFIDINT_NU;
  l_DSKPID                 REFIDINT_NU;
  l_PAIREDSKLADPOL         NAZEVSTR;
  l_POMER                  KOEFICIENTFLT_LARGENU;
  l_CALCPOMER              BOOLBIT_0;
  l_RLPOMER                KOEFICIENTFLT_LARGE;
  l_RLCALCPOMER            BOOLBIT_0;
  l_ZAOKROUHLENI           CISLOINT;
  l_MNOZSTVI               MNOZSTVIFLT_NU;
  l_MNOZSTVIDSKP           MNOZSTVIFLT_NU;
begin
  c_KAPPID := SESSIONVarGet('c_KAPPID');
  l_PARMID := KLIENTAPP_GetParamID(c_KAPPID);
  l_ZADTRVAN := P_GetParam(l_PARMID,'ZADANIDODLIST','ZADTRVANLIVOST');
  l_ZADSLEVA := P_GetParam(l_PARMID,'ZADANIDODLIST','ZADSLEVA');

  -- pouzivani DODSKLADPOL dle GP
  l_USEDODSKLADPOL := P_GetGlobalParamBOOL('SKLAD','DODPOL_USEDODSKLADPOL');

  -- If it is paired with order item
  if DODPOL__JeSparovana(a_ID) then
    l_EDITABLE := 0;
  else
    l_EDITABLE := 1;
  end if;
  select * into l_OBJEDNANO, l_DODANO from DODPOL__GetObjednanoDodano(a_ID);

  select
    SKPLID, DSKPID, DODAK_IsRealized(DODKID), POMER, CALCPOMER, MNOZSTVI, MNOZSTVIDSKP
  into
    l_SKPLID, l_DSKPID, l_ISREALIZED_DN, l_POMER, l_CALCPOMER, l_MNOZSTVI, l_MNOZSTVIDSKP
  from
    DODPOL
  where
    DODPID = a_ID;

  -- If only supplier stock item is filled in, and not internal stock item, try to find a matching ISI
  if not l_ISREALIZED_DN and coalesce (l_SKPLID, l_MNOZSTVI) is null then
    select SKPLID, ISINAME, AMOUNT, RATIO, CALCRATIO
      into l_SKPLID, l_PAIREDSKLADPOL, l_MNOZSTVI, l_POMER, l_CALCPOMER
    from DODPOL_FindRelatedISI (l_DSKPID, l_POMER, l_MNOZSTVIDSKP, l_CALCPOMER, a_FORCE);
  end if;

  return query select
      -- DODSKLADPOL
      (case when DP.DSKPID is not null or l_USEDODSKLADPOL then 1 else -1 end) "@DodSkladPolPanel",
      DSP.NAZEV as DODSKLADPOL, l_EDITABLE as "#DODSKLADPOL",
      DSP.JEDNOTKY as JEDNOTKYDSKP,
      l_POMER as POMER, cast((case when (DP.DSKPID is null and l_EDITABLE = 1 and DP.CALCPOMER = false) or (DP.DSKPID is not null and DP.CALCPOMER = false) then 1 else 0 end) as CISLOINT) as "#POMER",
      DP.CALCPOMER, cast((case when DP.DSKPID is null then l_EDITABLE else 1 end) as CISLOINT) as "#CALCPOMER",
      DP.MNOZSTVIDSKP, cast((case when DP.DSKPID is null then l_EDITABLE else 1 end) as CISLOINT) as "#MNOZSTVIDSKP",
      -- SKLADPOL
      coalesce(SP.NAZEV, l_PAIREDSKLADPOL) as SKLADPOL, l_EDITABLE as "#SKLADPOL", l_EDITABLE as "@btnReadBarCode",
      SK.NAZEV as SKLAD, SKLAD_GetEdtVisibility(0, l_EDITABLE) as "#SKLAD",
      l_MNOZSTVI as MNOZSTVI, SP.JEDNOTKY,
      DP.TRVAN, cast(l_ZADTRVAN as INTEGER) as "#TRVAN",
      B_FormatStr('%.2f', l_OBJEDNANO) as OBJEDNANO, B_FormatStr('%.2f', l_DODANO) as DODANO,
      DODPOL__GetZasobyTxt(DP.SKPLID, DP.SKLDID) as ZASOBY,
      MENA_FormatDefaultMena(SKLADPOL_GetSkladCena(DP.SKPLID, DP.SKLDID)) as AKTCENAS,
      -- CENY
      DP.SLEVAPROC, cast(l_ZADSLEVA as INTEGER) as "#SLEVAPROC", TG.NAME as TAXGROUP, DP.CENA, DP.CENASL,
      DP.PRICEISFORSSI,
      cast(DODPOL__PriceForSSIIsEnabled(DSP.NAZEV, SK.NAZEV) as INTEGER) as "#PRICEISFORSSI",
      DP.CENAJEBEZDANI, DP.CENAJEZAJEDNOTKU, M.ZKRATKA as MENAZKR,
      MENA_FormatMena(DP.CENAB, M.MENAID) as CENAB,  MENA_FormatMena(DP.CENABSL, M.MENAID) as CENABSL,
      MENA_FormatMena(DP.CENAS, M.MENAID) as CENAS,  MENA_FormatMena(DP.CENASSL, M.MENAID) as CENASSL,
      MENA_FormatMena(DP.CENABJ, M.MENAID) as CENABJ, MENA_FormatMena(DP.CENABJSL, M.MENAID) as CENABJSL,
      MENA_FormatMena(DP.CENABC, M.MENAID) as CENABC, MENA_FormatMena(DP.CENABCSL, M.MENAID) as CENABCSL,
      cast(case when DP.CENABDSKPJ is not null then MENA_FormatMena(DP.CENABDSKPJ, M.MENAID) end as B_VALUETXT) as CENABDSKPJ,
      cast(case when DP.CENABDSKPJSL is not null then MENA_FormatMena(DP.CENABDSKPJSL, M.MENAID) end as B_VALUETXT) as CENABDSKPJSL,
      MENA_FormatDefaultMena(DP.CENABJZM) as CENABJZM,  MENA_FormatDefaultMena(DP.CENABJZMSL) as CENABJZMSL,
      DP.SERNR, DP.ZKONTR,
      (case when DP.DSKPID is not null or l_USEDODSKLADPOL=true then 1 else -1 end) "@lblJednotkovaCenaDSKP",
      (case when DP.DSKPID is not null or l_USEDODSKLADPOL=true then 1 else -1 end) "@edblblCenaBDSKPJ",
      (case when DP.DSKPID is not null or l_USEDODSKLADPOL=true then 1 else -1 end) "@edblblCenaBDSKPJSL",
      cast( l_PAIREDSKLADPOL is not null as INTEGER) as "$MODIFIED"
    from DODPOL as DP
      left outer join SKLADPOL as SP on DP.SKPLID = SP.SKPLID
      left outer join SKLAD as SK on DP.SKLDID = SK.SKLDID
      join TAXGROUP as TG on DP.TAXGID = TG.TAXGID
      join DODAK as D on DP.DODKID = D.DODKID
      join MENA as M on D.MENAID = M.MENAID
      left outer join DODSKLADPOL as DSP on DP.DSKPID = DSP.DSKPID
    where DP.DODPID = a_ID;
end; $$;

select grant_func('DODPOLGet', 'SPEXEC');


select ASWDropProcedure('DODPOL_FindRelatedISI');
drop type if exists admin_septim.DODPOL_FindRelatedISI_rs;
create type admin_septim.DODPOL_FindRelatedISI_rs as (
  SKPLID                   REFIDINT,
  ISINAME                  NAMESTR,
  AMOUNT                   AMOUNTFLT,
  RATIO                    KOEFICIENTFLT,
  CALCRATIO                VALUEBOOL
);

create or replace function admin_septim.DODPOL_FindRelatedISI (
  in a_DSKPID              REFIDINT,
  in a_DNRATIO             KOEFICIENTFLT,
  in a_SSIAMOUNT           AMOUNTFLT,
  in a_DNCALCRATIO         VALUEBOOL,
  in a_FORCE               FORCETXT
) returns DODPOL_FindRelatedISI_rs
language plpgsql security definer as $$
declare
  l_RESULT                 DODPOL_FindRelatedISI_rs;
  l_SKPLID                 REFIDINT_NU;
  l_FORCERESULT            NUMBERINT;
begin

  -- Try to find matching internal stock item
  l_SKPLID := DODSKLADPOL_GetMostSuitableSkladPolID(a_DSKPID);
  l_RESULT.RATIO := a_DNRATIO;
  l_RESULT.CALCRATIO := a_DNCALCRATIO;

  -- It looks, that it has been found
  if l_SKPLID is not null then
    l_FORCERESULT := CheckForce(a_FORCE, 'DODPOLLINKEDSKPL');

    -- No confirmation was given yet, so ask for it
    if l_FORCERESULT is null then

      perform ASWError(39124, cast(array[DODSKLADPOL_GetNazev(a_DSKPID), SKLADPOL_GetNazev(l_SKPLID)] as text[]));

    -- Confirmed
    elsif l_FORCERESULT = 1 then

      -- Try to get a ratio between SSI and ISI
      if a_DNRATIO is null then
        select
          D.a_POMER, D.a_CALCPOMER
        into
         l_RESULT.RATIO, l_RESULT.CALCRATIO
        from
          DODSKLADPOL_GetPomerExt(a_DSKPID, l_SKPLID) as D;
      end if;

      -- try to calculate ISI quantity
      if l_RESULT.RATIO is not null then
        l_RESULT.AMOUNT := a_SSIAMOUNT * l_RESULT.RATIO;
      end if;

      l_RESULT.ISINAME := SKLADPOL_GetNazev(l_SKPLID, false);
      l_RESULT.SKPLID := l_SKPLID;

    end if;

  end if;

  return l_RESULT;

end; $$;



select ASWDropProcedure('DODPOLDefault');
drop type if exists admin_septim.DODPOLDefault_rs cascade;
create type admin_septim.DODPOLDefault_rs as (
  "@DodSkladPolPanel"       INTEGER,
  SKLAD                     NAZEVSTR,
  "#SKLAD"                  CISLOINT,
  TRVAN                     DATE,
  "#TRVAN"                  INTEGER,
  SLEVAPROC                 KOEFICIENTFLT,
  "#SLEVAPROC"              INTEGER,
  OBJEDNANO                 B_VALUETXT,
  DODANO                    B_VALUETXT,
  ZASOBY                    VALUETXT,
  AKTCENAS                  B_VALUETXT,
  CENA                      CENAFLT,
  CENASL                    CENAFLT,
  PRICEISFORSSI             VALUEBOOL,
  "#PRICEISFORSSI"          INTEGER,
  CENAJEBEZDANI             BOOLBIT,
  CENAJEZAJEDNOTKU          BOOLBIT,
  MENAZKR                   ZKRATKASTR_R,
  CENAB                     B_VALUETXT,
  CENABSL                   B_VALUETXT,
  CENAS                     B_VALUETXT,
  CENASSL                   B_VALUETXT,
  CENABJ                    B_VALUETXT,
  CENABJSL                  B_VALUETXT,
  CENABC                    B_VALUETXT,
  CENABCSL                  B_VALUETXT,
  CENABDSKPJ                B_VALUETXT,
  CENABDSKPJSL              B_VALUETXT,
  CENABJZM                  B_VALUETXT,
  CENABJZMSL                B_VALUETXT,
  "@lblJednotkovaCenaDSKP"  INTEGER,
  "@edblblCenaBDSKPJ"       INTEGER,
  "@edblblCenaBDSKPJSL"     INTEGER,
  "$FOCUS"                  NAZEVSTR
);

create or replace function admin_septim.DODPOLDefault(
  in a_ID                  IDINT,
  in a_MASTERID            IDINT
) returns setof admin_septim.DODPOLDefault_rs
language plpgsql security definer as $$
declare
  l_SLEVAPROC              KOEFICIENTFLT;
  l_MENAID                 REFIDINT;
  l_NASKLADNENI            DATUMCASTS;
  l_ZKONTR                 BOOLBIT_0;
  l_ZAUCT                  BOOLBIT_0;
  l_SKLDID                 REFIDINT;
  l_SKLAD                  NAZEVSTR;
  l_SKLADKLIC              KLICSTR;
  l_PARMID                 REFIDINT;
  l_TRVAN                  CISLOINT;
  l_ZADTRVAN               BOOLBIT;
  l_ZADSLEVA               BOOLBIT;
  c_KAPPID                 INTEGER;
  l_USEDODSKLADPOL         BOOLBIT;
  l_CENAJEBEZDANI          BOOLBIT;
  l_CENAJEZAJEDNOTKU       BOOLBIT;
  l_FOCUSFIELD             NAZEVSTR;
  l_DODVID                 REFIDINT;
  l_UZIVID                 REFIDINT;
  l_TABLID                 REFIDINT;
  l_ISREALIZED_DN          BOOLBIT;
begin

  select
    SLEVAPROC, MENAID, coalesce(REALNASKL,PLANNASKL), ZKONTR, ZAUCT, DODVID, REALNASKL is not null
  into
    l_SLEVAPROC, l_MENAID, l_NASKLADNENI, l_ZKONTR, l_ZAUCT, l_DODVID, l_ISREALIZED_DN
  from
    DODAK
  where
    DODKID = a_MASTERID;

  --- test opravneni
  -- nekontroluji casove opravneni, protoze neznam sklad
  if l_ISREALIZED_DN then
    perform SKLAD_CheckPermNoTime('SKLADPRIJMY\INSDODKSKPL', 0, null, 'DODPOL', null, a_MASTERID, 'DODAK', 'SKLADPRIJMY\INSVLDODKSKPL');
  else
    perform SKLAD_CheckPermNoTime('SKLADPRIJMY\INSDODKSKPL', 0, null, 'DODPOL', null, a_MASTERID, 'DODAK', 'SKLADPRIJMY\INSVLDODKSKPL');
  end if;
  -- test spárování s fakturou
  perform DODAK_CheckSparovanSFakturou(a_MASTERID);
  --- test DODAK - ZKONTR, ZAUCT
  perform SKLADPERM_CheckEditPerm(l_ZKONTR,l_ZAUCT);

  -- currently logged user
  l_UZIVID := U_GetUZIVID();

  select TABLID into l_TABLID from B_TABLE where KLIC = 'SEPTIMAPP\DODPOL';

  -- get the last item from the same delivery note. First of all, restriction by the currently logged user is applied
  select
    D.SKLDID, D.CENAJEBEZDANI, D.CENAJEZAJEDNOTKU
  into
    l_SKLDID, l_CENAJEBEZDANI, l_CENAJEZAJEDNOTKU
  from
    DODPOL D
    left join U_OPRAVA_UZIVINSERT_V O on O.NEWID = D.DODPID and O.TABLID = l_TABLID and O._UZIVID = l_UZIVID and O.DT > (localtimestamp - interval '1 day' * 7)
  where
    D.DODKID = a_MASTERID
    and D.SMAZAN = 0
  order by
    O.NEWID desc nulls last, D.DODPID desc limit 1;

  -- If not found we get values from the last item of the previous delivery note for the same supplierю
  -- Also restriction by currently logged user is applied
  if not found then
    select
      D.SKLDID, D.CENAJEBEZDANI, D.CENAJEZAJEDNOTKU
    into
      l_SKLDID, l_CENAJEBEZDANI, l_CENAJEZAJEDNOTKU
    from
      DODPOL D
      join DODAK as DOD on DOD.DODKID = D.DODKID
      left join U_OPRAVA_UZIVINSERT_V O on O.NEWID = D.DODPID and O.TABLID = l_TABLID and O._UZIVID = l_UZIVID and O.DT > (localtimestamp - interval '1 day' * 7)
    where
      D.SMAZAN = 0
      and DOD.SMAZAN = 0
      and DOD.DODVID = l_DODVID
    order by
      O.NEWID desc nulls last, D.DODPID desc limit 1;
  end if;

  if not P_GetGlobalParamBOOL('SKLAD', 'DODPOL_SKLADDLEPREDCHOZIPOLOZKY') then
    l_SKLDID := null;
  end if;

  if l_SKLDID is not null then
    -- sklad z posledni polozky dodaku
    l_SKLAD := SKLAD_GetNazev(l_SKLDID);
  else
    -- default sklad dle GP
    l_SKLADKLIC := P_GetGlobalParam('SKLAD','DEFAULTSKLAD');
    l_SKLAD := SKLAD_GetNazevByKlic(l_SKLADKLIC);
  end if;
  l_SKLAD := coalesce(SKLAD_GetNazevDef(),l_SKLAD);

  c_KAPPID := SESSIONVarGet('c_KAPPID');
  l_PARMID := KLIENTAPP_GetParamID(c_KAPPID);
  l_TRVAN := P_GetParam(l_PARMID,'ZADANIDODLIST','DEFTRVANLIVOST');
  l_ZADTRVAN := P_GetParam(l_PARMID,'ZADANIDODLIST','ZADTRVANLIVOST');
  l_ZADSLEVA := P_GetParam(l_PARMID,'ZADANIDODLIST','ZADSLEVA');

  -- pouzivani DODSKLADPOL dle GP
  l_USEDODSKLADPOL := P_GetGlobalParamBOOL('SKLAD','DODPOL_USEDODSKLADPOL');

  -- Find the focus field
  -- If supplier stock items are used, it depends on the previously created items
  if l_USEDODSKLADPOL then
    -- 1. Based on the previous item for the same delivery note
    -- 2. Based on the previous item for any delyvery note
    -- 3. Default
    begin
      select case when DSKPID is null then 'SKLADPOL' else 'DODSKLADPOL' end
      into strict l_FOCUSFIELD
      from DODPOL
      where SMAZAN = 0 and DODKID = a_MASTERID
      order by DODPID desc limit 1;
    exception
      when NO_DATA_FOUND then
        begin
          select case when DSKPID is null then 'SKLADPOL' else 'DODSKLADPOL' end
          into strict l_FOCUSFIELD
          from DODPOL
          where SMAZAN = 0
          order by DODPID desc limit 1;
        exception
          when NO_DATA_FOUND then
            l_FOCUSFIELD := 'DODSKLADPOL';
          end;
    end;
  -- If supplier stock items are not used
  else
    l_FOCUSFIELD := 'SKLADPOL';
  end if;

  return query select
    -- DODSKLADPOL
    (case when l_USEDODSKLADPOL then 1 else -1 end) as "@DodSkladPolPanel",
    -- SKLADPOL
    l_SKLAD as SKLAD,SKLAD_GetEdtVisibility(0) as "#SKLAD",
    cast(localtimestamp + interval '1 day' * l_TRVAN AS DATE) as TRVAN,
    cast(l_ZADTRVAN as INTEGER) as "#TRVAN",
    -- CENY
    l_SLEVAPROC as SLEVAPROC, cast(l_ZADSLEVA as INTEGER) as "#SLEVAPROC",
    B_FormatStr('%.2f', 0) as OBJEDNANO, B_FormatStr('%.2f', 0) as DODANO,
    DODPOL__GetZasobyTxt(null, null) as ZASOBY, MENA_FormatDefaultMena(0.0) as AKTCENAS,
    cast(0 as CENAFLT) as CENA, cast(0 as CENAFLT) as CENASL,
    cast(false as VALUEBOOL) as PRICEISFORSSI,
    case when l_USEDODSKLADPOL then 0 else -1 end as "#PRICEISFORSSI",
    cast(coalesce(l_CENAJEBEZDANI, true) as BOOLBIT) as CENAJEBEZDANI, cast(coalesce(l_CENAJEZAJEDNOTKU, false) as BOOLBIT) as CENAJEZAJEDNOTKU,
    MENA_GetZkratka(l_MENAID) as MENAZKR,
    MENA_FormatMena(0.0, l_MENAID) as CENAB,  MENA_FormatMena(0.0, l_MENAID) as CENABSL,
    MENA_FormatMena(0.0, l_MENAID) as CENAS,  MENA_FormatMena(0.0, l_MENAID) as CENASSL,
    MENA_FormatMena(0.0, l_MENAID) as CENABJ, MENA_FormatMena(0.0, l_MENAID) as CENABJSL,
    MENA_FormatMena(0.0, l_MENAID) as CENABC, MENA_FormatMena(0.0, l_MENAID) as CENABCSL,
    MENA_FormatMena(0.0, l_MENAID) as CENABDSKPJ, MENA_FormatMena(0.0, l_MENAID) as CENABDSKPJSL,
    MENA_FormatDefaultMena(0.0) as CENABJZM,  MENA_FormatDefaultMena(0.0) as CENABJZMSL,
    (case when l_USEDODSKLADPOL then 1 else -1 end) as "@lblJednotkovaCenaDSKP",
    (case when l_USEDODSKLADPOL then 1 else -1 end) as "@edblblCenaBDSKPJ",
    (case when l_USEDODSKLADPOL then 1 else -1 end) as "@edblblCenaBDSKPJSL",
    l_FOCUSFIELD as "$FOCUS";
end; $$;

select grant_func('DODPOLDefault', 'SPEXEC');


select ASWDropProcedure('DODPOL__CheckSklad');
create or replace function admin_septim.DODPOL__CheckSklad(
  in  a_SKLAD              NAZEVSTR,
  in  a_MANDATORY          VALUEBOOL,
  out a_SKLDID             REFIDINT_NU
)
language plpgsql security definer as $$
begin
  if a_MANDATORY then
    perform B_NULL_STR('SKLAD',a_SKLAD,39102);
  else
    if coalesce(a_SKLAD, '') = '' then
      return;
    end if;
  end if;
  select B_REFTABLE_EX.a_ID into a_SKLDID from admin_base.B_REFTABLE_EX('SEPTIMAPP','SKLAD','NAZEV','ZKRATKA',a_SKLAD,39103,'SKLAD');
end; $$;



select ASWDropProcedure('DODPOL__Check');
/*
* There are some abbreviation in comments:
*  ISI - internal stock item
*  SSI - supplier stock item
*/
create or replace function admin_septim.DODPOL__Check(
  in    a_ID                IDINT,
  in    a_MASTERID          IDINT,
  in    a_DODSKLADPOL       NAZEVSTR,
  inout a_POMER             KOEFICIENTFLT_LARGE,
  inout a_CALCPOMER         BOOLBIT,
  inout a_MNOZSTVIDSKP      MNOZSTVIFLT,
  in    a_SKLADPOL          NAZEVSTR_NU,
  in    a_SKLAD             NAZEVSTR_NU,
  in    a_MNOZSTVI          MNOZSTVIFLT_NU,
  in    a_TRVAN             DATUMCASTS_NU,
  inout a_SLEVAPROC         KOEFICIENTFLT,
  in    a_TAXGROUP          NAZEVSTR,
  inout a_CENA              CENAFLT,
  inout a_CENASL            CENAFLT,
  in    a_CENAJEBEZDANI     BOOLBIT,
  in    a_CENAJEZAJEDNOTKU  BOOLBIT,
  in    a_SERNR             SERNRTXT,
  inout a_DSKPID            REFIDINT,
  inout a_SKPLID            REFIDINT,
  inout a_SKLDID            REFIDINT,
  in    a_ZKONTR            BOOLBIT_0,
  in    a_FORCE             FORCETXT,
  out   a_TAXGID            REFIDINT,
  out   a_UPDATEPOMER       BOOLBIT,
  out   a_UPDATECALCPOMER   BOOLBIT,
  out   a_CREATERLDODSKLADPOLSKLADPOL BOOLBIT
)
language plpgsql security definer as $$
declare
  l_DODKSLEVAPROC         KOEFICIENTFLT;
  l_TAXGID                REFIDINT;
  l_SKPLID_OLD            REFIDINT;
  l_SKLDID_OLD            REFIDINT;
  l_DSKPID_OLD            REFIDINT;
  l_SLEVAPROC_OLD         KOEFICIENTFLT;
  l_ZAOKROUHLENI          CISLOINT;
  l_POMER                 KOEFICIENTFLT_LARGE;
  l_CALCPOMER             BOOLBIT;
  l_ISREALIZED_DN         BOOLBIT;
begin
  a_UPDATEPOMER := false;
  a_UPDATECALCPOMER := false;
  a_CREATERLDODSKLADPOLSKLADPOL := false;

  perform admin_base.B_CHECKMASTEREXIST('SEPTIMAPP', 'DODAK', '', 'DODPOL', a_ID, a_MASTERID, 0);

  if DODAK_GetMenaID(a_MASTERID) <> MENA_ZAKLADNIMENAGETID() then
    -- The license will be checked because of foreign currency in DN
    perform admin_base.B_LIMITS_CheckLicence('SEPTIMAPP','DODAKCIZIMENA',1,39143);
  end if;

  l_ISREALIZED_DN := DODAK_IsRealized(a_MASTERID);

  -- SSI name is optional and can be specified via ID
  if a_DSKPID is null then
    if (coalesce(a_POMER, 0) <> 0) or (coalesce(a_MNOZSTVIDSKP, 0) <> 0) then
      -- if SSI's ratio or quantity is filled then DODSKLADPOL (SSI) also should be filled
      perform B_NULL_STR('DODSKLADPOL', a_DODSKLADPOL, 39155);
    end if;
    select B_REFTABLEW.a_ID into a_DSKPID from B_REFTABLEW('SEPTIMAPP', 'DODSKLADPOL', 'NAZEV', concat('DODVID=', DODAK_GetDodavatelID(a_MASTERID)), a_DODSKLADPOL, 39153, 'DODSKLADPOL');
  else
    -- kontrola ze se jedna o DODSKLADPOL dodavatele dodaku
    perform DODSKLADPOL_CheckByID(a_DSKPID, DODAK_GetDodavatelID(a_MASTERID), 'DODSKLADPOL');
  end if;
  if (a_DSKPID is not null) then
    if (a_ID is null) or exists (select 1 from DODPOL where DODPID = a_ID and (DSKPID is null or DSKPID <> a_DSKPID)) then
      if not DODSKLADPOL_IsActive(a_DSKPID) then
        -- must be active
        perform ASWError(39154, cast(array[DODSKLADPOL_GetNazev(a_DSKPID), 'DSKPID'] as text[]));
      end if;
    end if;

    -- "calculate ratio"
    if a_CALCPOMER is null then
      perform ASWError(39152, cast(array['CALCPOMER'] as text[]));
    end if;

    -- SSI quantity
    perform B_NULL_FLT('MNOZSTVIDSKP', a_MNOZSTVIDSKP, 39158);
    if a_MNOZSTVIDSKP = 0 then
      perform ASWError(39158, cast(array['MNOZSTVIDSKP'] as text[]));
    end if;

    -- check ratio
    -- Ratio can not be empty for a realized DN. It also should be filled in a planned DN when ISI and SSI quantities are filled
    -- and ratio is not calculated automatically.
    if l_ISREALIZED_DN or (a_MNOZSTVI is not null and a_MNOZSTVIDSKP is not null and not a_CALCPOMER) then
      perform B_NULL_FLT('POMER', a_POMER, 39156);
    end if;
    if (a_POMER <= 0) and (a_CALCPOMER = false) then
      perform ASWError(39157, cast(array['POMER'] as text[]));
    end if;

    -- If ratio is calculated, value must be calculated correctly
    if (a_CALCPOMER) and (round(a_MNOZSTVI / a_MNOZSTVIDSKP, 4) <> round(a_POMER, 4)) then
      perform ASWError(39144);
    end if;

  else
    -- SSI is empty, therefore other data must be null
    a_POMER := null;
    a_CALCPOMER := null;
    a_MNOZSTVIDSKP := null;
  end if;

  -- SKLADPOL - can be specified via ID
  if a_SKPLID is null then
    if l_ISREALIZED_DN then
      perform admin_base.B_NULL_STR('SKLADPOL', a_SKLADPOL, 39104);
    end if;
    select B_REFTABLE_EX.a_ID into a_SKPLID from admin_base.B_REFTABLE_EX('SEPTIMAPP','SKLADPOL','NAZEV','ZKRATKA',a_SKLADPOL,39105,'SKLADPOL');
  end if;

  -- For a pending DN at leas one of ISI or SSI must be filled
  -- It is not necessary to check it for in-store DN, because then ISI is mandatory
  if not l_ISREALIZED_DN then
    if a_SKPLID is null and a_DSKPID is null then
      perform ASWError(39188, array['SKLADPOL']);
    end if;
  end if;

  -- SKLAD - can be specified via ID
  if a_SKLDID is null then
    select * into a_SKLDID from admin_septim.DODPOL__CheckSklad(a_SKLAD, l_ISREALIZED_DN);
  end if;

  -- ISI quantity must be filled for realized DN or when ISI is filled
  if l_ISREALIZED_DN or a_SKPLID is not null then
    perform B_NULL_FLT('MNOZSTVI', a_MNOZSTVI, 39111);
  end if;
  if a_MNOZSTVI = 0 then
    perform ASWError(39111, cast(array['MNOZSTVI'] as text[]));
  end if;

  -- There are some futher checks when SSI quantity is also filled
  if (a_MNOZSTVIDSKP is not null and a_MNOZSTVI is not null) then
    if (a_MNOZSTVIDSKP > 0 and a_MNOZSTVI < 0) then
      -- Both values must be either positive or negative
      perform ASWError(39128, cast(array['MNOZSTVI'] as text[]));
    end if;
    if (a_MNOZSTVIDSKP < 0 and a_MNOZSTVI > 0) then
      -- Both values must be either positive or negative
      perform ASWError(39129, cast(array['MNOZSTVI'] as text[]));
    end if;

    l_ZAOKROUHLENI := admin_params.P_GetGlobalParamINT('SKLAD', 'ZAOKROUHLENI');
    if (Round(a_MNOZSTVI / a_POMER, l_ZAOKROUHLENI) <> Round(a_MNOZSTVIDSKP, l_ZAOKROUHLENI)) then
      -- mnozstvi dodskladpol, pomer a mnozstvi skladpol neodpovidaji
      -- GG SSI quantity and ratio do not correspond ISI quantity
      perform ASWError(39160, cast(array['MNOZSTVI'] as text[]));
    end if;
  end if;

  -- TRVAN
  if l_ISREALIZED_DN then
    perform admin_base.B_NULL_DATUMCAS('TRVAN',a_TRVAN,39112);
  end if;

  -- SLEVA (discount)
  perform B_NULL_FLT('SLEVAPROC', a_SLEVAPROC, 39159);
  if (a_SLEVAPROC > 100) or (a_SLEVAPROC < 0) then
    perform admin_base.ASWError(39118, cast(array[admin_septim.cms_ProcToStr(a_SLEVAPROC),'SLEVAPROC'] as text[]));
  end if;

  -- TAXGROUP
  perform admin_base.B_NULL_STR('TAXGROUP',a_TAXGROUP,39115);
  select B_REFTABLE.a_ID into a_TAXGID from admin_base.B_REFTABLE('SEPTIMAPP','TAXGROUP','NAME',a_TAXGROUP,39116,'TAXGROUP');
  if (a_ID is null) or exists (select 1 from DODPOL where DODPID = a_ID and TAXGID <> a_TAXGID) then
    if not TAXGROUP_IsActive(a_TAXGID) then
      perform ASWError(39122, cast(array[a_TAXGROUP, 'TAXGROUP'] as text[]));
    end if;
  end if;

  -- CENA + CENASL + CENAJEBEZDANI + CENAJEZAJEDNOTKU
  perform admin_base.B_NULL_FLT('CENA', a_CENA, 39113);
  perform admin_base.B_NULL_FLT('CENASL', a_CENASL, 39114);
  if (a_CENAJEBEZDANI is null) then
    perform ASWError(39161, cast(array['CENAJEBEZDANI'] as text[]));
  end if;
  if (a_CENAJEZAJEDNOTKU is null) then
    perform ASWError(39162, cast(array['CENAJEZAJEDNOTKU'] as text[]));
  end if;

  if a_ID is not null then
    select
      SKLDID, SKPLID, DSKPID, SLEVAPROC
    into
      l_SKLDID_OLD, l_SKPLID_OLD, l_DSKPID_OLD, l_SLEVAPROC_OLD
    from
      DODPOL
    where
      DODPID = a_ID;

    if (DODPOL__JeSparovana(a_ID))
       and ((coalesce(a_SKPLID, 0) <> coalesce(l_SKPLID_OLD, 0)
            or (coalesce(a_SKLDID, 0) <> coalesce(l_SKLDID_OLD, 0))
            or (coalesce(a_DSKPID,0) <> coalesce(l_DSKPID_OLD,0)))) then
      -- There is a paired item, therefore it's forbidden to change any of the SSI, ISI, stock
      perform ASWError(39125);
    end if;

  end if;
  -- upozorneni na duplicitu SKALDPOL+SKLAD nebo DODSKLADPOL+SKLADPOL+SKLAD
  if (admin_eng.CheckForce(a_FORCE,'DODPOL_DUPL') is null) then
    if exists(select 1 from DODPOL
              where DODKID = a_MASTERID and SMAZAN = 0 and SKPLID = a_SKPLID and SKLDID = a_SKLDID and coalesce(DSKPID,0) = coalesce(a_DSKPID,0)
                and (a_ID is null or (DODPID <> a_ID and (a_SKLDID <> l_SKLDID_OLD or a_SKPLID <> l_SKPLID_OLD or coalesce(a_DSKPID,0) <> coalesce(l_DSKPID_OLD,0)))))
    then
      if a_DSKPID is null then
        -- bez DODSKLADPOL
        perform admin_base.ASWError(39117, cast(array[SKLADPOL_GetNazev(a_SKPLID),SKLAD_GetNazev(a_SKLDID),'DODPOL_DUPL'] as text[]));
      else
        -- zadana DODSKLADPOL
        perform admin_base.ASWError(39123, cast(array[DODSKLADPOL_GetNazev(a_DSKPID),SKLADPOL_GetNazev(a_SKPLID),SKLAD_GetNazev(a_SKLDID),'DODPOL_DUPL'] as text[]));
      end if;
    end if;
  end if;

  -- porovnani slevy dodaku a zadane slevy - insert nebo update a zmena slevy
  l_DODKSLEVAPROC := DODAK_GetSleva(a_MASTERID);
  if (a_SLEVAPROC <> l_DODKSLEVAPROC) and (a_ID is null or (a_ID is not null and a_SLEVAPROC <> l_SLEVAPROC_OLD)) then
    case
      when admin_eng.CheckForce(a_FORCE,'DODPOL_SLEVADODAK') is null then
        perform admin_base.ASWError(39119, cast(array[admin_septim.cms_ProcToStr(a_SLEVAPROC),admin_septim.cms_ProcToStr(l_DODKSLEVAPROC),'DODPOL_SLEVADODAK'] as text[]));
      when admin_eng.CheckForce(a_FORCE,'DODPOL_SLEVADODAK') = 1 then
        a_SLEVAPROC := l_DODKSLEVAPROC;
      else
        null;-- ADDED EMPTY ELSE
    end case;
  end if;

  -- check entered tax group with tax group of ISI
  l_TAXGID := SKLADPOL_GetTAXGID(a_SKPLID);
  if (a_TAXGID <> l_TAXGID) and (admin_eng.CheckForce(a_FORCE,'DODPOL_TAXGROUPCHANGE') is null)  then
    -- alert to different tax groups
    perform admin_base.ASWError(39120, cast(array[TAXGROUP_GetName(l_TAXGID),TAXGROUP_GetName(a_TAXGID),SKLADPOL_GetNazev(a_SKPLID),'DODPOL_TAXGROUPCHANGE'] as text[]));
  end if;

  -- kontrola ceny - aktualne se neresi

  -- kontrola cen a slevy
  select DS.a_CENA, DS.a_CENASL into a_CENA,a_CENASL
    from DODPOL_CheckCenyDleSlevy(SKLADPOL_GetNazev(a_SKPLID),SKLAD_GetNazev(a_SKLDID),a_SLEVAPROC,a_CENA,a_CENASL,a_FORCE) as DS;

  -- If price is per unit, the price must be always positive
  if a_CENAJEZAJEDNOTKU then
    -- Specified price should be positive
    if a_CENA < 0 then
      perform admin_base.ASWError(39184, cast(array['CENA'] as text[]));
    end if;
    if a_CENASL < 0 then
      perform admin_base.ASWError(39184, cast(array['CENASL'] as text[]));
    end if;
  -- Regarding the price of the total amount
  else
    --- kontrola ze kdyz je kladne mnozstvi tak musi byt kladne ceny
    if coalesce(a_MNOZSTVI, a_MNOZSTVIDSKP) > 0 and (a_CENA < 0 or a_CENASL < 0) then
      if (a_CENA < 0) then
        perform admin_base.ASWError(39106, cast(array['CENA'] as text[]));
      else
        perform admin_base.ASWError(39106, cast(array['CENASL'] as text[]));
      end if;
    end if;
    --- kontrola ze kdyz je zaporne mnozstvi tak musi byt zaporne ceny
    if coalesce(a_MNOZSTVI, a_MNOZSTVIDSKP) < 0 and (a_CENA > 0 or a_CENASL > 0) then
      if (a_CENA > 0) then
        perform admin_base.ASWError(39107, cast(array['CENA'] as text[]));
      else
        perform admin_base.ASWError(39107, cast(array['CENASL'] as text[]));
      end if;
    end if;
  end if;

  -- check ZKONTR
  if a_ZKONTR is null then
    perform admin_base.ASWError(39145, cast(array['ZKONTR'] as text[]));
  end if;

  -- kontrola vazby DODSKLADPOL-SKLADPOL a pomeru
  if (a_DSKPID is not null and a_SKPLID is not null) then
    -- request to create a link only if there is no link yet
    select * into l_POMER, l_CALCPOMER from DODSKLADPOL_GetPomerExt(a_DSKPID, a_SKPLID);

    if l_POMER is null then

      -- there is no link for now
      case
        when admin_eng.CheckForce(a_FORCE,'DOVYTVORVAZBUSKLADPOLDODSKLADPOL') is null then
          -- display the request
          perform ASWError(39163, cast(array[DODSKLADPOL_GetNazev(a_DSKPID), SKLADPOL_GetNazev(a_SKPLID), 'DOVYTVORVAZBUSKLADPOLDODSKLADPOL'] as text[]));
        when admin_eng.CheckForce(a_FORCE,'DOVYTVORVAZBUSKLADPOLDODSKLADPOL') = 1 then
          -- create the link
          a_CREATERLDODSKLADPOLSKLADPOL := true;
        else
          -- nic neresim
      end case;

    elseif (a_POMER <> l_POMER and a_CALCPOMER = false) or (a_CALCPOMER <> l_CALCPOMER) then  -- existuje vazba, kontrola pomeru (pokud se nepocita) nebo zda se pocita pomer
      -- ratio is different
      case
        when admin_eng.CheckForce(a_FORCE,'DOZAKTUALIZUJPOMER') is null and admin_eng.CheckForce(a_FORCE,'DOZAKTUALIZUJCALCPOMER') is null then
          -- zobrazeni dotazu
          if (a_POMER <> l_POMER and a_CALCPOMER = false) then
            -- request to actualize the ratio
            if (a_CALCPOMER = l_CALCPOMER) then
              perform ASWError(39164, cast(array[DODSKLADPOL_GetNazev(a_DSKPID), SKLADPOL_GetNazev(a_SKPLID), admin_base.cm_RemoveDecimalZeroes(l_POMER),
                                                 admin_base.cm_RemoveDecimalZeroes(a_POMER), 'DOZAKTUALIZUJPOMER'] as text[]));
            else
              perform ASWError(39167, cast(array[DODSKLADPOL_GetNazev(a_DSKPID), SKLADPOL_GetNazev(a_SKPLID), admin_base.cm_RemoveDecimalZeroes(l_POMER),
                                                 admin_base.cm_RemoveDecimalZeroes(a_POMER), 'DOZAKTUALIZUJPOMER'] as text[]));
            end if;
          else
            -- request for update "pocitat pomer" ("calculate ratio")
            if a_CALCPOMER = false then
              -- dotaz na zruseni pocitani pomeru u vazby
              perform ASWError(39165, cast(array[DODSKLADPOL_GetNazev(a_DSKPID), SKLADPOL_GetNazev(a_SKPLID), 'DOZAKTUALIZUJCALCPOMER'] as text[]));
            else
              -- dotaz na nastaveni pocitani pomeru u vazby
              perform ASWError(39166, cast(array[DODSKLADPOL_GetNazev(a_DSKPID), SKLADPOL_GetNazev(a_SKPLID), 'DOZAKTUALIZUJCALCPOMER'] as text[]));
            end if;
          end if;
        when admin_eng.CheckForce(a_FORCE,'DOZAKTUALIZUJPOMER') = 1 then
          -- update ratio
          a_UPDATEPOMER := true;
        when admin_eng.CheckForce(a_FORCE,'DOZAKTUALIZUJCALCPOMER') = 1 then
          -- update field CALCPOMER
          a_UPDATECALCPOMER := true;
        else
          -- nic neresim
      end case;

    end if;

  end if;

end; $$;


-- funkce pro vytvoreni stringu pozadovaneho force
select ASWDropFunction('DODPOL__MakeForceStr');
create or replace function admin_septim.DODPOL__MakeForceStr(
  in a_DODPID              IDINT
) returns FORCETXT
language plpgsql security definer as $$
begin
  return concat('DODPOL_UPDATE_',a_DODPID);
end; $$;;


select ASWDropProcedure('DODPOL__UpdateSleva');
/**
* Funkce pro aktualizaci slevy a prepoctu cen polozek.
*/
create or replace function admin_septim.DODPOL__UpdateSleva(
  in a_DODPID              IDINT,
  in a_SLEVAPROC           KOEFICIENTFLT,
  in a_SLEVAPROCOLD        KOEFICIENTFLT,
  in a_FORCE               FORCETXT
) returns void
language plpgsql security definer as $$
declare
  l_FORCE                 BOOLBIT;
  l_FORCER                BOOLBIT;
  l_FORCE_ALL             BOOLBIT;
  l_FORCE_ALLR            BOOLBIT;
  l_DODKID                REFIDINT;
  l_TAXGID                REFIDINT;
  l_SLEVAPROCOLD          KOEFICIENTFLT;
  l_SLEVAROZDIL           KOEFICIENTFLT;
  l_NEWSLEVA              KOEFICIENTFLT;
  l_SKPLID                REFIDINT;
  l_SKLDID                REFIDINT;
  l_MNOZSTVI              MNOZSTVIFLT;
  l_MNOZSTVIDSKP          MNOZSTVIFLT;
  l_POMER                 KOEFICIENTFLT_LARGE;
  l_CENA                  CENAFLT;
  l_CENASL                CENAFLT;
  l_CENAJEBEZDANI         BOOLBIT;
  l_CENAJEZAJEDNOTKU      BOOLBIT;
  l_CENAB                 CENAFLT;
  l_CENABSL               CENAFLT;
  l_CENAS                 CENAFLT;
  l_CENASSL               CENAFLT;
  l_CENABJ                CENAFLT_NU;
  l_CENABJSL              CENAFLT_NU;
  l_CENABC                CENAFLT;
  l_CENABCSL              CENAFLT;
  l_CENABJZM              CENAFLT_NU;
  l_CENABJZMSL            CENAFLT_NU;
  l_CENABDSKPJ            CENAFLT_NU;
  l_CENABDSKPJSL          CENAFLT_NU;
  l_PRICEISFORSSI         VALUEBOOL;
begin
  l_FORCE := admin_eng.CheckForce(a_FORCE,DODPOL__MakeForceStr(a_DODPID));
  l_FORCER := admin_eng.CheckForce(a_FORCE,concat(DODPOL__MakeForceStr(a_DODPID),'R'));
  l_FORCE_ALL := admin_eng.CheckForce(a_FORCE,'DODPOL_UPDATE_ALL');
  l_FORCE_ALLR := admin_eng.CheckForce(a_FORCE,'DODPOL_UPDATE_ALLR');

  select
    DODKID, TAXGID, SLEVAPROC, SKPLID, SKLDID, MNOZSTVI, MNOZSTVIDSKP, POMER, CENA, CENASL, CENAJEBEZDANI, CENAJEZAJEDNOTKU, PRICEISFORSSI
  into
    l_DODKID, l_TAXGID, l_SLEVAPROCOLD, l_SKPLID, l_SKLDID, l_MNOZSTVI, l_MNOZSTVIDSKP, l_POMER, l_CENA, l_CENASL, l_CENAJEBEZDANI, l_CENAJEZAJEDNOTKU, l_PRICEISFORSSI
  from
    DODPOL
  where
    DODPID = a_DODPID;

  l_SLEVAROZDIL := admin_base.cm_MAX(l_SLEVAPROCOLD+a_SLEVAPROC -a_SLEVAPROCOLD,0);
  if (l_FORCE = true or l_FORCE_ALL = true) then
    l_NEWSLEVA := a_SLEVAPROC;
  end if;
  if (l_FORCER = true or l_FORCE_ALLR = true) then
    l_NEWSLEVA := l_SLEVAROZDIL;
  end if;
  if COALESCE(l_FORCE,l_FORCER,l_FORCE_ALL,l_FORCE_ALLR) is null then
    if l_SLEVAROZDIL <> a_SLEVAPROC then
      perform admin_base.ASWError(39150, cast(array[SKLADPOL_GetNazev(l_SKPLID),admin_septim.cms_ProcToStr(l_SLEVAPROCOLD),admin_septim.cms_ProcToStr(a_SLEVAPROC),
                                                    admin_septim.cms_ProcToStr(l_SLEVAROZDIL),admin_septim.DODPOL__MakeForceStr(a_DODPID)] as text[]));
    else
      perform admin_base.ASWError(39151, cast(array[SKLADPOL_GetNazev(l_SKPLID),admin_septim.cms_ProcToStr(l_SLEVAPROCOLD),admin_septim.cms_ProcToStr(a_SLEVAPROC),
                                                    admin_septim.DODPOL__MakeForceStr(a_DODPID)] as text[]));
    end if;
  end if;
  if (l_FORCE = true or l_FORCER = true)
    or (l_FORCE_ALL = true and l_FORCE is null and l_FORCER is null)
    or (l_FORCE_ALLR = true and l_FORCE is null and l_FORCER is null)
  then
    -- prepocet ceny po sleve z ceny pred slevou a slevou
    select * into l_CENA,l_CENASL from admin_septim.DODPOL_PrepocetCenDleSlevy(l_NEWSLEVA,true,l_CENA,l_CENASL);
    -- vypocet ostatnich cen
    select * into l_CENAB,l_CENABSL,l_CENAS,l_CENASSL,l_CENABJ,l_CENABJSL,l_CENABC,l_CENABCSL,l_CENABJZM,l_CENABJZMSL,l_CENABDSKPJ,l_CENABDSKPJSL
      from admin_septim.DODPOL__CalcCeny(l_DODKID,l_TAXGID,l_MNOZSTVI,l_MNOZSTVIDSKP,l_POMER,l_CENA,l_CENASL,l_PRICEISFORSSI,l_CENAJEBEZDANI,l_CENAJEZAJEDNOTKU);
    -- aktualizace
    update DODPOL set CENA = l_CENA, CENASL = l_CENASL,
                      CENAB = l_CENAB, CENABSL = l_CENABSL, CENAS = l_CENAS, CENASSL = l_CENASSL,
                      CENABJ = l_CENABJ, CENABJSL = l_CENABJSL, CENABC = l_CENABC, CENABCSL = l_CENABCSL,
                      CENABJZM = l_CENABJZM, CENABJZMSL = l_CENABJZMSL, CENABDSKPJ = l_CENABDSKPJ, CENABDSKPJSL = l_CENABDSKPJSL,
                      SLEVAPROC = l_NEWSLEVA
      where DODPID = a_DODPID;
    perform DODPOLTAX_DODPOLUpdate(a_DODPID, a_FORCE);
    perform admin_septim.SKLADPOL_PrepoctiCenu(l_SKPLID,l_SKLDID,null);
  end if;
end; $$;




select ASWDropProcedure('DODPOL_DODAKUpdate');
/**
 * Called to update the DN items after the master record was changed
 */
create or replace function admin_septim.DODPOL_DODAKUpdate(
  in a_DODKID              IDINT,
  in a_ZMENAKURS           BOOLBIT,
  in a_REALNASKLOLD        DATUMCASTS,
  in a_SLEVAPROCOLD        KOEFICIENTFLT,
  in a_FORCE               FORCETXT
) returns void
language plpgsql security definer as $$
declare
  l_REALNASKL              DATUMCASTS;
  l_SLEVAPROC              KOEFICIENTFLT;
  l_KURSJEDN               MNOZSTVIFLT;
  l_KURSHODN               CENAFLT;
  l_ZAOKROUHLENI           CISLOINT;
  cr_cursor0               RECORD;
  cr_rec                   RECORD;
  cr_cursor2               RECORD;
begin
  select
    REALNASKL, SLEVAPROC, KURSHODNUZIV, KURSJEDNUZIV
  into
    l_REALNASKL, l_SLEVAPROC, l_KURSHODN, l_KURSJEDN
  from
    DODAK
  where
    DODKID = a_DODKID;

   --- změna kurzu
  if (a_ZMENAKURS = true) then
    l_ZAOKROUHLENI := admin_params.P_GetGlobalParamINT('SKLAD','ZAOKROUHLENI');
    for cr_cursor0 in
      select DODPID as cr_DODPID, SKPLID as cr_SKPLID, SKLDID as cr_SKLDID from DODPOL where DODKID = a_DODKID and SMAZAN = 0
    loop
      --- update cen v položkách dodáku, pouze ceny v ZM
      update DODPOL set CENABJZM = Round(l_KURSHODN/l_KURSJEDN*CENABJ,l_ZAOKROUHLENI),
                        CENABJZMSL = Round(l_KURSHODN/l_KURSJEDN*CENABJSL,l_ZAOKROUHLENI)
        where DODPID = cr_cursor0.cr_DODPID;
      perform DODPOLTAX_KursZmena(cr_cursor0.cr_DODPID, l_KURSHODN, l_KURSJEDN);
      --- přepočet skladových cen
      perform admin_septim.SKLADPOL_PrepoctiCenu(cr_cursor0.cr_SKPLID,cr_cursor0.cr_SKLDID,null);
    end loop;
  end if;

  --- zmena datumu
  if l_REALNASKL is not null then
    if l_REALNASKL <> a_REALNASKLOLD then
      if exists(select 1 from INVENTURA where((DATUMCAS between a_REALNASKLOLD and l_REALNASKL) or (DATUMCAS between l_REALNASKL and a_REALNASKLOLD))) then
      -- zmenil se datumcas, tak ze se mezi datumy dostala inventura - musime cely dodak vyjmout a znova vlozit
        for cr_rec in
          select SKLDID as cr_SKLDID, SKPLID as cr_SKPLID, MNOZSTVI as cr_MNOZSTVI from DODPOL where DODKID = a_DODKID and SMAZAN = 0
        loop
          perform admin_septim.ZASOBY_Zmen(cr_rec.cr_SKLDID,cr_rec.cr_SKPLID,-cr_rec.cr_MNOZSTVI,a_REALNASKLOLD,a_FORCE);
          perform admin_septim.ZASOBY_Zmen(cr_rec.cr_SKLDID,cr_rec.cr_SKPLID,cr_rec.cr_MNOZSTVI,l_REALNASKL,a_FORCE);
        end loop;
      end if;
    end if;
  end if;

  --- zmena slevy
  if l_SLEVAPROC <> a_SLEVAPROCOLD then
    for cr_cursor2 in select DODPID as cr_DODPID from DODPOL where DODKID = a_DODKID and SMAZAN = 0
    loop
      perform admin_septim.DODPOL__UpdateSleva(cr_cursor2.cr_DODPID,l_SLEVAPROC,a_SLEVAPROCOLD,a_FORCE);
    end loop;
  end if;
  if a_ZMENAKURS = true then
    -- aktualizace DODAKTAX
    perform admin_septim.DODAKTAX_KursZmena(a_DODKID, l_KURSHODN, l_KURSJEDN, a_FORCE);
  end if;
  --- aktualizuji celkovou cenu dodaku
  perform admin_septim.DODAK_RefreshCeny(a_DODKID);
end; $$;



select ASWDropProcedure('DODPOL_DODAKDelete');
/**
 * Dokumentace k chování ZASOBY_ZMEN je u ZASOBY_ZMEN
 */
create or replace function admin_septim.DODPOL_DODAKDelete(
  in a_DODKID              IDINT,
  in a_FORCE               FORCETXT
) returns void
language plpgsql security definer as $$
declare
  cr_rec                   RECORD;
begin
  -- odebrani polozek ze skladu
  for cr_rec in
    select DODPID as cr_DODPID, SKLDID as cr_SKLDID, SKPLID as cr_SKPLID, MNOZSTVI as cr_MNOZSTVI
    from DODPOL
    where DODKID = a_DODKID and SMAZAN = 0
  loop
    perform admin_septim.DODOBJDODPOL_DODPOLDelete(cr_rec.cr_DODPID,cr_rec.cr_MNOZSTVI,a_FORCE,39147,true); -- true=multioperace
    perform admin_users.U_OPRAVADETAIL_P_RowDelete('SEPTIMAPP','DODPOL',cr_rec.cr_DODPID);
    perform admin_septim.ZASOBY_Zmen(cr_rec.cr_SKLDID,cr_rec.cr_SKPLID,-cr_rec.cr_MNOZSTVI,DODAK_GetNaskladneniDC(a_DODKID),a_FORCE);
    -- prepocet skladove ceny
    perform admin_septim.SKLADPOL_PrepoctiCenu(cr_rec.cr_SKPLID,cr_rec.cr_SKLDID,null);
  end loop;
end; $$;



select ASWDropProcedure('DODPOL_DODAKMoveIntoStorage');
/**
 * Updates stock levels stock prices, when the DN state is changed from pending into "in-storage".
 */
create or replace function admin_septim.DODPOL_DODAKMoveIntoStorage (
  in a_DODKID              IDINT,
  in a_REALNASKL           DATETIMETS,
  in a_FORCE               FORCETXT
) returns void
language plpgsql security definer as $$
declare
  l_DNITEM                 RECORD;
  l_SKLDID                 REFIDINT;
begin

  -- Perform permission checks - only once per each store in the DN
  for l_SKLDID in select distinct SKLDID from DODPOL where DODKID = a_DODKID and SMAZAN = 0 loop
    -- Permission check to work with items in the given storage
    perform SKLAD_CheckPerm('SKLADPRIJMY\INSDODKSKPL', a_REALNASKL, l_SKLDID, 0, null, 'DODPOL', null, a_DODKID, 'DODAK', 'SKLADPRIJMY\INSVLDODKSKPL');
    -- Permission check to work with the storage
    perform SKLAD_StrediskaCheck('SKLADZAKLAD\STRDUNLIMITED', 0, l_SKLDID);
  end loop;

  -- Change the amount on stock and the stock price for each item of the processed delivery note
  for l_DNITEM in
    select SKLDID, SKPLID, MNOZSTVI
      from DODPOL
        where DODKID = a_DODKID
          and SMAZAN = 0
  loop
    -- Change the stock levels
    perform ZASOBY_Zmen(l_DNITEM.SKLDID, l_DNITEM.SKPLID, l_DNITEM.MNOZSTVI, a_REALNASKL, a_FORCE);
    -- Change the stock price
    perform SKLADPOL_PrepoctiCenu(l_DNITEM.SKPLID, l_DNITEM.SKLDID, null);
  end loop;

end; $$;



select ASWDropFunction('DODPOL_H_CenyPrepocet');
/**
 ** Function for handler to catch changes from TAXGROUP, CENAJEBEZDANI, CENAJEZAJEDNOTKU.
 ** Also it needs for buttoms HandlerButton1, HandlerButton2 when a_COMMAND in ('DODAK', 'SKLADPOL').
*/
drop type if exists admin_septim.DODPOL_H_CenyPrepocet_rs cascade;
create type admin_septim.DODPOL_H_CenyPrepocet_rs as (
  CENAB                     VALUETXT,
  CENABSL                   VALUETXT,
  CENAS                     VALUETXT,
  CENASSL                   VALUETXT,
  CENABJ                    VALUETXT,
  CENABJSL                  VALUETXT,
  CENABC                    VALUETXT,
  CENABCSL                  VALUETXT,
  CENABDSKPJ                VALUETXT,
  CENABDSKPJSL              VALUETXT,
  CENABJZM                  VALUETXT,
  CENABJZMSL                VALUETXT,
  CENA                      CENAFLT,
  CENASL                    CENAFLT,
  PRICEISFORSSI             VALUEBOOL,
  "$SAVEALWAYS"             INTEGER
);

create or replace function admin_septim.DODPOL_H_CenyPrepocet(
  in a_SKLADPOL             NAZEVSTR,
  in a_SKLAD                NAZEVSTR,
  in a_TAXGROUP             NAZEVSTR,
  in a_PRICEISFORSSI        VALUEBOOL,
  in a_CENAJEBEZDANI        BOOLBIT,
  in a_CENAJEZAJEDNOTKU     BOOLBIT,
  in a_SLEVAPROC            KOEFICIENTFLT,
  in a_CENA                 CENAFLT,
  in a_CENASL               CENAFLT,
  in a_MNOZSTVI             MNOZSTVIFLT,
  in a_POMER                KOEFICIENTFLT_LARGE,
  in a_MNOZSTVIDSKP         MNOZSTVIFLT,
  in a_ID                   IDINT,
  in a_MASTERID             IDINT,
  in a_COMMAND              E_HNDLParam,
  in a_FOCUSED              E_HNDLParam,
  in a_PARAMS               E_HNDLParam,
  in a_FORCE                FORCETXT default null
) returns admin_septim.DODPOL_H_CenyPrepocet_rs
language plpgsql security definer as $$
declare
  l_MENAID            REFIDINT;
  l_ZAOKROUHLENI      CISLOINT;
  l_TAXGID            REFIDINT_NU;
  l_CENAB             CENAFLT;
  l_CENABSL           CENAFLT;
  l_CENAS             CENAFLT;
  l_CENASSL           CENAFLT;
  l_CENABJ            CENAFLT_NU;
  l_CENABJSL          CENAFLT_NU;
  l_CENABC            CENAFLT;
  l_CENABCSL          CENAFLT;
  l_CENABJZM          CENAFLT_NU;
  l_CENABJZMSL        CENAFLT_NU;
  l_CENABDSKPJ        CENAFLT;
  l_CENABDSKPJSL      CENAFLT;
  l_TYPEPRICE         TYPINT;
  l_SKLDID            REFIDINT;
  l_SKPLID            REFIDINT;
  l_PRICEISFORSSI     VALUEBOOL;
begin

  l_PRICEISFORSSI := a_PRICEISFORSSI;

  --- null to 0
  select coalesce(a_CENA, 0), coalesce(a_CENASL, 0) into a_CENA, a_CENASL;

  -- part only for buttons
  -- This part is used when called by buttons "Use the price from the last DN" ('DODAK'),
  -- or "Use the price from the stock item" ('SKLADPOL')
  if a_COMMAND in ('DODAK', 'SKLADPOL') then

    if a_COMMAND = 'DODAK' then
      -- the price of the last delivery is used
      l_TYPEPRICE := 1;
    elsif a_COMMAND = 'SKLADPOL' then
      -- from the current stocks (skladpol)
      l_TYPEPRICE := 2;

      -- Resolve the PRICEISFORSSI flag. If the price from the stock item is required, then uncheck it if necessary
      if l_PRICEISFORSSI then
        if CheckForce(a_FORCE, 'UNSETPRICEISFORSSI') is null then
          perform ASWError(39189, array['UNSETPRICEISFORSSI']);
        end if;
        l_PRICEISFORSSI := false;
      end if;

    end if;

    if coalesce(a_SKLAD, '') <> '' then
      l_SKLDID := DODPOL__CheckSklad(a_SKLAD, a_MANDATORY => false);
    end if;

    select B.a_ID into l_SKPLID from B_REFTABLE_EX('SEPTIMAPP', 'SKLADPOL', 'NAZEV', 'ZKRATKA', a_SKLADPOL, -1, '') B;

    -- get price accorging of type
    a_CENA := DODPOL__GetLastPrice(a_ID, l_TYPEPRICE, l_SKPLID, l_SKLDID, l_PRICEISFORSSI);

    -- calc price with discount
    select SL.a_CENASL into a_CENASL from DODPOL_PrepocetCenDleSlevy(a_SLEVAPROC := a_SLEVAPROC, a_SMERCENACENASL := true,
                                                                     a_CENA := a_CENA, a_CENASL := cast(null as CENAFLT)) SL;

    -- price for the whole amount
    if not a_CENAJEZAJEDNOTKU then
      a_CENA := a_CENA * a_MNOZSTVI;
      a_CENASL := a_CENASL * a_MNOZSTVI;
    end if;

  end if;

  select B.a_ID into l_TAXGID from B_REFTABLE('SEPTIMAPP', 'TAXGROUP', 'NAME', a_TAXGROUP, -1, '') B;

  select S.a_SLEVAPROC into a_SLEVAPROC from DODPOL_GetKoefSlevy(a_SLEVAPROC) S;

  if l_TAXGID is not null then
    select
      *
    into
      l_CENAB, l_CENABSL, l_CENAS, l_CENASSL, l_CENABJ, l_CENABJSL, l_CENABC,
      l_CENABCSL, l_CENABJZM, l_CENABJZMSL, l_CENABDSKPJ, l_CENABDSKPJSL
    from
      DODPOL__CalcCeny(a_MASTERID, l_TAXGID, a_MNOZSTVI, a_MNOZSTVIDSKP, a_POMER,
                       a_CENA, a_CENASL, a_PRICEISFORSSI, a_CENAJEBEZDANI, a_CENAJEZAJEDNOTKU);
  end if;

  l_MENAID := DODAK_GetMenaID(a_MASTERID);

  l_ZAOKROUHLENI := P_GetGlobalParamINT('SKLAD', 'ZAOKROUHLENI', 2);

  return cast(row(
         MENA_FormatMena(coalesce(l_CENAB, 0), l_MENAID),
         MENA_FormatMena(coalesce(l_CENABSL, 0), l_MENAID),
         MENA_FormatMena(coalesce(l_CENAS, 0), l_MENAID),
         MENA_FormatMena(coalesce(l_CENASSL, 0), l_MENAID),
         MENA_FormatMena(coalesce(l_CENABJ, 0), l_MENAID),
         MENA_FormatMena(coalesce(l_CENABJSL, 0), l_MENAID),
         MENA_FormatMena(coalesce(l_CENABC, 0), l_MENAID),
         MENA_FormatMena(coalesce(l_CENABCSL, 0), l_MENAID),
         case when l_CENABDSKPJ is not null then MENA_FormatMena(l_CENABDSKPJ, l_MENAID) end,
         case when l_CENABDSKPJSL is not null then MENA_FormatMena(l_CENABDSKPJSL, l_MENAID) end,
         MENA_FormatDefaultMena(coalesce(l_CENABJZM, 0)),
         MENA_FormatDefaultMena(coalesce(l_CENABJZMSL, 0)),
         cast(coalesce(round(a_CENA, l_ZAOKROUHLENI), 0) as CENAFLT),
         cast(coalesce(round(a_CENASL, l_ZAOKROUHLENI), 0) as CENAFLT),
         l_PRICEISFORSSI,
         (case when a_COMMAND in ('DODAK', 'SKLADPOL') then 1 else 0 end)) as DODPOL_H_CenyPrepocet_rs);
end; $$;

select grant_func('DODPOL_H_CenyPrepocet', 'SPEXEC');


select ASWDropProcedure('DODPOL_SlevyPrepocet');
/**
 * Function for recalculation price without discount/price with discount. Used in handler functions.
 */
create or replace function admin_septim.DODPOL_SlevyPrepocet (
  in    a_FOCUSED               E_HNDLParam,
  inout a_SLEVAPROC             KOEFICIENTFLT,
  inout a_CENA                  CENAFLT,
  inout a_CENASL                CENAFLT,
  in    a_FORCE                 FORCETXT
)
language plpgsql security definer as $$
declare
  l_ZAOKROUHLENI      CISLOINT;
  l_KOEF              KOEFICIENTFLT;
begin

  select * into a_SLEVAPROC,l_KOEF from admin_septim.DODPOL_GetKoefSlevy(a_SLEVAPROC);
  l_ZAOKROUHLENI := admin_params.P_GetGlobalParamINT('SKLAD','ZAOKROUHLENI',2);

  if a_FOCUSED = 'cena' then
    -- pokud je aktivni cena bez slevy
    if (a_CENASL = 0) or (admin_eng.CheckForce(a_FORCE,'PREPOCTICENUSL') = 1) then
      -- a cena se slevou je 0
      select Round(a_CENA*l_KOEF,l_ZAOKROUHLENI) into a_CENASL;
    else
      if (admin_eng.CheckForce(a_FORCE,'PREPOCTICENUSL') is null) and (Round(a_CENA*l_KOEF,l_ZAOKROUHLENI) <> a_CENASL) then
        -- dotaz na prepocet ceny se slevou
        perform ASWError(39140, cast(array['PREPOCTICENUSL'] as text[]));
      end if;
    end if;
  elseif a_FOCUSED = 'cenasl' then
    -- pokud je aktivni cena se slevou
    if (a_CENA = 0) or (admin_eng.CheckForce(a_FORCE,'PREPOCTICENU') = 1) then
      -- a cena bez slevy je 0
      select Round(a_CENASL/l_KOEF,l_ZAOKROUHLENI) into a_CENA;
    else
      if (admin_eng.CheckForce(a_FORCE,'PREPOCTICENU') is null) and (Round(a_CENASL/l_KOEF,l_ZAOKROUHLENI) <> a_CENA) then
        -- dotaz na prepocet ceny se slevou
        perform ASWError(39141, cast(array['PREPOCTICENU'] as text[]));
      end if;
    end if;
  elseif a_FOCUSED = 'slevaproc' then
    -- aktivni je sleva
    if Round(a_CENA*l_KOEF,l_ZAOKROUHLENI) <> Round(a_CENASL,l_ZAOKROUHLENI) then
      -- ceny a sleva neodpovidaji
      if a_SLEVAPROC = 100 then
        -- 100% sleva, lze prepocitat pouze CENA na CENASL
        if admin_eng.CheckForce(a_FORCE,'PREPOCTICENUSLDLESLEVY') is null then
          perform ASWError(39140, cast(array['PREPOCTICENUSLDLESLEVY'] as text[]));
        elseif admin_eng.CheckForce(a_FORCE,'PREPOCTICENUSLDLESLEVY') = 1 then
          -- prepocet CENA -> CENASL
          select Round(a_CENA*l_KOEF,l_ZAOKROUHLENI) into a_CENASL;
        end if;
      else
        if admin_eng.CheckForce(a_FORCE,'PREPOCTICENUDLESLEVY') is null and admin_eng.CheckForce(a_FORCE,'PREPOCTICENUSLDLESLEVY') is null and admin_eng.CheckForce(a_FORCE,'NEPREPOCITAVAT') is null then
          perform ASWError(39139, cast(array['PREPOCTICENUDLESLEVY', 'PREPOCTICENUSLDLESLEVY', 'NEPREPOCITAVAT'] as text[]));
        elseif admin_eng.CheckForce(a_FORCE,'PREPOCTICENUDLESLEVY') = 1 then
          -- prepocet CENASL -> CENA
          select Round(a_CENASL/l_KOEF,l_ZAOKROUHLENI) into a_CENA;
        elseif admin_eng.CheckForce(a_FORCE,'PREPOCTICENUSLDLESLEVY') = 1 then
          -- prepocet CENA -> CENASL
          select Round(a_CENA*l_KOEF,l_ZAOKROUHLENI) into a_CENASL;
        end if;
      end if;
    end if;
  end if;

end; $$;


select ASWDropProcedure('DODPOL_H_SlevyPrepocet');
/**
*  Handler volany pri zmene ceny pred slevou nebo po sleve nebo pri zmene slevy.
*  Zkontroluje udaje a pokud nektere nejsou zadane, pokusi se je doplnit, pokud jiz jsou zadane, ale nespravne, zobrazi se dotaz na aktualizaci.
*/
drop type if exists admin_septim.DODPOL_H_SlevyPrepocet_rs cascade;
create type admin_septim.DODPOL_H_SlevyPrepocet_rs as (
  CENA                    CENAFLT,
  "~CENA"                 BOOLBIT,
  CENASL                  CENAFLT,
  "~CENASL"               BOOLBIT,
  CENAB                   B_VALUETXT,
  CENABSL                 B_VALUETXT,
  CENAS                   B_VALUETXT,
  CENASSL                 B_VALUETXT,
  CENABJ                  B_VALUETXT,
  CENABJSL                B_VALUETXT,
  CENABC                  B_VALUETXT,
  CENABCSL                B_VALUETXT,
  CENABDSKPJ              B_VALUETXT,
  CENABDSKPJSL            B_VALUETXT,
  CENABJZM                B_VALUETXT,
  CENABJZMSL              B_VALUETXT
);

create or replace function admin_septim.DODPOL_H_SlevyPrepocet(
  in a_SLEVAPROC            KOEFICIENTFLT,
  in a_CENA                 CENAFLT,
  in a_CENASL               CENAFLT,
  in a_PRICEISFORSSI        VALUEBOOL,
  in a_CENAJEBEZDANI        BOOLBIT,
  in a_CENAJEZAJEDNOTKU     BOOLBIT,
  in a_TAXGROUP             NAZEVSTR,
  in a_MNOZSTVI             MNOZSTVIFLT,
  in a_POMER                KOEFICIENTFLT_LARGE,
  in a_MNOZSTVIDSKP         MNOZSTVIFLT,
  in a_ID                   IDINT,
  in a_MASTERID             IDINT,
  in a_COMMAND              E_HNDLParam,
  in a_FOCUSED              E_HNDLParam,
  in a_PARAMS               E_HNDLParam,
  in a_FORCE                FORCETXT default null
) returns setof admin_septim.DODPOL_H_SlevyPrepocet_rs
language plpgsql security definer as $$
declare
  l_MENAID            REFIDINT;
  l_TAXGID            REFIDINT_NU;
  l_CENAB             CENAFLT;
  l_CENABSL           CENAFLT;
  l_CENAS             CENAFLT;
  l_CENASSL           CENAFLT;
  l_CENABJ            CENAFLT;
  l_CENABJSL          CENAFLT;
  l_CENABC            CENAFLT;
  l_CENABCSL          CENAFLT;
  l_CENABJZM          CENAFLT;
  l_CENABJZMSL        CENAFLT;
  l_CENABDSKPJ        CENAFLT;
  l_CENABDSKPJSL      CENAFLT;
begin
  --- nastaveni 0 tam kde je null
  select coalesce(a_CENA,0),coalesce(a_CENASL,0) into a_CENA,a_CENASL;

  select * into a_SLEVAPROC, a_CENA, a_CENASL from DODPOL_SlevyPrepocet(a_FOCUSED, a_SLEVAPROC, a_CENA, a_CENASL, a_FORCE);

  select B_REFTABLE.a_ID into l_TAXGID from admin_base.B_REFTABLE('SEPTIMAPP','TAXGROUP','NAME',a_TAXGROUP,-1,'');
  if l_TAXGID is not null then
    select * into l_CENAB,l_CENABSL,l_CENAS,l_CENASSL,l_CENABJ,l_CENABJSL,l_CENABC,l_CENABCSL,l_CENABJZM,l_CENABJZMSL,l_CENABDSKPJ,l_CENABDSKPJSL
      from DODPOL__CalcCeny(a_MASTERID,l_TAXGID,a_MNOZSTVI,a_MNOZSTVIDSKP,a_POMER,a_CENA,a_CENASL,a_PRICEISFORSSI,a_CENAJEBEZDANI,a_CENAJEZAJEDNOTKU);
  end if;

  -- mena dodaku
  l_MENAID := DODAK_GetMenaID(a_MASTERID);

  return query select a_CENA as CENA, cast((case when a_FOCUSED = 'cena' then false else true end) as BOOLBIT) as "~CENA",
         a_CENASL as a_CENASL, cast((case when a_FOCUSED = 'cenasl' then false else true end) as BOOLBIT) as "~CENASL",
         MENA_FormatMena(coalesce(l_CENAB,0), l_MENAID) as CENAB,
         MENA_FormatMena(coalesce(l_CENABSL,0), l_MENAID) as CENABSL,
         MENA_FormatMena(coalesce(l_CENAS,0), l_MENAID) as CENAS,
         MENA_FormatMena(coalesce(l_CENASSL,0), l_MENAID) as CENASSL,
         MENA_FormatMena(coalesce(l_CENABJ,0), l_MENAID) as CENABJ,
         MENA_FormatMena(coalesce(l_CENABJSL,0), l_MENAID) as CENABJSL,
         MENA_FormatMena(coalesce(l_CENABC,0), l_MENAID) as CENABC,
         MENA_FormatMena(coalesce(l_CENABCSL,0), l_MENAID) as CENABCSL,
         MENA_FormatMena(coalesce(l_CENABDSKPJ,0), l_MENAID) as CENABDSKPJ,
         MENA_FormatMena(coalesce(l_CENABDSKPJSL,0), l_MENAID) as CENABDSKPJSL,
         MENA_FormatDefaultMena(coalesce(l_CENABJZM,0)) as CENABJZM,
         MENA_FormatDefaultMena(coalesce(l_CENABJZMSL,0)) as CENABJZMSL;
end; $$;

select grant_func('DODPOL_H_SlevyPrepocet', 'SPEXEC');



select ASWDropFunction('DODPOL_H_Get');
/**
* Handler pro vyber skladpol.
* Pouziva se pri zadani skladpol pres carovy kod
*/
drop type if exists admin_septim.DODPOL_H_Get_rs cascade;
create type admin_septim.DODPOL_H_Get_rs as (
  SKLADPOL                 NAZEVSTR,
  TAXGROUP                 NAZEVSTR,
  JEDNOTKY                 JEDNOTKYSTR_R
);

create or replace function admin_septim.DODPOL_H_Get(
  in a_IDENTCODE           BARCODESTR,
  in a_ID                  IDINT,
  in a_MASTERID            IDINT,
  in a_COMMAND             E_HNDLParam,
  in a_FOCUSED             E_HNDLParam,
  in a_PARAMS              E_HNDLParam
) returns setof admin_septim.DODPOL_H_Get_rs
language plpgsql security definer as $$
declare
  l_SKPLID                 REFIDINT;
  l_SKLADPOL               NAZEVSTR;
  l_JEDNOTKY               JEDNOTKYSTR_R;
  l_TAXGROUP               NAZEVSTR;
begin

  l_SKPLID := SKPLBARCODE_GetStockItem(a_IDENTCODE);
  if l_SKPLID is not null then
    l_SKLADPOL := SKLADPOL_GetNazev(l_SKPLID);
    l_JEDNOTKY := SKLADPOL_GetJednotky(l_SKPLID);
    l_TAXGROUP := SKLADPOL_GetTaxGroupName(l_SKPLID);
  end if;

  return query select l_SKLADPOL as SKLADPOL, l_TAXGROUP as TAXGROUP, l_JEDNOTKY as JEDNOTKY;

end; $$;

select grant_func('DODPOL_H_Get', 'SPEXEC');



select ASWDropProcedure('DODPOL_GetKoefSlevy');
/**
* univerzalni fce pro prepocty slev nebo jejich kontrolu
*/
create or replace function admin_septim.DODPOL_GetKoefSlevy(
  inout a_SLEVAPROC        KOEFICIENTFLT,
  out   a_KOEF             KOEFICIENTFLT
)
language plpgsql security definer as $$
begin
  -- kontrola slevy
  a_SLEVAPROC := coalesce(a_SLEVAPROC,0);
  if (a_SLEVAPROC > 100) or (a_SLEVAPROC < 0) then
    perform admin_base.ASWError(39118, cast(array[admin_septim.cms_ProcToStr(a_SLEVAPROC),'SLEVAPROC'] as text[]));
  end if;
  a_KOEF := 1 -(a_SLEVAPROC/100);
end; $$;


select ASWDropProcedure('DODPOL_PrepocetCenDleSlevy');
/**
* Funkce pro prepocet cen (pred slevou/po sleve) dle zadane slevy a ceny, ze ktere se vychazi.
*/
create or replace function admin_septim.DODPOL_PrepocetCenDleSlevy(
  in    a_SLEVAPROC        KOEFICIENTFLT,
  in    a_SMERCENACENASL   BOOLBIT,                     -- smer prepoctu 1..z CENA do CENASL, 0..z CENASL do CENA
  inout a_CENA             CENAFLT,
  inout a_CENASL           CENAFLT
)
language plpgsql security definer as $$
declare
  l_KOEF                   KOEFICIENTFLT;
  l_ZAOKROUHLENI           CISLOINT;
begin
  --- kontrola slevy, načtení koeficientu
  select * into a_SLEVAPROC,l_KOEF from admin_septim.DODPOL_GetKoefSlevy(a_SLEVAPROC);
  --- načtení zaokrouhlení z param. pokud není zadáno
  l_ZAOKROUHLENI := admin_params.P_GetGlobalParamINT('SKLAD','ZAOKROUHLENI',2);

  -- z ceny se pocita cena se slevou
  if a_SMERCENACENASL = true then
    -- pokud je sleva<>0, přepočet, jinak ceny bez slevy=ceny se slevou
    if a_SLEVAPROC <> 0 then
      select Round(a_CENA*l_KOEF,l_ZAOKROUHLENI) into a_CENASL;
    else
      select a_CENA into a_CENASL;
    end if;
  else -- z ceny se slevou se pocita cena bez slevy
    -- pokud je sleva<>0, přepočet, jinak ceny bez slevy=ceny se slevou
    if a_SLEVAPROC <> 0 then
      if l_KOEF = 0 then
        -- 100% sleva neumoznuje vypocet
        select 0,0 into a_CENA,a_CENASL;
      else
        select Round(a_CENASL/l_KOEF,l_ZAOKROUHLENI) into a_CENA;
      end if;
    else
      select a_CENASL into a_CENA;
    end if;
  end if;

end; $$;


select ASWDropProcedure('DODPOL_CheckCenyDleSlevy');
/**
 * Funkce pro kontrolu cen pred slevou a po sleve dle zadane slevy.
 */
create or replace function admin_septim.DODPOL_CheckCenyDleSlevy(
  in    a_SKLADPOL         NAZEVSTR_LONG,
  in    a_SKLAD            NAZEVSTR,
  in    a_SLEVAPROC        KOEFICIENTFLT,
  inout a_CENA             CENAFLT,
  inout a_CENASL           CENAFLT,
  in    a_FORCE            FORCETXT,
  in    a_ERRORBASE        CISLOINT default 0,
  in    a_FORCEID          VALUETXT default ''
)
language plpgsql security definer as $$
declare
  l_KOEF                   KOEFICIENTFLT;
  l_CENA                   CENAFLT;
  l_CENASL                 CENAFLT;
  l_ZAOKROUHLENI           CISLOINT;
  l_FORCERES               BOOLBIT;
begin
  a_FORCEID := coalesce(a_FORCEID,'');
  --- kontrola slevy, načtení koeficientu
  select * into a_SLEVAPROC,l_KOEF from admin_septim.DODPOL_GetKoefSlevy(a_SLEVAPROC);
  --- načtení zaokrouhlení z param. pokud není zadáno
  l_ZAOKROUHLENI := admin_params.P_GetGlobalParamINT('SKLAD','ZAOKROUHLENI',2);

  select Round(a_CENA*l_KOEF,l_ZAOKROUHLENI) into l_CENA;
  select Round(a_CENASL,l_ZAOKROUHLENI) into l_CENASL;

  --- pokud ceny neodpovídají, přes dotaz nastavení cen se slevou správně
  l_FORCERES := admin_eng.CheckForce(a_FORCE,concat('DODPOL_SLEVA',a_FORCEID));
  if l_FORCERES is null then
    l_FORCERES := admin_eng.CheckForce(a_FORCE,'DODPOL_SLEVA_ALL');
  end if;
  case
    when l_FORCERES is null then
      if (l_CENA <> l_CENASL) then
        if coalesce(a_ERRORBASE,0) = 0 then
          a_ERRORBASE := 39130;
        end if;
        perform admin_base.ASWError(a_ERRORBASE, cast(array[a_FORCEID,a_SKLADPOL,a_SKLAD] as text[]));
      end if;
    when l_FORCERES = true then
      --- přepočet cen
      select l_CENA into a_CENASL;
    else
      null;-- ADDED EMPTY ELSE
  end case;

end; $$;


select ASWDropProcedure('DODPOL_Nahrada');
create or replace function admin_septim.DODPOL_Nahrada(
  in a_SKPLOLDID           REFIDINT,
  in a_SKPLNEWID           REFIDINT,
  in a_FORCE               FORCETXT
) returns void
language plpgsql security definer as $$
declare
  --- test editace v rámci replikace
  l_DATUMCAS               DATUMCASTS;
  l_POPISTXT               POPISTXT;
  l_NEWSKPLDODPID          IDINT;
  cr_rec                   RECORD;
begin
  l_DATUMCAS := LOCALTIMESTAMP;
  l_POPISTXT := admin_base.B_GetTxt('SEPTIMAPP','DODPOL','NAHRADASKLADPOLPOPIS');
  for cr_rec in
    select DODPID as cr_DODPID
      from DODPOL
      where SKPLID = a_SKPLOLDID and SMAZAN = 0
  loop
    perform admin_users.U_OPRAVA_P_RowUpdate('SEPTIMAPP','DODPOL',cr_rec.cr_DODPID,l_POPISTXT,l_POPISTXT);  -- druhy popis je komentar
    update DODPOL set SKPLID = a_SKPLNEWID where DODPID = cr_rec.cr_DODPID;
  end loop;
end; $$;


select ASWDropProcedure('DODPOL_Prepocet');
/**
* prepocet u dodaciho listu
*/
create or replace function admin_septim.DODPOL_Prepocet(
  in a_DATUMCAS1           DATUMCASTS,
  in a_DATUMCAS2           DATUMCASTS,
  in a_SKLDID              REFIDINT,
  in a_FORCE               FORCETXT
) returns void
language plpgsql security definer as $$
begin
                          return;
end; $$;


select ASWDropFunction('DODPOL_H_GetSkladPol');
/**
* Handler pro vyber skladpol.
* Bude se pouzivat pri change v dialozich kde se vybira skladova polozka pro nastaveni hodnot souvisejicich se skladpol
*/
drop type if exists admin_septim.DODPOL_H_GetSkladPol_rs cascade;
create type admin_septim.DODPOL_H_GetSkladPol_rs as (
  JEDNOTKY                 JEDNOTKYSTR,
  TAXGROUP                 NAZEVSTR,
  "$FOCUS"                 VALUESTR
);
create or replace function admin_septim.DODPOL_H_GetSkladPol(
  in a_SKLADPOL            NAZEVSTR,
  in a_ID                  IDINT,
  in a_MASTERID            IDINT,
  in a_COMMAND             E_HNDLParam,
  in a_FOCUSED             E_HNDLParam,
  in a_PARAMS              E_HNDLParam
) returns DODPOL_H_GetSkladPol_rs
language plpgsql security definer as $$
declare
  l_SKPLID                 IDINT;
  l_JEDNOTKY               JEDNOTKYSTR;
  l_TAXGROUP               NAZEVSTR;
  l_RESULT                 DODPOL_H_GetSkladPol_rs;
begin
  l_RESULT."$FOCUS" = upper(a_FOCUSED);
  select B_REFTABLE_EX.a_ID into l_SKPLID from admin_base.B_REFTABLE_EX('SEPTIMAPP','SKLADPOL','NAZEV','ZKRATKA',a_SKLADPOL,-1,'SKLADPOL');
  if l_SKPLID is not null then
    l_JEDNOTKY := SKLADPOL_GetJednotky(l_SKPLID);
    l_TAXGROUP := SKLADPOL_GetTaxGroupName(l_SKPLID);
    l_RESULT.JEDNOTKY := l_JEDNOTKY;
    l_RESULT.TAXGROUP := l_TAXGROUP;
    l_RESULT."$FOCUS" := 'MNOZSTVI';
  else
    l_RESULT.JEDNOTKY := '';
    l_RESULT.TAXGROUP := '';
  end if;
  return l_RESULT;
end; $$;

select grant_func('DODPOL_H_GetSkladPol', 'SPEXEC');



select ASWDropProcedure('DODPOL_H_GetZasoby');
drop type if exists admin_septim.DODPOL_H_GetZasoby_rs cascade;
create type admin_septim.DODPOL_H_GetZasoby_rs as (
  ZASOBY                   VALUETXT,
  AKTCENAS                 B_VALUETXT
);
create or replace function admin_septim.DODPOL_H_GetZasoby(
  in a_SKLADPOL            NAZEVSTR,
  in a_SKLAD               NAZEVSTR,
  in a_ID                  INTEGER,
  in a_MASTERID            INTEGER,
  in a_COMMAND             E_HNDLParam,
  in a_FOCUSED             E_HNDLParam,
  in a_PARAMS              E_HNDLParam
) returns DODPOL_H_GetZasoby_rs
language plpgsql security definer as $$
declare
  l_SKPLID                REFIDINT;
  l_SKLDID                REFIDINT;
  l_ZASOBYTXT             VALUETXT;
  l_AKTCENAS              CENAFLT;
  l_RESULT                DODPOL_H_GetZasoby_rs;
begin
  select B_REFTABLE_EX.a_ID into l_SKPLID from admin_base.B_REFTABLE_EX('SEPTIMAPP','SKLADPOL','NAZEV','ZKRATKA',a_SKLADPOL,-1,'SKLADPOL');
  select B_REFTABLE_EX.a_ID into l_SKLDID from admin_base.B_REFTABLE_EX('SEPTIMAPP','SKLAD','NAZEV','ZKRATKA',a_SKLAD,-1,'SKLAD');
  -- pri zmene skladpol pres bpl handler ctecky je v a_skladpol kod
  if l_SKPLID is null then
    l_SKPLID := SKPLBARCODE_GetStockItem(cast(a_SKLADPOL as BARCODESTR));
  end if;
  -- nacteni stavu zasob
  l_ZASOBYTXT := DODPOL__GetZasobyTxt(l_SKPLID,l_SKLDID);
  -- a aktualni skladovou cenu
  l_AKTCENAS := SKLADPOL_GetSkladCena(l_SKPLID, l_SKLDID);

  l_RESULT.ZASOBY := l_ZASOBYTXT;
  l_RESULT.AKTCENAS := case when l_AKTCENAS is not null then MENA_FormatDefaultMena(l_AKTCENAS) else null end;
  return l_RESULT;
end; $$;

select grant_func('DODPOL_H_GetZasoby', 'SPEXEC');


select ASWDropProcedure('DODPOL_DODAKOrezDat');
/**
* Procedura volana orezem pri mazani dodaciho listu.
*/
create or replace function admin_septim.DODPOL_DODAKOrezDat(
  in a_DODKID              REFIDINT
) returns void
language plpgsql security definer as $$
declare
  cr_cpolozky              RECORD;
begin
  for cr_cpolozky in
    select DODPID as cr_ID,SMAZAN as cr_SMAZAN from DODPOL where DODKID = a_DODKID
  loop
    delete from DODPOLTAX where DODPID = cr_cpolozky.cr_ID;

    -- smazani propojeni DODPOL-DODOBJSKPL
    perform admin_septim.DODOBJDODPOL_DODPOLOrezDat(cr_cpolozky.cr_ID);
    -- smazani detailu oprav DODPOL
    DELETE FROM admin_users.U_OPRAVADETAIL as OD
      WHERE (OPVDID) in (SELECT OD.OPVDID from admin_users.U_OPRAVADETAIL as OD join admin_users.U_OPRAVA as U on OD.OPRVID = U.OPRVID join admin_base.B_TABLE as T on U.TABLID = T.TABLID
                         where T.TABLENAZEV = 'DODPOL'
                           and ((cr_cpolozky.cr_SMAZAN = 0 and U.NEWID = cr_cpolozky.cr_ID)
                                or ((cr_cpolozky.cr_SMAZAN is null or cr_cpolozky.cr_SMAZAN <> 0) and (U.NEWID = cr_cpolozky.cr_ID or U.OLDID = cr_cpolozky.cr_ID))));
    -- smazani oprav
    DELETE FROM admin_users.U_OPRAVA as U
      WHERE (OPRVID) in (SELECT U.OPRVID from admin_users.U_OPRAVA as U join admin_base.B_TABLE as T on U.TABLID = T.TABLID
                         where T.TABLENAZEV = 'DODPOL'
                           and ((cr_cpolozky.cr_SMAZAN = 0 and U.NEWID = cr_cpolozky.cr_ID)
                                or ((cr_cpolozky.cr_SMAZAN is null or cr_cpolozky.cr_SMAZAN <> 0) and (U.NEWID = cr_cpolozky.cr_ID or U.OLDID = cr_cpolozky.cr_ID))));
  end loop;
  -- smazani polozek
  delete from DODPOL where DODKID = a_DODKID;
end; $$;


select ASWDropProcedure('DODPOL__DodSkladPolMatches');
/**
 * Funkce vracejici ID dodavatelských skladových položek, ze kterých je možné vybírat v rámci položky dodacího listu.
 * Zobrazují se pouze DODSKLADPOL dodavatele dodacího listu.
*/
create or replace function admin_septim.DODPOL__DodSkladPolMatches (
  in a_MASTERID             REFIDINT
) returns setof IDINT
language plpgsql security definer as $$
begin

  -- pouze DODSKLADPOL dodavatele DODAKu
  return query select DSKPID from DODSKLADPOL where SMAZAN = 0 and DODVID = DODAK_GetDodavatelID(a_MASTERID);

end; $$;



select ASWDropProcedure('V_DODPOLDodSkladPolMatches');
/**
* Grantovana obalka pro pouziti vo where podmince editselectu vyberu dodavatelske skladpol.
*/
drop type if exists admin_septim.V_DODPOLDodSkladPolMatches_rs cascade;
create type admin_septim.V_DODPOLDodSkladPolMatches_rs as (
  DSKPID                    IDINT
);

create or replace function admin_septim.V_DODPOLDodSkladPolMatches (
  in a_MASTERID             REFIDINT      -- ID DODAK
) returns setof V_DODPOLDodSkladPolMatches_rs
language plpgsql security definer as $$
begin
  return query select * from DODPOL__DodSkladPolMatches(a_MASTERID);
end; $$;
select grant_func('V_DODPOLDodSkladPolMatches', 'SPEXEC');



select ASWDropFunction('DODPOL_H_MnozstviPomerCenyChange');
/**
 * Handler volany pri zmene mnozstvi dodavatelske nebo interni polozky nebo pri zmene pomeru.
 * Automaticky dle editovaneho udaje zaktualizuje jine udaje, pokud se edituje pomer, je uzivatel dotazan, ktere mnozstvi zaktualizovat.
 */
drop type if exists admin_septim.DODPOL_H_MnozstviPomerCenyChange_rs cascade;
create type admin_septim.DODPOL_H_MnozstviPomerCenyChange_rs as (
  MNOZSTVIDSKP              MNOZSTVIFLT,
  "~MNOZSTVIDSKP"           BOOLBIT,
  MNOZSTVI                  MNOZSTVIFLT,
  "~MNOZSTVI"               BOOLBIT,
  POMER                     KOEFICIENTFLT_LARGE,
  CENABJ                    B_VALUETXT,
  CENABJSL                  B_VALUETXT,
  CENABC                    B_VALUETXT,
  CENABCSL                  B_VALUETXT,
  CENABDSKPJ                B_VALUETXT,
  CENABDSKPJSL              B_VALUETXT,
  CENABJZM                  B_VALUETXT,
  CENABJZMSL                B_VALUETXT
);

create or replace function admin_septim.DODPOL_H_MnozstviPomerCenyChange(
  in a_MNOZSTVIDSKP         MNOZSTVIFLT,
  in a_POMER                KOEFICIENTFLT_LARGE,
  in a_CALCPOMER            BOOLBIT,
  in a_MNOZSTVI             MNOZSTVIFLT,
  in a_TAXGROUP             NAZEVSTR,
  in a_CENA                 CENAFLT,
  in a_CENASL               CENAFLT,
  in a_PRICEISFORSSI        VALUEBOOL,
  in a_CENAJEBEZDANI        BOOLBIT,
  in a_CENAJEZAJEDNOTKU     BOOLBIT,
  in a_ID                   IDINT,
  in a_MASTERID             IDINT,
  in a_COMMAND              E_HNDLParam,
  in a_FOCUSED              E_HNDLParam,
  in a_PARAMS               E_HNDLParam,
  in a_FORCE                FORCETXT default null
)  returns DODPOL_H_MnozstviPomerCenyChange_rs
language plpgsql security definer as $$
declare
  l_TAXGID                  REFIDINT;
  l_MENAID                  REFIDINT;
  l_CENAB                   CENAFLT;
  l_CENABSL                 CENAFLT;
  l_CENAS                   CENAFLT;
  l_CENASSL                 CENAFLT;
  l_CENABJ                  CENAFLT;
  l_CENABJSL                CENAFLT;
  l_CENABC                  CENAFLT;
  l_CENABCSL                CENAFLT;
  l_CENABJZM                CENAFLT;
  l_CENABJZMSL              CENAFLT;
  l_CENABDSKPJ              CENAFLT;
  l_CENABDSKPJSL            CENAFLT;
  l_RESULT                  DODPOL_H_MnozstviPomerCenyChange_rs;
begin

  -- Calculate ratio for newly created ssi - isi link from isi and ssi amounts
  -- inspite of default input a_CALCPOMER = false
  if (a_POMER is null) then
    a_CALCPOMER := true;
  end if;
  -- prepocty pouze pokud jsou vyplneny vsechny udaje
  case a_FOCUSED
    when 'mnozstvidskp' then
      -- dle pomeru a mnozstvi DODSKLADPOL vypocitam mnozstvi SKLADPOL
      if (a_MNOZSTVIDSKP is not null) then
        if (a_CALCPOMER = true) and (a_MNOZSTVI is not null) then
          -- počítám poměr
          if (a_MNOZSTVIDSKP <> 0) then
            a_POMER := a_MNOZSTVI / a_MNOZSTVIDSKP;
          else
            a_POMER := 0;
          end if;
        else
          if (a_CALCPOMER = false) and (coalesce(a_POMER,0) > 0) then
            -- počítam množství skladpol
            a_MNOZSTVI := a_MNOZSTVIDSKP * a_POMER;
          end if;
        end if;
      end if;
    when 'mnozstvi' then
      -- dle pomeru a mnozstvi SKLADPOL vypocitam mnozstvi DODSKLADPOL
      if (a_MNOZSTVI is not null) then
        if (a_CALCPOMER = true) and (a_MNOZSTVIDSKP is not null) then
          -- počítám poměr
          if (a_MNOZSTVIDSKP <> 0) then
            a_POMER := a_MNOZSTVI / a_MNOZSTVIDSKP;
          else
            a_POMER := 0;
          end if;
        else
          if (a_CALCPOMER = false) and (coalesce(a_POMER,0) > 0) then
            -- počítám množství dodskladpol
            a_MNOZSTVIDSKP := a_MNOZSTVI / a_POMER;
          end if;
        end if;
      end if;
    when 'pomer' then
      -- pouze pokud se nepočítá poměr a poměr je nenulový
      if (a_CALCPOMER = false) and (coalesce(a_POMER,0) <> 0) then
        -- dle pomeru a nektereho mnozstvi (musim zjistit dle ktereho) zaktualizuji to druhe
        if (coalesce(a_MNOZSTVIDSKP,0) <> 0) and (coalesce(a_MNOZSTVI,0) = 0) then
          -- vypocitam mnozstvi SKLADPOL
          a_MNOZSTVI := a_MNOZSTVIDSKP * a_POMER;
        elseif (coalesce(a_MNOZSTVIDSKP,0) = 0) and (coalesce(a_MNOZSTVI,0) <> 0) then
          -- vypocitam mnozstvi DODSKLADPOL
          a_MNOZSTVIDSKP := a_MNOZSTVI / a_POMER;
        elseif (coalesce(a_MNOZSTVIDSKP,0) <> 0) and (coalesce(a_MNOZSTVI,0) <> 0) and (a_MNOZSTVI / a_POMER <> a_MNOZSTVIDSKP) then
          -- obe mnozstvi zadana a pomer nesedi, musim se dotazat, ktere mnozstvi mam zaktualizovat
          case
            when admin_eng.CheckForce(a_FORCE,'AKTMNOZSTVIDSKP') is null and admin_eng.CheckForce(a_FORCE,'AKTMNOZSTVISKPL') is null and admin_eng.CheckForce(a_FORCE,'NEAKTUALIZUJMNOZ') is null then
              perform ASWError(39127, cast(array[admin_base.cm_RemoveDecimalZeroes(a_MNOZSTVIDSKP), admin_base.cm_RemoveDecimalZeroes(a_MNOZSTVI),
                                                 admin_base.cm_RemoveDecimalZeroes(a_POMER),
                                                 'AKTMNOZSTVIDSKP','AKTMNOZSTVISKPL','NEAKTUALIZUJMNOZ'] as text[]));

            when admin_eng.CheckForce(a_FORCE,'AKTMNOZSTVIDSKP') is not null then
              -- MNOZSTVISKPL / POMER = MNOZSTVIDSKP
              a_MNOZSTVIDSKP := a_MNOZSTVI / a_POMER;

            when admin_eng.CheckForce(a_FORCE,'AKTMNOZSTVISKPL') is not null then
              -- MNOZSTVIDSKP * POMER = MNOZSTVIDSKP
              a_MNOZSTVI := a_MNOZSTVIDSKP * a_POMER;
            else
          end case;

        end if;
      end if;
    else
  end case;

  select B_REFTABLE.a_ID into l_TAXGID from admin_base.B_REFTABLE('SEPTIMAPP','TAXGROUP','NAME',a_TAXGROUP,-1,'');
  if l_TAXGID is not null then
    select * into l_CENAB,l_CENABSL,l_CENAS,l_CENASSL,l_CENABJ,l_CENABJSL,l_CENABC,l_CENABCSL,l_CENABJZM,l_CENABJZMSL,l_CENABDSKPJ,l_CENABDSKPJSL
      from DODPOL__CalcCeny(a_MASTERID,l_TAXGID,a_MNOZSTVI,a_MNOZSTVIDSKP,a_POMER,a_CENA,a_CENASL,a_PRICEISFORSSI,a_CENAJEBEZDANI,a_CENAJEZAJEDNOTKU);
  end if;

  l_MENAID := DODAK_GetMenaID(a_MASTERID);

  case a_FOCUSED
    when 'mnozstvidskp' then
      l_RESULT.MNOZSTVIDSKP := a_MNOZSTVIDSKP;
      l_RESULT."~MNOZSTVIDSKP" := false;
      l_RESULT.MNOZSTVI := a_MNOZSTVI;
      l_RESULT.POMER := a_POMER;
      l_RESULT.CENABJ := MENA_FormatMena(coalesce(l_CENABJ,0), l_MENAID);
      l_RESULT.CENABJSL := MENA_FormatMena(coalesce(l_CENABJSL,0), l_MENAID);
      l_RESULT.CENABC := MENA_FormatMena(coalesce(l_CENABC,0), l_MENAID);
      l_RESULT.CENABCSL := MENA_FormatMena(coalesce(l_CENABCSL,0), l_MENAID);
      l_RESULT.CENABDSKPJ := MENA_FormatMena(coalesce(l_CENABDSKPJ,0), l_MENAID);
      l_RESULT.CENABDSKPJSL := MENA_FormatMena(coalesce(l_CENABDSKPJSL,0), l_MENAID);
      l_RESULT.CENABJZM := MENA_FormatDefaultMena(coalesce(l_CENABJZM,0));
      l_RESULT.CENABJZMSL := MENA_FormatDefaultMena(coalesce(l_CENABJZMSL,0));
    when 'mnozstvi' then
      l_RESULT.MNOZSTVIDSKP := a_MNOZSTVIDSKP;
      l_RESULT.MNOZSTVI := a_MNOZSTVI;
      l_RESULT."~MNOZSTVI" := false;
      l_RESULT.POMER := a_POMER;
      l_RESULT.CENABJ := MENA_FormatMena(coalesce(l_CENABJ,0), l_MENAID);
      l_RESULT.CENABJSL := MENA_FormatMena(coalesce(l_CENABJSL,0), l_MENAID);
      l_RESULT.CENABC := MENA_FormatMena(coalesce(l_CENABC,0), l_MENAID);
      l_RESULT.CENABCSL := MENA_FormatMena(coalesce(l_CENABCSL,0), l_MENAID);
      l_RESULT.CENABDSKPJ := MENA_FormatMena(coalesce(l_CENABDSKPJ,0), l_MENAID);
      l_RESULT.CENABDSKPJSL := MENA_FormatMena(coalesce(l_CENABDSKPJSL,0), l_MENAID);
      l_RESULT.CENABJZM := MENA_FormatDefaultMena(coalesce(l_CENABJZM,0));
      l_RESULT.CENABJZMSL := MENA_FormatDefaultMena(coalesce(l_CENABJZMSL,0));
    else
      l_RESULT.MNOZSTVIDSKP := a_MNOZSTVIDSKP;
      l_RESULT.MNOZSTVI := a_MNOZSTVI;
      l_RESULT.POMER := a_POMER;
      l_RESULT.CENABJ := MENA_FormatMena(coalesce(l_CENABJ,0), l_MENAID);
      l_RESULT.CENABJSL := MENA_FormatMena(coalesce(l_CENABJSL,0), l_MENAID);
      l_RESULT.CENABC := MENA_FormatMena(coalesce(l_CENABC,0), l_MENAID);
      l_RESULT.CENABCSL := MENA_FormatMena(coalesce(l_CENABCSL,0), l_MENAID);
      l_RESULT.CENABDSKPJ := MENA_FormatMena(coalesce(l_CENABDSKPJ,0), l_MENAID);
      l_RESULT.CENABDSKPJSL := MENA_FormatMena(coalesce(l_CENABDSKPJSL,0), l_MENAID);
      l_RESULT.CENABJZM := MENA_FormatDefaultMena(coalesce(l_CENABJZM,0));
      l_RESULT.CENABJZMSL := MENA_FormatDefaultMena(coalesce(l_CENABJZMSL,0));
  end case;
  return l_RESULT;
end; $$;

select grant_func('DODPOL_H_MnozstviPomerCenyChange', 'SPEXEC');


select ASWDropFunction('DODPOL_H_DODSKLADPOLChange');
/**
 * Handler called after the SSI was changed. If the ISI is not already filled in, it tries
 * to load a suitabgle ISI by the stored relation.
 */
drop type if exists admin_septim.DODPOL_H_DODSKLADPOLChange_rs cascade;
create type admin_septim.DODPOL_H_DODSKLADPOLChange_rs as (
  JEDNOTKYDSKP          JEDNOTKYSTR,
  POMER                 KOEFICIENTFLT_LARGE,
  "#POMER"              CISLOINT,
  CALCPOMER             BOOLBIT,
  MNOZSTVIDSKP          MNOZSTVIFLT,
  SKLADPOL              NAZEVSTR,
  MNOZSTVI              MNOZSTVIFLT,
  JEDNOTKY              JEDNOTKYSTR,
  ZASOBY                VALUETXT,
  AKTCENAS              B_VALUETXT,
  TAXGROUP              NAZEVSTR,
  CENABJSL              B_VALUETXT,
  "~CENABJSL"           BOOLBIT,
  CENABCSL              B_VALUETXT,
  "~CENABCSL"           BOOLBIT,
  CENABDSKPJ            B_VALUETXT,
  "~CENABDSKPJ"         BOOLBIT,
  CENABDSKPJSL          B_VALUETXT,
  "~CENABDSKPJSL"       BOOLBIT,
  CENABJZM              B_VALUETXT,
  "~CENABJZM"           BOOLBIT,
  CENABJZMSL            B_VALUETXT,
  "~CENABJZMSL"         BOOLBIT,
  CENABJ                B_VALUETXT,
  "~CENABJ"             BOOLBIT,
  CENABC                B_VALUETXT,
  "~CENABC"             BOOLBIT,
  "$FOCUS"              VALUESTR
);

create or replace function admin_septim.DODPOL_H_DODSKLADPOLChange(
  in a_DODSKLADPOL      NAZEVSTR,
  in a_POMER            KOEFICIENTFLT_LARGE,
  in a_CALCPOMER        BOOLBIT,
  in a_MNOZSTVIDSKP     MNOZSTVIFLT,
  in a_SKLADPOL         NAZEVSTR,
  in a_SKLAD            NAZEVSTR,
  in a_MNOZSTVI         MNOZSTVIFLT,
  in a_TAXGROUP         NAZEVSTR,
  in a_CENA             CENAFLT,
  in a_CENASL           CENAFLT,
  in a_PRICEISFORSSI    VALUEBOOL,
  in a_CENAJEBEZDANI    BOOLBIT,
  in a_CENAJEZAJEDNOTKU BOOLBIT,
  in a_ID               IDINT,
  in a_MASTERID         IDINT,
  in a_COMMAND          E_HNDLParam,
  in a_FOCUSED          E_HNDLParam,
  in a_PARAMS           E_HNDLParam,
  in a_FORCE            FORCETXT default null
) returns DODPOL_H_DODSKLADPOLChange_rs
language plpgsql security definer as $$
declare
  l_DSKPID              REFIDINT;
  l_SKPLID              REFIDINT;
  l_SKLDID              REFIDINT;
  l_JEDNOTKYDSKP        JEDNOTKYSTR;
  l_JEDNOTKY            JEDNOTKYSTR;
  l_POMER               KOEFICIENTFLT_LARGE;
  l_CALCPOMER           BOOLBIT;
  l_TAXGROUP            NAZEVSTR;
  l_ZASOBYTXT           VALUETXT;
  l_AKTCENAS            CENAFLT;
  l_ZMENAPOMER          BOOLBIT;
  l_TAXGID              REFIDINT;
  l_MENAID              REFIDINT;
  l_CENAB               CENAFLT;
  l_CENABSL             CENAFLT;
  l_CENAS               CENAFLT;
  l_CENASSL             CENAFLT;
  l_CENABJ              CENAFLT;
  l_CENABJSL            CENAFLT;
  l_CENABC              CENAFLT;
  l_CENABCSL            CENAFLT;
  l_CENABJZM            CENAFLT;
  l_CENABJZMSL          CENAFLT;
  l_CENABDSKPJ          CENAFLT;
  l_CENABDSKPJSL        CENAFLT;
  l_RESULT              DODPOL_H_DODSKLADPOLChange_rs;
begin

  l_RESULT."$FOCUS" = upper(a_FOCUSED);

  -- ziskani ID DODSKLADPOL
  select B_REFTABLEW.a_ID into l_DSKPID from B_REFTABLEW('SEPTIMAPP', 'DODSKLADPOL', 'NAZEV', concat('DODVID=', DODAK_GetDodavatelID(a_MASTERID)), a_DODSKLADPOL, -1, '');

  -- pokusim se najit skladpol
  select B_REFTABLE_EX.a_ID into l_SKPLID from admin_base.B_REFTABLE_EX('SEPTIMAPP','SKLADPOL','NAZEV','ZKRATKA',a_SKLADPOL,-1,'');

  if l_DSKPID is not null then
    -- nacteni jednotek DODSKLADPOL
    l_JEDNOTKYDSKP := DODSKLADPOL_GetJednotky(l_DSKPID);

    if coalesce(a_SKLADPOL,'') = '' then
      -- nezadana skladpol, pokusim se najit vhodnou - musi existovat prave jedna vazba DODSKLADPOL-SKLADPOL
      l_SKPLID := DODSKLADPOL_GetSkladPolID(l_DSKPID);
      if l_SKPLID is not null then
        -- nalezena, vratim ji
        a_SKLADPOL := SKLADPOL_GetNazev(l_SKPLID, false);
      end if;
    end if;

    l_ZMENAPOMER := false;
    if l_SKPLID is not null then
      -- ziskam pomer
      select * into l_POMER, l_CALCPOMER from DODSKLADPOL_GetPomerExt(l_DSKPID, l_SKPLID);
      if (l_POMER is not null) then
        if (coalesce(a_POMER,0) = 0) then
          -- nezadany nebo nulovy pomer, pouziju nalezeny
          a_POMER := l_POMER;
          a_CALCPOMER := l_CALCPOMER;
          l_ZMENAPOMER := true;
        elseif (a_POMER <> l_POMER) then
          -- pomer se lisi, dotaz na aktualizaci
          case
            when admin_eng.CheckForce(a_FORCE,'AKTUALIZUJZADANYPOMER') is null then
              perform ASWError(39149, cast(array[DODSKLADPOL_GetNazev(l_DSKPID), SKLADPOL_GetNazev(l_SKPLID),
                                                 admin_base.cm_RemoveDecimalZeroes(l_POMER), admin_base.cm_RemoveDecimalZeroes(a_POMER), 'AKTUALIZUJZADANYPOMER'] as text[]));
            when admin_eng.CheckForce(a_FORCE,'AKTUALIZUJZADANYPOMER') = 1 then
              a_POMER := l_POMER;
              a_CALCPOMER := l_CALCPOMER;
              l_ZMENAPOMER := true;
            else
          end case;
        end if;

      else
        -- neni vazba
        if (coalesce(a_POMER,0) = 0) then
          -- neni zadany pomer, nastavim 1
          a_POMER := 1;
          a_CALCPOMER := false;
          l_ZMENAPOMER := true;
        end if;
      end if;
    end if;

    if (l_ZMENAPOMER) and (a_POMER > 0 or a_CALCPOMER = true) then
      if a_CALCPOMER = false then
        -- aktualizace množství dle poměru
        if (coalesce(a_MNOZSTVIDSKP,0) <> 0) and (coalesce(a_MNOZSTVI,0) <> 0) and (a_MNOZSTVI / a_POMER <> a_MNOZSTVIDSKP) then
          case
            when admin_eng.CheckForce(a_FORCE,'AKTMNOZSTVIDSKP') is null and admin_eng.CheckForce(a_FORCE,'AKTMNOZSTVISKPL') is null and admin_eng.CheckForce(a_FORCE,'NEAKTUALIZUJMNOZ') is null then
              perform ASWError(39126, cast(array[DODSKLADPOL_GetNazev(l_DSKPID), SKLADPOL_GetNazev(l_SKPLID),
                                                 admin_base.cm_RemoveDecimalZeroes(a_MNOZSTVIDSKP), admin_base.cm_RemoveDecimalZeroes(a_MNOZSTVI),
                                                 admin_base.cm_RemoveDecimalZeroes(a_POMER),
                                                 'AKTMNOZSTVIDSKP','AKTMNOZSTVISKPL','NEAKTUALIZUJMNOZ'] as text[]));

            when admin_eng.CheckForce(a_FORCE,'AKTMNOZSTVIDSKP') is not null then
              -- MNOZSTVISKPL / POMER = MNOZSTVIDSKP
              a_MNOZSTVIDSKP := a_MNOZSTVI / a_POMER;

            when admin_eng.CheckForce(a_FORCE,'AKTMNOZSTVISKPL') is not null then
              -- MNOZSTVIDSKP * POMER = MNOZSTVIDSKP
              a_MNOZSTVI := a_MNOZSTVIDSKP * a_POMER;
          end case;
        end if;
        if (coalesce(a_MNOZSTVIDSKP,0) <> 0) and (coalesce(a_MNOZSTVI,0) = 0) then
          -- mnozstvi SKLADPOL z DSKP
          a_MNOZSTVI := a_MNOZSTVIDSKP * a_POMER;
        end if;
        if (coalesce(a_MNOZSTVIDSKP,0) = 0) and (coalesce(a_MNOZSTVI,0) <> 0) then
          -- mnozstvi DSKP ze SKLADPOL
          a_MNOZSTVIDSKP := a_MNOZSTVI / a_POMER;
        end if;
      else
        -- aktualizace poměru dle množství
        if (a_MNOZSTVI is not null) and (a_MNOZSTVIDSKP is not null) then
          if (a_MNOZSTVIDSKP <> 0) then
            a_POMER := a_MNOZSTVI / a_MNOZSTVIDSKP;
          else
            a_POMER := 0;
          end if;
        end if;
      end if;
    end if;

    select B_REFTABLE.a_ID into l_TAXGID from admin_base.B_REFTABLE('SEPTIMAPP','TAXGROUP','NAME',a_TAXGROUP,-1,'');
    if l_TAXGID is not null then
      select * into l_CENAB,l_CENABSL,l_CENAS,l_CENASSL,l_CENABJ,l_CENABJSL,l_CENABC,l_CENABCSL,l_CENABJZM,l_CENABJZMSL,l_CENABDSKPJ,l_CENABDSKPJSL
        from DODPOL__CalcCeny(a_MASTERID,l_TAXGID,a_MNOZSTVI,a_MNOZSTVIDSKP,a_POMER,a_CENA,a_CENASL,a_PRICEISFORSSI,a_CENAJEBEZDANI,a_CENAJEZAJEDNOTKU);
    end if;
  end if;

  if l_SKPLID is not null then
    -- ziskam i dalsi data skladpol
    l_JEDNOTKY := SKLADPOL_GetJednotky(l_SKPLID);
    l_TAXGROUP := SKLADPOL_GetTaxGroupName(l_SKPLID);

    -- pokusim se identifikovat sklad kvuli zasobam
    select B_REFTABLE_EX.a_ID into l_SKLDID from admin_base.B_REFTABLE_EX('SEPTIMAPP','SKLAD','NAZEV','ZKRATKA',a_SKLAD,-1,'SKLAD');
    l_ZASOBYTXT := DODPOL__GetZasobyTxt(l_SKPLID, l_SKLDID);

    -- a aktualni skladovou cenu
    select SKLADPOL_GetCeny.a_CENA0S into l_AKTCENAS from SKLADPOL_GetCeny(l_SKPLID, l_SKLDID, 1, null);
  end if;

  if l_TAXGID is not null then
    -- resultset i s cenami
    l_MENAID := DODAK_GetMenaID(a_MASTERID);
    l_RESULT.JEDNOTKYDSKP := coalesce(l_JEDNOTKYDSKP,'');
    l_RESULT.POMER := a_POMER;
    l_RESULT."#POMER" := case when a_CALCPOMER then 0 else 1 end;
    l_RESULT.CALCPOMER := a_CALCPOMER;
    l_RESULT.MNOZSTVIDSKP := a_MNOZSTVIDSKP;
    l_RESULT.SKLADPOL := a_SKLADPOL;
    l_RESULT.MNOZSTVI := a_MNOZSTVI;
    l_RESULT.JEDNOTKY := l_JEDNOTKY;
    l_RESULT.ZASOBY  := l_ZASOBYTXT;
    l_RESULT.AKTCENAS := case when l_AKTCENAS is not null then MENA_FormatDefaultMena(l_AKTCENAS) else null end;
    l_RESULT.TAXGROUP := coalesce(l_TAXGROUP,a_TAXGROUP);
    l_RESULT.CENABJSL := MENA_FormatMena(l_CENABJSL, l_MENAID);
    l_RESULT.CENABCSL := MENA_FormatMena(l_CENABCSL, l_MENAID);
    l_RESULT.CENABDSKPJ := cast((case when l_CENABDSKPJ is not null then MENA_FormatMena(l_CENABDSKPJ, l_MENAID) else null end) as B_VALUETXT);
    l_RESULT.CENABDSKPJSL := cast((case when l_CENABDSKPJSL is not null then MENA_FormatMena(l_CENABDSKPJSL, l_MENAID) else null end) as B_VALUETXT);
    l_RESULT.CENABJZM  := MENA_FormatDefaultMena(l_CENABJZM);
    l_RESULT.CENABJZMSL := MENA_FormatDefaultMena(l_CENABJZMSL);
    l_RESULT.CENABJ := MENA_FormatMena(l_CENABJ, l_MENAID);
    l_RESULT.CENABC := MENA_FormatMena(l_CENABC, l_MENAID);
  else
    -- resultset bez cen
    l_RESULT.JEDNOTKYDSKP := coalesce(l_JEDNOTKYDSKP,'');
    l_RESULT.POMER := a_POMER;
    l_RESULT."#POMER" := case when a_CALCPOMER then 0 else 1 end;
    l_RESULT.CALCPOMER := a_CALCPOMER;
    l_RESULT.MNOZSTVIDSKP := a_MNOZSTVIDSKP;
    l_RESULT.SKLADPOL := a_SKLADPOL;
    l_RESULT.MNOZSTVI := a_MNOZSTVI;
    l_RESULT.JEDNOTKY := l_JEDNOTKY;
    l_RESULT.ZASOBY  := l_ZASOBYTXT;
    l_RESULT.AKTCENAS := case when l_AKTCENAS is not null then MENA_FormatDefaultMena(l_AKTCENAS) else null end;
    l_RESULT.TAXGROUP := coalesce(l_TAXGROUP,a_TAXGROUP);
    l_RESULT.CENABJSL := null;
    l_RESULT."~CENABJSL" := false;
    l_RESULT.CENABCSL := null;
    l_RESULT."~CENABCSL" := false;
    l_RESULT.CENABDSKPJ := null;
    l_RESULT."~CENABDSKPJ" := false;
    l_RESULT.CENABDSKPJSL := null;
    l_RESULT."~CENABDSKPJSL" := false;
    l_RESULT.CENABJZM  := null;
    l_RESULT."~CENABJZM" := false;
    l_RESULT.CENABJZMSL := null;
    l_RESULT."~CENABJZMSL" := false;
    l_RESULT.CENABJ := null;
    l_RESULT."~CENABJ" := false;
    l_RESULT.CENABC := null;
    l_RESULT."~CENABC" := false;
  end if;

  if coalesce(l_RESULT.POMER, 0) = 0 and not l_RESULT.CALCPOMER then
    l_RESULT."$FOCUS" = upper('POMER');
  elsif coalesce(l_RESULT.MNOZSTVIDSKP, 0) = 0 then
    l_RESULT."$FOCUS" = upper('MNOZSTVIDSKP');
  end if;

  return l_RESULT;
end; $$;

select grant_func('DODPOL_H_DODSKLADPOLChange', 'SPEXEC');


select ASWDropFunction('DODPOL_H_CALCPOMERChange');

drop type if exists admin_septim.DODPOL_H_CALCPOMERChange_rs cascade;
create type admin_septim.DODPOL_H_CALCPOMERChange_rs as (
  "#POMER"      CISLOINT,
  POMER         KOEFICIENTFLT_LARGENU
);

/**
 * It is a handler for changing checkbox "Poměr je proměnlivý" ("Ratio is calculated automatically").
 * If checkbox is set, then ratio will be disabled and calculated automatically.
 * If checkbox is unset then ratio is enabled and can be set manually
 */
create or replace function admin_septim.DODPOL_H_CALCPOMERChange(
  in    a_CALCPOMER         BOOLBIT,
  in    a_MNOZSTVI          MNOZSTVIFLT_NU,
  in    a_MNOZSTVIDSKP      MNOZSTVIFLT_NU,
  in    a_POMER             KOEFICIENTFLT_LARGENU,
  in    a_ID                IDINT,
  in    a_MASTERID          IDINT,
  in    a_COMMAND           E_HNDLParam,
  in    a_FOCUSED           E_HNDLParam,
  in    a_PARAMS            E_HNDLParam
) returns setof DODPOL_H_CALCPOMERChange_rs
language plpgsql security definer as $$
begin

  return query
    select
      cast((case when a_CALCPOMER then 0 else 1 end) as CISLOINT) as "#POMER",
      cast((case
              when a_CALCPOMER then
                case
                  when coalesce(a_MNOZSTVI, 0) <> 0 and coalesce(a_MNOZSTVIDSKP, 0) <> 0 then
                    a_MNOZSTVI / a_MNOZSTVIDSKP
                  else
                    null
                  end
              else
                a_POMER
            end) as KOEFICIENTFLT_LARGENU) as POMER;
end; $$;

select grant_func('DODPOL_H_CALCPOMERChange', 'SPEXEC');



select ASWDropProcedure('DODPOL__GetZasobyTxt');
create or replace function admin_septim.DODPOL__GetZasobyTxt (
  in  a_SKPLID      REFIDINT_NU,
  in  a_SKLDID      REFIDINT_NU
) returns VALUETXT
language plpgsql security definer as $$
begin

  return concat(B_FormatStr('%.2f', ZASOBY_GetZasoby(a_SKPLID, a_SKLDID)), ' (', B_FormatStr('%.2f', ZASOBY_GetZasobyAll(a_SKPLID)), ')');

end; $$;


select ASWDropProcedure('DODPOL__CalcCeny');
/**
* Funkce pro prepocet cen ulozenych v DODPOL dle zadanych cen.
*/
create or replace function admin_septim.DODPOL__CalcCeny(
  in    a_DODKID            REFIDINT,             -- delivery note ID
  in    a_TAXGID            REFIDINT,             -- tax group ID
  in    a_MNOZSTVI          MNOZSTVIFLT,          -- amount of the internal stock item (ISI)
  in    a_MNOZSTVIDSKP      MNOZSTVIFLT,          -- amount of the supplier stock item (SSI)
  in    a_POMER             KOEFICIENTFLT_LARGE,  -- ration between ISI and SSI
  in    a_CENA              CENAFLT,
  in    a_CENASL            CENAFLT,
  in    a_PRICEISFORSSI     VALUEBOOL,
  in    a_CENAJEBEZDANI     BOOLBIT,
  in    a_CENAJEZAJEDNOTKU  BOOLBIT,
  out   a_CENAB             CENAFLT,
  out   a_CENABSL           CENAFLT,
  out   a_CENAS             CENAFLT,
  out   a_CENASSL           CENAFLT,
  out   a_CENABJ            CENAFLT,
  out   a_CENABJSL          CENAFLT,
  out   a_CENABC            CENAFLT,
  out   a_CENABCSL          CENAFLT,
  out   a_CENABJZM          CENAFLT,
  out   a_CENABJZMSL        CENAFLT,
  out   a_CENABDSKPJ        CENAFLT,
  out   a_CENABDSKPJSL      CENAFLT
)
language plpgsql security definer as $$
declare
  l_ZAOKROUHLENI          CISLOINT;
  l_KURSHODN              CENAFLT;
  l_KURSJEDN              MNOZSTVIFLT;
begin

  if (a_TAXGID is null) then
    -- There is incomplete input data -> exit
    return;
  end if;

  --- get rounding type
  l_ZAOKROUHLENI := admin_params.P_GetGlobalParamINT('SKLAD','ZAOKROUHLENI');

  --- get exchange info from a delivery note
  select
    KURSJEDNUZIV, KURSHODNUZIV
  into
    l_KURSJEDN, l_KURSHODN
  from
    DODAK
  where
    DODKID = a_DODKID;

  a_CENA := coalesce(a_CENA, 0);
  a_CENASL := coalesce(a_CENASL, 0);

  -- prices according to the entered price
  select PRICEWOT, PRICEWIT into a_CENAB, a_CENAS from TAXGROUP_Calc(a_CENA, a_TAXGID, a_CENAJEBEZDANI);
  select PRICEWOT, PRICEWIT into a_CENABSL, a_CENASSL from TAXGROUP_Calc(a_CENASL, a_TAXGID, a_CENAJEBEZDANI);

  if    (not a_PRICEISFORSSI and coalesce(a_MNOZSTVI, 0) = 0)
     or (    a_PRICEISFORSSI and coalesce(a_MNOZSTVIDSKP, 0) = 0)
  then
    -- If the ISI amount is not set or if the prices is calculated from SSI price but SSI amount is not set
    -- quit the calculation
    return;
  end if;

  if a_PRICEISFORSSI then
    -- work with the supplier stock item price
    if (a_CENAJEZAJEDNOTKU = true) then

      -- total price = unit price * quantity
      select PRICEWOT into a_CENABC from TAXGROUP_Calc(a_CENA * a_MNOZSTVIDSKP, a_TAXGID, a_CENAJEBEZDANI);
      select PRICEWOT into a_CENABCSL from TAXGROUP_Calc(a_CENASL * a_MNOZSTVIDSKP, a_TAXGID, a_CENAJEBEZDANI);

      -- unit DSKP
      -- pouziva se dodskladpol (a_CENA a a_CENASL jsou za DODSKLADPOL)
      select PRICEWOT into a_CENABDSKPJ from TAXGROUP_Calc(a_CENA, a_TAXGID, a_CENAJEBEZDANI);
      select PRICEWOT into a_CENABDSKPJSL from TAXGROUP_Calc(a_CENASL, a_TAXGID, a_CENAJEBEZDANI);
    else
      -- price of the entire quantity

      -- total price
      select PRICEWOT into a_CENABC from TAXGROUP_Calc(a_CENA, a_TAXGID, a_CENAJEBEZDANI);
      select PRICEWOT into a_CENABCSL from TAXGROUP_Calc(a_CENASL, a_TAXGID, a_CENAJEBEZDANI);

      -- unit DSKP
      -- pouziva se dodskladpol (a_CENA a a_CENASL jsou za DODSKLADPOL)
      if (coalesce(a_MNOZSTVIDSKP,0) = 0) then
        a_CENABDSKPJ := 0;
        a_CENABDSKPJSL := 0;
      else
        select PRICEWOT into a_CENABDSKPJ from TAXGROUP_Calc(a_CENA/a_MNOZSTVIDSKP, a_TAXGID, a_CENAJEBEZDANI);
        select PRICEWOT into a_CENABDSKPJSL from TAXGROUP_Calc(a_CENASL/a_MNOZSTVIDSKP, a_TAXGID, a_CENAJEBEZDANI);
      end if;
    end if;

  else
    -- work with internal stock item price
    if (a_CENAJEZAJEDNOTKU = true) then
      -- price per unit
      -- total price = unit price * quantity
      select PRICEWOT into a_CENABC from TAXGROUP_Calc(a_CENA * a_MNOZSTVI, a_TAXGID, a_CENAJEBEZDANI);
      select PRICEWOT into a_CENABCSL from TAXGROUP_Calc(a_CENASL * a_MNOZSTVI, a_TAXGID, a_CENAJEBEZDANI);
    else
      -- price of the entire quantity
      -- total price
      select PRICEWOT into a_CENABC from TAXGROUP_Calc(a_CENA, a_TAXGID, a_CENAJEBEZDANI);
      select PRICEWOT into a_CENABCSL from TAXGROUP_Calc(a_CENASL, a_TAXGID, a_CENAJEBEZDANI);
    end if;

    -- unit DSKP
    -- nepouziva se DODSKLADPOL
    a_CENABDSKPJ := null;
    a_CENABDSKPJSL := null;

  end if;

  -- ISI prices can be calculated only if the ISI amount is provided
  if coalesce(a_MNOZSTVI, 0) <> 0 then

    -- ISI unit price
    a_CENABJ   := round(a_CENABC/a_MNOZSTVI, l_ZAOKROUHLENI);
    a_CENABJSL := round(a_CENABCSL/a_MNOZSTVI, l_ZAOKROUHLENI);

    -- ISI unit price in basic price
    a_CENABJZM   := round(l_KURSHODN/l_KURSJEDN * a_CENABJ, l_ZAOKROUHLENI);
    a_CENABJZMSL := round(l_KURSHODN/l_KURSJEDN * a_CENABJSL, l_ZAOKROUHLENI);

  end if;

end; $$;


select ASWDropProcedure('DODPOL_DODAKDODOBJDODVInsert');
/**
 * Funkce pro vlozeni nedodanych polozek objednavky do dodaku.
 */
create or replace function admin_septim.DODPOL_DODAKDODOBJDODVInsert(
  in  a_DODKID            REFIDINT,   -- ID DODAK
  in  a_DOBDID            REFIDINT,   -- ID DODOBJDODV
  in  a_FORCE             FORCETXT
) returns void
language plpgsql security definer as $$
declare
  l_DODVID                REFIDINT;
  l_REALNASKL             DATUMCASTS;
  l_SLEVAPROC             KOEFICIENTFLT;
  l_TRVANDC               DATUMCASTS;
  l_PARMID                REFIDINT;
  l_TRVAN                 CISLOINT;
  c_KAPPID                INTEGER;
  l_ID                    IDINT;
  kurzor1                 RECORD;
begin

  -- nacteni dodavatele dodaku + naskladneni
  l_DODVID := DODAK_GetDodavatelID(a_DODKID);
  l_REALNASKL := DODAK_GetRealnasklDC(a_DODKID);
  l_SLEVAPROC := 0;

  c_KAPPID := SESSIONVarGet('c_KAPPID');
  l_PARMID := KLIENTAPP_GetParamID(c_KAPPID);
  l_TRVAN := P_GetParam(l_PARMID,'ZADANIDODLIST','DEFTRVANLIVOST');
  l_TRVANDC := CAST(LOCALTIMESTAMP + interval '1 day' * l_TRVAN AS DATE);

  FOR kurzor1 in
    select DS.DOBSID, DS.DSKPID, DS.SKPLID, DS.SKLDID, DS.TAXGID, DS.CENAJ, DS.CENAJEBEZDANI, DS.DODSKLADPOLPOMER as POMER,
           (coalesce(DS.DODSKLADPOLPOMER,0) * coalesce(DS.MNOZDSKPOBJEDN,0)) - DS.MNOZSKPLDODANO as MNOZSTVISKPLNEDODANO
      from DODOBJSKPL as DS
        join DODOBJDODV as DV on DS.DOBDID = DV.DOBDID
      where DS.SMAZAN = 0 and DS.DOBDID = a_DOBDID and DV.DODVID = l_DODVID
        and ((coalesce(DS.DODSKLADPOLPOMER,0) * coalesce(DS.MNOZDSKPOBJEDN,0)) - DS.MNOZSKPLDODANO > 0)
  loop

    -- Permission check
    -- In-storage delivery note
    if l_REALNASKL is not null then
      perform SKLAD_CheckPerm('SKLADPRIJMY\INSDODKSKPL', l_REALNASKL, kurzor1.SKLDID, 0, null, 'DODPOL', null, a_DODKID, 'DODAK', 'SKLADPRIJMY\INSVLDODKSKPL');
      perform SKLAD_StrediskaCheck('SKLADZAKLAD\STRDUNLIMITED', 0, kurzor1.SKLDID);
    -- Pending delivery note
    else
      perform SKLAD_CheckPermNoTime('SKLADPRIJMY\PENDINGDNITEMEDT', 0, null, 'DODPOL', null, a_DODKID, 'DODAK', 'SKLADPRIJMY\PENDINGDNITEMOWNEREDT');
    end if;

    select * into l_ID
      from DODPOL__BasicInsert(a_DODKID, kurzor1.DSKPID, kurzor1.POMER, false,  -- false=CALCPOMER
                               (case when coalesce(kurzor1.POMER,0) = 0 then null else kurzor1.MNOZSTVISKPLNEDODANO / kurzor1.POMER end), -- pomer by nikdy nemel byt 0, pouze pojistka
                               kurzor1.SKPLID, kurzor1.SKLDID, kurzor1.MNOZSTVISKPLNEDODANO, l_TRVANDC, l_SLEVAPROC,
                               kurzor1.TAXGID, kurzor1.CENAJ, kurzor1.CENAJ, true, kurzor1.CENAJEBEZDANI, true, null, false, a_FORCE);  -- CENA, CENASL, true=jednotkova cena, null=sernr, false - zkontr
    -- vytvoreni vazby
    perform DODOBJDODPOL_Insert(kurzor1.DOBSID, l_ID);
    -- uprava dodaneho mnozstvi polozky
    perform DODOBJSKPL_UpdateDodMnozstvi(kurzor1.DOBSID, kurzor1.MNOZSTVISKPLNEDODANO, false); -- false=oprava
    -- release ordered items from stock
    perform DODOBJSKPL_ReleaseFromStockDodpolPair(kurzor1.DOBSID, a_FORCE);
  end loop;

  -- refresh cen
  perform DODAK_RefreshCeny(a_DODKID);

end; $$;


select ASWDropProcedure('DODPOL_DODAKDODOBJDODVDelete');
create or replace function admin_septim.DODPOL_DODAKDODOBJDODVDelete(
  in  a_DODKID            REFIDINT,   -- ID DODAK
  in  a_DOBDID            REFIDINT,   -- ID DODOBJDODV
  in  a_FORCE             FORCETXT
) returns void
language plpgsql security definer as $$
declare
  l_REALNASKL             DATUMCASTS;
  l_TAXDIDLIST            int[];
  kurzor1                 RECORD;
begin

  l_REALNASKL := DODAK_GetRealnasklDC(a_DODKID);

  -- uložení všech TAXDID smazaných položek
  select array(select cast(DPT.TAXDID as int) TAXDID
    from DODPOL as DP
      join DODOBJDODPOL as DODP on DP.DODPID = DODP.DODPID
      join DODOBJSKPL as DS on DODP.DOBSID = DS.DOBSID
      join DODPOLTAX as DPT on DP.DODPID = DPT.DODPID
    where DP.SMAZAN = 0 and DODP.SMAZAN = 0 and DS.SMAZAN = 0
      and DP.DODKID = a_DODKID and DS.DOBDID = a_DOBDID
    group by DPT.TAXDID
  ) into l_TAXDIDLIST;

  FOR kurzor1 in
    select DP.DODPID, DP.SKLDID
      from DODPOL as DP
        join DODOBJDODPOL as DODP on DP.DODPID = DODP.DODPID
        join DODOBJSKPL as DS on DODP.DOBSID = DS.DOBSID
      where DP.SMAZAN = 0 and DODP.SMAZAN = 0 and DS.SMAZAN = 0
        and DP.DODKID = a_DODKID and DS.DOBDID = a_DOBDID
  loop

    -- kontrola opravneni
    if l_REALNASKL is not null then
      perform SKLAD_CheckPerm('SKLADPRIJMY\UPDDELDODKSKPL', l_REALNASKL, kurzor1.SKLDID, 0, kurzor1.DODPID, 'DODPOL', 'SKLADPRIJMY\UPDDELDODKVLSKPL', a_DODKID, 'DODAK', 'SKLADPRIJMY\UPDDELVLDODKSKPL');
      perform SKLAD_StrediskaCheck('SKLADZAKLAD\STRDUNLIMITED', 0, kurzor1.SKLDID);
    else
      perform SKLAD_CheckPermNoTime('SKLADPRIJMY\PENDINGDNITEMEDT', 0, null, 'DODPOL', null, a_MASTERID, 'DODAK', 'SKLADPRIJMY\PENDINGDNITEMOWNEREDT');
    end if;

    -- odstraneni vazby
    perform DODPOL__Delete(kurzor1.DODPID, a_FORCE, false);

  end loop;

  -- smazani nadbytečných DODAKTAX
  perform DODAKTAX_DeleteUnused(a_DODKID);

  -- upozornění na změny v daních
  perform DODAKTAX_CheckZmenyList(a_DODKID, l_TAXDIDLIST, a_FORCE);

  -- refresh cen v dodaku
  perform DODAK_RefreshCeny(a_DODKID);

end; $$;


select ASWDropProcedure('DODPOL__JeSparovana');
/**
* Funkce vracející true, pokud existuje vazba v rámci DODOBJDODPOL, false, pokud neexistuje.
*/
create or replace function admin_septim.DODPOL__JeSparovana(
  in  a_DODPID            IDINT
) returns BOOLBIT
language plpgsql security definer as $$
begin

  if exists(select 1 from DODOBJDODPOL where SMAZAN = 0 and DODPID = a_DODPID) then
    -- existuje vazba na polozku objednavky
    return true;
  else
    -- neexistuje vazba na polozku objednavky
    return false;
  end if;

end; $$;



select ASWDropProcedure('DODPOL__GetObjednanoDodano');
/**
* Funkce vracející údaje o objednaném množství a množství dodaném přes jiný dodací list položky objednávky, se kterou je položka dodacího listu spárována.
*/
create or replace function admin_septim.DODPOL__GetObjednanoDodano(
  in  a_DODPID            IDINT,
  out a_OBJEDNANO         MNOZSTVIFLT,
  out a_DODANO            MNOZSTVIFLT
)
language plpgsql security definer as $$
begin

  -- objednane mnozstvi
  select coalesce(DS.DODSKLADPOLPOMER,0) * coalesce(DS.MNOZDSKPOBJEDN,0) into a_OBJEDNANO
    from DODOBJDODPOL as DODP
      join DODOBJSKPL as DS on DODP.DOBSID = DS.DOBSID
    where DODP.SMAZAN = 0 and DODP.DODPID = a_DODPID;
  -- pokud neni objednano, vracim nulu
  a_OBJEDNANO := coalesce(a_OBJEDNANO,0);

  -- mnozstvi dodane pres jine dodaci listy
  select sum(DP.MNOZSTVI) into a_DODANO
    from DODOBJDODPOL as DODP
      join DODOBJDODPOL as DODP2 on DODP.DOBSID = DODP2.DOBSID
      join DODPOL as DP on DODP2.DODPID = DP.DODPID
    where DODP.SMAZAN = 0 and DODP2.SMAZAN = 0 and DP.SMAZAN = 0
      and DODP.DODPID = a_DODPID and DODP2.DODPID <> a_DODPID;
  -- pokud neni dodano, vracim nulu
  a_DODANO := coalesce(a_DODANO,0);

end; $$;


select ASWDropProcedure('DODPOL__GetDODOBJSKPLToPair');
/**
* Funkce vracejici ID polozky sparovane objednavky, ktera nebyla dodana.
*/
create or replace function admin_septim.DODPOL__GetDODOBJSKPLToPair (
  in  a_DODKID      REFIDINT,
  in  a_DSKPID      REFIDINT,
  in  a_SKPLID      REFIDINT,
  in  a_SKLDID      REFIDINT,
  in  a_MNOZSTVI    MNOZSTVIFLT
) returns REFIDINT
language plpgsql security definer as $$
declare
  l_DOBDIDLIST    int[];
  l_DOBSID        REFIDINT;
begin

  -- nacteni ID DODOBJDODV dodavatele dodaku a vsech sparovanych objednavek - pouze nevyrizene
  select array(select cast(DV.DOBDID as int) DOBDID
    from DODPOL as DP
      join DODOBJDODPOL as DODP on DP.DODPID = DODP.DODPID
      join DODOBJSKPL as DS on DODP.DOBSID = DS.DOBSID
      join DODOBJDODV as DV on DS.DOBDID = DV.DOBDID
    where DP.SMAZAN = 0 and DODP.SMAZAN = 0 and DS.SMAZAN = 0 and DV.SMAZAN = 0
      and DP.DODKID = a_DODKID and DV.DODVID = DODAK_GetDodavatelID(a_DODKID) and DV.VYRIZENO = false
    group by DV.DOBDID
  ) into l_DOBDIDLIST;

  -- pokusim se najit polozku dle presne zadanych udaju
  select DS.DOBSID into l_DOBSID
    from DODOBJSKPL as DS
    where DS.SMAZAN = 0 and DS.DOBDID in (select cast(ID as INTEGER) from unnest(l_DOBDIDLIST) as ID)
      and DS.SKPLID = a_SKPLID and DS.SKLDID = a_SKLDID and DS.DSKPID = a_DSKPID
      and ((coalesce(DS.DODSKLADPOLPOMER,0) * coalesce(DS.MNOZDSKPOBJEDN,0)) - DS.MNOZSKPLDODANO = a_MNOZSTVI)
    order by DS.DOBSID
    limit 1;

  if l_DOBSID is null then
    -- nepovedlo se nalezt polozku objednavky, zkusim nezohlednit DODSKLADPOL a hledam polozku s nedodanym mnozstvim vetsim nebo rovnym zadanemu mnozstvi
    select DS.DOBSID into l_DOBSID
      from DODOBJSKPL as DS
      where DS.SMAZAN = 0 and DS.DOBDID in (select cast(ID as INTEGER) from unnest(l_DOBDIDLIST) as ID)
        and DS.SKPLID = a_SKPLID and DS.SKLDID = a_SKLDID
        --and DS.DSKPID = a_DSKPID
        and ((coalesce(DS.DODSKLADPOLPOMER,0) * coalesce(DS.MNOZDSKPOBJEDN,0)) - DS.MNOZSKPLDODANO >= a_MNOZSTVI)
      order by ((coalesce(DS.DODSKLADPOLPOMER,0) * coalesce(DS.MNOZDSKPOBJEDN,0)) - DS.MNOZSKPLDODANO), DS.DOBSID
      limit 1;
  end if;

  if l_DOBSID is null then
    -- stale nemam polozku objednavky, opet nezohlednim DODSKLADPOL, ale hledam polozku s libovolnym nedodanym mnozstvim
    select DS.DOBSID into l_DOBSID
      from DODOBJSKPL as DS
      where DS.SMAZAN = 0 and DS.DOBDID in (select cast(ID as INTEGER) from unnest(l_DOBDIDLIST) as ID)
        and DS.SKPLID = a_SKPLID and DS.SKLDID = a_SKLDID
        --and DS.DSKPID = a_DSKPID
        and ((coalesce(DS.DODSKLADPOLPOMER,0) * coalesce(DS.MNOZDSKPOBJEDN,0)) - DS.MNOZSKPLDODANO > 0)   -- mam nedodane mnozstvi
      order by ((coalesce(DS.DODSKLADPOLPOMER,0) * coalesce(DS.MNOZDSKPOBJEDN,0)) - DS.MNOZSKPLDODANO) desc, DS.DOBSID
      limit 1;
  end if;

  return l_DOBSID;

end; $$;



select ASWDropProcedure('DODPOL__CheckMnozstviCena');
/**
 * Check the item's specified price
*/
create or replace function admin_septim.DODPOL__CheckMnozstviCena (
  in  a_DODPID              IDINT,
  in  a_MASTERID            REFIDINT,
  in  a_DOBSID              REFIDINT,
  in  a_SKPLID              REFIDINT,
  in  a_SKLDID              REFIDINT,
  in  a_DSKPID              REFIDINT_NU,
  in  a_TAXGID              REFIDINT,
  in  a_MNOZSTVI            MNOZSTVIFLT,
  in  a_MNOZSTVIDSKP        MNOZSTVIFLT_NU,
  in  a_POMER               KOEFICIENTFLT_LARGENU,
  in  a_CENA                CENAFLT,
  in  a_CENASL              CENAFLT,
  in  a_PRICEISFORSSI       VALUEBOOL,
  in  a_CENAJEBEZDANI       BOOLBIT,
  in  a_CENAJEZAJEDNOTKU    BOOLBIT,
  in  a_FORCE               FORCETXT
) returns void
language plpgsql security definer as $$
declare
  l_DOBSID                  REFIDINT;
  l_DSKPID                  REFIDINT_NU;
  l_CENABJZMSL              CENAFLT;
  l_CENABDSKPJSL            CENAFLT;
  l_OBJEDNAVKOVA_CENA       CENAFLT;
  l_ACTMENAID               REFIDINT;
  l_DODAKMENAID             REFIDINT;
  l_AKTCENA                 CENAFLT;
  l_MNOZOBJEDN              MNOZSTVIFLT;
begin

  -- paired order detection
  -- pairing is not yet saved, but may already be proposed
  if a_DODPID is null then
    l_DOBSID := a_DOBSID;
  else
    select DOBSID into l_DOBSID from DODOBJDODPOL where SMAZAN = 0 and DODPID = a_DODPID;
  end if;

  l_DODAKMENAID := DODAK_GetMenaID(a_MASTERID);

  -- DODPOL price determination for comparison with the other prices
  select a_CENABDSKPJSL, a_CENABJZMSL into l_CENABDSKPJSL, l_CENABJZMSL
    from DODPOL__CalcCeny(a_MASTERID, a_TAXGID, a_MNOZSTVI, a_MNOZSTVIDSKP, a_POMER, a_CENA, a_CENASL, a_PRICEISFORSSI, a_CENAJEBEZDANI, a_CENAJEZAJEDNOTKU);

  -- Check the paired order price - against the order price
  if l_DOBSID is not null then

    -- we get the unit price of the order item in the order currency
    select DS.CENABJ, DV.MENAID, DS.MNOZDSKPOBJEDN * DS.DODSKLADPOLPOMER
      into l_OBJEDNAVKOVA_CENA, l_ACTMENAID, l_MNOZOBJEDN
    from DODOBJDODPOL as DODP
      join DODOBJSKPL as DS on DODP.DOBSID = DS.DOBSID
      join DODOBJDODV as DV on DS.DOBDID = DV.DOBDID
    where DODP.SMAZAN = 0 and DODP.DODPID = a_DODPID and DS.DOBSID = l_DOBSID;

    if l_ACTMENAID <> l_DODAKMENAID then
      perform admin_base.ASWError(39174, cast(array[MENA_GetNazev(l_DODAKMENAID), MENA_GetNazev(l_ACTMENAID)] as text[]));
    end if;

    -- price control
    perform DODPOL__CheckCenaJeVToleranci (
      a_CENA := l_CENABDSKPJSL,           -- we compare the unit price without tax after discount
      a_CENAREF := l_OBJEDNAVKOVA_CENA,   -- with a unit price, excluding order tax
      a_PERMNEOMEZENE := 'SKLADPRIJMY\DODPOLCENYNEOMEZENE',
      a_PERMROZSAH := 'SKLADPRIJMY\DODPOLCENYROZSAH',
      a_ODCHYLKA_PERM := SKLADPOL_GetToleranceCeny(a_SKPLID, 'TOLERCENAOBJPERM'),
      a_ODCHYLKA_VAROVANI := SKLADPOL_GetToleranceCeny(a_SKPLID, 'TOLERCENAOBJWAR'),
      a_ERRORBASE_MIMOROZSAH := 39168,
      a_ERRORBASE_VROZSAHU := 39169,
      a_ERRORBASE_VAR := 39170,
      a_FORCE := a_FORCE
    );

    -- check of delivered quantity against ordered quantity
    perform DODPOL__CheckMnozstviJeVToleranci (
      a_MNOZSTVI := a_MNOZSTVI,           -- we compare the ordered quantity of dodskladpol
      a_MNOZSTVIREF := l_MNOZOBJEDN,      -- with the quantity dodskladpol from the order
      a_PERMNEOMEZENE := 'SKLADPRIJMY\DODPOLMNOZSTVINEOMEZENE',
      a_PERMROZSAH := 'SKLADPRIJMY\DODPOLMNOZSTVIROZSAH',
      a_ODCHYLKA_PERM := cast(coalesce(P_GetGlobalParamREAL('SKLAD', 'DODPOL_TOLERANCEMNOZSTVIPERM'), 0) as KOEFICIENTFLT),
      a_ODCHYLKA_VAROVANI := cast(coalesce(P_GetGlobalParamREAL('SKLAD', 'DODPOL_TOLERANCEMNOZSTVIVAR'), 0) as KOEFICIENTFLT),
      a_ERRORBASE_MIMOROZSAH := 39175,
      a_ERRORBASE_VROZSAHU := 39176,
      a_ERRORBASE_VAR := 39177,
      a_FORCE := a_FORCE
    );
  -- Check the supplier price if order does not yet exist and supplier stock item is not null
  elseif (l_DOBSID is null) and (a_DSKPID is not null) then

    -- seek for SSI most actual price in delivery note currency
    select CENAB into l_AKTCENA from DODSKLADPOL_GetCenaByDeliveryDate(a_DSKPID, DODAK_GetNaskladneniDC(a_MASTERID), l_DODAKMENAID);
    if l_AKTCENA is null and admin_eng.CheckForce(a_FORCE, 'NOTCHECKPRICEDIFF') is null then
      -- seek for any SSI price, even base
      select CENAB into l_AKTCENA from DODSKLADPOL_GetCenaByDeliveryDate(a_DSKPID, DODAK_GetNaskladneniDC(a_MASTERID));
      if l_AKTCENA is not null then
        -- finally we raise warning only if any actual or base price with another currency exists
        perform admin_base.ASWError(39194, cast(array[MENA_GetNazev(l_DODAKMENAID)] as text[]));
      end if;
    end if;

    if l_AKTCENA is not null then
      -- price control
      perform DODPOL__CheckCenaJeVToleranci (
        a_CENA := l_CENABDSKPJSL,           -- we compare the unit price without tax after discount
        a_CENAREF := l_AKTCENA,             -- with the most actual price, excluding order tax
        a_PERMNEOMEZENE := 'SKLADPRIJMY\DODPOLCENYNEOMEZENE',
        a_PERMROZSAH := 'SKLADPRIJMY\DODPOLCENYROZSAH',
        a_ODCHYLKA_PERM := SKLADPOL_GetToleranceCeny(a_SKPLID, 'TOLERCENAOBJPERM'),
        a_ODCHYLKA_VAROVANI := SKLADPOL_GetToleranceCeny(a_SKPLID, 'TOLERCENAOBJWAR'),
        a_ERRORBASE_MIMOROZSAH := 39191,
        a_ERRORBASE_VROZSAHU := 39192,
        a_ERRORBASE_VAR := 39193,
        a_FORCE := a_FORCE
      );
    end if;

  -- Check the price of the delivery note item not matched to the order item and to the SSI
  else

    -- we determine the current price of the stock item
    select a_CENA0S into l_AKTCENA from SKLADPOL_GetCeny(a_SKPLID, a_SKLDID, 1, null);

    perform DODPOL__CheckCenaJeVToleranci (
      a_CENA := l_CENABJZMSL,           -- we compare the unit price without tax after discount
      a_CENAREF := l_AKTCENA,           -- with the stock item price
      a_PERMNEOMEZENE := 'SKLADPRIJMY\DODOBJSKPLSKLADPOLCENYNEOMEZENE',
      a_PERMROZSAH := 'SKLADPRIJMY\DODOBJSKPLSKLADPOLCENYROZSAH',
      a_ODCHYLKA_PERM := SKLADPOL_GetToleranceCeny(a_SKPLID, 'TOLERCENANOVAPERM'),
      a_ODCHYLKA_VAROVANI := SKLADPOL_GetToleranceCeny(a_SKPLID, 'TOLERCENANOVAWAR'),
      a_ERRORBASE_MIMOROZSAH := 39171,
      a_ERRORBASE_VROZSAHU := 39172,
      a_ERRORBASE_VAR := 39173,
      a_FORCE := a_FORCE
    );

  end if;

end; $$;



select ASWDropProcedure('DODPOL__CheckCenaJeVToleranci');
/**
 * Kontrola zadané ceny položky dodacího listu
*/
create or replace function admin_septim.DODPOL__CheckCenaJeVToleranci (
  in  a_CENA                  CENAFLT,
  in  a_CENAREF               CENAFLT,
  in  a_PERMNEOMEZENE         KLICSTR_LONG,
  in  a_PERMROZSAH            KLICSTR_LONG,
  in  a_ODCHYLKA_PERM         KOEFICIENTFLT,
  in  a_ODCHYLKA_VAROVANI     KOEFICIENTFLT,
  in  a_ERRORBASE_MIMOROZSAH  CISLOINT,
  in  a_ERRORBASE_VROZSAHU    CISLOINT,
  in  a_ERRORBASE_VAR         CISLOINT,
  in  a_FORCE                 FORCETXT,
  in  a_FORCEID               VALUETXT default '',
  in  a_SKLADPOL              NAZEVSTR default null,
  in  a_SKLAD                 NAZEVSTR default null
) returns void
language plpgsql security definer as $$
declare
begin
  perform S_CheckHodnotaJeVToleranci (
    a_CENA, a_CENAREF, a_PERMNEOMEZENE, a_PERMROZSAH, a_ODCHYLKA_PERM, a_ODCHYLKA_VAROVANI,
    a_ERRORBASE_MIMOROZSAH, a_ERRORBASE_VROZSAHU, a_ERRORBASE_VAR, a_FORCE, a_FORCEID, a_SKLADPOL, a_SKLAD
  );
end; $$;



select ASWDropProcedure('DODPOL__CheckMnozstviJeVToleranci');
/**
 * Kontrola zadaného množství položky dodacího listu
*/
create or replace function admin_septim.DODPOL__CheckMnozstviJeVToleranci (
  in  a_MNOZSTVI              MNOZSTVIFLT,
  in  a_MNOZSTVIREF           MNOZSTVIFLT,
  in  a_PERMNEOMEZENE         KLICSTR_LONG,
  in  a_PERMROZSAH            KLICSTR_LONG,
  in  a_ODCHYLKA_PERM         KOEFICIENTFLT,
  in  a_ODCHYLKA_VAROVANI     KOEFICIENTFLT,
  in  a_ERRORBASE_MIMOROZSAH  CISLOINT,
  in  a_ERRORBASE_VROZSAHU    CISLOINT,
  in  a_ERRORBASE_VAR         CISLOINT,
  in  a_FORCE                 FORCETXT
) returns void
language plpgsql security definer as $$
declare
begin
  perform S_CheckHodnotaJeVToleranci (
    a_MNOZSTVI, a_MNOZSTVIREF, a_PERMNEOMEZENE, a_PERMROZSAH, a_ODCHYLKA_PERM, a_ODCHYLKA_VAROVANI,
    a_ERRORBASE_MIMOROZSAH, a_ERRORBASE_VROZSAHU, a_ERRORBASE_VAR, a_FORCE
  );
end; $$;


select ASWDropProcedure('DODPOL__SetFlag');
create or replace function admin_septim.DODPOL__SetFlag(
  in a_ID                  REFIDINT,
  in a_FLAG                VALUETXT,
  in a_VALUE               BOOLBIT
) returns void
language plpgsql security definer as $$
begin
  perform admin_users.U_OPRAVA_P_RowUpdate('SEPTIMAPP','DODPOL',a_ID,'',admin_base.B_GetTxt('SEPTIMAPP','DODPOL','ZMENAPRIZNAKUPOLOZKY'));
  case a_FLAG
    when 'ZKONTR' then
      update DODPOL set ZKONTR = a_VALUE where DODPID = a_ID;
    else
      null;-- ADDED EMPTY ELSE
  end case;
end; $$;



select ASWDropProcedure('DODPOLSetFlag');
create or replace function admin_septim.DODPOLSetFlag(
  in a_IDLIST              IDINTARR,
  in a_PARAMS              PARAMTXT,
  in a_FORCE               FORCETXT default null
) returns void
language plpgsql security definer as $$
declare
  l_FLAG                   VALUETXT;
  l_VALUE                  BOOLBIT;
  l_ID                     REFIDINT;
  l_IDCount                CISLOINT;
begin

  l_IDCOUNT := cardinality(a_IDLIST);
  if l_IDCount = 0 then
    return;
  end if;

  select * into l_FLAG from admin_base.cm_GetWord(1,a_Params,',');
  select * into l_VALUE from admin_base.cm_GetWord(2,a_Params,',');
  perform SKLADPERM_TestFlagPerm(l_FLAG, l_VALUE, 'DODPOL', a_FORCE);
  if admin_eng.CheckForce(a_FORCE,'VYKONAJZMENU') is null then
    case l_VALUE
      when false then
        perform admin_base.ASWError(39179, cast(array[l_IDCount,admin_base.B_GetTxt('SEPTIMAPP','DODPOL',l_FLAG)] as text[]));
      when true then
        perform admin_base.ASWError(39178, cast(array[l_IDCount,admin_base.B_GetTxt('SEPTIMAPP','DODPOL',l_FLAG)] as text[]));
      else
        null;-- ADDED EMPTY ELSE
    end case;
  end if;

  case l_FLAG
    when 'ZKONTR' then
      for l_ID in select DODPID from DODPOL where SMAZAN=0 and ZKONTR <> l_VALUE and DODPID in (select unnest(a_IDLIST)) loop
        perform admin_septim.DODPOL__SetFlag(l_ID,l_FLAG,l_VALUE);
      end loop;
    else
      null;
  end case;

end; $$;
select grant_func('DODPOLSetFlag', 'SPEXEC');


select ASWDropProcedure('DODPOLSetZKONTR');
/**
* Funkce pro označení jedného záznamu DODPOL jako zkontrolovaný.
*/
create or replace function admin_septim.DODPOLSetZKONTR(
  in a_IDList              PARAMTXT,
  in a_IDCount             CISLOINT,
  in a_Params              PARAMTXT,
  in a_FORCE               FORCETXT default null
) returns void
language plpgsql security definer as $$
declare
  l_FLAG                   VALUETXT;
  l_VALUE                  BOOLBIT;
  l_ID                     REFIDINT;
  l_ZKONTR                 BOOLBIT_0;
begin
  if a_IDCount <= 0 then
    return;
  end if;
  if a_IDCount > 1 then
    -- lze použít pouze pro jeden záznam
    perform ASWError(39180);
  end if;

  l_FLAG  := 'ZKONTR';
  l_VALUE := true;

  perform SKLADPERM_TestFlagPerm(l_FLAG, l_VALUE, 'DODPOL', a_FORCE);

  l_ID := cast(a_IDList as REFIDINT);
  begin
    select ZKONTR into strict l_ZKONTR from DODPOL where SMAZAN = 0 and DODPID = l_ID;
  exception
    when NO_DATA_FOUND then
      -- položka nenalezena
      perform ASWError(39181, cast(array[l_ID] as text[]));
  end;

  if l_ZKONTR then
    -- již označena
    perform ASWError(39182);
  end if;

  if admin_eng.CheckForce(a_FORCE,'NASTAVZKONTR') is null then
    -- potvrzení
    perform ASWError(39183, cast(array['NASTAVZKONTR'] as text[]));
  end if;

  -- nastavení zkontrolováno
  perform admin_septim.DODPOL__SetFlag(l_ID,l_FLAG,l_VALUE);

end; $$;
select grant_func('DODPOLSetZKONTR', 'SPEXEC');


select ASWDropProcedure('DODPOL_IsCompletelyFilled');
create or replace function admin_septim.DODPOL_IsCompletelyFilled(
  in a_ID                  IDINT
) returns BOOLBIT
language plpgsql security definer as $$
begin
  return
    cast(not(SKLDID is null or SKPLID is null or MNOZSTVI is null or TRVAN is null) as BOOLBIT)
  from
    DODPOL
  where
    DODPID = a_ID;
end; $$;


select ASWDropProcedure('DODPOL_DODAKIsCompletelyFilled');
create or replace function admin_septim.DODPOL_DODAKIsCompletelyFilled (
  in a_DODKID              IDINT
) returns VALUEBOOL
language plpgsql security definer as $$
begin
  return
    cast(X.ITEMS > 0 and X.ITEMSFILLED = X.ITEMS as VALUEBOOL)
  from (
    select
      sum(cast(DODPOL_IsCompletelyFilled(DODPID) as INTEGER)) as ITEMSFILLED,
      sum(1) as ITEMS
    from DODPOL
    where DODKID = a_DODKID
      and SMAZAN = 0
  ) as X;
end; $$;



select ASWDropFunction('DODPOL_H_PriceIsForSSI');
/**
 * This handler the value of the checkbox "Price is for the supplier stock item"
 * according to the SSI and ISI being filled or not.
 */
drop type if exists admin_septim.DODPOL_H_PriceIsForSSI_rs cascade;
create type admin_septim.DODPOL_H_PriceIsForSSI_rs as (
  PRICEISFORSSI            VALUEBOOL,
  "#PRICEISFORSSI"         INTEGER
);

create or replace function admin_septim.DODPOL_H_PriceIsForSSI (
  in a_DODSKLADPOL         NAMESTR,
  in a_SKLADPOL            NAMESTR,
  in a_PRICEISFORSSI       VALUEBOOL,
  in a_ID                  IDINT,
  in a_MASTERID            IDINT,
  in a_COMMAND             E_HNDLParam,
  in a_FOCUSED             E_HNDLParam,
  in a_PARAMS              E_HNDLParam
) returns admin_septim.DODPOL_H_PriceIsForSSI_rs
language plpgsql security definer as $$
declare
  l_CTRLISENABLED          NUMBERINT;
  l_CTRLISCHECKED          VALUEBOOL;
  l_RESULT                 DODPOL_H_PriceIsForSSI_rs;
begin

  a_DODSKLADPOL := nullif(a_DODSKLADPOL, '');
  a_SKLADPOL := nullif(a_SKLADPOL, '');

  l_CTRLISENABLED := DODPOL__PriceForSSIIsEnabled(a_DODSKLADPOL, a_SKLADPOL);

  -- have both supplier and internal stock items
  if l_CTRLISENABLED = 1 then
    l_CTRLISCHECKED := a_PRICEISFORSSI;
  -- have only supplier stock item
  elsif a_DODSKLADPOL is not null then
    l_CTRLISCHECKED := true;
  -- have only internal stock item
  else
    l_CTRLISCHECKED := false;
  end if;

  l_RESULT.PRICEISFORSSI := l_CTRLISCHECKED;
  l_RESULT."#PRICEISFORSSI" := l_CTRLISENABLED;

  return l_RESULT;

end; $$;
select grant_func('DODPOL_H_PriceIsForSSI', 'SPEXEC');



select ASWDropFunction('DODPOL__PriceForSSIIsEnabled');
create or replace function admin_septim.DODPOL__PriceForSSIIsEnabled (
  in a_DODSKLADPOL         NAMESTR,
  in a_SKLADPOL            NAMESTR
) returns NUMBERINT
language plpgsql security definer as $$
declare
  l_USEDODSKLADPOL         VALUEBOOL;
begin

  l_USEDODSKLADPOL := P_GetGlobalParamBOOL('SKLAD', 'DODPOL_USEDODSKLADPOL');

  a_DODSKLADPOL := nullif(a_DODSKLADPOL, '');
  a_SKLADPOL := nullif(a_SKLADPOL, '');

  -- have both supplier and internal stock items
  return
    case when l_USEDODSKLADPOL then
      case when a_DODSKLADPOL is not null and a_SKLADPOL is not null then 1 else 0 end
    else
     -1
  end;

end; $$;



select ASWDropFunction('DODPOL_SABLONYEDITORCalcCeny');
/**
 * Function for calculation of prices - used in editor.
 */
create or replace function admin_septim.DODPOL_SABLONYEDITORCalcCeny (
  in    a_DODKID            REFIDINT,
  in    a_TAXGID            REFIDINT,
  in    a_MNOZSTVI          MNOZSTVIFLT,
  in    a_CENA              CENAFLT,
  in    a_CENASL            CENAFLT,
  in    a_CENAJEBEZDANI     BOOLBIT,
  in    a_CENAJEZAJEDNOTKU  BOOLBIT,
  in    a_PRICEISFORSSI     BOOLBIT,
  out   a_CENAB             CENAFLT,
  out   a_CENABSL           CENAFLT,
  out   a_CENAS             CENAFLT,
  out   a_CENASSL           CENAFLT
)
language plpgsql security definer as $$
begin
  select D.a_CENAB, D.a_CENABSL, D.a_CENAS, D.a_CENASSL into a_CENAB, a_CENABSL, a_CENAS, a_CENASSL
    from DODPOL__CalcCeny(a_DODKID := a_DODKID, a_TAXGID := a_TAXGID, a_MNOZSTVI := a_MNOZSTVI, a_MNOZSTVIDSKP := null, a_POMER := null,
                          a_CENA := a_CENA, a_CENASL := a_CENASL, a_CENAJEBEZDANI := a_CENAJEBEZDANI, a_CENAJEZAJEDNOTKU := a_CENAJEZAJEDNOTKU,
                          a_PRICEISFORSSI := a_PRICEISFORSSI) as D;
end; $$;



select ASWDropFunction('DODPOL__GetLastPrice');
/**
 * Function returns last delivery note or from the current stocks.
 */
create or replace function admin_septim.DODPOL__GetLastPrice(
  in a_ID                  IDINT,
  in a_TYPEPRICE           TYPINT,
  in a_SKPLID              REFIDINT_NU,
  in a_SKLDID              REFIDINT_NU,
  in a_PRICEISFORSSI       VALUEBOOL
) returns CENAFLT
language plpgsql security definer as $$
declare
  l_PRICE               CENAFLT;
begin

  case a_TYPEPRICE

    when 1 then
      -- the price of the last delivery is used
      select
        case when a_PRICEISFORSSI then DP.CENABDSKPJ else DP.CENABJ end
      into
        l_PRICE
      from
        DODPOL DP
        join DODAK as D on DP.DODKID = D.DODKID
      where
        D.REALNASKL is not null
        and DP.SKPLID = a_SKPLID
        and DP.SMAZAN = 0
        and (DODPID <> a_ID or a_ID is null)
      order by D.REALNASKL desc,
        DODPID desc
      limit 1;

    when 2 then
      -- from the current stocks (skladpol)
      l_PRICE := SKLADPOL_GetSkladCena(a_SKPLID, a_SKLDID);
    else
      l_PRICE := null;
  end case;

  return l_PRICE;
end; $$;



select aswdropfunction('DODPOL_DODAKXmlImportSlave');
/**
 * Import function for delivery note items
 */
create or replace function admin_septim.DODPOL_DODAKXmlImportSlave (
  in a_MASTERID            REFIDINT,
  in a_INPUT               VALUEXML,
  in a_CONFIG              VALUEJSON,
  in a_FORCE               FORCETXT default null
) returns TEXTARR
language plpgsql security definer as $$
declare
  l_LOGMESSAGES            TEXTARR;
  l_XMLROW                 VALUEXML;
  l_ORDNUMBER              NUMBERINT;
  l_DNINFOSTRING           VALUESTR;
begin

  -- General permissions check to import delivery notes
  perform SKLAD_CheckPermNoTime('SKLADPRIJMY\DODAKIMPORT', 0);

  -- @TODO there should be some further check of permissions to operate with dodpol according to the store where it belongs

  l_DNINFOSTRING := DODAK_GetSequenceStr(a_MASTERID);

  -- Process individual rows in XML data
  for l_XMLROW, l_ORDNUMBER in select * from unnest(xpath('/dnitems/dnitem', a_INPUT)) with ordinality loop
    l_LOGMESSAGES := S_AddToProtocol(l_LOGMESSAGES, 'INFO_DNIMPORT_ITEM_START', 'DODPOL', 'IMPORT_ROWIMPORTSTART', cast(array[l_DNINFOSTRING, l_ORDNUMBER] as text[]));
    select array_cat(l_LOGMESSAGES, LOGMESSAGES) into l_LOGMESSAGES from DODPOL_XMLToRow (a_MASTERID, l_XMLROW, a_CONFIG, a_FORCE);
  end loop;

  return l_LOGMESSAGES;

end; $$;



select aswdropprocedure('DODPOL_XMLToRow');
/**
 * Import one node with delivery note data
 */
create or replace function admin_septim.DODPOL_XMLToRow (
  in a_DODKID              REFIDINT,
  in a_INPUT               XMLTEXT,
  in a_CONFIG              VALUEJSON,
  in a_FORCE               FORCETXT,
  in a_ROOTTAG             VALUESTR default null
) returns XMLIMPORT_rs
language plpgsql security definer as $$
declare
  l_RESULT                 XMLIMPORT_rs;
  l_DATA                   RECORD;
  l_MESSAGEINFO            TEXTARR;
  l_XPATH                  VALUESTR;
  l_SKLDID                 REFIDINT;
  l_SKPLID                 REFIDINT;
  l_DSKPID                 REFIDINT;
  l_TAXGID                 REFIDINT;
  l_PRICE                  PRICEFLT;
  l_PRICEDISC              PRICEFLT;    -- Price with discount
  l_ISIAMOUNT              AMOUNTFLT;
  l_SSIAMOUNT              AMOUNTFLT;
  l_REALNASKL              DATETIMETS_NU;
  l_PARMID                 REFIDINT;
  l_TRVAN                  CISLOINT;
  c_KAPPID                 INTEGER;
begin

  if a_INPUT is null then
    return l_RESULT;
  end if;

  l_XPATH := concat('/', coalesce(a_ROOTTAG, 'dnitem'));

  select
    cast((cast(xpath(concat(l_XPATH,'/@id'),                                a_INPUT) as text[]))[1]  as VALUETXT) as IDVALUE,
    cast((cast(xpath(concat(l_XPATH,'/isi'),                                a_INPUT) as text[]))[1]  as VALUEXML) as ISI,
    cast((cast(xpath(concat(l_XPATH,'/storage'),                            a_INPUT) as text[]))[1]  as VALUEXML) as STORAGE,
    cast((cast(xpath(concat(l_XPATH,'/tax'),                                a_INPUT) as text[]))[1]  as VALUEXML) as TAX,
    cast((cast(xpath(concat(l_XPATH,'/ssi'),                                a_INPUT) as text[]))[1]  as VALUEXML) as SSI,
    cast((cast(xpath(concat(l_XPATH,'/expiration/text()'),                  a_INPUT) as text[]))[1]  as DATUMCASTS_NU) as TRVAN,
    cast((cast(xpath(concat(l_XPATH,'/serialnumbers/text()'),               a_INPUT) as text[]))[1]  as SERNRTXT) as SERNR,
    cast(cm_strtoflt((cast(xpath(concat(l_XPATH,'/amount/text()'),          a_INPUT) as text[]))[1]) as MNOZSTVIFLT_NU) as MNOZSTVI,
    cast(cm_strtoflt((cast(xpath(concat(l_XPATH,'/price/text()'),           a_INPUT) as text[]))[1]) as CENAFLT) as CENA,
    cast(cm_strtoflt((cast(xpath(concat(l_XPATH,'/discountperc/text()'),    a_INPUT) as text[]))[1]) as KOEFICIENTFLT) as SLEVAPROC,
    cast(cm_strtoflt((cast(xpath(concat(l_XPATH,'/ssiratio/text()'),        a_INPUT) as text[]))[1]) as KOEFICIENTFLT) as SSIRATIO,
    cast(cm_strtobool((cast(xpath(concat(l_XPATH,'/amountisforssi/text()'), a_INPUT) as text[]))[1]) as VALUEBOOL) as AMOUNTISFORSSI,
    cast(cm_strtobool((cast(xpath(concat(l_XPATH,'/priceisforssi/text()'),  a_INPUT) as text[]))[1]) as VALUEBOOL) as PRICEISFORSSI,
    cast(cm_strtobool((cast(xpath(concat(l_XPATH,'/taxnotincluded/text()'), a_INPUT) as text[]))[1]) as BOOLBIT) as CENAJEBEZDANI,
    cast(cm_strtobool((cast(xpath(concat(l_XPATH,'/isunitprice/text()'),    a_INPUT) as text[]))[1]) as BOOLBIT) as CENAJEZAJEDNOTKU,
    cast(cm_strtobool((cast(xpath(concat(l_XPATH,'/isdiscprice/text()'),    a_INPUT) as text[]))[1]) as VALUEBOOL) as ISDISCOUNTEDPRICE,
    cast(cm_strtobool((cast(xpath(concat(l_XPATH,'/calcratio/text()'),      a_INPUT) as text[]))[1]) as VALUEBOOL) as CALCPOMER,
    xpath_exists(concat(l_XPATH,'/isi'),            a_INPUT) as ISI_SET,
    xpath_exists(concat(l_XPATH,'/storage'),        a_INPUT) as STORAGE_SET,
    xpath_exists(concat(l_XPATH,'/tax'),            a_INPUT) as TAX_SET,
    xpath_exists(concat(l_XPATH,'/ssi'),            a_INPUT) as SSI_SET,
    xpath_exists(concat(l_XPATH,'/ssiratio'),       a_INPUT) as SSIRATIO_SET,
    xpath_exists(concat(l_XPATH,'/amount'),         a_INPUT) as MNOZSTVI_SET,
    xpath_exists(concat(l_XPATH,'/price'),          a_INPUT) as CENA_SET,
    xpath_exists(concat(l_XPATH,'/priceisforssi'),  a_INPUT) as PRICEISFORSSI_SET,
    xpath_exists(concat(l_XPATH,'/taxnotincluded'), a_INPUT) as CENAJEBEZDANI_SET,
    xpath_exists(concat(l_XPATH,'/isunitprice'),    a_INPUT) as CENAJEZAJEDNOTKU_SET,
    xpath_exists(concat(l_XPATH,'/isdiscprice'),    a_INPUT) as ISDISCOUNTEDPRICE_SET,
    xpath_exists(concat(l_XPATH,'/discountperc'),   a_INPUT) as SLEVAPROC_SET,
    xpath_exists(concat(l_XPATH,'/expiration'),     a_INPUT) as TRVAN_SET,
    xpath_exists(concat(l_XPATH,'/serialnumbers'),  a_INPUT) as SERNR_SET,
    xpath_exists(concat(l_XPATH,'/calcration'),     a_INPUT) as CALCPOMER_SET
  into
    l_DATA;

  if l_DATA.STORAGE_SET then
    select ID, array_cat(l_RESULT.LOGMESSAGES, LOGMESSAGES)
      into l_SKLDID, l_RESULT.LOGMESSAGES
    from SKLAD_XMLToRow(l_DATA.STORAGE, a_CONFIG->'storage', a_FORCE, 'storage');
    if l_SKLDID is null then
      -- The referenced row was not found and the import
      -- is configured to skip the row in such case.
      -- Then there is nothing more to do and we return from the function.
      return l_RESULT;
    end if;
  end if;

  -- Storage permission checks, performed only if storage is not null
  if l_SKLDID is not null then
    if l_REALNASKL is not null then
      -- General permission to work with the storage
      perform SKLAD_StrediskaCheck('SKLADZAKLAD\STRDUNLIMITED', 0, l_SKLDID);
      -- Permission to work with delivery note items
      l_REALNASKL := DODAK_GetRealNasklDC(a_DODKID);
      perform SKLAD_CheckPerm('SKLADPRIJMY\INSDODKSKPL', l_REALNASKL, l_SKLDID, 0, null, 'DODPOL', null, a_DODKID, 'DODAK', 'SKLADPRIJMY\INSVLDODKSKPL');
    end if;
  end if;

  if l_DATA.ISI_SET then
    select ID, array_cat(l_RESULT.LOGMESSAGES, LOGMESSAGES)
    into l_SKPLID, l_RESULT.LOGMESSAGES
    from SKLADPOL_XMLToRow(l_DATA.ISI, a_CONFIG->'isi', a_FORCE, 'isi');
    if l_SKPLID is null then
      -- The referenced row was not found and the import
      -- is configured to skip the row in such case.
      -- Then there is nothing more to do and we return from the function.
      return l_RESULT;
    end if;
  end if;

  if l_DATA.SSI_SET then
    select ID, array_cat(l_RESULT.LOGMESSAGES, LOGMESSAGES)
      into l_DSKPID, l_RESULT.LOGMESSAGES
    from DODSKLADPOL_XMLToRow(DODAK_GetDodavatelID(a_DODKID), l_DATA.SSI, a_CONFIG->'ssi', a_FORCE, 'ssi');
    if l_DSKPID is null then
      -- The referenced row was not found and the import
      -- is configured to skip the row in such case.
      -- Then there is nothing more to do and we return from the function.
      return l_RESULT;
    end if;
  end if;

  if l_DATA.TAX_SET then
    select ID, array_cat(l_RESULT.LOGMESSAGES, LOGMESSAGES)
      into l_TAXGID, l_RESULT.LOGMESSAGES
    from TAXGROUP_XMLToRow(l_DATA.TAX, a_CONFIG->'tax', a_FORCE, 'tax');
    if l_TAXGID is null then
      -- The referenced row was not found and the import
      -- is configured to skip the row in such case.
      -- Then there is nothing more to do and we return from the function.
      return l_RESULT;
    end if;
  end if;

  -- Default values
  c_KAPPID := SESSIONVarGet('c_KAPPID');
  l_PARMID := KLIENTAPP_GetParamID(c_KAPPID);
  l_TRVAN := P_GetParam(l_PARMID, 'ZADANIDODLIST', 'DEFTRVANLIVOST');

  l_DATA.CENAJEBEZDANI      := coalesce(l_DATA.CENAJEBEZDANI, true);
  l_DATA.CENAJEZAJEDNOTKU   := coalesce(l_DATA.CENAJEZAJEDNOTKU, false);
  l_DATA.CALCPOMER          := coalesce(l_DATA.CALCPOMER, false);
  l_DATA.ISDISCOUNTEDPRICE  := coalesce(l_DATA.ISDISCOUNTEDPRICE, false);
  l_DATA.TRVAN              := coalesce(l_DATA.TRVAN, cast(localtimestamp + interval '1 day' * l_TRVAN as date));

  -- If the discount is not provided, take it from the delivery note
  if l_DATA.SLEVAPROC is null then
    l_DATA.SLEVAPROC := coalesce(DODAK_GetSleva(a_DODKID), 0);
  end if;

  -- Calculate the price with/without discount base on the provided data
  -- The rest of the prices is calculated in DODPOL_Insert
  select a_CENA, a_CENASL
    into l_PRICE, l_PRICEDISC
  from DODPOL_PrepocetCenDleSlevy (
    a_SLEVAPROC => l_DATA.SLEVAPROC,
    a_SMERCENACENASL => (not l_DATA.ISDISCOUNTEDPRICE),  -- direction true .. from CENA to CENASL, false .. from CENASL to CENA
    a_CENA => l_DATA.CENA,
    a_CENASL => l_DATA.CENA
  );

  -- Resolve the amount
  -- Both SSI and ISI are provided
  if l_DATA.SSI_SET and l_DATA.ISI_SET then

    l_DATA.AMOUNTISFORSSI := coalesce(l_DATA.AMOUNTISFORSSI, true);
    l_DATA.PRICEISFORSSI := coalesce(l_DATA.PRICEISFORSSI, l_DATA.AMOUNTISFORSSI);
    l_DATA.SSIRATIO := coalesce(l_DATA.SSIRATIO, 1);

    if l_DATA.AMOUNTISFORSSI then
      l_ISIAMOUNT := l_DATA.MNOZSTVI * l_DATA.SSIRATIO;
      l_SSIAMOUNT := l_DATA.MNOZSTVI;
    else
      l_ISIAMOUNT := l_DATA.MNOZSTVI;
      l_SSIAMOUNT := l_DATA.MNOZSTVI / l_DATA.SSIRATIO;
    end if;

  -- Only supplier stock item is provided
  elsif l_DATA.SSI_SET then
    l_DATA.AMOUNTISFORSSI := true;
    l_DATA.PRICEISFORSSI := true;

    -- Allow to link already linked by default
    if CheckForce(a_FORCE, 'DODPOLLINKEDSKPL') is null then
      a_FORCE := concat(coalesce(a_FORCE, ''), ',', 'DODPOLLINKEDSKPL+');
    end if;
    -- If only SSI is filled in, and not any ISI, try to find a matching ISI
    select SKPLID, AMOUNT, RATIO, CALCRATIO
      into l_SKPLID, l_ISIAMOUNT, l_DATA.SSIRATIO, l_DATA.CALCPOMER
    from DODPOL_FindRelatedISI (l_DSKPID, l_DATA.SSIRATIO, l_DATA.MNOZSTVI, l_DATA.CALCPOMER, a_FORCE);
    -- If found, log it
    if l_SKPLID is not null then
      l_RESULT.LOGMESSAGES := S_AddToProtocol (
        l_RESULT.LOGMESSAGES, 'INFO_DNIMPORT_ISIMATCHED', 'DODPOL', 'IMPORT_ISIMATCHED',
        cast(array[DODSKLADPOL_GetNazev(l_DSKPID), SKLADPOL_GetNazev(l_SKPLID), SKLADPOL_GetJednotky(l_SKPLID), cm_FltToStr(l_ISIAMOUNT), l_DATA.SSIRATIO] as text[])
      );
      l_DATA.SSIRATIO := coalesce(l_DATA.SSIRATIO, 1);
    end if;

    l_SSIAMOUNT := l_DATA.MNOZSTVI;

  -- Only internal stock item is provided
  else
    l_DATA.AMOUNTISFORSSI := false;
    l_DATA.PRICEISFORSSI := false;
    l_ISIAMOUNT := l_DATA.MNOZSTVI;
  end if;

  -- Do insert the return ID of the new row
  l_RESULT.ID := DODPOL_Insert (
    a_MASTERID         => a_DODKID,
    a_DODSKLADPOL      => null,
    a_DSKPID           => l_DSKPID,
    a_POMER            => l_DATA.SSIRATIO,
    a_CALCPOMER        => l_DATA.CALCPOMER,
    a_MNOZSTVIDSKP     => l_SSIAMOUNT,
    a_SKLADPOL         => null,
    a_SKPLID           => l_SKPLID,
    a_SKLAD            => null,
    a_SKLDID           => l_SKLDID,
    a_MNOZSTVI         => l_ISIAMOUNT,
    a_TRVAN            => l_DATA.TRVAN,
    a_SLEVAPROC        => l_DATA.SLEVAPROC,
    a_TAXGROUP         => TAXGROUP_GetName(l_TAXGID),
    a_CENA             => l_PRICE,
    a_CENASL           => l_PRICEDISC,
    a_PRICEISFORSSI    => l_DATA.PRICEISFORSSI,
    a_CENAJEBEZDANI    => l_DATA.CENAJEBEZDANI,
    a_CENAJEZAJEDNOTKU => l_DATA.CENAJEZAJEDNOTKU,
    a_SERNR            => l_DATA.SERNR,
    a_ZKONTR           => false,
    a_FORCE            => a_FORCE
  );

  -- The imported record info. Names match the tags in XML import.
  -- Operator || is used on purpose to eliminate null values.
  l_MESSAGEINFO := array [
    array_to_string(array [
      B_GetTxt('SEPTIMAPP', 'DODPOL', 'STORAGE')    || SKLAD_GetNazev(l_SKLDID),
      B_GetTxt('SEPTIMAPP', 'DODPOL', 'SSI')        || DODSKLADPOL_GetNazev(l_DSKPID),
      B_GetTxt('SEPTIMAPP', 'DODPOL', 'SSIAMOUNT')  || cm_FltToStr(l_SSIAMOUNT),
      B_GetTxt('SEPTIMAPP', 'DODPOL', 'ISI')        || SKLADPOL_GetNazev(l_SKPLID),
      B_GetTxt('SEPTIMAPP', 'DODPOL', 'ISIAMOUNT')  || cm_FltToStr(l_ISIAMOUNT)
    ], ', ') ];

  l_RESULT.LOGMESSAGES := S_AddToProtocol(l_RESULT.LOGMESSAGES, 'INFO_DNIMPORT_ITEM_FINISH', 'DODPOL', 'IMPORT_INSERT', l_MESSAGEINFO);

  return l_RESULT;

end; $$;
