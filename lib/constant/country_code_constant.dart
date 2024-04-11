import '../gen/assets.gen.dart';

enum CountryCode {
  AD('AD'),
  AE('AE'),
  AF('AF'),
  AG('AG'),
  AI('AI'),
  AL('AL'),
  AM('AM'),
  AO('AO'),
  // AQ('AQ'),
  AR('AR'),
  AS('AS'),
  AT('AT'),
  AU('AU'),
  AW('AW'),
  // AX('AX'),
  AZ('AZ'),
  BA('BA'),
  BB('BB'),
  BD('BD'),
  BE('BE'),
  BF('BF'),
  BG('BG'),
  BH('BH'),
  BI('BI'),
  BJ('BJ'),
  // BL('BL'),
  BM('BM'),
  BN('BN'),
  BO('BO'),
  BQ('BQ'),
  BR('BR'),
  BS('BS'),
  BT('BT'),
  // BV('BV'),
  BW('BW'),
  BY('BY'),
  BZ('BZ'),
  CA('CA'),
  // CC('CC'),
  CD('CD'),
  CF('CF'),
  CG('CG'),
  CH('CH'),
  CI('CI'),
  CK('CK'),
  CL('CL'),
  CM('CM'),
  CN('CN'),
  CO('CO'),
  CR('CR'),
  CU('CU'),
  CV('CV'),
  CW('CW'),
  // CX('CX'),
  CY('CY'),
  CZ('CZ'),
  DE('DE'),
  DJ('DJ'),
  DK('DK'),
  DM('DM'),
  DO('DO'),
  DZ('DZ'),
  EC('EC'),
  EE('EE'),
  EG('EG'),
  EH('EH'),
  ER('ER'),
  ES('ES'),
  ET('ET'),
  FI('FI'),
  FJ('FJ'),
  FK('FK'),
  FM('FM'),
  FO('FO'),
  FR('FR'),
  GA('GA'),
  GB('GB'),
  GD('GD'),
  GE('GE'),
  GF('GF'),
  // GG('GG'),
  GH('GH'),
  GI('GI'),
  GL('GL'),
  GM('GM'),
  GN('GN'),
  GP('GP'),
  GQ('GQ'),
  GR('GR'),
  // GS('GS'),
  GT('GT'),
  GU('GU'),
  GW('GW'),
  GY('GY'),
  HK('HK'),
  // HM('HM'),
  HN('HN'),
  HR('HR'),
  HT('HT'),
  HU('HU'),
  ID('ID'),
  IE('IE'),
  IL('IL'),
  IM('IM'),
  IN('IN'),
  // IO('IO'),
  IQ('IQ'),
  IR('IR'),
  IS('IS'),
  IT('IT'),
  // JE('JE'),
  JM('JM'),
  JO('JO'),
  JP('JP'),
  KE('KE'),
  KG('KG'),
  KH('KH'),
  KI('KI'),
  KM('KM'),
  KN('KN'),
  KP('KP'),
  KR('KR'),
  KW('KW'),
  KY('KY'),
  KZ('KZ'),
  LA('LA'),
  LB('LB'),
  LC('LC'),
  LI('LI'),
  LK('LK'),
  LR('LR'),
  LS('LS'),
  LT('LT'),
  LU('LU'),
  LV('LV'),
  LY('LY'),
  MA('MA'),
  MC('MC'),
  MD('MD'),
  ME('ME'),
  // MF('MF'),
  MG('MG'),
  MH('MH'),
  MK('MK'),
  ML('ML'),
  MM('MM'),
  MN('MN'),
  MO('MO'),
  MP('MP'),
  MQ('MQ'),
  MR('MR'),
  MS('MS'),
  MT('MT'),
  MU('MU'),
  MV('MV'),
  MW('MW'),
  MX('MX'),
  MY('MY'),
  MZ('MZ'),
  NA('NA'),
  NC('NC'),
  NE('NE'),
  // NF('NF'),
  NG('NG'),
  NI('NI'),
  NL('NL'),
  NO('NO'),
  NP('NP'),
  NR('NR'),
  NU('NU'),
  NZ('NZ'),
  OM('OM'),
  PA('PA'),
  PE('PE'),
  PF('PF'),
  PG('PG'),
  PH('PH'),
  PK('PK'),
  PL('PL'),
  PM('PM'),
  // PN('PN'),
  PR('PR'),
  // PS('PS'),
  PT('PT'),
  PW('PW'),
  PY('PY'),
  QA('QA'),
  RE('RE'),
  RO('RO'),
  RS('RS'),
  RU('RU'),
  RW('RW'),
  SA('SA'),
  SB('SB'),
  SC('SC'),
  SD('SD'),
  SE('SE'),
  SG('SG'),
  SH('SH'),
  SI('SI'),
  // SJ('SJ'),
  SK('SK'),
  SL('SL'),
  SM('SM'),
  SN('SN'),
  SO('SO'),
  SR('SR'),
  SS('SS'),
  ST('ST'),
  SV('SV'),
  SX('SX'),
  SY('SY'),
  SZ('SZ'),
  TC('TC'),
  TD('TD'),
  // TF('TF'),
  TG('TG'),
  TH('TH'),
  TJ('TJ'),
  TK('TK'),
  TL('TL'),
  TM('TM'),
  TN('TN'),
  TO('TO'),
  TR('TR'),
  TT('TT'),
  TV('TV'),
  // TW('TW'),
  TZ('TZ'),
  UA('UA'),
  UG('UG'),
  // UM('UM'),
  US('US'),
  UY('UY'),
  UZ('UZ'),
  VA('VA'),
  VC('VC'),
  VE('VE'),
  VG('VG'),
  VI('VI'),
  VN('VN'),
  VU('VU'),
  WF('WF'),
  WS('WS'),
  // XK('XK'),
  YE('YE'),
  YT('YT'),
  ZA('ZA'),
  ZM('ZM'),
  ZW('ZW'),
  UNTIL('UNTIL');

  const CountryCode(this.codeString);

  final String codeString;

  SvgGenImage get image {
    switch (this) {
      case CountryCode.AD:
        return Assets.icons.svg.ad;
      case CountryCode.AE:
        return Assets.icons.svg.ae;
      case CountryCode.AF:
        return Assets.icons.svg.af;
      case CountryCode.AG:
        return Assets.icons.svg.ag;
      case CountryCode.AI:
        return Assets.icons.svg.ai;
      case CountryCode.AL:
        return Assets.icons.svg.al;
      case CountryCode.AM:
        return Assets.icons.svg.am;
      case CountryCode.AO:
        return Assets.icons.svg.ao;
      // case CountryCode.AQ:
      //   return Assets.icons.svg.aq;
      case CountryCode.AR:
        return Assets.icons.svg.ar;
      case CountryCode.AS:
        return Assets.icons.svg.as;
      case CountryCode.AT:
        return Assets.icons.svg.at;
      case CountryCode.AU:
        return Assets.icons.svg.au;
      case CountryCode.AW:
        return Assets.icons.svg.aw;
      // case CountryCode.AX:
      //   return Assets.icons.svg.ax;
      case CountryCode.AZ:
        return Assets.icons.svg.az;
      case CountryCode.BA:
        return Assets.icons.svg.ba;
      case CountryCode.BB:
        return Assets.icons.svg.bb;
      case CountryCode.BD:
        return Assets.icons.svg.bd;
      case CountryCode.BE:
        return Assets.icons.svg.be;
      case CountryCode.BF:
        return Assets.icons.svg.bf;
      case CountryCode.BG:
        return Assets.icons.svg.bg;
      case CountryCode.BH:
        return Assets.icons.svg.bh;
      case CountryCode.BI:
        return Assets.icons.svg.bi;
      case CountryCode.BJ:
        return Assets.icons.svg.bj;
      // case CountryCode.BL:
      //   return Assets.icons.svg.bl;
      case CountryCode.BM:
        return Assets.icons.svg.bm;
      case CountryCode.BN:
        return Assets.icons.svg.bn;
      case CountryCode.BO:
        return Assets.icons.svg.bo;
      case CountryCode.BQ:
        return Assets.icons.svg.bq;
      case CountryCode.BR:
        return Assets.icons.svg.br;
      case CountryCode.BS:
        return Assets.icons.svg.bs;
      case CountryCode.BT:
        return Assets.icons.svg.bt;
      // case CountryCode.BV:
      //   return Assets.icons.svg.bv;
      case CountryCode.BW:
        return Assets.icons.svg.bw;
      case CountryCode.BY:
        return Assets.icons.svg.by;
      case CountryCode.BZ:
        return Assets.icons.svg.bz;
      case CountryCode.CA:
        return Assets.icons.svg.ca;
      // case CountryCode.CC:
      //   return Assets.icons.svg.cc;
      case CountryCode.CD:
        return Assets.icons.svg.cd;
      case CountryCode.CF:
        return Assets.icons.svg.cf;
      case CountryCode.CG:
        return Assets.icons.svg.cg;
      case CountryCode.CH:
        return Assets.icons.svg.ch;
      case CountryCode.CI:
        return Assets.icons.svg.ci;
      case CountryCode.CK:
        return Assets.icons.svg.ck;
      case CountryCode.CL:
        return Assets.icons.svg.cl;
      case CountryCode.CM:
        return Assets.icons.svg.cm;
      case CountryCode.CN:
        return Assets.icons.svg.cn;
      case CountryCode.CO:
        return Assets.icons.svg.co;
      case CountryCode.CR:
        return Assets.icons.svg.cr;
      case CountryCode.CU:
        return Assets.icons.svg.cu;
      case CountryCode.CV:
        return Assets.icons.svg.cv;
      case CountryCode.CW:
        return Assets.icons.svg.cw;
      // case CountryCode.CX:
      //   return Assets.icons.svg.cx;
      case CountryCode.CY:
        return Assets.icons.svg.cy;
      case CountryCode.CZ:
        return Assets.icons.svg.cz;
      case CountryCode.DE:
        return Assets.icons.svg.de;
      case CountryCode.DJ:
        return Assets.icons.svg.dj;
      case CountryCode.DK:
        return Assets.icons.svg.dk;
      case CountryCode.DM:
        return Assets.icons.svg.dm;
      case CountryCode.DO:
        return Assets.icons.svg.doa;
      case CountryCode.DZ:
        return Assets.icons.svg.dz;
      case CountryCode.EC:
        return Assets.icons.svg.ec;
      case CountryCode.EE:
        return Assets.icons.svg.ee;
      case CountryCode.EG:
        return Assets.icons.svg.eg;
      case CountryCode.EH:
        return Assets.icons.svg.eh;
      case CountryCode.ER:
        return Assets.icons.svg.er;
      case CountryCode.ES:
        return Assets.icons.svg.es;
      case CountryCode.ET:
        return Assets.icons.svg.et;
      case CountryCode.FI:
        return Assets.icons.svg.fi;
      case CountryCode.FJ:
        return Assets.icons.svg.fj;
      case CountryCode.FK:
        return Assets.icons.svg.fk;
      case CountryCode.FM:
        return Assets.icons.svg.fm;
      case CountryCode.FO:
        return Assets.icons.svg.fo;
      case CountryCode.FR:
        return Assets.icons.svg.fr;
      case CountryCode.GA:
        return Assets.icons.svg.ga;
      case CountryCode.GB:
        return Assets.icons.svg.gb;
      case CountryCode.GD:
        return Assets.icons.svg.gd;
      case CountryCode.GE:
        return Assets.icons.svg.ge;
      case CountryCode.GF:
        return Assets.icons.svg.gf;
      // case CountryCode.GG:
      //   return Assets.icons.svg.gg;
      case CountryCode.GH:
        return Assets.icons.svg.gh;
      case CountryCode.GI:
        return Assets.icons.svg.gi;
      case CountryCode.GL:
        return Assets.icons.svg.gl;
      case CountryCode.GM:
        return Assets.icons.svg.gm;
      case CountryCode.GN:
        return Assets.icons.svg.gn;
      case CountryCode.GP:
        return Assets.icons.svg.gp;
      case CountryCode.GQ:
        return Assets.icons.svg.gq;
      case CountryCode.GR:
        return Assets.icons.svg.gr;
      // case CountryCode.GS:
      //   return Assets.icons.svg.gs;
      case CountryCode.GT:
        return Assets.icons.svg.gt;
      case CountryCode.GU:
        return Assets.icons.svg.gu;
      case CountryCode.GW:
        return Assets.icons.svg.gw;
      case CountryCode.GY:
        return Assets.icons.svg.gy;
      case CountryCode.HK:
        return Assets.icons.svg.hk;
      // case CountryCode.HM:
      //   return Assets.icons.svg.hm;
      case CountryCode.HN:
        return Assets.icons.svg.hn;
      case CountryCode.HR:
        return Assets.icons.svg.hr;
      case CountryCode.HT:
        return Assets.icons.svg.ht;
      case CountryCode.HU:
        return Assets.icons.svg.hu;
      case CountryCode.ID:
        return Assets.icons.svg.id;
      case CountryCode.IE:
        return Assets.icons.svg.ie;
      case CountryCode.IL:
        return Assets.icons.svg.il;
      case CountryCode.IM:
        return Assets.icons.svg.im;
      case CountryCode.IN:
        return Assets.icons.svg.ind;
      // case CountryCode.IO:
      //   return Assets.icons.svg.io;
      case CountryCode.IQ:
        return Assets.icons.svg.iq;
      case CountryCode.IR:
        return Assets.icons.svg.ir;
      case CountryCode.IS:
        return Assets.icons.svg.isl;
      case CountryCode.IT:
        return Assets.icons.svg.it;
      // case CountryCode.JE:
      //   return Assets.icons.svg.je;
      case CountryCode.JM:
        return Assets.icons.svg.jm;
      case CountryCode.JO:
        return Assets.icons.svg.jo;
      case CountryCode.JP:
        return Assets.icons.svg.jp;
      case CountryCode.KE:
        return Assets.icons.svg.ke;
      case CountryCode.KG:
        return Assets.icons.svg.kg;
      case CountryCode.KH:
        return Assets.icons.svg.kh;
      case CountryCode.KI:
        return Assets.icons.svg.ki;
      case CountryCode.KM:
        return Assets.icons.svg.km;
      case CountryCode.KN:
        return Assets.icons.svg.kn;
      case CountryCode.KP:
        return Assets.icons.svg.kp;
      case CountryCode.KR:
        return Assets.icons.svg.kr;
      case CountryCode.KW:
        return Assets.icons.svg.kw;
      case CountryCode.KY:
        return Assets.icons.svg.ky;
      case CountryCode.KZ:
        return Assets.icons.svg.kz;
      case CountryCode.LA:
        return Assets.icons.svg.la;
      case CountryCode.LB:
        return Assets.icons.svg.lb;
      case CountryCode.LC:
        return Assets.icons.svg.lc;
      case CountryCode.LI:
        return Assets.icons.svg.li;
      case CountryCode.LK:
        return Assets.icons.svg.lk;
      case CountryCode.LR:
        return Assets.icons.svg.lr;
      case CountryCode.LS:
        return Assets.icons.svg.ls;
      case CountryCode.LT:
        return Assets.icons.svg.lt;
      case CountryCode.LU:
        return Assets.icons.svg.lu;
      case CountryCode.LV:
        return Assets.icons.svg.lv;
      case CountryCode.LY:
        return Assets.icons.svg.ly;
      case CountryCode.MA:
        return Assets.icons.svg.ma;
      case CountryCode.MC:
        return Assets.icons.svg.mc;
      case CountryCode.MD:
        return Assets.icons.svg.md;
      case CountryCode.ME:
        return Assets.icons.svg.me;
      // case CountryCode.MF:
      //   return Assets.icons.svg.mf;
      case CountryCode.MG:
        return Assets.icons.svg.mg;
      case CountryCode.MH:
        return Assets.icons.svg.mh;
      case CountryCode.MK:
        return Assets.icons.svg.mk;
      case CountryCode.ML:
        return Assets.icons.svg.ml;
      case CountryCode.MM:
        return Assets.icons.svg.mm;
      case CountryCode.MN:
        return Assets.icons.svg.mn;
      case CountryCode.MO:
        return Assets.icons.svg.mo;
      case CountryCode.MP:
        return Assets.icons.svg.mp;
      case CountryCode.MQ:
        return Assets.icons.svg.mq;
      case CountryCode.MR:
        return Assets.icons.svg.mr;
      case CountryCode.MS:
        return Assets.icons.svg.ms;
      case CountryCode.MT:
        return Assets.icons.svg.mt;
      case CountryCode.MU:
        return Assets.icons.svg.mu;
      case CountryCode.MV:
        return Assets.icons.svg.mv;
      case CountryCode.MW:
        return Assets.icons.svg.mw;
      case CountryCode.MX:
        return Assets.icons.svg.mx;
      case CountryCode.MY:
        return Assets.icons.svg.my;
      case CountryCode.MZ:
        return Assets.icons.svg.mz;
      case CountryCode.NA:
        return Assets.icons.svg.na;
      case CountryCode.NC:
        return Assets.icons.svg.nc;
      case CountryCode.NE:
        return Assets.icons.svg.ne;
      // case CountryCode.NF:
      //   return Assets.icons.svg.nf;
      case CountryCode.NG:
        return Assets.icons.svg.ng;
      case CountryCode.NI:
        return Assets.icons.svg.ni;
      case CountryCode.NL:
        return Assets.icons.svg.nl;
      case CountryCode.NO:
        return Assets.icons.svg.no;
      case CountryCode.NP:
        return Assets.icons.svg.np;
      case CountryCode.NR:
        return Assets.icons.svg.nr;
      case CountryCode.NU:
        return Assets.icons.svg.nu;
      case CountryCode.NZ:
        return Assets.icons.svg.nz;
      case CountryCode.OM:
        return Assets.icons.svg.om;
      case CountryCode.PA:
        return Assets.icons.svg.pa;
      case CountryCode.PE:
        return Assets.icons.svg.pe;
      case CountryCode.PF:
        return Assets.icons.svg.pf;
      case CountryCode.PG:
        return Assets.icons.svg.pg;
      case CountryCode.PH:
        return Assets.icons.svg.ph;
      case CountryCode.PK:
        return Assets.icons.svg.pk;
      case CountryCode.PL:
        return Assets.icons.svg.pl;
      case CountryCode.PM:
        return Assets.icons.svg.pm;
      // case CountryCode.PN:
      //   return Assets.icons.svg.pn;
      case CountryCode.PR:
        return Assets.icons.svg.pr;
      // case CountryCode.PS:
      //   return Assets.icons.svg.ps;
      case CountryCode.PT:
        return Assets.icons.svg.pt;
      case CountryCode.PW:
        return Assets.icons.svg.pw;
      case CountryCode.PY:
        return Assets.icons.svg.py;
      case CountryCode.QA:
        return Assets.icons.svg.qa;
      case CountryCode.RE:
        return Assets.icons.svg.re;
      case CountryCode.RO:
        return Assets.icons.svg.ro;
      case CountryCode.RS:
        return Assets.icons.svg.rs;
      case CountryCode.RU:
        return Assets.icons.svg.ru;
      case CountryCode.RW:
        return Assets.icons.svg.rw;
      case CountryCode.SA:
        return Assets.icons.svg.sa;
      case CountryCode.SB:
        return Assets.icons.svg.sb;
      case CountryCode.SC:
        return Assets.icons.svg.sc;
      case CountryCode.SD:
        return Assets.icons.svg.sd;
      case CountryCode.SE:
        return Assets.icons.svg.se;
      case CountryCode.SG:
        return Assets.icons.svg.sg;
      case CountryCode.SH:
        return Assets.icons.svg.sh;
      case CountryCode.SI:
        return Assets.icons.svg.si;
      // case CountryCode.SJ:
      //   return Assets.icons.svg.sj;
      case CountryCode.SK:
        return Assets.icons.svg.sk;
      case CountryCode.SL:
        return Assets.icons.svg.sl;
      case CountryCode.SM:
        return Assets.icons.svg.sm;
      case CountryCode.SN:
        return Assets.icons.svg.sn;
      case CountryCode.SO:
        return Assets.icons.svg.so;
      case CountryCode.SR:
        return Assets.icons.svg.sr;
      case CountryCode.SS:
        return Assets.icons.svg.ss;
      case CountryCode.ST:
        return Assets.icons.svg.st;
      case CountryCode.SV:
        return Assets.icons.svg.sv;
      case CountryCode.SX:
        return Assets.icons.svg.sx;
      case CountryCode.SY:
        return Assets.icons.svg.sy;
      case CountryCode.SZ:
        return Assets.icons.svg.sz;
      case CountryCode.TC:
        return Assets.icons.svg.tc;
      case CountryCode.TD:
        return Assets.icons.svg.td;
      // case CountryCode.TF:
      //   return Assets.icons.svg.tf;
      case CountryCode.TG:
        return Assets.icons.svg.tg;
      case CountryCode.TH:
        return Assets.icons.svg.th;
      case CountryCode.TJ:
        return Assets.icons.svg.tj;
      case CountryCode.TK:
        return Assets.icons.svg.tk;
      case CountryCode.TL:
        return Assets.icons.svg.tl;
      case CountryCode.TM:
        return Assets.icons.svg.tm;
      case CountryCode.TN:
        return Assets.icons.svg.tn;
      case CountryCode.TO:
        return Assets.icons.svg.to;
      case CountryCode.TR:
        return Assets.icons.svg.tr;
      case CountryCode.TT:
        return Assets.icons.svg.tt;
      case CountryCode.TV:
        return Assets.icons.svg.tv;
      // case CountryCode.TW:
      //   return Assets.icons.svg.tw;
      case CountryCode.TZ:
        return Assets.icons.svg.tz;
      case CountryCode.UA:
        return Assets.icons.svg.ua;
      case CountryCode.UG:
        return Assets.icons.svg.ug;
      // case CountryCode.UM:
      //   return Assets.icons.svg.um;
      case CountryCode.US:
        return Assets.icons.svg.us;
      case CountryCode.UY:
        return Assets.icons.svg.uy;
      case CountryCode.UZ:
        return Assets.icons.svg.uz;
      case CountryCode.VA:
        return Assets.icons.svg.va;
      case CountryCode.VC:
        return Assets.icons.svg.vc;
      case CountryCode.VE:
        return Assets.icons.svg.ve;
      case CountryCode.VG:
        return Assets.icons.svg.vg;
      case CountryCode.VI:
        return Assets.icons.svg.vi;
      case CountryCode.VN:
        return Assets.icons.svg.vn;
      case CountryCode.VU:
        return Assets.icons.svg.vu;
      case CountryCode.WF:
        return Assets.icons.svg.wf;
      case CountryCode.WS:
        return Assets.icons.svg.ws;
      // case CountryCode.XK:
      //   return Assets.icons.svg.xk;
      case CountryCode.YE:
        return Assets.icons.svg.ye;
      case CountryCode.YT:
        return Assets.icons.svg.yt;
      case CountryCode.ZA:
        return Assets.icons.svg.za;
      case CountryCode.ZM:
        return Assets.icons.svg.zm;
      case CountryCode.ZW:
        return Assets.icons.svg.zw;
      default:
        return Assets.icons.svg.until;
    }
  }

  String get name {
    switch (this) {
      case CountryCode.AD:
        return "Andorra";
      case CountryCode.AE:
        return "United Arab Emirates";
      case CountryCode.AF:
        return "Afghanistan";
      case CountryCode.AG:
        return "Antigua and Barbuda";
      case CountryCode.AI:
        return "Anguilla";
      case CountryCode.AL:
        return "Albania";
      case CountryCode.AM:
        return "Armenia";
      case CountryCode.AO:
        return "Angola";
      // case CountryCode.AQ:
      //   return "Antarctica";
      case CountryCode.AR:
        return "Argentina";
      case CountryCode.AS:
        return "American Samoa";
      case CountryCode.AT:
        return "Austria";
      case CountryCode.AU:
        return "Australia";
      case CountryCode.AW:
        return "Aruba";
      // case CountryCode.AX:
      //   return "\u00c5land Islands";
      case CountryCode.AZ:
        return "Azerbaijan";
      case CountryCode.BA:
        return "Bosnia and Herzegovina";
      case CountryCode.BB:
        return "Barbados";
      case CountryCode.BD:
        return "Bangladesh";
      case CountryCode.BE:
        return "Belgium";
      case CountryCode.BF:
        return "Burkina Faso";
      case CountryCode.BG:
        return "Bulgaria";
      case CountryCode.BH:
        return "Bahrain";
      case CountryCode.BI:
        return "Burundi";
      case CountryCode.BJ:
        return "Benin";
      // case CountryCode.BL:
      //   return "Saint Barthélemy";
      case CountryCode.BM:
        return "Bermuda";
      case CountryCode.BN:
        return "Brunei Darussalam";
      case CountryCode.BO:
        return "Bolivia, Plurinational State of";
      case CountryCode.BQ:
        return "Caribbean Netherlands";
      case CountryCode.BR:
        return "Brazil";
      case CountryCode.BS:
        return "Bahamas";
      case CountryCode.BT:
        return "Bhutan";
      // case CountryCode.BV:
      //   return "Bouvet Island";
      case CountryCode.BW:
        return "Botswana";
      case CountryCode.BY:
        return "Belarus";
      case CountryCode.BZ:
        return "Belize";
      case CountryCode.CA:
        return "Canada";
      // case CountryCode.CC:
      //   return "Cocos (Keeling) Islands";
      case CountryCode.CD:
        return "Congo, the Democratic Republic of the";
      case CountryCode.CF:
        return "Central African Republic";
      case CountryCode.CG:
        return "Republic of the Congo";
      case CountryCode.CH:
        return "Switzerland";
      case CountryCode.CI:
        return "C\u00f4te d'Ivoire";
      case CountryCode.CK:
        return "Cook Islands";
      case CountryCode.CL:
        return "Chile";
      case CountryCode.CM:
        return "Cameroon";
      case CountryCode.CN:
        return "China (People's Republic of China)";
      case CountryCode.CO:
        return "Colombia";
      case CountryCode.CR:
        return "Costa Rica";
      case CountryCode.CU:
        return "Cuba";
      case CountryCode.CV:
        return "Cape Verde";
      case CountryCode.CW:
        return "Cura\u00e7ao";
      // case CountryCode.CX:
      //   return "Christmas Island";
      case CountryCode.CY:
        return "Cyprus";
      case CountryCode.CZ:
        return "Czech Republic";
      case CountryCode.DE:
        return "Germany";
      case CountryCode.DJ:
        return "Djibouti";
      case CountryCode.DK:
        return "Denmark";
      case CountryCode.DM:
        return "Dominica";
      case CountryCode.DO:
        return "Dominican Republic";
      case CountryCode.DZ:
        return "Algeria";
      case CountryCode.EC:
        return "Ecuador";
      case CountryCode.EE:
        return "Estonia";
      case CountryCode.EG:
        return "Egypt";
      case CountryCode.EH:
        return "Western Sahara";
      case CountryCode.ER:
        return "Eritrea";
      case CountryCode.ES:
        return "Spain";
      case CountryCode.ET:
        return "Ethiopia";
      case CountryCode.FI:
        return "Finland";
      case CountryCode.FJ:
        return "Fiji";
      case CountryCode.FK:
        return "Falkland Islands (Malvinas)";
      case CountryCode.FM:
        return "Micronesia, Federated States of";
      case CountryCode.FO:
        return "Faroe Islands";
      case CountryCode.FR:
        return "France";
      case CountryCode.GA:
        return "Gabon";
      case CountryCode.GB:
        return "United Kingdom";
      case CountryCode.GD:
        return "Grenada";
      case CountryCode.GE:
        return "Georgia";
      case CountryCode.GF:
        return "French Guiana";
      // case CountryCode.GG:
      //   return "Guernsey";
      case CountryCode.GH:
        return "Ghana";
      case CountryCode.GI:
        return "Gibraltar";
      case CountryCode.GL:
        return "Greenland";
      case CountryCode.GM:
        return "Gambia";
      case CountryCode.GN:
        return "Guinea";
      case CountryCode.GP:
        return "Guadeloupe";
      case CountryCode.GQ:
        return "Equatorial Guinea";
      case CountryCode.GR:
        return "Greece";
      // case CountryCode.GS:
      //   return "South Georgia and the South Sandwich Islands";
      case CountryCode.GT:
        return "Guatemala";
      case CountryCode.GU:
        return "Guam";
      case CountryCode.GW:
        return "Guinea-Bissau";
      case CountryCode.GY:
        return "Guyana";
      case CountryCode.HK:
        return "Hong Kong";
      // case CountryCode.HM:
      //   return "Heard Island and McDonald Islands";
      case CountryCode.HN:
        return "Honduras";
      case CountryCode.HR:
        return "Croatia";
      case CountryCode.HT:
        return "Haiti";
      case CountryCode.HU:
        return "Hungary";
      case CountryCode.ID:
        return "Indonesia";
      case CountryCode.IE:
        return "Ireland";
      case CountryCode.IL:
        return "Israel";
      case CountryCode.IM:
        return "Isle of Man";
      case CountryCode.IN:
        return "India";
      // case CountryCode.IO:
      //   return "British Indian Ocean Territory";
      case CountryCode.IQ:
        return "Iraq";
      case CountryCode.IR:
        return "Iran, Islamic Republic of";
      case CountryCode.IS:
        return "Iceland";
      case CountryCode.IT:
        return "Italy";
      // case CountryCode.JE:
      //   return "Jersey";
      case CountryCode.JM:
        return "Jamaica";
      case CountryCode.JO:
        return "Jordan";
      case CountryCode.JP:
        return "Japan";
      case CountryCode.KE:
        return "Kenya";
      case CountryCode.KG:
        return "Kyrgyzstan";
      case CountryCode.KH:
        return "Cambodia";
      case CountryCode.KI:
        return "Kiribati";
      case CountryCode.KM:
        return "Comoros";
      case CountryCode.KN:
        return "Saint Kitts and Nevis";
      case CountryCode.KP:
        return "Korea, Democratic People's Republic of";
      case CountryCode.KR:
        return "Korea, Republic of";
      case CountryCode.KW:
        return "Kuwait";
      case CountryCode.KY:
        return "Cayman Islands";
      case CountryCode.KZ:
        return "Kazakhstan";
      case CountryCode.LA:
        return "Laos (Lao People's Democratic Republic)";
      case CountryCode.LB:
        return "Lebanon";
      case CountryCode.LC:
        return "Saint Lucia";
      case CountryCode.LI:
        return "Liechtenstein";
      case CountryCode.LK:
        return "Sri Lanka";
      case CountryCode.LR:
        return "Liberia";
      case CountryCode.LS:
        return "Lesotho";
      case CountryCode.LT:
        return "Lithuania";
      case CountryCode.LU:
        return "Luxembourg";
      case CountryCode.LV:
        return "Latvia";
      case CountryCode.LY:
        return "Libya";
      case CountryCode.MA:
        return "Morocco";
      case CountryCode.MC:
        return "Monaco";
      case CountryCode.MD:
        return "Moldova, Republic of";
      case CountryCode.ME:
        return "Montenegro";
      // case CountryCode.MF:
      //   return "Saint Martin";
      case CountryCode.MG:
        return "Madagascar";
      case CountryCode.MH:
        return "Marshall Islands";
      case CountryCode.MK:
        return "North Macedonia";
      case CountryCode.ML:
        return "Mali";
      case CountryCode.MM:
        return "Myanmar";
      case CountryCode.MN:
        return "Mongolia";
      case CountryCode.MO:
        return "Macao";
      case CountryCode.MP:
        return "Northern Mariana Islands";
      case CountryCode.MQ:
        return "Martinique";
      case CountryCode.MR:
        return "Mauritania";
      case CountryCode.MS:
        return "Montserrat";
      case CountryCode.MT:
        return "Malta";
      case CountryCode.MU:
        return "Mauritius";
      case CountryCode.MV:
        return "Maldives";
      case CountryCode.MW:
        return "Malawi";
      case CountryCode.MX:
        return "Mexico";
      case CountryCode.MY:
        return "Malaysia";
      case CountryCode.MZ:
        return "Mozambique";
      case CountryCode.NA:
        return "Namibia";
      case CountryCode.NC:
        return "New Caledonia";
      case CountryCode.NE:
        return "Niger";
      // case CountryCode.NF:
      //   return "Norfolk Island";
      case CountryCode.NG:
        return "Nigeria";
      case CountryCode.NI:
        return "Nicaragua";
      case CountryCode.NL:
        return "Netherlands";
      case CountryCode.NO:
        return "Norway";
      case CountryCode.NP:
        return "Nepal";
      case CountryCode.NR:
        return "Nauru";
      case CountryCode.NU:
        return "Niue";
      case CountryCode.NZ:
        return "New Zealand";
      case CountryCode.OM:
        return "Oman";
      case CountryCode.PA:
        return "Panama";
      case CountryCode.PE:
        return "Peru";
      case CountryCode.PF:
        return "French Polynesia";
      case CountryCode.PG:
        return "Papua New Guinea";
      case CountryCode.PH:
        return "Philippines";
      case CountryCode.PK:
        return "Pakistan";
      case CountryCode.PL:
        return "Poland";
      case CountryCode.PM:
        return "Saint Pierre and Miquelon";
      // case CountryCode.PN:
      //   return "Pitcairn";
      case CountryCode.PR:
        return "Puerto Rico";
      // case CountryCode.PS:
      //   return "Palestine";
      case CountryCode.PT:
        return "Portugal";
      case CountryCode.PW:
        return "Palau";
      case CountryCode.PY:
        return "Paraguay";
      case CountryCode.QA:
        return "Qatar";
      case CountryCode.RE:
        return "Réunion";
      case CountryCode.RO:
        return "Romania";
      case CountryCode.RS:
        return "Serbia";
      case CountryCode.RU:
        return "Russian Federation";
      case CountryCode.RW:
        return "Rwanda";
      case CountryCode.SA:
        return "Saudi Arabia";
      case CountryCode.SB:
        return "Solomon Islands";
      case CountryCode.SC:
        return "Seychelles";
      case CountryCode.SD:
        return "Sudan";
      case CountryCode.SE:
        return "Sweden";
      case CountryCode.SG:
        return "Singapore";
      case CountryCode.SH:
        return "Saint Helena, Ascension and Tristan da Cunha";
      case CountryCode.SI:
        return "Slovenia";
      // case CountryCode.SJ:
      //   return "Svalbard and Jan Mayen Islands";
      case CountryCode.SK:
        return "Slovakia";
      case CountryCode.SL:
        return "Sierra Leone";
      case CountryCode.SM:
        return "San Marino";
      case CountryCode.SN:
        return "Senegal";
      case CountryCode.SO:
        return "Somalia";
      case CountryCode.SR:
        return "Suriname";
      case CountryCode.SS:
        return "South Sudan";
      case CountryCode.ST:
        return "Sao Tome and Principe";
      case CountryCode.SV:
        return "El Salvador";
      case CountryCode.SX:
        return "Sint Maarten (Dutch part)";
      case CountryCode.SY:
        return "Syrian Arab Republic";
      case CountryCode.SZ:
        return "Swaziland";
      case CountryCode.TC:
        return "Turks and Caicos Islands";
      case CountryCode.TD:
        return "Chad";
      // case CountryCode.TF:
      //   return "French Southern Territories";
      case CountryCode.TG:
        return "Togo";
      case CountryCode.TH:
        return "Thailand";
      case CountryCode.TJ:
        return "Tajikistan";
      case CountryCode.TK:
        return "Tokelau";
      case CountryCode.TL:
        return "Timor-Leste";
      case CountryCode.TM:
        return "Turkmenistan";
      case CountryCode.TN:
        return "Tunisia";
      case CountryCode.TO:
        return "Tonga";
      case CountryCode.TR:
        return "Turkey";
      case CountryCode.TT:
        return "Trinidad and Tobago";
      case CountryCode.TV:
        return "Tuvalu";
      // case CountryCode.TW:
      //   return "Taiwan (Republic of China)";
      case CountryCode.TZ:
        return "Tanzania, United Republic of";
      case CountryCode.UA:
        return "Ukraine";
      case CountryCode.UG:
        return "Uganda";
      // case CountryCode.UM:
      //   return "US Minor Outlying Islands";
      case CountryCode.US:
        return "United States";
      case CountryCode.UY:
        return "Uruguay";
      case CountryCode.UZ:
        return "Uzbekistan";
      case CountryCode.VA:
        return "Holy See (Vatican City State)";
      case CountryCode.VC:
        return "Saint Vincent and the Grenadines";
      case CountryCode.VE:
        return "Venezuela, Bolivarian Republic of";
      case CountryCode.VG:
        return "Virgin Islands, British";
      case CountryCode.VI:
        return "Virgin Islands, U.S.";
      case CountryCode.VN:
        return "Vietnam";
      case CountryCode.VU:
        return "Vanuatu";
      case CountryCode.WF:
        return "Wallis and Futuna Islands";
      case CountryCode.WS:
        return "Samoa";
      // case CountryCode.XK:
      //   return "Kosovo";
      case CountryCode.YE:
        return "Yemen";
      case CountryCode.YT:
        return "Mayotte";
      case CountryCode.ZA:
        return "South Africa";
      case CountryCode.ZM:
        return "Zambia";
      case CountryCode.ZW:
        return "Zimbabwe";
      default:
        return "Unknown";
    }
  }
}
