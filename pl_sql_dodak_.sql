-- ZZZ OK1
-- ERRBASE 39000,39099

select ASWAddMessage(39001, 'Item Realized date should be filled!|R%1!');
select ASWAddMessage(39002, 'Položka Dodavatel musí být vyplněná!|R%1!');
select ASWAddMessage(39003, 'Dodavatel "%1!" nebyl nalezen.|R%2!');
select ASWAddMessage(39004, 'Dodací list je spárovaný s fakturou, nelze jej upravovat!');
select ASWAddMessage(39005, 'Dodací list je spárovaný s fakturou, nelze jej smazat!');
select ASWAddMessage(39006, 'Sleva může být maximálně 100%% a musí být větší nebo rovna 0%% (Vámi zadaná sleva je %1!%%).|RSLEVAPROC');
select ASWAddMessage(39007, 'Dodací list obsahuje skladové položky, skutečně ho chcete smazat?|FYC;DODAKDEL');
select ASWAddMessage(39008, 'Položka číslo dodacího listu musí být vyplněná|R%1!');
select ASWAddMessage(39009, 'Dodací list s tímto číslem již existuje!|R%2!');
select ASWAddMessage(39010, 'Cannot work with pending delivery notes (license limit)!');
select ASWAddMessage(39011, 'Dodací list je spárovaný s objednávkou zboží, dodavatele nelze změnit!|R%1!');
select ASWAddMessage(39012, 'Měna "%1!" nebyla nalezena.|R%2!');
select ASWAddMessage(39013, 'Jednotky u kursu musí být zadány.|RKURSJEDN');
select ASWAddMessage(39014, 'Změnili jste kurz, musí se přepočítat všechny položky a také jejich aktuální skladová cena. Chcete pokračovat?|FYC;ZMENKURS');
select ASWAddMessage(39015, 'Číslo posledního dodacího listu "%1!" neodpovídá nastavení formátovacího řetězce v parametru "Vzor pro generování čísla dodacího listu" v sekci "Parametry skladů"!');
select ASWAddMessage(39016, 'Kurs musí být zadán.|R%1!');
select ASWAddMessage(39017, 'Akce "%1!" nebyla nalezena!|R%2!');
select ASWAddMessage(39018, 'Nelze pracovat s dodacími listy v cizí měně (omezení limitů)!');
select ASWAddMessage(39019, 'Jednotky kursu musí být větší než 0.|RKURSJEDN');
select ASWAddMessage(39020, 'Kurs musí být větší než 0.|RKURSJEDN');
select ASWAddMessage(39021, 'Bylo označeno %1! záznamů. Chcete je označit jako %2!?|FYC;VYKONAJDOKLAD');
select ASWAddMessage(39022, 'Bylo označeno %1! záznamů. Chcete jim zrušit označení %2!?|FYC;VYKONAJDOKLAD');
select ASWAddMessage(39023, 'Dodací list obsahuje položky skladu, s kterým nemůžete pracovat, proto ho nelze smazat!');
select ASWAddMessage(39024, 'Dodací list %1! obsahuje spárované objednávky zboží, které nejsou vyřízené. Označit tyto objednávky jako vyřízené?|FYNC;%2!');
select ASWAddMessage(39025, 'Dodací list %1! obsahuje spárované objednávky zboží, které nejsou vyřízené. Označit tyto objednávky jako vyřízené?|FY[Ano všem|%3!+]N[Ne všem|%3!-]C;%2!');
select ASWAddMessage(39026, 'Položka Měna musí být vyplněná|R%1!');
select ASWAddMessage(39027, 'Jednotky kursu musí být v případě základní měny 1.');
select ASWAddMessage(39028, 'Kurs musí být v případě základní měny 1.');
select ASWAddMessage(39029, 'Položka Sleva musí být vyplněná!|R%1!');
select ASWAddMessage(39030, 'Kurzové datum musí být v případě základní měny rovné datu naskladnění.');
select ASWAddMessage(39031, 'Položka Kurzové datum musí být vyplněná!|R%1!');
select ASWAddMessage(39032, 'Dodací list %1! obsahuje nezkontrolované položky. Pokračovat?|FYC;%2!');
select ASWAddMessage(39033, 'Dodací list %1! obsahuje nezkontrolované položky. Pokračovat?|FY[Ano všem|%3!+]C;%2!');
select ASWAddMessage(39034, 'Číselná řada musí být vyplněna!|R%1!');
select ASWAddMessage(39035, 'Číselná řada "%1!" nebyla nalezena!|R%2!');
select ASWAddMessage(39036, 'Číslo dodací listu musí být vygenerované!|R%1!');
--select ASWAddMessage(39037, '');
select ASWAddMessage(39038, 'Datum a čas plánovaného naskladnění musí být vyplněný!|R%1!');
select ASWAddMessage(39039, 'Datum a čas naskladnění musí být vyplněný!|R%1!');
select ASWAddMessage(39040, concat('Dodací list "%1!" není možné naskladnit a bude přeskočen, protože obsahuje položky, které nejsou kompletně vyplněné. Pokračovat? ... ',
                            'Položka dodacího listu musí obsahovat interní skladovou položku, sklad, množství a trvanlivost.|FY[Ano všem|%3!+]C;%2!'));
select ASWAddMessage(39041, 'Dodací list %2! používá číselnou řadu "%1!", ale pro převod je zvolená řada "%5!" Chcete zachovat číselnou řadu dodacího listu?|FY[Ano všem|%4!+]N[Ne všem|%4!-]C;%3!');
select ASWAddMessage(39042, 'Dodací list %1! nemůže být naskladněn a bude přeskočen, protože nemá žádné položky. Pokračovat?|FY[Ano všem|%3!+]C;%2!');
select ASWAddInError(39043, 'Dodacímu listu není možné běžným updatem změnit stav z plánovaného na realizovaný a naopak!', 'PGM');
select ASWAddMessage(39044, 'Počet dodacích listů k naskladnění je %1!. Pokračovat?|FYC;%2!');
select ASWAddMessage(39045, 'Are you sure to use sequence "%1!" instead of the last used in realized delivery notes?|FYC;DODAKUSEANOTHERSEQ');
select ASWAddMessage(39046, 'Kursové datum "%1!" dodacího listu "%2!" se liší od datumu naskladnění "%3!". Pokračovat?|FY[Ano všem|%5!+]C;%4!');
select ASWAddMessage(39047, 'You are going to make for supplier "%1!" delivery note with number "%2!", that already exists!|FOC;DNDUPSDNID');
select ASWAddMessage(39048, 'You are going to make for supplier "%1!" delivery note with invoice variable symbol "%2!", that already exists!|FOC;DNDUPVARSYMBOL');

select ASWAddMessage(39080, 'Inventuru nelze označit jako zkontrolovanou, protože před ní existuje dodací list %1!, který není označen jako zkontrolovaný!');
select ASWAddMessage(39081, 'Inventuru nelze označit jako zaúčtovanou, protože před ní existuje dodací list %1!, který není označen jako zaúčtovaný!');

select ASWAddMessage(39090, 'Dodací list s číslem "%1!" nebyl nalezen!|R%2!');
select ASWAddMessage(39091, 'Existuje více dodacích listů s číslem "%1!", je nutné zvolit dodací list přes dialog!|R%2!');

select ASWAddTxt('SEPTIMAPP', 'DODAK', 'ZKONTR', 'zkontrolované');
select ASWAddTxt('SEPTIMAPP', 'DODAK', 'ZAUCT', 'zaúčtované');
select ASWAddTxt('SEPTIMAPP', 'DODAK', 'ZMENAPRIZNAKUDOKLADU', 'Změna příznaku dokladu');
select ASWAddTxt('SEPTIMAPP', 'DODAK', 'DODAKNASKLADNENI', 's datem naskladnění "%s"');
select ASWAddTxt('SEPTIMAPP', 'DODAK', 'DODAKSUPPLIERDNID', 'identifier %s');

select ASWAddTxt('SEPTIMAPP', 'DODAK', 'IMPORT_START', 'Zahájen import dodacích listů s konfigurací %s');
select ASWAddTxt('SEPTIMAPP', 'DODAK', 'IMPORT_ROWIMPORTSTART', 'Import dodacího listu v pořadí %s');
select ASWAddTxt('SEPTIMAPP', 'DODAK', 'IMPORT_INSERT', 'Založen nový dodací list pro zadané údaje (%1:s).');


/*
List of used parameters:

SKLAD\DODAK_SUPPLIERDNID_MANDATORY (default value 0)
  0 .. Supplier DN ID is not mandatory
  1 .. Supplier DN ID is mandatory

 Supplier's DN ID can be mandatory for a realized DN. It's always optional for a planned DN.
*/

select ASWDropProcedure('DODAKInsert');
/**
 * Function for inserting a realized delivery notes
 */
drop type if exists admin_septim.DODAKInsert_rs;
create type admin_septim.DODAKInsert_rs as (
  ID                       IDINT
);

create or replace function admin_septim.DODAKInsert(
  in a_POPIS               POPISTXT,
  in a_KOMENTAR            KOMENTARTXT,
  in a_PLANNASKL           DATUMCASTS_NU,
  in a_REALNASKL           DATUMCASTS_NU,
  in a_SUPPLIERDNID        IDENTCODESTR_NU,
  in a_VARSYMBOL           IDCODESTR,
  in a_ZDANPLNENI          DATUMTS_NU,
  in a_SPLATNOST           DATUMTS_NU,
  in a_UHRADA              DATUMTS_NU,
  in a_SLEVAPROC           KOEFICIENTFLT,
  in a_DODAVATEL           NAZEVSTR,
  in a_MENA                NAZEVSTR,
  in a_KURSJEDNUZIV        MNOZSTVIFLT,
  in a_KURSHODNUZIV        CENAFLT,
  in a_KURSDATUM           DATETS,
  in a_AKCE                NAZEVSTR,
  in a_SEQUENCE            NAMESTR,
  in a_SEQNSTR             SEQUENCESTR_NU,
  in a_FORCE               FORCETXT default null
) returns DODAKInsert_rs
language plpgsql security definer as $$
declare
  l_ID                     IDINT;
begin
  -- kontroluji jenom standardni opravneni (bez omezeni casem)
  perform SKLAD_CheckPermNoTime('SKLADPRIJMY\INSDODAK', 0);

  if (a_REALNASKL is not null) and (a_KURSDATUM is not null) and (date(a_REALNASKL) <> a_KURSDATUM) then
    -- vlastné kursové datum, kontrola oprávnění
    perform U_CheckPerm('SEPTIMAPP', 'SKLADPRIJMY\DODAKMENITKURSDATUM', 0);
  end if;

    --- volání procedury na vlastní založení záznamu do tabulky
  select * into l_ID
    from DODAK_BasicInsert(a_POPIS, a_KOMENTAR, a_PLANNASKL, a_REALNASKL, a_SUPPLIERDNID, a_VARSYMBOL, a_ZDANPLNENI, a_SPLATNOST, a_UHRADA, a_SLEVAPROC,
                           a_DODAVATEL, null, a_MENA, null, a_KURSJEDNUZIV, a_KURSHODNUZIV, a_KURSDATUM, a_AKCE, null, a_SEQUENCE, a_SEQNSTR, true, a_FORCE);
  return row(l_ID);

end; $$;

select grant_func('DODAKInsert', 'SPEXEC');




select ASWDropProcedure('DODAKPLANNEDInsert');

drop type if exists admin_septim.DODAKPLANNEDInsert_rs;
create type admin_septim.DODAKPLANNEDInsert_rs as (
  ID                       IDINT
);
/**
 * Function for inserting a pending delivery notes
 */
create or replace function admin_septim.DODAKPLANNEDInsert(
  in a_POPIS               POPISTXT,
  in a_KOMENTAR            KOMENTARTXT,
  in a_PLANNASKL           DATUMCASTS_NU,
  in a_REALNASKL           DATUMCASTS_NU,
  in a_SUPPLIERDNID        IDENTCODESTR_NU,
  in a_VARSYMBOL           IDCODESTR,
  in a_ZDANPLNENI          DATUMTS_NU,
  in a_SPLATNOST           DATUMTS_NU,
  in a_UHRADA              DATUMTS_NU,
  in a_SLEVAPROC           KOEFICIENTFLT,
  in a_DODAVATEL           NAZEVSTR,
  in a_MENA                NAZEVSTR,
  in a_KURSJEDNUZIV        MNOZSTVIFLT,
  in a_KURSHODNUZIV        CENAFLT,
  in a_KURSDATUM           DATETS,
  in a_AKCE                NAZEVSTR,
  in a_SEQUENCE            NAMESTR,
  in a_SEQNSTR             SEQUENCESTR_NU,
  in a_FORCE               FORCETXT default null
) returns DODAKPLANNEDInsert_rs
language plpgsql security definer as $$
declare
  l_ID                     IDINT;
begin

  -- kontroluji jenom standardni opravneni (bez omezeni casem)
  perform SKLAD_CheckPermNoTime('SKLADPRIJMY\INSDODAKPLANNED', 0);

  --- volání procedury na vlastní založení záznamu do tabulky
  select * into l_ID
    from DODAK_BasicInsert(a_POPIS, a_KOMENTAR, a_PLANNASKL, a_REALNASKL, a_SUPPLIERDNID, a_VARSYMBOL, a_ZDANPLNENI, a_SPLATNOST, a_UHRADA, a_SLEVAPROC,
                                        a_DODAVATEL, null, a_MENA, null, a_KURSJEDNUZIV, a_KURSHODNUZIV, a_KURSDATUM, a_AKCE, null, a_SEQUENCE, a_SEQNSTR, false, a_FORCE);
  return row(l_ID);
end; $$;

select grant_func('DODAKPLANNEDInsert', 'SPEXEC');



select ASWDropProcedure('DODAK_BasicInsert');
/**
 *  Procedura na zakládání dodacích listů - kontrola vstupních dat a vlastní zápis dat
 */
create or replace function admin_septim.DODAK_BasicInsert(
  in  a_POPIS              POPISTXT,
  in  a_KOMENTAR           KOMENTARTXT,
  in  a_PLANNASKL          DATUMCASTS_NU,
  in  a_REALNASKL          DATUMCASTS_NU,
  in  a_SUPPLIERDNID       IDENTCODESTR_NU,
  in  a_VARSYMBOL          IDCODESTR,
  in  a_ZDANPLNENI         DATUMTS_NU,
  in  a_SPLATNOST          DATUMTS_NU,
  in  a_UHRADA             DATUMTS_NU,
  in  a_SLEVAPROC          KOEFICIENTFLT,
  in  a_DODAVATEL          NAZEVSTR,
  in  a_DODVID             REFIDINT,
  in  a_MENA               NAZEVSTR,
  in  a_MENAID             REFIDINT,
  in  a_KURSJEDNUZIV       MNOZSTVIFLT,
  in  a_KURSHODNUZIV       CENAFLT,
  in  a_KURSDATUM          DATETS,
  in  a_AKCE               NAZEVSTR,
  in  a_AKCEID             IDINT,
  in  a_SEQUENCE           NAMESTR,
  in  a_SEQNSTR            SEQUENCESTR_NU,
  in  a_REALIZED_DN        VALUEBOOL,
  in  a_FORCE              FORCETXT,
  out a_ID                 IDINT
)
language plpgsql security definer
as $$
declare
  c_RKRS                   TEXT;
  l_KURSJEDNKL             MNOZSTVIFLT;
  l_KURSHODNKL             CENAFLT;
  l_SEQNID                 REFIDINT;
  l_SEQNSTR                SEQUENCESTR_NU;
  l_SEQNNR                 SEQUENCEINT_NU;
begin
  --- check input data
  select *
  into
    a_KURSDATUM, a_KURSHODNUZIV, a_KURSJEDNUZIV, l_SEQNID, l_KURSHODNKL, l_KURSJEDNKL, a_DODVID, a_MENAID, a_AKCEID
  from
    DODAK__Check(a_ID, a_PLANNASKL, a_REALNASKL, a_SUPPLIERDNID, a_SLEVAPROC, a_DODAVATEL, a_MENA, a_KURSDATUM,
                 a_KURSHODNUZIV, a_KURSJEDNUZIV, a_AKCE, a_FORCE, a_SEQUENCE, a_SEQNSTR, a_REALIZED_DN, a_DODVID,
                 a_MENAID, a_AKCEID, a_VARSYMBOL) as C;

  -- sequence is optional for planned DNs
  if l_SEQNID is not null then
    select S.a_SEQNNR, S.a_SEQNSTR into l_SEQNNR, l_SEQNSTR from B_SEQUENCE_SetVal(l_SEQNID, a_SEQNSTR, 'SEPTIMAPP\DODAK', 0, a_FORCE) as S;
  end if;

  --- získání ID záznamu
  a_ID := B_GetID('SEPTIMAPP','DODAK');
  --- vlastní založení záznamu do tabulky
  c_RKRS := SESSIONVarGet('c_RKRS');

  insert into DODAK(
    DODKID, POPIS, MENAID, AKCEID, KOMENTAR, PLANNASKL, REALNASKL, SUPPLIERDNID, VARSYMBOL, ZDANPLNENI, SPLATNOST, UHRADA, SLEVAPROC,
    KURSJEDNKL, KURSHODNKL, KURSJEDNUZIV, KURSHODNUZIV, KURSDATUM, CENAB, CENABSL, CENASSL, CENABZM, CENABZMSL, DODVID, RKRS,
    SEQNID, SEQNNR, SEQNSTR
  ) values (
    a_ID, a_POPIS, a_MENAID, a_AKCEID, a_KOMENTAR, a_PLANNASKL, a_REALNASKL, a_SUPPLIERDNID, a_VARSYMBOL, a_ZDANPLNENI, a_SPLATNOST, a_UHRADA, a_SLEVAPROC,
    l_KURSJEDNKL, l_KURSHODNKL, a_KURSJEDNUZIV, a_KURSHODNUZIV, a_KURSDATUM, 0, 0, 0, 0, 0, a_DODVID, c_RKRS,
    l_SEQNID, l_SEQNNR, l_SEQNSTR);

  perform U_OPRAVA_P_RowInsert('SEPTIMAPP','DODAK',a_ID,'','');
end; $$;



select ASWDropProcedure('DODAK_Update');
/**
 * Function for updating in-storage delivery notes
 */
create or replace function admin_septim.DODAK_Update(
  in a_ID                  IDINT,
  in a_POPIS               POPISTXT,
  in a_AKCE                NAZEVSTR,
  in a_KOMENTAR            KOMENTARTXT,
  in a_PLANNASKL           DATUMCASTS_NU,
  in a_REALNASKL           DATUMCASTS_NU,
  in a_SUPPLIERDNID        IDENTCODESTR_NU,
  in a_VARSYMBOL           IDCODESTR,
  in a_ZDANPLNENI          DATUMTS_NU,
  in a_SPLATNOST           DATUMTS_NU,
  in a_UHRADA              DATUMTS_NU,
  in a_SLEVAPROC           KOEFICIENTFLT,
  in a_DODAVATEL           NAZEVSTR,
  in a_MENA                NAZEVSTR,
  in a_KURSJEDNUZIV        MNOZSTVIFLT,
  in a_KURSHODNUZIV        CENAFLT,
  in a_KURSDATUM           DATETS,
  in a_SEQUENCE            NAMESTR,
  in a_SEQNSTR             SEQUENCESTR_NU,
  in a_REALIZED_DN         VALUEBOOL,
  in a_FORCE               FORCETXT default null
) returns void
language plpgsql security definer as $$
declare
  l_DODVID                 REFIDINT;
  l_ID                     IDINT;
  l_MENAID                 REFIDINT;
  l_AKCEID                 REFIDINT;
  l_KURSJEDNUZIV_OLD       MNOZSTVIFLT;
  l_KURSHODNUZIV_OLD       CENAFLT;
  l_PLANNASKL_OLD          DATUMCASTS_NU;
  l_REALNASKL_OLD          DATUMCASTS_NU;
  l_SLEVAPROC_OLD          KOEFICIENTFLT;
  l_ZMENAKURS              BOOLBIT;
  l_ZKONTR                 BOOLBIT_0;
  l_ZAUCT                  BOOLBIT_0;
  l_DODVID_OLD             REFIDINT;
  l_SUPPLIERDNID_OLD       IDENTCODESTR_NU;
  l_AKCEID_OLD             REFIDINT;
  l_VARSYMBOL_OLD          IDCODESTR;
  l_ZDANPLNENI_OLD         DATUMCASTS_NU;
  l_SPLATNOST_OLD          DATUMCASTS_NU;
  l_UHRADA_OLD             DATUMCASTS_NU;
  l_KURSDATUM_OLD          DATETS;
  l_KURSJEDNKL             MNOZSTVIFLT;
  l_KURSHODNKL             CENAFLT;
  cr_cursorPOL             RECORD;
  l_SEQNID_OLD             REFIDINT;
  l_SEQNSTR_OLD            SEQUENCESTR_NU;
  l_SEQNNR_OLD             SEQUENCEINT_NU;
  l_SEQNID                 REFIDINT;
  l_SEQNSTR                SEQUENCESTR_NU;
  l_SEQNNR                 SEQUENCEINT_NU;
begin
  select
    PLANNASKL, REALNASKL, SLEVAPROC, KURSHODNUZIV, KURSJEDNUZIV, ZKONTR, ZAUCT, DODVID,
    SUPPLIERDNID, AKCEID, VARSYMBOL, ZDANPLNENI, SPLATNOST, UHRADA, KURSDATUM,
    SEQNID, SEQNSTR, SEQNNR
  into
    l_PLANNASKL_OLD, l_REALNASKL_OLD, l_SLEVAPROC_OLD, l_KURSHODNUZIV_OLD, l_KURSJEDNUZIV_OLD, l_ZKONTR, l_ZAUCT, l_DODVID_OLD,
    l_SUPPLIERDNID_OLD, l_AKCEID_OLD, l_VARSYMBOL_OLD, l_ZDANPLNENI_OLD, l_SPLATNOST_OLD, l_UHRADA_OLD, l_KURSDATUM_OLD,
    l_SEQNID_OLD, l_SEQNSTR_OLD, l_SEQNNR_OLD
  from
    DODAK
  where
    DODKID = a_ID;

  -- It is not possible to change a pending DN to a in-storage DN by this update.
  if a_REALIZED_DN and l_REALNASKL_OLD is null or not a_REALIZED_DN and l_REALNASKL_OLD is not null then
    perform ASWError(39043);
  end if;

  -- Permissions check, if the DN datetime has changed
  -- It is usefull only for the in-storage DN. For the pending delivery notes it is not checked
  if l_REALNASKL_OLD is not null then
    if l_REALNASKL_OLD <> a_REALNASKL then
      -- kontrola omezeni casem u vsech polozek, protoze se zmenil cas
      for cr_cursorPOL in
        select distinct SKLDID as cr_SKLDID from DODPOL where SMAZAN = 0 and DODKID = a_ID
      loop
        perform SKLAD_CheckTimePerm(0, l_REALNASKL_OLD, cr_cursorPOL.cr_SKLDID);
        perform SKLAD_CheckTimePerm(0, a_REALNASKL, cr_cursorPOL.cr_SKLDID);
      end loop;
    end if;
  end if;

  perform SKLADPERM_CheckEditPerm(l_ZKONTR,l_ZAUCT);
  perform SKLADPERM_CheckFlag(l_ZKONTR,l_ZAUCT,false,1,a_FORCE);

  if (a_REALNASKL is not null) and (a_KURSDATUM is not null) and (date(a_REALNASKL) <> a_KURSDATUM) and (l_KURSDATUM_OLD <> a_KURSDATUM or l_REALNASKL_OLD <> a_REALNASKL) then
    -- vlastné kursové datum (pouze pokud se změnilo kursové datum nebo naskladnění), kontrola oprávnění
    perform U_CheckPerm('SEPTIMAPP','SKLADPRIJMY\DODAKMENITKURSDATUM',0);
  end if;

  --- volání procedury na kontrolu vstupních údajů
  select * into a_KURSDATUM, a_KURSHODNUZIV, a_KURSJEDNUZIV, l_SEQNID, l_KURSHODNKL, l_KURSJEDNKL, l_DODVID, l_MENAID, l_AKCEID
    from DODAK__Check(a_ID, a_PLANNASKL, a_REALNASKL, a_SUPPLIERDNID, a_SLEVAPROC, a_DODAVATEL, a_MENA, a_KURSDATUM, a_KURSHODNUZIV,
                      a_KURSJEDNUZIV, a_AKCE, a_FORCE, a_SEQUENCE, a_SEQNSTR, a_REALIZED_DN, l_DODVID, l_MENAID, l_AKCEID, a_VARSYMBOL);
  if (a_KURSJEDNUZIV <> l_KURSJEDNUZIV_OLD) or (a_KURSHODNUZIV <> l_KURSHODNUZIV_OLD) then
    l_ZMENAKURS := 1;
  else
    l_ZMENAKURS := 0;
  end if;

  if (l_DODVID_OLD <> l_DODVID) and exists(select 1 from DODPOL as DP join DODOBJDODPOL as DODP on DP.DODPID = DODP.DODPID where DP.SMAZAN = 0 and DP.DODKID = a_ID and DODP.SMAZAN = 0) then
    -- změna dodavatele a existuje vazba na objednávku = chyba
    perform ASWError(39011, cast(array['DODAVATEL'] as text[]));
  end if;

  -- kontrola změn mimo popis a komentář - pokud se údaje liší, kontrola, zda není dodák spárovaný s fakturou
  if (a_REALNASKL <> l_REALNASKL_OLD)
    or (l_DODVID <> l_DODVID_OLD)
    or (a_KURSJEDNUZIV <> l_KURSJEDNUZIV_OLD)
    or (a_KURSHODNUZIV <> l_KURSHODNUZIV_OLD)
    or (a_SUPPLIERDNID is distinct from l_SUPPLIERDNID_OLD)
    or (a_VARSYMBOL is distinct from l_VARSYMBOL_OLD)
    or (a_ZDANPLNENI is distinct from l_ZDANPLNENI_OLD)
    or (a_SPLATNOST is distinct from l_SPLATNOST_OLD)
    or (a_UHRADA is distinct from l_UHRADA_OLD)
    or (a_SLEVAPROC <> l_SLEVAPROC_OLD)
    or (l_AKCEID is distinct from l_AKCEID_OLD)
    or (a_KURSDATUM <> l_KURSDATUM_OLD)
  then
    perform DODAK_CheckSparovanSFakturou(a_ID);
  end if;

  -- check sequence changes
  if l_SEQNID is distinct from l_SEQNID_OLD or a_SEQNSTR is distinct from l_SEQNSTR_OLD then
    if a_REALIZED_DN or l_SEQNID is not null then
      select S.a_SEQNNR, S.a_SEQNSTR into l_SEQNNR, l_SEQNSTR from B_SEQUENCE_SetVal(l_SEQNID, a_SEQNSTR, 'SEPTIMAPP\DODAK', 0, a_FORCE) as S;
    else
      l_SEQNSTR := null;
      l_SEQNNR := null;
    end if;
  else
    l_SEQNSTR := l_SEQNSTR_OLD;
    l_SEQNNR  := l_SEQNNR_OLD;
  end if;

  --- logování úpravy záznamu do U_OPRAVA se založením kopie záznamu
  perform U_OPRAVA_P_RowUpdate('SEPTIMAPP','DODAK',a_ID,'','');
  --- vlastní úprava záznamu
  update DODAK
  set
    REALNASKL = a_REALNASKL, PLANNASKL = a_PLANNASKL, DODVID = l_DODVID, KURSJEDNKL = l_KURSJEDNKL, KURSHODNKL = l_KURSHODNKL, KURSJEDNUZIV = a_KURSJEDNUZIV,
    KURSHODNUZIV = a_KURSHODNUZIV, KURSDATUM = a_KURSDATUM, SUPPLIERDNID = a_SUPPLIERDNID, VARSYMBOL = a_VARSYMBOL, ZDANPLNENI = a_ZDANPLNENI, SPLATNOST = a_SPLATNOST,
    UHRADA = a_UHRADA, SLEVAPROC = a_SLEVAPROC, POPIS = a_POPIS, KOMENTAR = a_KOMENTAR, AKCEID = l_AKCEID, SEQNID = l_SEQNID, SEQNSTR = l_SEQNSTR, SEQNNR = l_SEQNNR
  where
    DODKID = a_ID;

  --- volání procedury na úpravy v položkách dodacího listu (slevy, datumy, ...)
  perform DODPOL_DODAKUpdate(a_ID, l_ZMENAKURS, l_REALNASKL_OLD, l_SLEVAPROC_OLD, a_FORCE);
  perform U_OPRAVA_P_Finish();
end; $$;



select ASWDropProcedure('DODAKUpdate');
/**  Function for updating realized delivery notes
*/
create or replace function admin_septim.DODAKUpdate(
  in a_ID                  IDINT,
  in a_POPIS               POPISTXT,
  in a_AKCE                NAZEVSTR,
  in a_KOMENTAR            KOMENTARTXT,
  in a_PLANNASKL           DATUMCASTS_NU,
  in a_REALNASKL           DATUMCASTS_NU,
  in a_SUPPLIERDNID        IDENTCODESTR_NU,
  in a_VARSYMBOL           IDCODESTR,
  in a_ZDANPLNENI          DATUMTS_NU,
  in a_SPLATNOST           DATUMTS_NU,
  in a_UHRADA              DATUMTS_NU,
  in a_SLEVAPROC           KOEFICIENTFLT,
  in a_DODAVATEL           NAZEVSTR,
  in a_MENA                NAZEVSTR,
  in a_KURSJEDNUZIV        MNOZSTVIFLT,
  in a_KURSHODNUZIV        CENAFLT,
  in a_KURSDATUM           DATETS,
  in a_SEQUENCE            NAMESTR,
  in a_SEQNSTR             SEQUENCESTR_NU,
  in a_FORCE               FORCETXT default null
) returns void
language plpgsql security definer as $$
begin
  -- check permission on editing
  perform SKLAD_CheckPermNoTime('SKLADPRIJMY\UPDDODAK', 0, a_ID, 'DODAK', 'SKLADPRIJMY\UPDVLDODAK');
  -- update realized DN
  perform DODAK_Update(a_ID, a_POPIS, a_AKCE, a_KOMENTAR, a_PLANNASKL, a_REALNASKL, a_SUPPLIERDNID, a_VARSYMBOL, a_ZDANPLNENI,
                                    a_SPLATNOST, a_UHRADA, a_SLEVAPROC, a_DODAVATEL, a_MENA, a_KURSJEDNUZIV, a_KURSHODNUZIV, a_KURSDATUM,
                                    a_SEQUENCE, a_SEQNSTR, cast(1 as BOOLBIT), a_FORCE);
end; $$;
select grant_func('DODAKUpdate', 'SPEXEC');



select ASWDropProcedure('DODAKPLANNEDUpdate');
/**  Function for updating planned delivery notes
*/
create or replace function admin_septim.DODAKPLANNEDUpdate(
  in a_ID                  IDINT,
  in a_POPIS               POPISTXT,
  in a_AKCE                NAZEVSTR,
  in a_KOMENTAR            KOMENTARTXT,
  in a_PLANNASKL           DATUMCASTS_NU,
  in a_REALNASKL           DATUMCASTS_NU,
  in a_SUPPLIERDNID        IDENTCODESTR_NU,
  in a_VARSYMBOL           IDCODESTR,
  in a_ZDANPLNENI          DATUMTS_NU,
  in a_SPLATNOST           DATUMTS_NU,
  in a_UHRADA              DATUMTS_NU,
  in a_SLEVAPROC           KOEFICIENTFLT,
  in a_DODAVATEL           NAZEVSTR,
  in a_MENA                NAZEVSTR,
  in a_KURSJEDNUZIV        MNOZSTVIFLT,
  in a_KURSHODNUZIV        CENAFLT,
  in a_KURSDATUM           DATETS,
  in a_SEQUENCE            NAMESTR,
  in a_SEQNSTR             SEQUENCESTR_NU,
  in a_FORCE               FORCETXT default null
) returns void
language plpgsql security definer as $$
begin
  -- check permission on editing
  perform SKLAD_CheckPermNoTime('SKLADPRIJMY\UPDDODAKPLANNED', 0, a_ID, 'DODAK', 'SKLADPRIJMY\UPDVLDODAKPLANNED');
  -- update planned delivery notes
  perform DODAK_Update(a_ID, a_POPIS, a_AKCE, a_KOMENTAR, a_PLANNASKL, a_REALNASKL, a_SUPPLIERDNID, a_VARSYMBOL, a_ZDANPLNENI,
                                    a_SPLATNOST, a_UHRADA, a_SLEVAPROC, a_DODAVATEL, a_MENA, a_KURSJEDNUZIV, a_KURSHODNUZIV, a_KURSDATUM,
                                    a_SEQUENCE, a_SEQNSTR, cast(0 as BOOLBIT), a_FORCE);
end; $$;
select grant_func('DODAKPLANNEDUpdate', 'SPEXEC');



select ASWDropProcedure('DODAK_Delete');
/**
 * Function for removing a delivery note
 */
create or replace function admin_septim.DODAK_Delete(
  in a_ID                  IDINT,
  in a_FORCE               FORCETXT default null
) returns void
language plpgsql security definer as $$
declare
  l_MENAID                 REFIDINT;
  l_REALNASKL              DATUMCASTS_NU;
  l_ZKONTR                 BOOLBIT_0;
  l_ZAUCT                  BOOLBIT_0;
  cr_cursorPOL             RECORD;
begin

  select
    REALNASKL, ZKONTR, ZAUCT, MENAID
  into
    l_REALNASKL, l_ZKONTR, l_ZAUCT, l_MENAID
  from
    DODAK
  where
    DODKID = a_ID;

  -- Check the permissions to work with individual delivery note items
  -- It is checked only for the in-storage DN
  if l_REALNASKL is not null then

    for cr_cursorPOL in
      select distinct SKLDID as cr_SKLDID from DODPOL where SMAZAN = 0 and DODKID = a_ID
    loop
      perform SKLAD_CheckTimePerm(0, l_REALNASKL, cr_cursorPOL.cr_SKLDID);
    end loop;

    if U_CheckPerm('SEPTIMAPP', 'SKLADZAKLAD\STRDUNLIMITED',-1) = false then
      if SKLAD_StrediskaPolCheck(-1, a_ID, 'DODPOL', 'DODKID') = false then
        perform ASWError(39023);
      end if;
    end if;

  end if;

  if l_MENAID <> MENA_ZAKLADNIMENAGETID() then
    --- test licence, zda lze mazat dod. list v cizí měně
    perform B_LIMITS_CheckLicence('SEPTIMAPP', 'DODAKCIZIMENA', 1, 39018);
  end if;
  --- test spárovaní s fakturou
  perform DODAK_CheckSparovanSFakturou(a_ID,39005);
  --- test referenční integrity
  perform B_RI('SEPTIMAPP', 'DODAK', a_ID, 'DODPOL,DODAKTAX', 0, 0);
  --- test ZKONTR a ZAUCT
  perform SKLADPERM_CheckEditPerm(l_ZKONTR, l_ZAUCT);
  perform SKLADPERM_CheckFlag(l_ZKONTR, l_ZAUCT, false, 2, a_FORCE);

  --- když to došlo až sem, zavolá proceduru na smazání položek dodacího listu
  if exists(select 1 from DODPOL where DODKID = a_ID and SMAZAN = 0) then
    --- pokud se zatím program neptal na to zda je smazan také
    if CheckForce(a_FORCE,'DODAKDEL') is null then
      --- zeptá se zda smazan spolu s položkami
      perform ASWError(39007);
    end if;
  end if;

  perform DODPOL_DODAKDelete(a_ID,a_FORCE);
  perform DODAKTAX_DODAKDelete(a_ID);

  --- a také smaže vlastní dodací list
  perform U_OPRAVA_P_RowDelete('SEPTIMAPP', 'DODAK', a_ID, '', '');
end; $$;



select ASWDropProcedure('DODAKDelete');
/**
 * Function for removing realized delivery note
 */
create or replace function admin_septim.DODAKDelete(
  in a_ID                  IDINT,
  in a_FORCE               FORCETXT default null
) returns void
language plpgsql security definer as $$
begin
  -- check permissions on deleting
  perform SKLAD_CheckPermNoTime('SKLADPRIJMY\DELDODAK', 0, a_ID, 'DODAK', 'SKLADPRIJMY\DELVLDODAK');
  -- delete
  perform DODAK_Delete(a_ID, a_FORCE);
end; $$;
select grant_func('DODAKDelete', 'SPEXEC');



select ASWDropProcedure('DODAKPLANNEDDelete');
/**
 * Function for removing planned delivery note
 */
create or replace function admin_septim.DODAKPLANNEDDelete(
  in a_ID                  IDINT,
  in a_FORCE               FORCETXT default null
) returns void
language plpgsql security definer as $$
begin
  -- check permissions on deleting
  perform SKLAD_CheckPermNoTime('SKLADPRIJMY\DELDODAKPLANNED', 0, a_ID, 'DODAK', 'SKLADPRIJMY\DELVLDODAKPLANNED');
  -- delete
  perform DODAK_Delete(a_ID, a_FORCE);
end; $$;
select grant_func('DODAKPLANNEDDelete', 'SPEXEC');



select ASWDropProcedure('DODAK_Get');
/**  Procedura na získání obsahu jednotlivých fieldů opravovaného záznamu pro editační dialog
*/
drop type if exists admin_septim.DODAKGet_rs cascade;
create type admin_septim.DODAKGet_rs as (
  POPIS                    POPISTXT,
  KOMENTAR                 KOMENTARTXT,
  UZIVATEL                 U_JMENOSTR,
  DATUMCASZALOZ            DATUMCASTS,
  PLANNASKL                DATUMCASTS_NU,
  REALNASKL                DATUMCASTS_NU,
  SUPPLIERDNID             IDENTCODESTR_NU,
  VARSYMBOL                IDCODESTR,
  ZDANPLNENI               DATUMTS_NU,
  SPLATNOST                DATUMTS_NU,
  UHRADA                   DATUMTS_NU,
  SLEVAPROC                KOEFICIENTFLT,
  DODAVATEL                JMENOSTR,
  MENA                     NAZEVSTR,
  KURSJEDNKL               MNOZSTVIFLT,
  KURSHODNKL               CENAFLT,
  KURSJEDNUZIV             MNOZSTVIFLT,
  KURSHODNUZIV             CENAFLT,
  KURSDATUM                DATETS,
  CENAB                    B_VALUETXT,
  CENABSL                  B_VALUETXT,
  CENASSL                  B_VALUETXT,
  CENABZM                  B_VALUETXT,
  CENABZMSL                B_VALUETXT,
  AKCE                     NAZEVSTR,
  ZKONTR                   BOOLBIT_0,
  ZAUCT                    BOOLBIT_0,
  SEQUENCE                 NAMESTR,
  SEQNSTR                  SEQUENCESTR_NU,
  "#MENA"                  INTEGER,
  "@edPanelKurs"           INTEGER,
  "#ZKONTR"                INTEGER,
  "#ZAUCT"                 INTEGER,
  "#SEQUENCE"              INTEGER,
  "#SEQNSTR"               INTEGER,
  "#REALNASKL"             INTEGER,
  "#PLANNASKL"             INTEGER
);

create or replace function admin_septim.DODAK_Get(
  in a_ID                  IDINT,
  in a_REALIZED_DN         BOOLBIT
) returns setof admin_septim.DODAKGet_rs
language plpgsql security definer as $$
declare
  l_UZIVATEL        U_JMENOSTR;
  l_DATUMCASZALOZ   DATUMCASTS;
begin
  select * into l_UZIVATEL, l_DATUMCASZALOZ from U_OPRAVA_GetCreateInfo('SEPTIMAPP','DODAK',a_ID);

  return query
    select
      T.POPIS, T.KOMENTAR, l_UZIVATEL as UZIVATEL, l_DATUMCASZALOZ as DATUMCASZALOZ,
      T.PLANNASKL, T.REALNASKL, T.SUPPLIERDNID, T.VARSYMBOL, T.ZDANPLNENI, T.SPLATNOST, T.UHRADA,
      T.SLEVAPROC, D.JMENO as DODAVATEL, M.NAZEV as MENA, T.KURSJEDNKL, T.KURSHODNKL, T.KURSJEDNUZIV,
      T.KURSHODNUZIV, T.KURSDATUM, MENA_FormatMena(T.CENAB,T.MENAID) as CENAB,
      MENA_FormatMena(T.CENABSL,T.MENAID) as CENABSL, MENA_FormatMena(T.CENASSL,T.MENAID) as CENASSL,
      MENA_FormatDefaultMena(T.CENABZM) as CENABZM, MENA_FormatDefaultMena(T.CENABZMSL) as CENABZMSL,
      A.NAZEV as AKCE, T.ZKONTR, T.ZAUCT, cast(SQ.NAME as NAMESTR) as SEQUENCE, T.SEQNSTR as SEQNSTR,
      0 as "#MENA", (case when T.MENAID=MENA_ZAKLADNIMENAGETID() then -1 else 1 end) as "@edPanelKurs",
      (case when admin_base.B_LIMITS_GetLicence('SEPTIMAPP','ZKONTRZAUCT',-1) = 1 then 0 else -1 end) as "#ZKONTR",
      (case when admin_base.B_LIMITS_GetLicence('SEPTIMAPP','ZKONTRZAUCT',-1) = 1 then 0 else -1 end) as "#ZAUCT",
      cast(not a_REALIZED_DN as INT) as "#SEQUENCE",
      0 as "#SEQNSTR", cast(a_REALIZED_DN as INT) as "#REALNASKL",
      cast(not a_REALIZED_DN as INT) as "#PLANNASKL"
    from DODAK as T
      join DODAVATEL as D on T.DODVID = D.DODVID
      left outer join MENA as M on T.MENAID = M.MENAID
      left outer join AKCE as A on T.AKCEID = A.AKCEID
      left join B_SEQUENCE as SQ on SQ.SEQNID = T.SEQNID
    where
      T.DODKID = a_ID;

end; $$;


select ASWDropProcedure('DODAKGet');
create or replace function admin_septim.DODAKGet(
  in a_ID                  IDINT
) returns setof admin_septim.DODAKGet_rs
language plpgsql security definer as $$
begin
  return query
    select
      POPIS, KOMENTAR, UZIVATEL, DATUMCASZALOZ, PLANNASKL, REALNASKL, SUPPLIERDNID, VARSYMBOL, ZDANPLNENI,
      SPLATNOST, UHRADA, SLEVAPROC, DODAVATEL, MENA, KURSJEDNKL, KURSHODNKL, KURSJEDNUZIV, KURSHODNUZIV,
      KURSDATUM, CENAB, CENABSL, CENASSL, CENABZM, CENABZMSL, AKCE, ZKONTR, ZAUCT, SEQUENCE, SEQNSTR,
      "#MENA", "@edPanelKurs", "#ZKONTR", "#ZAUCT", "#SEQUENCE", "#SEQNSTR", "#REALNASKL", "#PLANNASKL"
    from
      DODAK_Get(a_ID,cast(1 as BOOLBIT));
end; $$;

select grant_func('DODAKGet', 'SPEXEC');



select ASWDropProcedure('DODAKPLANNEDGet');
create or replace function admin_septim.DODAKPLANNEDGet(
  in a_ID                  IDINT
) returns setof admin_septim.DODAKGet_rs
language plpgsql security definer as $$
begin
  return query
    select
      POPIS, KOMENTAR, UZIVATEL, DATUMCASZALOZ, PLANNASKL, REALNASKL, SUPPLIERDNID, VARSYMBOL, ZDANPLNENI,
      SPLATNOST, UHRADA, SLEVAPROC, DODAVATEL, MENA, KURSJEDNKL, KURSHODNKL, KURSJEDNUZIV, KURSHODNUZIV,
      KURSDATUM, CENAB, CENABSL, CENASSL, CENABZM, CENABZMSL, AKCE, ZKONTR, ZAUCT, SEQUENCE, SEQNSTR,
      "#MENA", "@edPanelKurs", "#ZKONTR", "#ZAUCT", "#SEQUENCE", "#SEQNSTR", "#REALNASKL", "#PLANNASKL"
    from
      DODAK_Get(a_ID,cast(0 as BOOLBIT));
end; $$;

select grant_func('DODAKPLANNEDGet', 'SPEXEC');


select ASWDropProcedure('DODAK_GetLastUsedSequenceForRealizedDN');
/*
 * Function to return the last used sequence in realized DNs
 */
create or replace function admin_septim.DODAK_GetLastUsedSequenceForRealizedDN (
) returns NAMESTR
language plpgsql security definer as $$
begin
  return
    S.NAME
  from
    DODAK D
    join B_SEQUENCE S on S.SEQNID = D.SEQNID
  where
    D.REALNASKL is not null
    and SMAZAN = 0
  order by D.DODKID desc limit 1;
end; $$;


select ASWDropProcedure('DODAK_Default');
/*
* General function for getting default values while inserting new delivery note. Predefined values depends on the type of DN.
*/
drop type if exists admin_septim.DODAKDefault_rs cascade;
create type admin_septim.DODAKDefault_rs as (
  REALNASKL                DATUMCASTS_NU,
  PLANNASKL                DATUMCASTS_NU,
  ZDANPLNENI               DATUMTS_NU,
  SPLATNOST                DATUMTS_NU,
  UHRADA                   DATUMTS_NU,
  UZIVATEL                 U_JMENOSTR,
  CENAB                    B_VALUETXT,
  CENABSL                  B_VALUETXT,
  CENASSL                  B_VALUETXT,
  CENABZM                  B_VALUETXT,
  CENABZMSL                B_VALUETXT,
  SLEVAPROC                INTEGER,
  SEQUENCE                 NAMESTR,
  SEQNSTR                  SEQUENCESTR_NU,
  MENA                     NAZEVSTR,
  "#MENA"                  INTEGER,
  "@edPanelKurs"           INTEGER,
  "#ZKONTR"                INTEGER,
  "#ZAUCT"                 INTEGER,
  "#REALNASKL"             INTEGER,
  "#PLANNASKL"             INTEGER
);

create or replace function admin_septim.DODAK_Default(
  in a_REALIZED_DN         VALUEBOOL
) returns setof admin_septim.DODAKDefault_rs
language plpgsql security definer as $$
declare
  l_EDTCIZIMENA            INTEGER;
  l_DN_DATE                DATUMCASTS_NU;
  l_ZDANPLNENI             DATUMTS_NU;
  l_SPLATNOST              DATUMTS_NU;
  l_UHRADA                 DATUMTS_NU;
  l_MENAID                 REFIDINT;
  l_VYCHOZICASNASKLADNENISTR  VALUETXT;
  l_LASTSEQUENCE           NAMESTR;
  l_SEQNSTR                SEQUENCESTR_NU;
begin
  --- test licence, zákaz editace měny dle nastavení
  l_EDTCIZIMENA := B_LIMITS_GetLicence('SEPTIMAPP','DODAKCIZIMENA',0);

  -- datum a cas naskladneni - vychozi cas naskladneni z GP, datum je aktualni
  l_VYCHOZICASNASKLADNENISTR := P_GetGlobalParam('SKLAD','DODAK_VYCHOZICASNASKLADNENI');
  if coalesce(l_VYCHOZICASNASKLADNENISTR,'') = '' then
    -- nezadany, aktualni datum a cas
    l_DN_DATE := localtimestamp;
  else
    -- datum aktualni, cas dle parametru
    l_DN_DATE := cast(localtimestamp as DATUMTS) + cast(l_VYCHOZICASNASKLADNENISTR as TIMETS);
  end if;

  if not a_REALIZED_DN then
    l_DN_DATE := l_DN_DATE + interval '1 day';
  end if;

  if admin_params.P_GetGlobalParamINT('SKLAD','DODAK_ZDANPLNENI') > -1 then
    l_ZDANPLNENI := l_DN_DATE + (interval '1' day * cast(P_GetGlobalParamINT('SKLAD','DODAK_ZDANPLNENI') as INT));
  end if;
  if admin_params.P_GetGlobalParamINT('SKLAD','DODAK_SPLATNOST') > -1 then
    l_SPLATNOST := l_DN_DATE + (interval '1' day * cast(P_GetGlobalParamINT('SKLAD','DODAK_SPLATNOST') as INT));
  end if;
  if admin_params.P_GetGlobalParamINT('SKLAD','DODAK_UHRADA') > -1 then
    l_UHRADA := l_DN_DATE + (interval '1' day * cast(P_GetGlobalParamINT('SKLAD','DODAK_UHRADA') as INT));
  end if;
  l_MENAID :=  MENA_ZAKLADNIMENAGETID();

  -- sequence is optional for planned DNs. User can manually generate.
  l_LASTSEQUENCE := DODAK_GetLastUsedSequenceForRealizedDN();
  select S.a_SEQNSTR into l_SEQNSTR from B_SEQUENCE_NextValPropose(l_LASTSEQUENCE, 'SEPTIMAPP\DODAK') as S;

  return query
    select
      case when a_REALIZED_DN then l_DN_DATE else cast(null as DATUMCASTS_NU) end as REALNASKL,
      case when a_REALIZED_DN then cast(null as DATUMCASTS_NU) else l_DN_DATE end as PLANNASKL,
      l_ZDANPLNENI as ZDANPLNENI,l_SPLATNOST as SPLATNOST,l_UHRADA as UHRADA, admin_users.U_GetUzivJmeno() as UZIVATEL,
      MENA_FormatMena(0.0, l_MENAID) CENAB, MENA_FormatMena(0.0, l_MENAID) CENABSL, MENA_FormatMena(0.0, l_MENAID) CENASSL,
      MENA_FormatDefaultMena(0.0) CENABZM, MENA_FormatDefaultMena(0.0) CENABZMSL, 0 as SLEVAPROC, l_LASTSEQUENCE, l_SEQNSTR,
      MENA_GetNazev(l_MENAID) as MENA, (case when l_EDTCIZIMENA = 0 then 0 else 1 end) as "#MENA", -1 as "@edPanelKurs",
      (case when admin_base.B_LIMITS_GetLicence('SEPTIMAPP','ZKONTRZAUCT',-1) = 1 then 0 else -1 end) as "#ZKONTR",
      (case when admin_base.B_LIMITS_GetLicence('SEPTIMAPP','ZKONTRZAUCT',-1) = 1 then 0 else -1 end) as "#ZAUCT",
      cast(a_REALIZED_DN as INT) as "#REALNASKL",
      cast(not a_REALIZED_DN as INT) as "#PLANNASKL";

end; $$;


/**
 * Envelope of DODAK_Default for delivery notes in storage
 */
select ASWDropProcedure('DODAKDefault');
create or replace function admin_septim.DODAKDefault(
  in a_ID                  IDINT
) returns setof admin_septim.DODAKDefault_rs
language plpgsql security definer as $$
begin
  -- check permissions
  perform SKLAD_CheckPermNoTime('SKLADPRIJMY\INSDODAK', 0, null);
  -- return values
  return query
    select
      REALNASKL, PLANNASKL, ZDANPLNENI, SPLATNOST, UHRADA, UZIVATEL, CENAB, CENABSL, CENASSL, CENABZM, CENABZMSL, SLEVAPROC,
      SEQUENCE, SEQNSTR, MENA, "#MENA", "@edPanelKurs", "#ZKONTR", "#ZAUCT", "#REALNASKL", "#PLANNASKL"
    from
      DODAK_Default(a_REALIZED_DN => cast(true as VALUEBOOL));
end; $$;
select grant_func('DODAKDefault', 'SPEXEC');


/**
 * Envelope of DODAK_Default for a pending delivery note
 */
select ASWDropProcedure('DODAKPLANNEDDefault');
create or replace function admin_septim.DODAKPLANNEDDefault(
  in a_ID                  IDINT
) returns setof admin_septim.DODAKDefault_rs
language plpgsql security definer as $$
begin
  -- check permissions
  perform SKLAD_CheckPermNoTime('SKLADPRIJMY\INSDODAKPLANNED', 0, null);
  -- return values
  return query
    select
      REALNASKL, PLANNASKL, ZDANPLNENI, SPLATNOST, UHRADA, UZIVATEL, CENAB, CENABSL, CENASSL, CENABZM, CENABZMSL, SLEVAPROC,
      SEQUENCE, SEQNSTR, MENA, "#MENA", "@edPanelKurs", "#ZKONTR", "#ZAUCT", "#REALNASKL", "#PLANNASKL"
    from
      DODAK_Default(a_REALIZED_DN => cast(false as VALUEBOOL));
end; $$;
select grant_func('DODAKPLANNEDDefault', 'SPEXEC');


select ASWDropProcedure('DODAK__Check');
/**  Procedura na testování správnosti vstupních hodnot
*/
create or replace function admin_septim.DODAK__Check(
  in    a_ID               IDINT,
  in    a_PLANNASKL        DATUMCASTS_NU,
  in    a_REALNASKL        DATUMCASTS_NU,
  in    a_SUPPLIERDNID     IDENTCODESTR_NU,
  in    a_SLEVAPROC        KOEFICIENTFLT,
  in    a_DODAVATEL        NAZEVSTR,
  in    a_MENA             NAZEVSTR,
  inout a_KURSDATUM        DATETS,
  inout a_KURSHODNUZIV     CENAFLT,
  inout a_KURSJEDNUZIV     MNOZSTVIFLT,
  in    a_AKCE             NAZEVSTR,
  in    a_FORCE            FORCETXT,
  in    a_SEQUENCE         NAMESTR,
  in    a_SEQNSTR          SEQUENCESTR_NU,
  in    a_REALIZED_DN      BOOLBIT,
  out   a_SEQNID           REFIDINT_NU,
  out   a_KURSHODNKL       CENAFLT,
  out   a_KURSJEDNKL       MNOZSTVIFLT,
  inout a_DODVID           IDINT default null,
  inout a_MENAID           IDINT default null,
  inout a_AKCEID           IDINT default null,
  in    a_VARSYMBOL        IDCODESTR default null
)
language plpgsql security definer as $$
declare
  l_KURSHODNKL_PUV         CENAFLT;
  l_KURSJEDNKL_PUV         MNOZSTVIFLT;
  l_KURSHODNUZIV_PUV       CENAFLT;
  l_KURSJEDNUZIV_PUV       MNOZSTVIFLT;
begin

  if a_REALNASKL is null then
    -- check license for pending delivery notes
    perform admin_base.B_LIMITS_CheckLicence('SEPTIMAPP', 'PENDINGDELIVERYNOTES', 1, 39010);
  end if;

  if a_REALIZED_DN then
    perform B_NULL_DATUMCAS('REALNASKL', a_REALNASKL, 39001);
  else
    perform B_NULL_DATUMCAS('PLANNASKL', a_PLANNASKL, 39038);
  end if;

  -- supplier
  if a_DODVID is null then
    perform B_NULL_STR('DODAVATEL',a_DODAVATEL,39002);
    select B_REFTABLE_EX.a_ID into a_DODVID from B_REFTABLE_EX('SEPTIMAPP','DODAVATEL','JMENO','ZKRATKA',a_DODAVATEL,39003,'DODAVATEL');
  end if;

  -- check supplier's DN number.
  if a_REALIZED_DN and P_GetGlobalParamBOOL('SKLAD','DODAK_SUPPLIERDNID_MANDATORY') then
    perform B_NULL_STR('SUPPLIERDNID',a_SUPPLIERDNID,39008);
  end if;

  -- discount
  perform B_NULL_FLT('SLEVAPROC',a_SLEVAPROC,39029);
  if (a_SLEVAPROC > 100) or (a_SLEVAPROC < 0) then
    perform ASWError(39006, cast(array[admin_septim.cms_ProcToStr(a_SLEVAPROC)] as text[]));
  end if;

  -- currency
  if a_MENAID is null then
    perform B_NULL_STR('MENA',a_MENA,39026);
    select B_REFTABLE_EX.a_ID into a_MENAID from B_REFTABLE_EX('SEPTIMAPP','MENA','NAZEV','ZKRATKA',a_MENA,39012,'MENA');
  end if;

  -- kurs+jednotky
  if a_MENAID <> MENA_ZAKLADNIMENAGETID() then
    -- pokud se mena lisi od zakladni meny
    --- test licence
    perform B_LIMITS_CheckLicence('SEPTIMAPP','DODAKCIZIMENA',1,39018);
    perform B_NULL_DATUMCAS('KURSDATUM',a_KURSDATUM,39031);
    perform B_NULL_FLT('KURSHODNUZIV',a_KURSHODNUZIV,39016);
    perform B_NULL_FLT('KURSJEDNUZIV',a_KURSJEDNUZIV,39013);

    -- pro cizí měnu se pro a_EXCHANGEDATE kurs získává z platného lístku (později se nepoužívá, jen se uloží)
    -- používá se vždy uživatelský, který se ve formuláři nastaví dle platného a je možné jej tam upravit
    select cast(isnull(a_JEDNOTKY,0) as NUMBERFLT_NU), isnull(a_STRED,0) into a_KURSJEDNKL, a_KURSHODNKL
      from KURS_GetKursJednotky(a_MENAID,null,a_KURSDATUM,-1,-1,'');
    if a_ID is null then
      select null,null,null,null into l_KURSHODNKL_PUV, l_KURSJEDNKL_PUV, l_KURSHODNUZIV_PUV, l_KURSJEDNUZIV_PUV;
    else
      select KURSHODNKL,KURSJEDNKL,KURSHODNUZIV,KURSJEDNUZIV into l_KURSHODNKL_PUV, l_KURSJEDNKL_PUV, l_KURSHODNUZIV_PUV, l_KURSJEDNUZIV_PUV
        from DODAK where DODKID = a_ID;
    end if;
    select a_NEWUSERRATE, a_NEWUSERUNITS into a_KURSHODNUZIV, a_KURSJEDNUZIV
      from KURS_SkladyCheckUserRate(l_KURSHODNKL_PUV, l_KURSJEDNKL_PUV, l_KURSHODNUZIV_PUV, l_KURSJEDNUZIV_PUV, a_KURSHODNKL, a_KURSJEDNKL, a_KURSHODNUZIV, a_KURSJEDNUZIV, a_FORCE);
    if a_KURSJEDNUZIV <= 0 then
      perform ASWError(39019, cast(array['KURSJEDNUZIV'] as text[]));
    end if;
    if a_KURSHODNUZIV <= 0 then
      perform ASWError(39020, cast(array['KURSHODNUZIV'] as text[]));
    end if;

    --- test, zda uživatel nezměnil kurs, pokud ano, upozornění uživatele, kurs je možné při editaci změnit
    --- a musí se přepočíst všechny položky a také jejich aktuální skladová cena v systému
    --- načtení puv. kursu
    if (a_ID is not null) and (l_KURSHODNUZIV_PUV <> a_KURSHODNUZIV or l_KURSJEDNUZIV_PUV <> a_KURSJEDNUZIV) and CheckForce(a_FORCE,'ZMENKURS') is null then
      perform ASWError(39014);
    end if;
  else
    a_KURSJEDNKL := 1;
    a_KURSHODNKL := 1;
    a_KURSJEDNUZIV := coalesce(a_KURSJEDNUZIV, 1);
    a_KURSHODNUZIV := coalesce(a_KURSHODNUZIV, 1);
    if a_KURSDATUM is null then
      -- Exchange date equals realized date for DNs in storage and current date for planned DNs
      a_KURSDATUM := case a_REALIZED_DN when true then date(a_REALNASKL) else date(localtimestamp) end;
    elsif a_REALIZED_DN then
      -- pokud je zadaný (přes skrytý prvek formuláře) a obsahuje původní hodnotu, pričemž došlo ke změně data naskladnění, zaktualizuji kursové datum
      if (a_ID is not null) and (exists(select 1 from DODAK where DODKID = a_ID and KURSDATUM = a_KURSDATUM and date(REALNASKL) <> date(a_REALNASKL))) and (a_KURSDATUM <> date(a_REALNASKL)) then
        -- změnil se datum a čas naskladnění, zaktualizuji kursový datum
        a_KURSDATUM := date(a_REALNASKL);
      end if;
    end if;
    -- v pripade zakladni meny musi byt jednotky i kurs =1
    if a_KURSJEDNUZIV <> 1 then
      perform ASWError(39027);
    end if;
    if a_KURSHODNUZIV <> 1 then
      perform ASWError(39028);
    end if;
    if a_REALIZED_DN and a_KURSDATUM <> date(a_REALNASKL) then
      perform ASWError(39030);
    end if;
  end if;

  -- akce
  if a_AKCEID is null then
    select B_REFTABLE.a_ID into a_AKCEID from B_REFTABLE('SEPTIMAPP','AKCE','NAZEV',a_AKCE,39017,'AKCE');
  end if;

  -- check sequence's values
  if a_REALIZED_DN then
    perform B_NULL_STR('SEQUENCE', a_SEQUENCE, 39034);
  end if;

  if a_REALIZED_DN or not B_NULL_STR('SEQUENCE', a_SEQUENCE, -1) then
    perform B_NULL_STR('SEQNSTR', a_SEQNSTR, 39036);
    select BR.a_ID into a_SEQNID from B_REFTABLE('BASE', 'B_SEQUENCE', 'NAME', a_SEQUENCE, 39035, 'SEQUENCE') as BR;
  end if;

  -- check if DN with the same number already exists for supplier and
  -- allow to make supplier's DN with the same number, as another existing DN has, only by FORCE
  if (coalesce(a_SUPPLIERDNID, '') != '')
    and (admin_base.B_UNQ_STR('SEPTIMAPP', 'DODAK', 'SUPPLIERDNID', concat('DODVID=', a_DODVID), a_SUPPLIERDNID, -1, -1, a_ID) > 0)
    and (CheckForce(a_FORCE, 'DNDUPSDNID') is null)
  then
    a_DODAVATEL := coalesce(a_DODAVATEL, DODAVATEL_GetJmeno(a_DODVID));
    perform admin_base.ASWError(39047, cast(array[a_DODAVATEL, a_SUPPLIERDNID] as text[]));
  end if;

  -- check if DN with the same invoice variable symbol already exists for supplier
  -- allow to make supplier's DN with the same varsymbol, as another existing DN has, only by FORCE
  if (coalesce(a_VARSYMBOL, '') != '')
    and (admin_base.B_UNQ_STR('SEPTIMAPP', 'DODAK', 'VARSYMBOL', concat('DODVID=', a_DODVID), a_VARSYMBOL, -1, -1, a_ID) > 0)
    and (CheckForce(a_FORCE, 'DNDUPVARSYMBOL') is null)
  then
    a_DODAVATEL := coalesce(a_DODAVATEL, DODAVATEL_GetJmeno(a_DODVID));
    perform admin_base.ASWError(39048, cast(array[a_DODAVATEL, a_VARSYMBOL] as text[]));
  end if;
end; $$;




select ASWDropProcedure('DODAK_RefreshCeny');
/**Přepočet cen dodáku.*/
create or replace function admin_septim.DODAK_RefreshCeny(
  in a_DODKID              IDINT
) returns void
language plpgsql security definer as $$
declare
  l_CENAB                  CENAFLT;
  l_CENABSL                CENAFLT;
  l_TAXSL                  CENAFLT;
  l_CENABZM                CENAFLT;
  l_CENABZMSL              CENAFLT;
  l_TAXBASEADJUC           CENAFLT;
  l_TAXADJUC               CENAFLT;
  l_TAXBASEADJBC           CENAFLT;
  cr_rec                   RECORD;
begin
  --- součet všech položek
  select sum(DP.CENABC), sum(DP.CENABCSL),
         sum(DP.CENABJZM * DP.MNOZSTVI), sum(DP.CENABJZMSL * DP.MNOZSTVI) into l_CENAB,l_CENABSL,l_CENABZM,l_CENABZMSL
  from DODPOL as DP
  where DP.DODKID = a_DODKID and DP.SMAZAN = 0;
  -- součet daní po slevě v měně dodáku
  select sum(DT.PRICETAXUC) into l_TAXSL
  from DODPOL as DP
    join DODPOLTAX as DT on DP.DODPID = DT.DODPID
  where DP.DODKID = a_DODKID and DP.SMAZAN = 0;
  -- součet korekcí základů daní a daní (po slevě)
  select sum(TAXBASEADJUC), sum(TAXADJUC), sum(TAXBASEADJBC) into l_TAXBASEADJUC, l_TAXADJUC, l_TAXBASEADJBC
  from DODAKTAX
  where DODKID = a_DODKID and DELETED = 0;
  --- update dodáku
  update DODAK set CENAB = coalesce(l_CENAB,0),
                   CENABSL = coalesce(l_CENABSL,0) + coalesce(l_TAXBASEADJUC,0),
                   CENASSL = coalesce(l_CENABSL,0) + coalesce(l_TAXSL,0) + coalesce(l_TAXBASEADJUC,0) + coalesce(l_TAXADJUC,0),
                   CENABZM = coalesce(l_CENABZM,0),
                   CENABZMSL = coalesce(l_CENABZMSL,0) + coalesce(l_TAXBASEADJBC,0)
    where DODKID = a_DODKID;
end; $$;



select ASWDropProcedure('DODAK_H_GetKurs');
/**
* TZ14992 Náhrada refcursorů u SQL handlerů potřebných pro implementaci skladů fáze I
*/
drop type if exists admin_septim.DODAK_H_GetKurs_rs cascade;
create type admin_septim.DODAK_H_GetKurs_rs as (
  KURSJEDNKL               MNOZSTVIFLT,
  KURSHODNKL               CENAFLT,
  KURSJEDNUZIV             MNOZSTVIFLT,
  KURSHODNUZIV             CENAFLT,
  KURSDATUM                DATETS,
  CENAB                    B_VALUETXT,
  CENABSL                  B_VALUETXT,
  CENASSL                  B_VALUETXT,
  CENABZM                  B_VALUETXT,
  CENABZMSL                B_VALUETXT,
  "@edPanelKurs"           CISLOINT
);
create or replace function admin_septim.DODAK_H_GetKurs(
  in    a_MENA             NAZEVSTR,
  in    a_REALNASKL        DATUMCASTS_NU,
  in    a_KURSDATUM        DATETS,
  in    a_KURSJEDNUZIV     MNOZSTVIFLT,
  in    a_KURSHODNUZIV     CENAFLT,
  in    a_ID               IDINT,
  in    a_MASTERID         IDINT,
  in    a_COMMAND          E_HNDLParam,
  in    a_FOCUSED          E_HNDLParam,
  in    a_PARAMS           E_HNDLParam
) returns DODAK_H_GetKurs_rs
language plpgsql security definer as $$
declare
  l_MENA                   NAZEVSTR;
  l_MENAID                 REFIDINT;
  l_KURSJEDNKL             MNOZSTVIFLT;
  l_KURSHODNKL             CENAFLT;
  l_KURSJEDNUZIV           MNOZSTVIFLT;
  l_KURSHODNUZIV           CENAFLT;
  l_KURSDATUM              DATETS;
  l_RESULT                 DODAK_H_GetKurs_rs;
  l_CENA                   B_VALUETXT;
begin
  --- načtení ID měny

  select B_REFTABLE_EX.a_ID into l_MENAID from admin_base.B_REFTABLE_EX('SEPTIMAPP','MENA','NAZEV','ZKRATKA',a_MENA,-1,'MENA');
  if (l_MENAID is not null) then
    if (l_MENAID <> MENA_ZAKLADNIMENAGETID()) then
      l_KURSDATUM := coalesce(a_KURSDATUM, date(a_REALNASKL));
      -- načtení kurzu zvolene meny dle kurzového data
      select KURS_GetKursJednotky.a_JEDNOTKY, KURS_GetKursJednotky.a_STRED into l_KURSJEDNKL,l_KURSHODNKL
        from admin_septim.KURS_GetKursJednotky(l_MENAID,null,l_KURSDATUM,-1,-1,'');
      l_KURSJEDNKL := coalesce(l_KURSJEDNKL,0);
      l_KURSHODNKL := coalesce(l_KURSHODNKL,0);
      if l_KURSJEDNKL <> 0 then
        l_KURSJEDNUZIV := l_KURSJEDNKL;
      else
        l_KURSJEDNUZIV := a_KURSJEDNUZIV;
      end if;
      if l_KURSHODNKL <> 0 then
        l_KURSHODNUZIV := l_KURSHODNKL;
      else
        l_KURSHODNUZIV := a_KURSHODNUZIV;
      end if;
    else
      -- zakladni mena
      l_KURSJEDNKL := 1;
      l_KURSHODNKL := 1;
      l_KURSJEDNUZIV := 1;
      l_KURSHODNUZIV := 1;
      l_KURSDATUM := date(a_REALNASKL);
    end if;
    l_RESULT.KURSJEDNKL := l_KURSJEDNKL;
    l_RESULT.KURSHODNKL := l_KURSHODNKL;
    l_RESULT.KURSJEDNUZIV := l_KURSJEDNUZIV;
    l_RESULT.KURSHODNUZIV := l_KURSHODNUZIV;
    l_RESULT.KURSDATUM := l_KURSDATUM;
    l_CENA := MENA_FormatMena(0,l_MENAID);
    l_RESULT.CENAB := l_CENA;
    l_RESULT.CENABSL := l_CENA;
    l_RESULT.CENASSL := l_CENA;
    l_CENA := MENA_FormatDefaultMena(0);
    l_RESULT.CENABZM := l_CENA;
    l_RESULT.CENABZMSL := l_CENA;
    l_RESULT."@edPanelKurs" := (case when l_MENAID = MENA_ZAKLADNIMENAGETID() then -1 else 1 end);
  else
    -- zakladni mena
      l_KURSJEDNKL := 1;
      l_KURSHODNKL := 1;
      l_KURSJEDNUZIV := 1;
      l_KURSHODNUZIV := 1;
      l_KURSDATUM := date(a_REALNASKL);
    -- no need to show panel
    l_RESULT."@edPanelKurs" := -1;
  end if;
  return l_RESULT;
end; $$;

select grant_func('DODAK_H_GetKurs', 'SPEXEC');


select ASWDropProcedure('DODAKTOPRODEJGet');
drop type if exists admin_septim.DODAKTOPRODEJGet_rs cascade;
create type admin_septim.DODAKTOPRODEJGet_rs as (
  DATUMCAS                 TIMESTAMP,
  UZIVATEL                 U_JMENOSTR,
  SEQUENCE                 NAMESTR,
  SEQNSTR                  SEQUENCESTR,
  "#SEQUENCE"              INTEGER,
  "#SEQNSTR"               INTEGER,
  "$MODIFIED"              INTEGER
);

create or replace function admin_septim.DODAKTOPRODEJGet(
  in a_ID                  REFIDINT
) returns admin_septim.DODAKTOPRODEJGet_rs
language plpgsql security definer as $$
declare
  l_LASTSEQUENCE           NAMESTR;
  l_SEQNSTR                SEQUENCESTR;
begin
  -- get sequence's values
  select S.NAME into l_LASTSEQUENCE from PRODEJ Z join B_SEQUENCE S on S.SEQNID = Z.SEQNID and Z.SMAZAN = 0 order by Z.PRODID desc limit 1;
  select S.a_SEQNSTR into l_SEQNSTR from B_SEQUENCE_NextValPropose(l_LASTSEQUENCE, 'SEPTIMAPP\PRODEJ', -1) as S;

  return row(localtimestamp, U_GetUzivJmeno(), l_LASTSEQUENCE, l_SEQNSTR, 1, 0, 1);
end; $$;

select grant_func('DODAKTOPRODEJGet', 'SPEXEC');



select ASWDropProcedure('DODAKTOPRODEJUpdate');
create or replace function admin_septim.DODAKTOPRODEJUpdate(
  in a_ID                  REFIDINT,
  in a_DATUMCAS            DATUMCASTS,
  in a_POPIS               POPISTXT,
  in a_KOMENTAR            KOMENTARTXT,
  in a_IDCODE              IDCODESTR,
  in a_SEQUENCE            NAMESTR,
  in a_SEQNSTR             SEQUENCESTR,
  in a_FORCE               FORCETXT default null
) returns void
language plpgsql security definer as $$
begin
  perform admin_septim.PRODEJ_DODAKInsert(a_ID,a_DATUMCAS,a_POPIS,a_KOMENTAR,a_IDCODE,a_SEQUENCE,a_SEQNSTR,a_FORCE);
  return;
end; $$;

select grant_func('DODAKTOPRODEJUpdate', 'SPEXEC');

select ASWDropProcedure('DODAK__SetFlag');
create or replace function admin_septim.DODAK__SetFlag(
  in a_ID                  REFIDINT,
  in a_FLAG                VALUETXT,
  in a_VALUE               BOOLBIT,
  in a_FORCE               FORCETXT
) returns void
language plpgsql security definer as $$
begin
  perform admin_users.U_OPRAVA_P_RowUpdate('SEPTIMAPP','DODAK',a_ID,'',admin_base.B_GetTxt('SEPTIMAPP','DODAK','ZMENAPRIZNAKUDOKLADU'));
  case a_FLAG
    when 'ZKONTR' then
      update DODAK set ZKONTR = a_VALUE where DODKID = a_ID;
    when 'ZAUCT' then
      update DODAK set ZAUCT = a_VALUE where DODKID = a_ID;
    else
      null;-- ADDED EMPTY ELSE
  end case;
  return;
end; $$;



select ASWDropProcedure('DODAKSetFlag');
create or replace function admin_septim.DODAKSetFlag(
  in a_IDLIST              IDINTARR,
  in a_PARAMS              PARAMTXT,
  in a_FORCE               FORCETXT default null
) returns void
language plpgsql security definer as $$
declare
  l_FLAG                   VALUETXT;
  l_VALUE                  BOOLBIT;
  l_ID                     REFIDINT;
  l_SETVYRIZENO            CISLOINT;
  l_SETVYRIZENOALL         CISLOINT;
  l_IDCOUNT                CISLOINT;
begin

  l_IDCOUNT := cardinality(a_IDLIST);
  if l_IDCOUNT = 0 then
    return;
  end if;

  select * into l_FLAG from admin_base.cm_GetWord(1,a_Params,',');
  select * into l_VALUE from admin_base.cm_GetWord(2,a_Params,',');
  perform SKLADPERM_TestFlagPerm(l_FLAG, l_VALUE, 'DODAK', a_FORCE);
  if admin_eng.CheckForce(a_FORCE,'VYKONAJDOKLAD') is null then
    case l_VALUE
      when false then
        perform admin_base.ASWError(39022, cast(array[l_IDCOUNT,admin_base.B_GetTxt('SEPTIMAPP','DODAK',l_FLAG)] as text[]));
      when true then
        perform admin_base.ASWError(39021, cast(array[l_IDCOUNT,admin_base.B_GetTxt('SEPTIMAPP','DODAK',l_FLAG)] as text[]));
      else
        null;-- ADDED EMPTY ELSE
    end case;
  end if;

  for l_ID in select DODKID from DODAK where case l_FLAG when 'ZKONTR' then ZKONTR when 'ZAUCT' then ZAUCT end <> l_VALUE and DODKID in (select unnest(a_IDLIST)) loop
    if (l_FLAG = 'ZKONTR') and (l_VALUE = true) then
      -- resi se pouze pokud se oznacuje jako zkontrolovano
      -- pokud existuje sparovana nevyrizena objednavka dodavatele, zobrazim dotaz na oznaceni
      if exists(select 1 from DODPOL as DP
                         join DODOBJDODPOL as DODP on DP.DODPID=DODP.DODPID
                         join DODOBJSKPL as DS on DODP.DOBSID=DS.DOBSID
                         join DODOBJDODV as DV on DS.DOBDID=DV.DOBDID
                         where DP.SMAZAN=0 and DODP.SMAZAN=0 and DS.SMAZAN=0 and DV.SMAZAN=0 and DP.DODKID=l_ID and DV.VYRIZENO=false)
      then
        -- pri nastaveni zkontrolovano se kontroluji sparovane objednavky, ktere jsou oznacene jako vyrizene, zobrazi se dotaz na ozaceni
        l_SETVYRIZENO := admin_eng.CheckForce(a_FORCE, concat('SETVYRIZENO_',l_ID));
        if (l_SETVYRIZENO is null) and (l_SETVYRIZENOALL is null) then
          l_SETVYRIZENOALL := admin_eng.CheckForce(a_FORCE, 'SETVYRIZENOALL');
        end if;
        if (l_SETVYRIZENO is null) and (l_SETVYRIZENOALL is null) then
          if l_IDCOUNT > 1 then
            -- dotaz, vice zaznamu, moznosti Ano/Ano vsem/Ne/Ne vsem
            perform ASWError(39025, cast(array[DODAK__GetDodakIdentText(l_ID), concat('SETVYRIZENO_',l_ID), 'SETVYRIZENOALL'] as text[]));
          else
            -- dotaz, jeden zaznam, moznosti Ano/Ne
            perform ASWError(39024, cast(array[DODAK__GetDodakIdentText(l_ID), concat('SETVYRIZENO_',l_ID)] as text[]));
          end if;
        end if;
      end if;

      if admin_params.P_GetGlobalParamBOOL('SKLAD','DODAK_ZKONTRCHECKDODPOLZKONTR') = true then
        if exists(select 1 from admin_septim.DODPOL where SMAZAN = 0 and DODKID = l_ID and ZKONTR = false) then
          if admin_eng.CheckForce(a_FORCE, concat('DODPOLNEZKONTROK_',l_ID)) is null and admin_eng.CheckForce(a_FORCE, 'DODPOLNEZKONTROKALL') is null then
            if l_IDCOUNT > 1 then
              -- dotaz, vice zaznamu, moznosti Ano/Ano vsem/Ne/Ne vsem
              perform ASWError(39033, cast(array[DODAK__GetDodakIdentText(l_ID), concat('DODPOLNEZKONTROK_',l_ID), 'DODPOLNEZKONTROKALL'] as text[]));
            else
              -- dotaz, jeden zaznam, moznosti Ano/Ne
              perform ASWError(39032, cast(array[DODAK__GetDodakIdentText(l_ID), concat('DODPOLNEZKONTROK_',l_ID)] as text[]));
            end if;
          end if;

        end if;
      end if;

    end if;

    perform admin_septim.DODAK__SetFlag(l_ID,l_FLAG,l_VALUE,a_FORCE);
    if (l_SETVYRIZENO = 1) or (l_SETVYRIZENO is null and l_SETVYRIZENOALL = 1) then
      -- oznaceni
      perform admin_septim.DODAK__ObjednavkySetVyrizeno(l_ID, a_FORCE);
    end if;
  end loop;

end; $$;


select grant_func('DODAKSetFlag', 'SPEXEC');


select ASWDropProcedure('DODAK_OrezDat');
create or replace function admin_septim.DODAK_OrezDat(
  in a_DATUMCAS            DATUMCASTS,
  in a_NEUHRDODAK          BOOLBIT         -- jestli se maji smazat neuhrazene dodaky 1 - Ano; 0 - Ne
) returns void
language plpgsql security definer as $$
declare
  l_DODKID                 IDINT;
begin
  -- nesmazane dodaky
  for l_DODKID in
    select DODKID
    from DODAK
    where SMAZAN = 0
      and (REALNASKL < a_DATUMCAS or (REALNASKL is null and PLANNASKL < a_DATUMCAS))
      and (UHRADA is not null or a_NEUHRDODAK = true)
  loop
    -- delete items
    perform DODPOL_DODAKOrezDat(l_DODKID);

    -- delete taxes
    perform DODAKTAX_DODAKOrezDat(l_DODKID);

    -- smazan is null
    DELETE FROM DODAK as D
      WHERE (DODKID) in (SELECT D.DODKID
                         from DODAK as D
                           join admin_users.U_OPRAVA as U on D.DODKID = U.OLDID
                           join admin_base.B_TABLE as T on U.TABLID = T.TABLID
                         where T.TABLENAZEV = 'DODAK' and U.NEWID = l_DODKID and U.OLDID is not null);
    -- detaily a opravy dodáku
    DELETE FROM admin_users.U_OPRAVADETAIL as OD
      WHERE (OPVDID) in (SELECT OD.OPVDID
                         from admin_users.U_OPRAVADETAIL as OD
                           join admin_users.U_OPRAVA as U on OD.OPRVID = U.OPRVID
                           join admin_base.B_TABLE as T on U.TABLID = T.TABLID
                         where T.TABLENAZEV = 'DODAK' and U.NEWID = l_DODKID);
    DELETE FROM admin_users.U_OPRAVA as U
      WHERE (OPRVID) in (SELECT U.OPRVID
                         from admin_users.U_OPRAVA as U
                           join admin_base.B_TABLE as T on U.TABLID = T.TABLID
                         where T.TABLENAZEV = 'DODAK' and U.NEWID = l_DODKID);
    -- smazani dodáku
    DELETE FROM DODAK where DODKID = l_DODKID;
  end loop;

  -- smazane dodaky
  for l_DODKID in
    select D.DODKID
    from DODAK as D
    where D.SMAZAN is null and D.REALNASKL < a_DATUMCAS
      and D.DODKID = any(select U.OLDID from admin_users.U_OPRAVA as U join admin_base.B_TABLE as T on U.TABLID = T.TABLID where T.TABLENAZEV = 'DODAK' and U.NEWID is null)
  loop
    -- delete items
    perform DODPOL_DODAKOrezDat(l_DODKID);

    -- delete taxes
    perform DODAKTAX_DODAKOrezDat(l_DODKID);

    -- smazane zaznamy
    DELETE FROM DODAK as D
      WHERE (DODKID) in (SELECT D.DODKID
                        from DODAK as D
                          join admin_users.U_OPRAVA as U on D.DODKID = U.OLDID
                          join admin_base.B_TABLE as T on U.TABLID = T.TABLID
                        where T.TABLENAZEV = 'DODAK' and U.NEWID = l_DODKID and U.OLDID is not null);
    -- nesmazane zaznamy
    DELETE FROM admin_users.U_OPRAVADETAIL as OD
      WHERE (OPVDID) in (SELECT OD.OPVDID
                         from admin_users.U_OPRAVADETAIL as OD
                           join admin_users.U_OPRAVA as U on OD.OPRVID = U.OPRVID
                           join admin_base.B_TABLE as T on U.TABLID = T.TABLID
                         where T.TABLENAZEV = 'DODAK' and (U.NEWID = l_DODKID or U.OLDID = l_DODKID));

    DELETE FROM admin_users.U_OPRAVA as U
      WHERE (OPRVID) in (SELECT U.OPRVID
                         from admin_users.U_OPRAVA as U
                           join admin_base.B_TABLE as T on U.TABLID = T.TABLID
                         where T.TABLENAZEV = 'DODAK' and (U.NEWID = l_DODKID or U.OLDID = l_DODKID));

    DELETE FROM DODAK where DODKID = l_DODKID;
  end loop;
  return;
end; $$;



select ASWDropFunction('DODAK_GetKSOPopisGen');
--- Vrati generický popis
create or replace function admin_septim.DODAK_GetKSOPopisGen(
  in a_ID                  REFIDINT_NU
) returns KOMENTARTXT
language plpgsql security definer as $$ --- Vrati generický popis
declare
  l_DATUMCAS               DATUMCASTS;
  l_POPIS                  POPISTXT;
  l_SUPPLIERDNID           IDENTCODESTR_NU;
begin
  begin
    select REALNASKL,SUPPLIERDNID,POPIS into strict l_DATUMCAS,l_SUPPLIERDNID,l_POPIS from DODAK where
    DODKID = a_ID;
  exception
    when NO_DATA_FOUND then
  end;
  return admin_base.cm_JoinStringsBySep(admin_base.cm_JoinStringsBySep(TO_CHAR(l_DATUMCAS,'FMDD.FMMM.YYYY HH24:MI:ss'),l_SUPPLIERDNID,' - '),l_POPIS,' - ');
end; $$;;


select ASWDropFunction('DODAK_GetMenaID');
create or replace function admin_septim.DODAK_GetMenaID(
  in a_ID                  IDINT
) returns REFIDINT
language plpgsql security definer as $$
begin
  return MENAID from DODAK where DODKID = a_ID;
end; $$;


select ASWDropFunction('DODAK_GetDodavatelID');
create or replace function admin_septim.DODAK_GetDodavatelID(
  in a_ID                  IDINT
) returns REFIDINT
language plpgsql security definer as $$
begin
  return DODVID from DODAK where DODKID = a_ID;
end; $$;


select ASWDropFunction('DODAK_GetSupplierDNID');
create or replace function admin_septim.DODAK_GetSupplierDNID(
  in a_ID                  IDINT
) returns IDENTCODESTR_NU
language plpgsql security definer as $$
begin
  return SUPPLIERDNID from DODAK where DODKID = a_ID;
end; $$;


select ASWDropFunction('V_DODAKGetDodavatelID');
create or replace function admin_septim.V_DODAKGetDodavatelID(
  in a_ID                  IDINT
) returns REFIDINT
language plpgsql security definer as $$
begin
  return DODAK_GetDodavatelID(a_ID);
end; $$;
select grant_func('V_DODAKGetDodavatelID', 'SPEXEC');


select ASWDropFunction('DODAK_GetSleva');
create or replace function admin_septim.DODAK_GetSleva(
  in a_ID                  IDINT
) returns KOEFICIENTFLT
language plpgsql security definer as $$
begin
  return SLEVAPROC from DODAK where DODKID = a_ID;
end; $$;


select ASWDropFunction('DODAK_GetNaskladneniDC');
create or replace function admin_septim.DODAK_GetNaskladneniDC(
  in a_ID                  IDINT
) returns DATUMCASTS_NU
language plpgsql security definer as $$
begin
  return coalesce(REALNASKL,PLANNASKL) from DODAK where DODKID = a_ID;
end; $$;


select ASWDropFunction('DODAK_GetRealnasklDC');
create or replace function admin_septim.DODAK_GetRealnasklDC(
  in a_ID                  IDINT
) returns DATUMCASTS_NU
language plpgsql security definer as $$
begin
  return REALNASKL from DODAK where DODKID = a_ID;
end; $$;


select ASWDropFunction('DODAK__GetDodakIdentText');
/**
* Funkce vracející identifikační text dodacího listu.
* Pokud má dodací list zadané číslo, zobrazí se "číslo XY", jinak "s datem naskladnění XYZ".
*/
create or replace function admin_septim.DODAK__GetDodakIdentText(
  in a_ID                  IDINT
) returns VALUETXT
language plpgsql security definer as $$
declare
  l_SUPPLIERDNID           IDENTCODESTR_NU;
  l_NASKLADNENI            DATUMCASTS_NU;
begin

  select SUPPLIERDNID, coalesce(REALNASKL,PLANNASKL) into l_SUPPLIERDNID, l_NASKLADNENI from DODAK where DODKID = a_ID;

  if coalesce(l_SUPPLIERDNID, '') = '' then
    -- dodak bez cisla, takze naskladneni
    return admin_base.B_Format(admin_base.B_GetTxt('SEPTIMAPP','DODAK','DODAKNASKLADNENI'), cast(array[TO_CHAR(l_NASKLADNENI,'FMDD.FMMM.YYYY HH24:MI:ss')] as text[]));
  else
    -- dodak s cislem
    return admin_base.B_Format(admin_base.B_GetTxt('SEPTIMAPP','DODAK','DODAKSUPPLIERDNID'), cast(array[l_SUPPLIERDNID] as text[]));
  end if;

end; $$;


select ASWDropProcedure('DODAKFindID');
/**
* Funkce vracejici ID Dodacího listu, používá se v editselectu párování dodáku .
*/
create or replace function admin_septim.DODAKFindID(
  in a_ID                  REFIDINT,    -- ID záznamu, který se právě edituje v edit dialogu
  in a_TEXT                NAZEVSTR,    -- DODAK.SUPPLIERDNID - textová reprezentace který se má převést
  in a_PARAM               PARAMTXT     -- nepouziva se
) returns IDINT
language plpgsql security definer as $$
declare
  l_DODKID    IDINT;
begin

  -- vyhledani ID dodáku
  begin
    select DODKID into strict l_DODKID from DODAK where SMAZAN = 0 and SUPPLIERDNID = a_TEXT;
  exception
    when NO_DATA_FOUND then
      -- dodák nenalezen
      perform ASWError(39090, cast(array[a_TEXT, 'DODKID'] as text[]));

    when TOO_MANY_ROWS then
      -- nalezeno vice dodáků
      perform ASWError(39091, cast(array[a_TEXT, 'DODKID'] as text[]));

  end;

  return l_DODKID;

end; $$;
select grant_func('DODAKFindID', 'SPEXEC');



select ASWDropProcedure('DODAK__ObjednavkySetVyrizeno');
/**
* Funkce pro označení dodavatelů spárovaných objednávek dodacícho listu jako vyřízených.
*/
create or replace function admin_septim.DODAK__ObjednavkySetVyrizeno(
  in a_DODKID             IDINT,
  in a_FORCE              FORCETXT
) returns void
language plpgsql security definer as $$
declare
  cr_cursor       RECORD;
begin

  for cr_cursor in
    select DV.DOBDID
    from DODPOL as DP
      join DODOBJDODPOL as DODP on DP.DODPID=DODP.DODPID
      join DODOBJSKPL as DS on DODP.DOBSID=DS.DOBSID
      join DODOBJDODV as DV on DS.DOBDID=DV.DOBDID
    where DP.SMAZAN=0 and DODP.SMAZAN=0 and DS.SMAZAN=0 and DV.SMAZAN=0
      and DP.DODKID=a_DODKID and DV.VYRIZENO=false
    group by DV.DOBDID
  loop
    perform admin_septim.DODOBJDODV_SetVyrizeno(cr_cursor.DOBDID, true, a_FORCE);
  end loop;

end; $$;


select ASWDropProcedure('DODAK_CheckSparovanSFakturou');
/**
* Funkce pro kontrolu, zda je dodací list spárovaný s fakturou. Slouží pro kontrolu editace dodacího listu.
*/
create or replace function admin_septim.DODAK_CheckSparovanSFakturou(
  in a_DODKID             IDINT,
  in a_ERRORBASE          CISLOINT default 0
) returns BOOLBIT
language plpgsql security definer as $$
begin
  if exists(select 1 from admin_septim.RLINVOICEINDODAK where DELETED = 0 and DODKID = a_DODKID) then
    if coalesce(a_ERRORBASE, 0) = 0 then
      -- default chyba
      perform ASWError(39004);
    elseif a_ERRORBASE > 0 then
      -- custom chyba
      perform ASWError(a_ERRORBASE);
    end if;

    return true;  -- je spárován
  end if;

  return false; -- není spárován
end; $$;

select ASWDropFunction('DODAK_GetAllSTRDID');
/**
* Vrací ID středisek, které jsou přes položky dodacích listů přiřazeny dodáku s předaným id
*/
create or replace function admin_septim.DODAK_GetAllSTRDID (
  in a_DODKID               IDINT
) returns setof REFIDINT
language plpgsql security definer as $$
begin
  return query select distinct S.STRDID
      from DODAK D
      join DODPOL DP on DP.DODKID = D.DODKID
      join SKLAD S on DP.SKLDID = S.SKLDID
    where
      D.DODKID = a_DODKID
      and D.SMAZAN = 0 and DP.SMAZAN=0 and S.SMAZAN=0;
end; $$;


select ASWDropProcedure('DODAK_INVENTURACheckSetFlag');
/**
* Funkce pro kontrolu, zda při nastavení flagu inventury nebude porušeno pravidlo, že všechny operace, které
* inventuru ovlivňují musí mít stejný falg již nastaveny.
**/
create or replace function admin_septim.DODAK_INVENTURACheckSetFlag(
  in a_FLAG               VALUETXT,
  in a_SKLDID             REFIDINT,
  in a_DATUMCASOD         DATUMCASTS,
  in a_DATUMCASDO         DATUMCASTS
) returns void
language plpgsql security definer as $$
declare
  l_ID                    REFIDINT;
begin
  if a_FLAG = 'ZKONTR' then
    select D.DODKID into l_ID from admin_septim.DODAK D
      where D.REALNASKL between a_DATUMCASOD and a_DATUMCASDO and D.SMAZAN=0 and D.ZKONTR=false
        and exists(select 1 from DODPOL DP where DP.SMAZAN=0 and DP.DODKID=D.DODKID and SKLDID=a_SKLDID)
      order by D.REALNASKL
      limit 1;
    if l_ID is not null then
      perform ASWError(39080, cast(array[DODAK__GetDodakIdentText(l_ID)] as text[]));
    end if;
  end if;
  if a_FLAG = 'ZAUCT' then
    select D.DODKID into l_ID from admin_septim.DODAK D
      where D.REALNASKL between a_DATUMCASOD and a_DATUMCASDO and D.SMAZAN=0 and D.ZAUCT=false
        and exists(select 1 from DODPOL DP where DP.SMAZAN=0 and DP.DODKID=D.DODKID and SKLDID=a_SKLDID)
      order by D.REALNASKL
      limit 1;
    if l_ID is not null then
      perform ASWError(39081, cast(array[DODAK__GetDodakIdentText(l_ID)] as text[]));
    end if;
  end if;
end; $$;


select ASWDropProcedure('DODAKPLANNED__MoveIntoStorage');
create or replace function admin_septim.DODAKPLANNED__MoveIntoStorage(
  in a_IDLIST              IDINTARR,
  in a_SEQUENCE            NAMESTR,
  in a_REALNASKLTYPE       VALUESTR,
  in a_CUSTOMREALNASKL     DATUMCASTS_NU,
  in a_CHECKED             BOOLBIT_1,
  in a_FORCE               FORCETXT default null
) returns void
language plpgsql security definer as $$
declare
  l_ID                     IDINT;
  l_IDLIST                 INT[];
  l_FORCE                  FORCETXT;
  l_IDCOUNT                CISLOINT;
  l_SEQNID                 SEQUENCEINT;
  l_DN                     RECORD;
  l_DNITEM                 RECORD;
  l_CURRENTDT              DATUMCASTS_NU;
  l_SEQNIDMOVING           IDINT;
  l_SEQNSTRMOVING          SEQUENCESTR;
  l_SEQNNRMOVING           SEQUENCEINT;
  l_ISSEQNSTRGENERATED     VALUEBOOL;

begin

  if cardinality(a_IDLIST) = 0 then
    return;
  end if;

  -- check whether any completely filled planned DN has been chosen
  for l_ID in (select ID from unnest(a_IDLIST) as ID order by ID)
  loop
    -- We have to skip delivery notes without any items
    if not exists (select from DODPOL where DODKID = l_ID and SMAZAN = 0) then
      if CheckForce(a_FORCE, 'DODAKSKIPEMPTY_ALL') is null and CheckForce(a_FORCE, concat('DODAKSKIPEMPTY_', l_ID)) is null then
        perform ASWError(39042, cast(array[DODAK__GetDodakIdentText(l_ID), concat('DODAKSKIPEMPTY_', l_ID), 'DODAKSKIPEMPTY_ALL'] as text[]));
      end if;
    -- And we also need to skip DN which are not completely filled
    elsif not DODPOL_DODAKIsCompletelyFilled(l_ID) then
      if CheckForce(a_FORCE, 'DODAKISCOMPLETE_ALL') is null and CheckForce(a_FORCE, concat('DODAKISCOMPLETE_', l_ID)) is null then
        perform ASWError(39040, cast(array[DODAK__GetDodakIdentText(l_ID), concat('DODAKISCOMPLETE_', l_ID), 'DODAKISCOMPLETE_ALL'] as text[]));
      end if;
    else
      l_IDLIST := array_append(l_IDLIST, cast(l_ID as INT));
    end if;
  end loop;

  l_IDCOUNT := coalesce(cardinality(l_IDLIST), 0);
  -- if user has chosen only incomplete planned DNs then exit
  if l_IDCOUNT = 0 then
    return;
  end if;

  -- Building dynamic force
  -- Hash is used because we want to be sure that anything hasn't changed in the list of complete delivery notes
  l_FORCE := concat('DODAKMOVEINSTORAGE_', md5(array_to_string(l_IDLIST, '')));
  if CheckForce(a_FORCE, l_FORCE) is null then
    perform ASWError(39044, cast(array[l_IDCOUNT, l_FORCE] as text[]));
  end if;

  -- Check sequence info
  -- It is optional to fill a sequence in a planned DN. If planned DN uses sequence which differs from last used in realized DNs,
  -- then user must approve the difference while moving into storage
  select B.a_ID into l_SEQNID from B_REFTABLE('BASE', 'B_SEQUENCE', 'NAME', a_SEQUENCE, -1, '') as B;

  if coalesce(CheckForce(a_FORCE, 'DODAKUSEDIFFSEQN_ALL'), 0) = 0 then
    -- check every nominee
    for l_DN in
      select
        D.DODKID as ID, S.NAME as SEQNNAME
      from
        DODAK as D
        inner join B_SEQUENCE as S on D.SEQNID = S.SEQNID
      where
        D.DODKID in (select unnest(l_IDLIST))
        and D.SEQNID <> l_SEQNID
    loop

      if CheckForce(a_FORCE, concat('DODAKUSEDIFFSEQN_', l_DN.ID)) is null then
        perform ASWError(39041, cast(array[l_DN.SEQNNAME, DODAK__GetDodakIdentText(l_DN.ID),
                                           concat('DODAKUSEDIFFSEQN_', l_DN.ID), 'DODAKUSEDIFFSEQN_ALL', a_SEQUENCE] as text[]));
      end if;
    end loop;
  end if;

 -- set sequence, realized date
  if a_REALNASKLTYPE = 'CURRENT' then
    l_CURRENTDT := date_trunc('minute', localtimestamp);
  end if;

  for l_DN in
    (select
       D.DODKID as ID, D.SEQNID, D.SEQNNR, D.SEQNSTR, S.NAME as SEQNNAME,
       (case a_REALNASKLTYPE when 'PLANNED' then PLANNASKL when 'CURRENT' then l_CURRENTDT else a_CUSTOMREALNASKL end) as REALNASKL,
       MENAID, KURSDATUM
     from
       DODAK as D
       left join B_SEQUENCE as S on D.SEQNID = S.SEQNID
     where
       DODKID in (select unnest(l_IDLIST)))
  loop
    -- check exchange date
    if l_DN.MENAID <> MENA_ZAKLADNIMENAGETID() and l_DN.REALNASKL <> l_DN.KURSDATUM
       and CheckForce(a_FORCE, concat('DODAKDIFFEXCHANGEDATE_', l_DN.ID)) is null
       and CheckForce(a_FORCE, concat('DODAKDIFFEXCHANGEDATE_ALL', l_DN.ID)) is null
    then
      perform ASWError(39046, cast(array[l_DN.KURSDATUM, DODAK__GetDodakIdentText(l_DN.ID), l_DN.REALNASKL,
                                         concat('DODAKDIFFEXCHANGEDATE_', l_DN.ID), 'DODAKDIFFEXCHANGEDATE_ALL'] as text[]));
    end if;

    if l_DN.SEQNNAME is null
      or CheckForce(a_FORCE, 'DODAKUSEDIFFSEQN_ALL') = 0
      or CheckForce(a_FORCE, concat('DODAKUSEDIFFSEQN_', l_DN.ID)) = 0
    then
      l_ISSEQNSTRGENERATED := true;
      l_SEQNIDMOVING := l_SEQNID;
      -- get sequence info
      select
        S.a_SEQNSTR, S.a_SEQNNR
      into
        l_SEQNSTRMOVING, l_SEQNNRMOVING
      from
        B_SEQUENCE_NextValProposeByID(l_SEQNID, 'SEPTIMAPP\DODAK') as S;

    else
      l_ISSEQNSTRGENERATED := false;
      l_SEQNIDMOVING := l_DN.SEQNID;
      l_SEQNSTRMOVING := l_DN.SEQNSTR;
      l_SEQNNRMOVING := l_DN.SEQNNR;
    end if;

    update DODAK set
      REALNASKL = l_DN.REALNASKL,
      SEQNID = l_SEQNIDMOVING,
      SEQNSTR = l_SEQNSTRMOVING,
      SEQNNR = l_SEQNNRMOVING
    where
      DODKID = l_DN.ID;

    if l_ISSEQNSTRGENERATED then
      perform B_SEQUENCE_SetVal(l_SEQNIDMOVING, l_SEQNSTRMOVING, 'SEPTIMAPP\DODAK', 0, a_FORCE);
    end if;

    -- Perform actions required after the DN was moved into storage, like changing the stock levels.
    -- Also contains permission checks related to items
    perform DODPOL_DODAKMoveIntoStorage(l_DN.ID, l_DN.REALNASKL, a_FORCE);

    perform DODAK__SetFlag (l_DN.ID, 'ZKONTR', a_CHECKED, a_FORCE);

  end loop;

end; $$;



select ASWDropProcedure('DODAKPLANNEDMultiGet');
create or replace function admin_septim.DODAKPLANNEDMultiGet(
  in    a_ID               IDINT,
  in    a_PARAMS           PARAMTXT,
  in    a_IDLIST           IDINTARR,
  inout r_CURSOR           refcursor default null,
  inout r_CURSOR2          refcursor default null
)
language plpgsql security definer as $$
declare
  l_SEQNID                 REFIDINT_NU;
begin
  if cardinality(a_IDLIST) = 0 then
    return;
  end if;

  if coalesce(cardinality(a_IDLIST), 0) = 0 then
    open r_CURSOR for
      select 1 as "$DONOTSHOW";
    return;
  end if;

  begin
    select SEQNID into strict l_SEQNID
    from DODAK
      where DODKID = any(a_IDLIST)
        and DODPOL_DODAKIsCompletelyFilled(DODKID)
        and SMAZAN = 0
    group by SEQNID;
  exception when NO_DATA_FOUND or TOO_MANY_ROWS
  then end;

  open r_CURSOR2 for
    select
      1 as "$MODIFIED",
      case when l_SEQNID is not null then B_SEQUENCE_GetName(l_SEQNID) else DODAK_GetLastUsedSequenceForRealizedDN() end as "SEQUENCE",
      1 as "#SEQUENCE",
      'PLANNED' as "REALNASKLTYPE",
      0 as "#CUSTOMREALNASKL",
      cast(1 as BOOLBIT_1) as CHECKED;
end; $$;

select grant_func('DODAKPLANNEDMultiGet', 'SPEXEC');


drop type if exists admin_septim.DODAKPLANNEDMultiExec_rs cascade;
create type admin_septim.DODAKPLANNEDMultiExec_rs as (
  "$DONOTSHOW"             INTEGER
);

create or replace function admin_septim.DODAKPLANNEDMultiExec(
  in a_ID                  IDINT,
  in a_PARAMS              PARAMTXT,
  in a_IDLIST              IDINTARR,
  in a_SEQUENCE            NAMESTR,
  in a_REALNASKLTYPE       VALUESTR,
  in a_CUSTOMREALNASKL     DATUMCASTS_NU,
  in a_CHECKED             BOOLBIT_1,
  in a_FORCE               FORCETXT default null
) returns setof admin_septim.DODAKPLANNEDMultiExec_rs
language plpgsql security definer as $$
begin

  -- Permission check to work with delivery notes
  perform SKLAD_CheckPermNoTime('SKLADPRIJMY\INSDODAK', 0);

  if coalesce(cardinality(a_IDLIST), 0) = 0 then
    return query select 1 as "$DONOTSHOW";
    return;
  end if;

  perform B_NULL_STR('SEQUENCE', a_SEQUENCE, 39034);

  if a_SEQUENCE <> DODAK_GetLastUsedSequenceForRealizedDN() and CheckForce(a_FORCE, 'DODAKUSEANOTHERSEQ') is null then
    perform ASWError(39045, cast(array[a_SEQUENCE] as text[]));
  end if;

  if a_REALNASKLTYPE = 'CUSTOM' then
    perform B_NULL_DATUMCAS('CUSTOMREALNASKL', a_CUSTOMREALNASKL, 39039);
  end if;

  -- move planned DNs in storage
  perform DODAKPLANNED__MoveIntoStorage(a_IDLIST, a_SEQUENCE, a_REALNASKLTYPE, a_CUSTOMREALNASKL, a_CHECKED, a_FORCE);

end; $$;

select grant_func('DODAKPLANNEDMultiExec', 'SPEXEC');


select ASWDropProcedure('DODAK_H_GenNum');
drop type if exists admin_septim.DODAK_H_GenNum_rs cascade;
create type admin_septim.DODAK_H_GenNum_rs as (
  SEQNSTR                  SEQUENCESTR
);

create or replace function admin_septim.DODAK_H_GenNum(
  in a_SEQUENCE            NAMESTR,
  in a_ID                  IDINT,
  in a_MASTERID            IDINT,
  in a_COMMAND             E_HNDLParam,
  in a_FOCUSED             E_HNDLParam,
  in a_PARAMS              E_HNDLParam
) returns setof admin_septim.DODAK_H_GenNum_rs
language plpgsql security definer as $$
begin
  return query select cast(a_SEQNSTR as SEQUENCESTR) as SEQNSTR from B_SEQUENCE_NextValPropose(a_SEQUENCE, 'SEPTIMAPP\DODAK');
end; $$;

select grant_func('DODAK_H_GenNum', 'SPEXEC');


select ASWDropFunction('DODAK_GetSequenceStr');
create or replace function admin_septim.DODAK_GetSequenceStr(
  in a_ID                  IDINT
) returns SEQUENCESTR_NU
language plpgsql security definer as $$
begin
  return SEQNSTR from DODAK where DODKID = a_ID;
end; $$;


select ASWDropFunction('DODAK_IsPlanned');
create or replace function admin_septim.DODAK_IsPlanned(
  in a_ID                  IDINT
) returns VALUEBOOL
language plpgsql security definer as $$
begin
  return cast(REALNASKL is null as VALUEBOOL) from DODAK where DODKID = a_ID;
end; $$;


select ASWDropFunction('DODAK_IsRealized');
create or replace function admin_septim.DODAK_IsRealized(
  in a_ID                  IDINT
) returns VALUEBOOL
language plpgsql security definer as $$
begin
  return not DODAK_IsPlanned(a_ID);
end; $$;


select ASWDropFunction('DODAKPLANNED_H_RealNasklType');

drop type if exists admin_septim.DODAKPLANNED_H_RealNasklType_rs cascade;
create type admin_septim.DODAKPLANNED_H_RealNasklType_rs as (
  "#CUSTOMREALNASKL"       INTEGER
);

create or replace function admin_septim.DODAKPLANNED_H_RealNasklType(
  in a_REALNASKLTYPE       VALUESTR,
  in a_ID                  IDINT,
  in a_MASTERID            IDINT,
  in a_COMMAND             E_HNDLParam,
  in a_FOCUSED             E_HNDLParam,
  in a_PARAMS              E_HNDLParam
) returns setof admin_septim.DODAKPLANNED_H_RealNasklType_rs
language plpgsql security definer as $$
begin
  return query
    select
      case a_REALNASKLTYPE when 'CUSTOM' then 1 else 0 end as "#CUSTOMREALNASKL";
end; $$;
select grant_func('DODAKPLANNED_H_RealNasklType', 'SPEXEC');



select aswdropfunction('DODAK_XmlImport');
/**
 * Main import function executed from B_EXPORTCONFIGImport.
 */
create or replace function admin_septim.DODAK_XmlImport (
  in a_INPUT               VALUEXML,
  in a_CONFIG              VALUEJSON,
  in a_IDS                 IDINTARR default null,  -- Just for the sake of the general import functions compatibility
  in a_FORCE               FORCETXT default null
) returns TEXTARR
language plpgsql security definer as $$
declare
  l_LOGMESSAGES            TEXTARR;
  l_TMPLOG                 TEXTARR;
  l_XMLROW                 VALUEXML;
  l_ORDNUMBER              NUMBERINT;
begin

  -- Permissions check
  perform SKLAD_CheckPermNoTime('SKLADPRIJMY\DODAKIMPORT', 0);
  perform SKLAD_CheckPermNoTime('SKLADPRIJMY\INSDODAK',0);

  -- Check import version
  perform B_IMPORTDEF_CheckImportVersion(cast((xpath('/deliverynotes/@version', a_INPUT))[1] as VALUETXT), array['1.0']);

  l_LOGMESSAGES := S_AddToProtocol(l_LOGMESSAGES, 'INFO_DNIMPORT_START', 'DODAK', 'IMPORT_START', cast(array[cast(a_CONFIG as text)] as text[]));

  -- Parse XML data
  for l_XMLROW, l_ORDNUMBER in select * from unnest(xpath('/deliverynotes/deliverynote', a_INPUT)) with ordinality loop

    l_LOGMESSAGES := S_AddToProtocol(l_LOGMESSAGES, 'INFO_DNIMPORT_ROW', 'DODAK', 'IMPORT_ROWIMPORTSTART', cast(array[l_ORDNUMBER] as text[]));

    select LOGMESSAGES into l_TMPLOG from DODAK_XMLToRow (l_XMLROW, a_CONFIG->'deliverynotes', a_FORCE);
    l_LOGMESSAGES := array_cat(l_LOGMESSAGES, l_TMPLOG);

  end loop;

  return l_LOGMESSAGES;

end; $$;



select aswdropprocedure('DODAK_XMLToRow');
/**
 * Imports one delivery note
 */
create or replace function admin_septim.DODAK_XMLToRow (
  in a_INPUT               XMLTEXT,
  in a_CONFIG              VALUEJSON,
  in a_FORCE               FORCETXT,
  in a_ROOTTAG             VALUESTR DEFAULT NULL
) returns XMLIMPORT_rs
language plpgsql security definer as $$
declare
  l_RESULT                 XMLIMPORT_rs;
  l_DATA                   RECORD;
  l_MESSAGEINFO            TEXTARR;
  l_XPATH                  VALUESTR;
  l_DODVID                 REFIDINT;
  l_MENAID                 REFIDINT;
  l_EXCHANGEUNIT           MNOZSTVIFLT;
  l_EXCHANGERATE           CENAFLT;
  l_EXCHANGEDATE           DATETS;
  l_AKCEID                 IDINT;
  l_SEQNSTR                SEQUENCESTR_NU;
  l_REALIZED_DN            VALUEBOOL;
  l_SEQNID                 REFIDINT;
  l_TMPLOG                 TEXTARR;
begin

  if a_INPUT is null then
    return l_RESULT;
  end if;

  l_XPATH := concat('/', coalesce(a_ROOTTAG, 'deliverynote'));

  select
    cast((cast(xpath(concat(l_XPATH, '/@id'),                              a_INPUT) as text[]))[1]  as VALUETXT)        as IDVALUE,
    cast((cast(xpath(concat(l_XPATH, '/dnitems'),                          a_INPUT) as text[]))[1]  as VALUEXML)        as ITEMS,
    cast((cast(xpath(concat(l_XPATH, '/description/text()'),               a_INPUT) as text[]))[1]  as POPISTXT)        as POPIS,
    cast((cast(xpath(concat(l_XPATH, '/annotation/text()'),                a_INPUT) as text[]))[1]  as KOMENTARTXT)     as KOMENTAR,
    cast((cast(xpath(concat(l_XPATH, '/supplierdnid/text()'),              a_INPUT) as text[]))[1]  as IDENTCODESTR_NU) as SUPPLIERDNID,
    cast((cast(xpath(concat(l_XPATH, '/currency'),                         a_INPUT) as text[]))[1]  as VALUEXML)        as CURRENCY,
    cast((cast(xpath(concat(l_XPATH, '/varsymbol/text()'),                 a_INPUT) as text[]))[1]  as IDCODESTR)       as VARSYMBOL,
    cast((cast(xpath(concat(l_XPATH, '/supplier'),                         a_INPUT) as text[]))[1]  as VALUEXML)        as SUPPLIER,
    cast((cast(xpath(concat(l_XPATH, '/event'),                            a_INPUT) as text[]))[1]  as VALUEXML)        as EVENT,
    cast((cast(xpath(concat(l_XPATH, '/sequence'),                         a_INPUT) as text[]))[1]  as VALUEXML)        as SEQUENCE,
    cast(cm_StrToTimeStamp((cast(xpath(concat(l_XPATH, '/realse/text()'),  a_INPUT) as text[]))[1]) as DATUMCASTS_NU)   as REALNASKL,
    cast(cm_StrToTimeStamp((cast(xpath(concat(l_XPATH, '/planse/text()'),  a_INPUT) as text[]))[1]) as DATUMCASTS_NU)   as PLANNASKL,
    cast(cm_StrToDate((cast(xpath(concat(l_XPATH, '/paymentdate/text()'),  a_INPUT) as text[]))[1]) as DATUMTS_NU)      as UHRADA,
    cast(cm_StrToDate((cast(xpath(concat(l_XPATH, '/exchratedate/text()'), a_INPUT) as text[]))[1]) as DATETS)          as KURSDATUM,
    cast(cm_StrToDate((cast(xpath(concat(l_XPATH, '/postdate/text()'),     a_INPUT) as text[]))[1]) as DATUMTS_NU)      as ZDANPLNENI,
    cast(cm_StrToDate((cast(xpath(concat(l_XPATH, '/duedate/text()'),      a_INPUT) as text[]))[1]) as DATUMTS_NU)      as SPLATNOST,
    cast(cm_StrToFlt ((cast(xpath(concat(l_XPATH, '/discountperc/text()'), a_INPUT) as text[]))[1]) as KOEFICIENTFLT)   as SLEVAPROC,
    xpath_exists(concat(l_XPATH, '/description'),   a_INPUT) as POPIS_SET,
    xpath_exists(concat(l_XPATH, '/annotation'),    a_INPUT) as KOMENTAR_SET,
    xpath_exists(concat(l_XPATH, '/supplierdnid'),  a_INPUT) as SUPPLIERDNID_SET,
    xpath_exists(concat(l_XPATH, '/currency'),      a_INPUT) as CURRENCY_SET,
    xpath_exists(concat(l_XPATH, '/realse'),        a_INPUT) as REALNASKL_SET,
    xpath_exists(concat(l_XPATH, '/varsymbol'),     a_INPUT) as VARSYMBOL_SET,
    xpath_exists(concat(l_XPATH, '/supplier'),      a_INPUT) as SUPPLIER_SET,
    xpath_exists(concat(l_XPATH, '/event'),         a_INPUT) as EVENT_SET,
    xpath_exists(concat(l_XPATH, '/sequence'),      a_INPUT) as SEQUENCE_SET,
    xpath_exists(concat(l_XPATH, '/planse'),        a_INPUT) as PLANNASKL_SET,
    xpath_exists(concat(l_XPATH, '/paymentdate'),   a_INPUT) as UHRADA_SET,
    xpath_exists(concat(l_XPATH, '/exchratedate'),  a_INPUT) as KURSDATUM_SET,
    xpath_exists(concat(l_XPATH, '/postdate'),      a_INPUT) as ZDANPLNENI_SET,
    xpath_exists(concat(l_XPATH, '/duedate'),       a_INPUT) as SPLATNOST_SET,
    xpath_exists(concat(l_XPATH, '/discountperc'),  a_INPUT) as SLEVAPROC_SET
  into
    l_DATA;

  -- The imported record info. Names match the tags in XML import.
  -- Operator || is used on purpose to eliminate null values.
  l_MESSAGEINFO := array [
     array_to_string(array [
      'supplierdnid: ' || cast(l_DATA.SUPPLIERDNID as VALUETXT),
      'varsymbol: ' || cast(l_DATA.VARSYMBOL as VALUETXT)
    ], ', ') ];

  if l_DATA.SUPPLIER_SET then
    select ID, array_cat(l_RESULT.LOGMESSAGES, LOGMESSAGES)
      into l_DODVID, l_RESULT.LOGMESSAGES
    from DODAVATEL_XMLToRow(l_DATA.SUPPLIER, a_CONFIG->'supplier', a_FORCE, 'supplier');
    if l_DODVID is null then
      -- The referenced row was not found and the import
      -- is configured to skip the row in such case.
      -- Then there is nothing more to do and we return from the function.
      return l_RESULT;
    end if;
  end if;

  if l_DATA.CURRENCY_SET then
    select ID, array_cat(l_RESULT.LOGMESSAGES, LOGMESSAGES)
      into l_MENAID, l_RESULT.LOGMESSAGES
    from MENA_XMLToRow(l_DATA.CURRENCY, a_CONFIG->'currency', a_FORCE, 'currency');
    if l_MENAID is null then
      -- The referenced row was not found and the import
      -- is configured to skip the row in such case.
      -- Then there is nothing more to do and we return from the function.
      return l_RESULT;
    end if;
  -- If the currency is not set, used the base currency
  else
    l_MENAID := MENA_ZakladniMenaGetID();
  end if;

  if l_DATA.SEQUENCE_SET then
    select ID, array_cat(l_RESULT.LOGMESSAGES, LOGMESSAGES)
      into l_SEQNID, l_RESULT.LOGMESSAGES
    from B_SEQUENCE_XMLToRow(l_DATA.SEQUENCE, a_CONFIG->'sequence', a_FORCE, 'sequence');
    if l_SEQNID is null then
      -- The referenced row was not found and the import
      -- is configured to skip the row in such case.
      -- Then there is nothing more to do and we return from the function.
      return l_RESULT;
    end if;
  end if;

  if l_DATA.EVENT_SET then
    select ID, array_cat(l_RESULT.LOGMESSAGES, LOGMESSAGES)
    into l_AKCEID, l_RESULT.LOGMESSAGES
    from AKCE_XMLToRow(l_DATA.EVENT, a_CONFIG->'event', a_FORCE, 'event');
    if l_AKCEID is null then
      -- The referenced row was not found and the import
      -- is configured to skip the row in such case.
      -- Then there is nothing more to do and we return from the function.
      return l_RESULT;
    end if;
  end if;

  -- Get the current exchange rate, if a foreign currency is used
  if l_MENAID <> MENA_ZakladniMenaGetID() then
    -- If the excange rate date is not provided, use current date
    l_EXCHANGEDATE := coalesce(l_DATA.KURSDATUM, current_date);
    -- Get the exchange rate
    select coalesce(F.a_JEDNOTKY, 0), coalesce(F.a_STRED, 0)
      into l_EXCHANGEUNIT, l_EXCHANGERATE
    from KURS_GetKursJednotky(l_MENAID, null, l_EXCHANGEDATE, -1, -1, '') F;
  end if;

  -- Get the internal number from the provided sequence
  select S.a_SEQNSTR into l_SEQNSTR from B_SEQUENCE_NextValProposeByID(l_SEQNID, 'SEPTIMAPP\DODAK') as S;

  if l_DATA.PLANNASKL is null and l_DATA.REALNASKL is null then
    l_DATA.PLANNASKL := cast(date 'tomorrow' + interval '12 hours' as DATETIMETS);
  end if;

  -- Find out, if the delivery note is pending or realized
  l_REALIZED_DN := l_DATA.REALNASKL is not null;

  -- Delivery note insert
  l_RESULT.ID := DODAK_BasicInsert (
    a_POPIS         => l_DATA.POPIS,
    a_KOMENTAR      => l_DATA.KOMENTAR,
    a_PLANNASKL     => l_DATA.PLANNASKL,
    a_REALNASKL     => l_DATA.REALNASKL,
    a_SUPPLIERDNID  => l_DATA.SUPPLIERDNID,
    a_VARSYMBOL     => l_DATA.VARSYMBOL,
    a_ZDANPLNENI    => l_DATA.ZDANPLNENI,
    a_SPLATNOST     => l_DATA.SPLATNOST,
    a_UHRADA        => l_DATA.UHRADA,
    a_SLEVAPROC     => coalesce(l_DATA.SLEVAPROC, 0),
    a_DODAVATEL     => null,
    a_DODVID        => l_DODVID,
    a_MENA          => null,
    a_MENAID        => l_MENAID,
    a_KURSJEDNUZIV  => l_EXCHANGEUNIT,
    a_KURSHODNUZIV  => l_EXCHANGERATE,
    a_KURSDATUM     => l_EXCHANGEDATE,
    a_AKCE          => null,
    a_AKCEID        => l_AKCEID,
    a_SEQUENCE      => B_SEQUENCE_GetName(l_SEQNID),
    a_SEQNSTR       => l_SEQNSTR,
    a_REALIZED_DN   => l_REALIZED_DN,
    a_FORCE         => a_FORCE
  );

  -- DN items insert
  l_TMPLOG := DODPOL_DODAKXmlImportSlave (l_RESULT.ID, l_DATA.ITEMS, a_CONFIG->'dnitems', a_FORCE);
  l_RESULT.LOGMESSAGES := array_cat(l_RESULT.LOGMESSAGES, l_TMPLOG);

  l_RESULT.LOGMESSAGES := S_AddToProtocol(l_RESULT.LOGMESSAGES,  'INFO_DNIMPORT_FINISH', 'DODAK', 'IMPORT_INSERT', l_MESSAGEINFO);

  return l_RESULT;

end; $$;
