% UT Physics bibliographic style, ver. 3.1. Based on:
%
%X     IEEE Transactions bibliography style (29-Jan-88 version)
%X       numeric labels, order-of-reference, IEEE abbreviations,
%X       quotes around article titles, commas separate all fields
%X       except after book titles and before "notes".  Otherwise,
%X       much like the "plain" family, from which this is adapted.
%X
%X       History
%X       9/30/85	(HWT)	Original version, by Howard Trickey.
%X       1/29/88	(OP&HWT) Updated for BibTeX version 0.99a, Oren Patashnik;
%X       THIS `ieeetr' VERSION DOES NOT WORK WITH BIBTEX 0.98i.
%
%  Modifications: 1) added hypertex support and "archive", "eprint"
%                    and "url" fields.
%                 2) parentheses around dates, and no "pp." for article entries
%                 3) "publisher, address" instead of "address: publisher"
%                 4) added "report" field for article entries.
%                 5) particle physics-oriented abbreviations, rather than ieee.
%                 6) added "collaboration" field, as per 
%                    Jonathan Flynn' suggestion. SPIRES now supports this field.
%                 7) Improved output of Proceedings entries
%
%    Modified by Jacques Distler, 1/23
%           History: ver 1.0  9/96
%                    ver 1.1 10/96 - added "collaboration" field
%                    ver 1.2  7/97 - added a "\providecommand{\href}[2]{#2}"
%                                    to handle case where \href is not defined
%                    ver 1.3 12/97 - fixed lousy-looking proceedings output.
%                    ver 1.4  1/98 - fixed format.number, address in 
%                                    proceedings entries
%                    ver 1.5  3/99 - added (nonprinting) CITATION field for
%                                    SLAC internal use
%                    ver 1.6  4/99 - Fix to ensure %%CITATION output not broken
%                                    across lines. Added new.sentence to ensure
%                                    previous output properly terminated.
%                                    (Moral: test before you release.)
%                    ver 1.7 10/99 - "et.~al." should be "et al." Morons!
%                    ver 1.8 11/99 - Changed the Web URL to the more portable
%                                    arxiv.org. The "archive" field functions as
%                                    a true base-URL. This is NOT A
%                                    BACKWARDS-COMPATIBLE change!
%                   ver 1.8a 12/99 - MACROs for arXiv and cogprints
%                                    BaseURL's defined.
%                   ver 1.9   6/05 - eprint support for other entry types
%                   ver 2.0   4/08 - support "new-style" eprint identifiers
%                   ver 2.1   4/08 - support for "url" field
%                   ver 2.2   4/08 - support for "doi" field
%                   ver 2.3   8/09 - fix month formatting
%                   ver 2.4   7/10 - remove some deprecated font-constructws.
%                                    fix journal number formatting.
%                   ver 2.5   9/10 - Internationalization and some more journal
%                                    MACROs (thanks to Mateus Araujo)
%                   ver 2.6   2/11 - Yipes! Fix capitalization of titles, spooged
%                                    in previous version. (Reported by Ling Weak)
%                   ver 2.7   8/11 - Fix "et~al." in format.crossref.editor, too.
%                                    (Reported by Blake Stacey)
%                   ver 2.8  12/18 - Fix format.title and format.title.p for when the
%                                    title contains trailing punctuation.
%                   ver 2.9  11/22 - Allow unpublished entry types without title field. Fix
%                                    format.wherepublished .
%                   ver 3.0   1/23 - Actually truncate author lists with more than 6 authors
%                                    to "auth1, ath2 et~al."
%                   ver 3.1   1/23 - Change https:// URLs to https://. Truncate at 10, rather
%                                    than 6 authors.
%
% HyperTeX Wizardry:
%
% The following are equivalent:
%   archive  =  arXiv
%   eprint   = "hep-th/9605023"
% and
%   eprint   = "hep-th/9605023"
% both produce 
%
%    \href{https://arxiv.org/abs/hep-th/9605023}{{\ttfamily hep-th/9605023}}
%
% in the bibliographic output at the appropriate point. More generally,
% if the archive field is present, we produce a URL of the form
% "archive/eprint" as the first argument of the \href. If absent, the base
% URL defaults to "https://arxiv.org/abs"
% If you are using a hypertex macropackage, like hyperref.sty, this command
% will create a link to the eprint at Los Alamos (or wherever).
%
% "New-style" arXiv identifiers are also supported.
%
%     archivePrefix = "arXiv",
%     eprint    = "0707.3168",
%     primaryClass = "hep-th",
%
% produces
%
%     \href{https://arxiv.org/abs/0707.3168}{{\ttfamily arXiv:0707.3168 [hep-th]}}
%
% Another (non-arXiv) example:
%
%     archive = "https://cogprints.org",
%     eprint = "5542",
%     archivePrefix = "Cogprints",
%
%  produces
%
%     \href{https://cogprints.org/5542}{{\ttfamily Cogprints:5542}}
%
%  If a
%
%       doi = "10.xxxx"
%
%  field is present, then the journal reference becomes a
%  clickable hyperlink to the online journal version of the paper.
%
% The bibtex output produced by SPIRES, while far from perfect, is pretty
% suitable for use with this style. Indeed, this style was designed with
% SPIRES in mind.

FUNCTION {string.and} {" and "}
FUNCTION {string.editors} {", eds."}
FUNCTION {string.editor} {", ed."}
FUNCTION {string.edition} {"~ed."}
FUNCTION {string.volume} {"vol.~"}
FUNCTION {string.capsvolume} {"Vol.~"}
FUNCTION {string.of} {" of "}
FUNCTION {string.number} {"no.~"}
FUNCTION {string.capsnumber} {"No.~"}
FUNCTION {string.in} {"in "}
FUNCTION {string.spacein} {" in "}
FUNCTION {string.capsin} {"In "}
FUNCTION {string.multipages} {"pp.~"}
FUNCTION {string.pages} {"p.~"}
FUNCTION {string.chapter} {"ch.~"}
FUNCTION {string.techrep} {"Tech. Rep."}
FUNCTION {string.mastersthesis} {"Master's thesis"}
FUNCTION {string.phdthesis} {"PhD thesis"}

MACRO {jan} {"Jan."}
MACRO {feb} {"Feb."}
MACRO {mar} {"Mar."}
MACRO {apr} {"Apr."}
MACRO {may} {"May"}
MACRO {jun} {"June"}
MACRO {jul} {"July"}
MACRO {aug} {"Aug."}
MACRO {sep} {"Sept."}
MACRO {oct} {"Oct."}
MACRO {nov} {"Nov."}
MACRO {dec} {"Dec."}
MACRO {am} {"Acta Math."}
MACRO {amj} {"Am. J. Phys."}
MACRO {ap} {"Ann. Phys."}
MACRO {cmp} {"Comm. Math. Phys."}
MACRO {ijmp} {"Int. Jour. Mod. Phys."}
MACRO {mpl} {"Mod. Phys. Lett."}
MACRO {njp} {"New J. Phys"}
MACRO {nup} {"Nucl. Phys."}
MACRO {pl} {"Phys. Lett."}
MACRO {pla} {"Phys. Lett. A"}
MACRO {pr} {"Phys. Rev."}
MACRO {pra} {"Phys. Rev. A"}
MACRO {prl} {"Phys. Rev. Lett."}
MACRO {repmp} {"Rep. Math. Phys"}
MACRO {rmp} {"Rev. Mod. Phys."}

MACRO {arXiv}     {"https://arxiv.org/abs"}
MACRO {cogprints} {"https://cogprints.org"}
MACRO {pubmed}    {"https://www.ncbi.nlm.nih.gov/pubmed"}

ENTRY
  { address
    author
    booktitle
    chapter
    edition
    editor
    howpublished
    institution
    journal
    key
    month
    note
    number
    organization
    pages
    publisher
    school
    series
    title
    type
    volume
    year
    archive
    eprint
    report
    collaboration
    SLACcitation
    archivePrefix
    primaryClass
    url
    doi
  }
  {}
  { label }

INTEGERS { output.state before.all mid.sentence after.quote after.sentence
		after.quoted.block after.block }

FUNCTION {init.state.consts}
{ #0 'before.all :=
  #1 'mid.sentence :=
  #2 'after.quote :=
  #3 'after.sentence :=
  #4 'after.quoted.block :=
  #5 'after.block :=
}

STRINGS { s t }

FUNCTION {output.nonnull}
{ 's :=
  output.state mid.sentence =
    { ", " * write$ }
    { output.state after.quote =
	{ " " * write$ }
	{ output.state after.block =
	    { add.period$ write$
	      newline$
	      "\newblock " write$
	    }
	    { output.state before.all =
		'write$
		{ output.state after.quoted.block =
		    { write$
		      newline$
		      "\newblock " write$
		    }
		    { add.period$ " " * write$ }
		  if$
		}
	      if$
	    }
	  if$
	}
      if$
      mid.sentence 'output.state :=
    }
  if$
  s
}

FUNCTION {output}
{ duplicate$ empty$
    'pop$
    'output.nonnull
  if$
}

FUNCTION {output.check}
{ 't :=
  duplicate$ empty$
    { pop$ "empty " t * " in " * cite$ * warning$ }
    'output.nonnull
  if$
}

FUNCTION {output.bibitem}
{ newline$
  "\bibitem{" write$
  cite$ write$
  "}" write$
  newline$
  ""
  before.all 'output.state :=
}

FUNCTION {blank.sep}
{ after.quote 'output.state :=
}

FUNCTION {fin.entry}
{ output.state after.quoted.block =
    'skip$
    'add.period$
  if$
  write$
  newline$
}

FUNCTION {new.block}
{ output.state before.all =
    'skip$
    { output.state after.quote =
	{ after.quoted.block 'output.state := }
	{ after.block 'output.state := }
      if$
    }
  if$
}

FUNCTION {new.sentence}
{ output.state after.block =
    'skip$
    { output.state before.all =
	'skip$
	{ after.sentence 'output.state := }
      if$
    }
  if$
}

FUNCTION {not}
{   { #0 }
    { #1 }
  if$
}

FUNCTION {and}
{   'skip$
    { pop$ #0 }
  if$
}

FUNCTION {or}
{   { pop$ #1 }
    'skip$
  if$
}

FUNCTION {new.block.checka}
{ empty$
    'skip$
    'new.block
  if$
}

FUNCTION {new.block.checkb}
{ empty$
  swap$ empty$
  and
    'skip$
    'new.block
  if$
}

FUNCTION {new.sentence.checka}
{ empty$
    'skip$
    'new.sentence
  if$
}

FUNCTION {field.or.null}
{ duplicate$ empty$
    { pop$ "" }
    'skip$
  if$
}

FUNCTION {emphasize}
{ duplicate$ empty$
    { pop$ "" }
    { "{\em " swap$ * "}" * }
  if$
}

FUNCTION {capitalize}
{ "u" change.case$ "t" change.case$ }

INTEGERS { nameptr namesleft numnames }

FUNCTION {format.names}
{ 's :=
  #1 'nameptr :=
  s num.names$ 'numnames :=
  numnames 'namesleft :=
    { namesleft #0 > }
    { s nameptr "{f.~}{vv~}{ll}{, jj}" format.name$ 't :=
      nameptr #1 >
{
          nameptr #2
          #1 + =
          numnames #10
          > and
            { "others" 't :=
              #1 'namesleft := }
            'skip$
          if$
          namesleft #1 >
            { ", " * t * }
            {
              s nameptr "{ll}" format.name$ duplicate$ "others" =
                { 't := }
                { pop$ }
              if$
              numnames #2 >
		{ "," * }
		'skip$
	      if$
	      t "others" =
		{ " {\em et~al.}" * }
		{ string.and * t * }
	      if$
	    }
	  if$
	}
	't
      if$
      nameptr #1 + 'nameptr :=
      namesleft #1 - 'namesleft :=
    }
  while$
}

FUNCTION {format.authors}
{ author empty$
    { "" }
    { author format.names }
  if$
}

FUNCTION {format.archive}
{
  archivePrefix empty$
      { "" }
      { archivePrefix ":" *}
  if$            
}

FUNCTION {format.primaryClass}
{
  primaryClass empty$
      { "" }
      { " [" primaryClass * "]" *}
  if$            
}

FUNCTION {format.eprint}
{ eprint empty$
     { ""}
     { archive empty$
          {"\href{https://arxiv.org/abs/" eprint * "}" * 
             "{{\ttfamily " * format.archive * eprint *
              format.primaryClass * "}}" *}
          {"\href{" archive *  "/" * eprint * "}" * 
             "{{\ttfamily " * format.archive * eprint *
              format.primaryClass * "}}" *}
       if$
     }
     if$
}

FUNCTION {format.url}
{ url empty$
    { "" }
    {"\url{" url * "}" *}
  if$
}

FUNCTION {add.doi}
{ duplicate$ empty$
    { skip$ }
    { doi empty$
        {}
        {"\href{https://dx.doi.org/" doi * "}{" * swap$ * "}" *}
      if$
    }
  if$
}

FUNCTION {format.report}
{ report empty$
     { ""}
     { report}
     if$
}

FUNCTION {format.howpublished}
{ howpublished empty$
    { "" }
    { howpublished }
  if$
}

FUNCTION {format.editors}
{ editor empty$
    { "" }
    { editor format.names
      editor num.names$ #1 >
	{ string.editors * }
	{ string.editor * }
      if$
    }
  if$
}

FUNCTION {format.title}
{ title empty$
    { "" }
    {title title text.length$ #1 substring$ duplicate$ duplicate$ "?" =
     swap$ "!" = or
     swap$ "." = or
      { "``" title "t" change.case$ * "''" * }
      { "``" title "t" change.case$ * ",''" * }
    if$
   }
  if$
}

FUNCTION {format.title.p}
{ title empty$
    { "" }
    { "``" title "t" change.case$ * add.period$ "''" * }
  if$
}

FUNCTION {n.dashify}
{ 't :=
  ""
    { t empty$ not }
    { t #1 #1 substring$ "-" =
	{ t #1 #2 substring$ "--" = not
	    { "--" *
	      t #2 global.max$ substring$ 't :=
	    }
	    {   { t #1 #1 substring$ "-" = }
		{ "-" *
		  t #2 global.max$ substring$ 't :=
		}
	      while$
	    }
	  if$
	}
	{ t #1 #1 substring$ *
	  t #2 global.max$ substring$ 't :=
	}
      if$
    }
  while$
}

FUNCTION {format.date}
{ year empty$
    { month empty$
	{ "" }
	{ "there's a month but no year in " cite$ * warning$
	  month
	}
      if$
    }
    { month empty$
	'year
	{ month capitalize ", " * year * }
      if$
    }
  if$
}

FUNCTION {format.date.paren}
{ year empty$
    { month empty$
	{ "" }
	{ "there's a month but no year in " cite$ * warning$
	  month
	}
      if$
    }
    { month empty$
	{"(" year * ") " *}
	{"(" month capitalize * ", " * year * ") " *}
      if$
    }
  if$
}

FUNCTION {format.collaboration}
{ collaboration empty$
    { "" }
    { "{\bfseries " collaboration * "} " * "Collaboration" * }
  if$
}

FUNCTION {format.SLACcitation}
{ SLACcitation empty$
  {""}
   { newline$ SLACcitation output "" newline$ }
  if$
}

FUNCTION {format.btitle}
{ title emphasize
}

FUNCTION {tie.or.space.connect}
{ duplicate$ text.length$ #3 <
    { "~" }
    { " " }
  if$
  swap$ * *
}

FUNCTION {either.or.check}
{ empty$
    'pop$
    { "can't use both " swap$ * " fields in " * cite$ * warning$ }
  if$
}

FUNCTION {format.bvolume}
{ volume empty$
    { "" }
    { string.volume volume *
      series empty$
	'skip$
	{ string.of * series emphasize * }
      if$
      "volume and number" number either.or.check
    }
  if$
}

FUNCTION {format.number.series}
{ volume empty$
    { number empty$
	{ series field.or.null }
	{ output.state mid.sentence =
	    { string.number }
	    { string.capsnumber }
	  if$
	  number *
	  series empty$
	    { "there's a number but no series in " cite$ * warning$ }
	    { string.spacein * series * }
	  if$
	}
      if$
    }
    { "" }
  if$
}

FUNCTION {format.edition}
{ edition empty$
    { "" }
    { edition "l" change.case$ string.edition * }
  if$
}

INTEGERS { multiresult }

FUNCTION {multi.page.check}
{ 't :=
  #0 'multiresult :=
    { multiresult not
      t empty$ not
      and
    }
    { t #1 #1 substring$
      duplicate$ "-" =
      swap$ duplicate$ "," =
      swap$ "+" =
      or or
	{ #1 'multiresult := }
	{ t #2 global.max$ substring$ 't := }
      if$
    }
  while$
  multiresult
}

FUNCTION {format.pages}
{ pages empty$
    { "" }
    { pages multi.page.check
	{ string.multipages pages n.dashify * }
	{ string.pages pages * }
      if$
    }
  if$
}

FUNCTION {format.pages.nopp}
{ pages empty$
    { "empty pages in " cite$ * warning$
      ""
    }
    { pages multi.page.check
	{ pages n.dashify  }
	{ pages }
      if$
    }
  if$
}


FUNCTION {format.volume}
{ volume empty$
    { "" }
    { "{\bfseries " volume * "} " * }
  if$
}

FUNCTION {format.number}
{ number empty$
    { "" }
    { "no.~" number * ", " *}
  if$
}

FUNCTION {format.chapter.pages}
{ chapter empty$
    'format.pages
    { type empty$
	{ string.chapter chapter * }
	{ type "l" change.case$ chapter tie.or.space.connect }
      if$
      pages empty$
	'skip$
	{ ", " * format.pages * }
      if$
    }
  if$
}

FUNCTION {format.in.ed.booktitle}
{ booktitle empty$
    { "" }
    { string.in booktitle emphasize *
      editor empty$
	'skip$
	{ ", " * format.editors *  }
      if$
    }
  if$
}

FUNCTION {format.thesis.type}
{ type empty$
    'skip$
    { pop$
      output.state after.block =
	{ type "t" change.case$ }
	{ type "l" change.case$ }
      if$
    }
  if$
}

FUNCTION {empty.misc.check}
{ author empty$ title empty$ howpublished empty$
  month empty$ year empty$ note empty$
  and and and and and
    { "all relevant fields are empty in " cite$ * warning$ }
    'skip$
  if$
}

FUNCTION {format.tr.number}
{ type empty$
    { string.techrep }
    'type
  if$
  number empty$
    { "l" change.case$ }
    { number tie.or.space.connect }
  if$
}

FUNCTION {format.paddress}
{ address empty$
    { "" }
    { "(" address * ")" * }
  if$
}

FUNCTION {format.article.crossref}
{ key empty$
    { journal empty$
	{ "need key or journal for " cite$ * " to crossref " * crossref *
	  warning$
	  ""
	}
	{ string.in "{\em " * journal * "\/}" * }
      if$
    }
    { string.in key * }
  if$
  " \cite{" * crossref * "}" *
}

FUNCTION {format.crossref.editor}
{ editor #1 "{vv~}{ll}" format.name$
  editor num.names$ duplicate$
  #2 >
    { pop$ " {\em et~al.}" * }
    { #2 <
	'skip$
	{ editor #2 "{ff }{vv }{ll}{ jj}" format.name$ "others" =
	    { " {\em et~al.}" * }
	    { string.and * editor #2 "{vv~}{ll}" format.name$ * }
	  if$
	}
      if$
    }
  if$
}

FUNCTION {format.book.crossref}
{ volume empty$
    { "empty volume in " cite$ * "'s crossref of " * crossref * warning$
      string.capsin
    }
    { string.capsvolume volume *
      string.of *
    }
  if$
  editor empty$
  editor field.or.null author field.or.null =
  or
    { key empty$
	{ series empty$
	    { "need editor, key, or series for " cite$ * " to crossref " *
	      crossref * warning$
	      "" *
	    }
	    { "{\em " * series * "\/}" * }
	  if$
	}
	{ key * }
      if$
    }
    { format.crossref.editor * }
  if$
  " \cite{" * crossref * "}" *
}

FUNCTION {format.incoll.inproc.crossref}
{ editor empty$
  editor field.or.null author field.or.null =
  or
    { key empty$
	{ booktitle empty$
	    { "need editor, key, or booktitle for " cite$ * " to crossref " *
	      crossref * warning$
	      ""
	    }
	    { string.in "{\em " * booktitle * "\/}" * }
	  if$
	}
	{ string.in key * }
      if$
    }
    { string.in format.crossref.editor * }
  if$
  " \cite{" * crossref * "}" *
}

FUNCTION {format.journal}
{ journal missing$   
    { "" }
    {journal emphasize " " *
     format.volume *
     format.number *
     format.date.paren *
     format.pages.nopp *
      }
    if$
}

FUNCTION {article}
{ output.bibitem
  format.collaboration output
  format.authors "author" output.check
  format.title "title" output.check
  blank.sep
  crossref missing$
  { journal missing$   
        {}
        { format.journal add.doi "journal" output.check}
      if$
    report missing$
        {format.eprint output}
        {blank.sep format.report output format.eprint output}
      if$
    }
    { format.article.crossref output.nonnull
      format.pages output
      format.eprint output
    }
  if$
  new.sentence
  format.url output
  new.sentence
  note output
  new.sentence
  format.SLACcitation output
  fin.entry
}

FUNCTION {book}
{ output.bibitem
  format.collaboration output
  author empty$
    { format.editors "author and editor" output.check }
    { format.authors output.nonnull
      crossref missing$
	{ "author and editor" editor either.or.check }
	'skip$
      if$
    }
  if$
  format.btitle add.doi "title" output.check
  crossref missing$
    { format.bvolume output
      new.block
      format.number.series output
      new.sentence
      publisher "publisher" output.check
      address output
    }
    { new.block
      format.book.crossref output.nonnull
    }
  if$
  format.edition output
  format.date "year" output.check
  new.block
  format.eprint output
  new.block
  format.url output
  new.block
  note output
  new.sentence
  format.SLACcitation output
  fin.entry
}

FUNCTION {booklet}
{ output.bibitem
  format.collaboration output
  format.authors output
  title empty$
    { "empty title in " cite$ * warning$
      howpublished new.sentence.checka
    }
    { howpublished empty$ not
      address empty$ month empty$ year empty$ and and
      or
	{ format.title.p output.nonnull }
	{ format.title output.nonnull }
      if$
      blank.sep
    }
  if$
  format.howpublished output
  address output
  format.date output
  new.block
  format.eprint output
  new.block
  format.url output
  new.block
  note output
  new.sentence
  format.SLACcitation output
  fin.entry
}

FUNCTION {inbook}
{ output.bibitem
  format.collaboration output
  author empty$
    { format.editors "author and editor" output.check }
    { format.authors output.nonnull
      crossref missing$
	{ "author and editor" editor either.or.check }
	'skip$
      if$
    }
  if$
  format.btitle "title" output.check
  crossref missing$
    { format.bvolume output
      format.chapter.pages add.doi "chapter and pages" output.check
      new.block
      format.number.series output
      new.block
      publisher "publisher" output.check
      address output
    }
    { format.chapter.pages add.doi "chapter and pages" output.check
      new.block
      format.book.crossref output.nonnull
    }
  if$
  format.edition output
  format.date "year" output.check
  new.block
  format.eprint output
  new.block
  format.url output
  new.block
  note output
  new.sentence
  format.SLACcitation output
  fin.entry
}

FUNCTION {incollection}
{ output.bibitem
  format.collaboration output
  format.authors "author" output.check
  format.title add.doi "title" output.check
  blank.sep
  crossref missing$
    { format.in.ed.booktitle "booktitle" output.check
      format.bvolume output
      format.number.series output
      format.chapter.pages output
      new.block
      publisher "publisher" output.check
      address output
      format.edition output
      format.date "year" output.check
    }
    { format.incoll.inproc.crossref output.nonnull
      format.chapter.pages output
    }
  if$
  new.block
  format.eprint output
  new.block
  format.url output
  new.block
  note output
  new.sentence
  format.SLACcitation output
  fin.entry
}

FUNCTION {inproceedings}
{ output.bibitem
  format.collaboration output
  format.authors "author" output.check
  format.title add.doi "title" output.check
  blank.sep
  crossref missing$
    { format.in.ed.booktitle "booktitle" output.check
      format.bvolume output
      format.number.series output
      format.pages output
      organization output
      new.block
      publisher output
      address output
      format.date "year" output.check
    }
    { format.incoll.inproc.crossref output.nonnull
      format.pages output
    }
  if$
  new.block
  format.eprint output
  new.block
  format.url output
  new.block
  note output
  new.sentence
  format.SLACcitation output
  fin.entry
}

FUNCTION {conference} { inproceedings }

FUNCTION {manual}
{ output.bibitem
  format.collaboration output
  author empty$
    { organization empty$
	'skip$
	{ organization output.nonnull
	  address output
	}
      if$
    }
    { format.authors output.nonnull }
  if$
  format.btitle "title" output.check
  author empty$
    { organization empty$
	{ address new.block.checka
	  address output
	}
	'skip$
      if$
    }
    { organization address new.block.checkb
      organization output
      address output
    }
  if$
  format.edition output
  format.date output
  new.block
  format.eprint output
  new.block
  format.url output
  new.block
  note output
  fin.entry
}

FUNCTION {mastersthesis}
{ output.bibitem
  format.authors "author" output.check
  format.title add.doi "title" output.check
  blank.sep
  string.mastersthesis format.thesis.type output.nonnull
  school "school" output.check
  address output
  format.date "year" output.check
  new.block
  format.url output
  new.block
  note output
  fin.entry
}

FUNCTION {misc}
{ output.bibitem
  format.collaboration output
  format.authors "author" output.check
  title empty$
    'skip$
    { howpublished empty$ not
      month empty$ year empty$ and
      or
    { format.title output.nonnull }
    { format.title.p output.nonnull }
      if$
      blank.sep
    }
  if$
  format.howpublished output
  format.date output
  new.block
  format.url output
  new.sentence
  note output
  new.sentence
  fin.entry
  empty.misc.check
}

FUNCTION {phdthesis}
{ output.bibitem
  format.authors "author" output.check
  format.btitle add.doi "title" output.check
  new.block
  string.phdthesis format.thesis.type output.nonnull
  school "school" output.check
  address output
  format.date "year" output.check
  new.block
  format.eprint output
  new.block
  format.url output
  new.block
  note output
  new.sentence
  format.SLACcitation output
  fin.entry
}

FUNCTION {proceedings}
{ output.bibitem
  editor empty$
    { organization output }
    { format.editors output.nonnull }
  if$
  format.btitle add.doi "title" output.check
  format.bvolume output
  format.number.series output
  editor empty$
    'skip$
    { organization output }
  if$
  new.block
  publisher output
  address output
  format.date "year" output.check
  new.block
  format.eprint output
  new.block
  format.url output
  new.block
  note output
  new.sentence
  format.SLACcitation output
  fin.entry
}

FUNCTION {techreport}
{ output.bibitem
  format.collaboration output
  format.authors "author" output.check
  format.title add.doi "title" output.check
  blank.sep
  format.tr.number output.nonnull
  institution "institution" output.check
  address output
  format.date "year" output.check
  new.block
  format.eprint output
  new.block
  format.url output
  new.block
  note output
  fin.entry
}

FUNCTION {unpublished}
{ output.bibitem
  format.collaboration output
  format.authors "author" output.check  
  title empty$
     { year empty$ month empty$
       and
       {add.period$}
       {"{}" output}
     if$
     }
     { year empty$ month empty$
       and
      {format.title.p "title" output.check}
      {format.title "title" output.check}
    if$}
  if$
  blank.sep
  format.date output
  new.block
  note "note" output.check
  new.sentence
  format.SLACcitation output
  fin.entry
}

FUNCTION {default.type} { misc }

READ

STRINGS { longest.label }

INTEGERS { number.label longest.label.width }

FUNCTION {initialize.longest.label}
{ "" 'longest.label :=
  #1 'number.label :=
  #0 'longest.label.width :=
}

FUNCTION {longest.label.pass}
{ number.label int.to.str$ 'label :=
  number.label #1 + 'number.label :=
  label width$ longest.label.width >
    { label 'longest.label :=
      label width$ 'longest.label.width :=
    }
    'skip$
  if$
}

EXECUTE {initialize.longest.label}

ITERATE {longest.label.pass}

FUNCTION {begin.bib}
{ preamble$ empty$
    'skip$
    { preamble$ write$ newline$ }
  if$
  "\providecommand{\href}[2]{#2}"
  "\begingroup\raggedright\begin{thebibliography}{" * longest.label  * 
  "}" * write$ newline$ }

EXECUTE {begin.bib}

EXECUTE {init.state.consts}

ITERATE {call.type$}

FUNCTION {end.bib}
{ newline$
  "\end{thebibliography}\endgroup" write$ newline$
}

EXECUTE {end.bib}
