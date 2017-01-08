# Third-party licenses

## [TeX Live](http://tug.org/texlive/)

```
$Id: LICENSE.TL 22793 2011-06-05 15:38:08Z karl $

COPYING CONDITIONS FOR TeX Live:

To the best of our knowledge, all software in the TeX Live distribution
is freely redistributable (libre, that is, not necessarily gratis),
within the Free Software Foundation's definition and the Debian Free
Software Guidelines.  Where the two conflict, we generally follow the
FSF.  If you find any non-free files included, please contact us
(references given at the end).

That said, TeX Live has neither a single copyright holder nor a single
license covering its entire contents, since it is a collection of many
independent packages.  Therefore, you may copy, modify, and/or
redistribute software from TeX Live only if you comply with the
requirements placed thereon by the owners of the respective packages.

To most easily learn these requirements, we suggest checking the TeX
Catalogue at: http://www.ctan.org/tex-archive/help/Catalogue/ (or any
CTAN mirror).  Of course the legal statements within the packages
themselves are the final authority.

In some cases, TeX Live is distributed with a snapshot of the CTAN
archive, which is entirely independent of and separable from TeX Live
itself.  (The TeX Collection DVD is one example of this.)  Please be
aware that the CTAN snapshot contains many files which are *not* freely
redistributable; see LICENSE.CTAN for more information.


GUIDELINES FOR REDISTRIBUTION:

In general, you may redistribute TeX Live, with or without modification,
for profit or not, according to the usual free software tenets.  Here
are some general guidelines for doing this:

- If you make any changes to the TeX Live distribution or any
package it contains, besides complying with any licensing requirements,
you must prominently mention such changes in your modified distribution
so that users do not take your work for ours, and know to contact you,
not us, in case of questions or problems.  A new top-level file
README.<yourwork> is a good place to describe the general situation.

- Especially (but not necessarily) if changes or additions are made, we
recommend a clearly different title, such as "<your work> DVD, based on
TeX Live YYYY", where YYYY is the year of TeX Live you are using.  This
credits both our work and yours.

- You absolutely may *not* place your own copyright on the entire
distribution, since it is not your work.  Statements such as "all rights
reserved" and "may not be reproduced" are especially reprehensible,
since they are antithetical to the free software principles under which
TeX Live is produced.

- You may use any cover or media label designs that you wish.  Such
packaging and marketing details are not covered by any TeX Live license.

- Finally, we make the following requests (not legal requirements):

a) Acknowledging that TeX Live is developed as a joint effort by all TeX
   user groups, and encouraging the user/reader to join their user group
   of choice, as listed on the web page http://tug.org/usergroups.html.

b) Referencing the TeX Live home page: http://tug.org/texlive/

Such information may be placed on the label of your media, your cover,
and/or in accompanying text (for instance, in the acknowledgements
section of a book).

Finally, although it is again not a requirement, we'd like to invite any
redistributors to make a donation to the project, whether cash or
in-kind, for example via https://www.tug.org/donate/dev.html.  Thanks.


If you have any questions or comments, *please* contact us.  In general,
we appreciate being given the chance to review any TeX Live-related
material in advance of publication, simply to avoid mistakes.  It is
much better to correct text on a CD label or in a book before thousands
of copies are made!

We are also happy to keep anyone planning a publication informed as to
our deadlines and progress.  Just let us know.  However, be aware that
TeX Live is produced entirely by volunteers, and no dates can be
guaranteed.


LICENSING FOR NEW PACKAGES:

Finally, we are often asked what license to use for new work.  To be
considered for inclusion on TeX Live, a package must use a free software
license, such as the LaTeX Project Public License, the GNU General
Public License, the modified BSD license, etc.  (Please use an existing
license instead of making up your own.)  Furthermore, all sources must
be available, including for documentation files.  Please see
http://tug.org/texlive/pkgcontrib.html for more information, and other
considerations.

Thanks for your interest in TeX.

- Karl Berry, for the TeX Live project

------------------------------------------------------------
TeX Live mailing list: http://lists.tug.org/tex-live
TeX Live home page:    http://tug.org/tex-live/

The FSF's free software definition: http://www.gnu.org/philosophy/free-sw.html
Debian Free Software Guidelines:    http://www.debian.org/intro/free
FSF commentary on existing licenses:
  http://www.gnu.org/licenses/license-list.html

LPPL: http://latex-project.org/lppl.html or texmf-dist/doc/latex/base/lppl.txt
LPPL rationale: texmf-dist/doc/latex/base/modguide.pdf
```

## [ucs – Ex­tended UTF-8 in­put en­cod­ing sup­port for LaTeX](https://www.ctan.org/tex-archive/macros/latex/contrib/ucs)

```
Copyright 2000      by Dominique Unruh  <unruh@ut.ee>
Copyright 2011-2013 by Wolfgang Jeltsch <wolfgang@cs.ioc.ee>

This work may be distributed and/or modified under the conditions of the
LaTeX Project Public License, either version 1.3 of this license or (at
your option) any later version, with the extensions listed below.

The latest version of the LaTeX Project Public License (without the
extensions listed below) is in

    <http://www.latex-project.org/lppl.txt>

and version 1.3 or later is part of all distributions of LaTeX version
2005/12/01 or later.

This work has the LPPL maintenance status `maintained'.

The Current Maintainer of this work is Wolfgang Jeltsch.

This work consists of all files found at

    <http://darcs.wolfgang.jeltsch.info/tex/ucs/>

including subdirectories.

The following extensions to the LPPL apply for this work:

    - A distribution may omit the files data/uninames.dat and
      ucs-doc.dvi

    - The directory structure may be changed

    - A distribution may split the package into smaller packages, as
      long as this fact is visible to the user and the user may easily
      install the complete UCS package (e.g. by installing all small
      packages).

    - The data/uni-*.def files may be regenerated via makeunidef.pl from
      a valid set of config/*.def files without changing the former's
      names, whereby a valid set of config/*.ucf files consists of the
      original files and any local additions in separate files, whereby
      any characters defined in these should only be accessible via an
      option which starts with the five letters 'local'. (See the
      documentation files for a description of the technical terms and
      names in this paragraph.)

    - Files in the unsupported/ directory may be omitted.

    - Scripts (i.e. executable files which are not TeX input), may be
      renamed, as long as the original name without suffix is part of
      the new name (e.g. discovermacro.pl -> latex-ucs-discovermacro)
      and as long this is stated in some documentation file shipped with
      the distribution. Occurrences of the scripts' names in the
      documentation may be changed to match the new name.

    - Parts of files explicitly marked as "configuration data" may be
      changed by distributions, as long this is stated in a comment near
      the place of that modification and in some documentation file
      shipped with the distribution.
```
