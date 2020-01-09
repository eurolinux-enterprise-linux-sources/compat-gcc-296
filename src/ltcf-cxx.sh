#### This script is meant to be sourced by ltconfig.

# $Id: ltcf-cxx.sh,v 1.1 2000/07/28 18:04:21 bkoz Exp $

# ltcf-cxx.sh - Create a C++ compiler specific configuration
#
# Copyright (C) 1996-1999,2000 Free Software Foundation, Inc.
# Originally by Gordon Matzigkeit <gord@gnu.ai.mit.edu>, 1996
#
# Original C++ support by:
#    Alexandre Oliva <oliva@lsd.ic.unicamp.br>
#    Ossama Othman <ossama@debian.org>
#    Thomas Thanner <tanner@gmx.de>
#
# This file is free software; you can redistribute it and/or modify it
# under the terms of the GNU General Public License as published by
# the Free Software Foundation; either version 2 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful, but
# WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
# General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program; if not, write to the Free Software
# Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.
#
# As a special exception to the GNU General Public License, if you
# distribute this file as part of a program that contains a
# configuration script generated by Autoconf, you may include it under
# the same distribution terms that you use for the rest of that program.


# Source file extension for C++ test sources.
ac_ext=cc

# Object file extension for compiled C++ test sources.
objext=o

# Code to be used in simple compile tests
lt_simple_compile_test_code="int some_variable = 0;"

# Code to be used in simple link tests
lt_simple_link_test_code='int main(int, char *[]) { return (0); }'

# C++ compiler
CXX=${CXX-c++}

# ltmain only uses $CC for tagged configurations so make sure $CC is set.
CC=${CC-"$CXX"}
CFLAGS=${CFLAGS-"$CXXFLAGS"}

# Allow CC to be a program name with arguments.
set dummy $CC
compiler=$2
cc_basename=`$echo X"$compiler" | $Xsed -e 's%^.*/%%'`

# Check if we are using GNU gcc  (taken/adapted from configure script)
# We need to check here since "--with-gcc" is set at configure time,
# not ltconfig time!
cat > conftest.$ac_ext <<EOF
#ifdef __GNUC__
  yes;
#endif
EOF
if { ac_try='${CC-c++} -E conftest.$ac_ext'; { (eval echo \"$ac_try\") 1>&5; (eval $ac_try) 2>&5; }; } | egrep yes >/dev/null 2>&1; then
  with_gcc=yes

  # Set up default GNU C++ configuration

  # Check if GNU C++ uses GNU ld as the underlying linker, since the
  # archiving commands below assume that GNU ld is being used.
  if eval "`$CC -print-prog-name=ld` --version 2>&1" | \
      egrep 'GNU ld' > /dev/null; then
    with_gnu_ld=yes

    archive_cmds='$CC -shared -nostdlib $predep_objects $libobjs $deplibs $postdep_objects $compiler_flags ${wl}-soname $wl$soname -o $lib'
    archive_expsym_cmds='$CC -shared -nostdlib $predep_objects $libobjs $deplibs $postdep_objects $compiler_flags ${wl}-soname $wl$soname ${wl}-retain-symbols-file $wl$export_symbols -o $lib'

    hardcode_libdir_flag_spec='${wl}--rpath ${wl}$libdir'
    export_dynamic_flag_spec='${wl}--export-dynamic'

    # If archive_cmds runs LD, not CC, wlarc should be empty
    # XXX I think wlarc can be eliminated in ltcf-cxx, but I need to
    #     investigate it a little bit more. (MM)
    wlarc='${wl}'

    # ancient GNU ld didn't support --whole-archive et. al.
    if eval "`$CC -print-prog-name=ld` --help 2>&1" | \
        egrep 'no-whole-archive' > /dev/null; then
      whole_archive_flag_spec="$wlarc"'--whole-archive$convenience '"$wlarc"'--no-whole-archive'
    else
      whole_archive_flag_spec=
    fi
  else
    with_gnu_ld=no
    wlarc=

    # A generic and very simple default shared library creation
    # command for GNU C++ for the case where it uses the native
    # linker, instead of GNU ld.  If possible, this setting should
    # overridden to take advantage of the native linker features on
    # the platform it is being used on.
    archive_cmds='$CC -shared $predep_objects $libobjs $deplibs $postdep_objects $compiler_flags -o $lib'
  fi

  # Commands to make compiler produce verbose output that lists
  # what "hidden" libraries, object files and flags are used when
  # linking a shared library.
  output_verbose_link_cmds='$CC -shared $CFLAGS -v conftest.$objext 2>&1 | egrep "\-L"'

else
  with_gcc=no
  with_gnu_ld=no
  wlarc=
fi

# In general, the C++ compiler should always link C++ objects.
case $target in
*aix3* | *aix4*)
  # AIX just has to be different, doesn't it? :-\
  LD=makeC++SharedLib_r
  LDFLAGS="$LDFLAGS -p 0"
  ;;
*)
  LD="$CC"
  LDFLAGS="$LDFLAGS"
  ;;
esac


# PORTME: fill in a description of your system's C++ link characteristics
case "$host_os" in
  aix3*)
    # FIXME: insert proper C++ library support
    ld_shlibs=no
    ;;
  aix4*)
    # FIXME: insert proper C++ library support
    ld_shlibs=no
    ;;
  chorus*)
    case "$cc_basename" in
      *)
        # FIXME: insert proper C++ library support
        ld_shlibs=no
        ;;
    esac 
    ;;
  dgux*)
    case "$cc_basename" in
      ec++)
        # FIXME: insert proper C++ library support
        ld_shlibs=no
        ;;
      ghcx)
        # Green Hills C++ Compiler
        # FIXME: insert proper C++ library support
        ld_shlibs=no
        ;;
      *)
        # FIXME: insert proper C++ library support
        ld_shlibs=no
        ;;
    esac
    ;;
  freebsd*)
    # FreeBSD uses GNU C++ and GNU ld
    # FIXME: insert proper C++ library support
    ld_shlibs=no
    ;;
  hpux*)
    case "$cc_basename" in
      CC)
        # FIXME: insert proper C++ library support
        ld_shlibs=no
        ;;
      aCC)
	case "$host_os" in
	hpux9*) archive_cmds='$rm $output_objdir/$soname~$CC -b ${wl}+b ${wl}$install_libdir -o $output_objdir/$soname $predep_objects $libobjs $deplibs $postdep_objects $linker_flags~test $output_objdir/$soname = $lib || mv $output_objdir/$soname $lib' ;;
	*) archive_cmds='$CC -b ${wl}+h ${wl}$soname ${wl}+b ${wl}$install_libdir -o $lib $predep_objects $libobjs $deplibs $postdep_objects $linker_flags' ;;
	esac
	hardcode_libdir_flag_spec='${wl}+b ${wl}$libdir'
	hardcode_libdir_separator=:
	hardcode_direct=yes
	hardcode_minus_L=yes # Not in the search PATH, but as the default
			     # location of the library.
	export_dynamic_flag_spec='${wl}-E'

        # Commands to make compiler produce verbose output that lists
        # what "hidden" libraries, object files and flags are used when
        # linking a shared library.
        #
        # There doesn't appear to be a way to prevent this compiler from
        # explicitly linking system object files so we need to strip them
        # from the output so that they don't get included in the library
        # dependencies.
        output_verbose_link_cmds='templist=`($CC -b $CFLAGS -v conftest.$objext 2>&1) | egrep "\-L"`; list=""; for z in $templist; do case $z in conftest.$objext) list="$list $z";; *.$objext);; *) list="$list $z";;esac; done; echo $list'
        ;;
      *)
        # FIXME: insert proper C++ library support
        ld_shlibs=no
        ;;
    esac
    ;;
  irix5* | irix6*)
    case "$cc_basename" in
      CC)
        # SGI C++
        archive_cmds='$CC -shared -all -multigot $predep_objects $libobjs $deplibs $postdep_objects $compiler_flags -soname $soname `test -n "$verstring" && echo -set_version $verstring` -update_registry ${objdir}/so_locations -o $lib'
        ;;
      *)
        if test "$with_gcc" = yes; then
          if test "$with_gnu_ld" = no; then
            archive_cmds='$CC -shared $predep_objects $libobjs $deplibs $postdep_objects $linker_flags ${wl}-soname ${wl}$soname `test -n "$verstring" && echo ${wl}-set_version ${wl}$verstring` ${wl}-update_registry ${wl}${objdir}/so_locations -o $lib'
          else
            archive_cmds='$LD -shared $predep_objects $libobjs $deplibs $postdep_objects $linker_flags -soname $soname `test -n "$verstring" && echo -set_version $verstring` -o $lib'
          fi
        fi
        hardcode_libdir_flag_spec='${wl}-rpath ${wl}$libdir'
        hardcode_libdir_separator=:
        link_all_deplibs=yes
        ;;
    esac
    ;;
  linux*)
    case "$cc_basename" in
      KCC)
        # Kuck and Associates, Inc. (KAI) C++ Compiler

        # KCC will only create a shared library if the output file
        # ends with ".so" (or ".sl" for HP-UX), so rename the library
        # to its proper name (with version) after linking.
        archive_cmds='templib=`echo $lib | sed -e "s/\.so\..*/\.so/"`; $CC $predep_objects $libobjs $deplibs $postdep_objects $linker_flags --soname $soname -o \$templib; mv \$templib $lib'
        archive_expsym_cmds='templib=`echo $lib | sed -e "s/\.so\..*/\.so/"`; $CC $predep_objects $libobjs $deplibs $postdep_objects $linker_flags --soname $soname -o \$templib ${wl}-retain-symbols-file,$export_symbols; mv \$templib $lib'

        # Commands to make compiler produce verbose output that lists
        # what "hidden" libraries, object files and flags are used when
        # linking a shared library.
        #
        # There doesn't appear to be a way to prevent this compiler from
        # explicitly linking system object files so we need to strip them
        # from the output so that they don't get included in the library
        # dependencies.
        output_verbose_link_cmds='templist=`$CC $CFLAGS -v conftest.$objext -o libconftest.so 2>&1 | egrep "ld"`; rm -f libconftest.so; list=""; for z in $templist; do case $z in conftest.$objext) list="$list $z";; *.$objext);; *) list="$list $z";;esac; done; echo $list'

        hardcode_libdir_flag_spec='${wl}--rpath,$libdir'
        export_dynamic_flag_spec='${wl}--export-dynamic'

	# Archives containing C++ object files must be created using
	# "CC -Bstatic", where "CC" is the KAI C++ compiler.
        old_archive_cmds='$CC -Bstatic -o $oldlib $oldobjs'
        ;;
      cxx)
        # Compaq C++
        archive_cmds='$CC -shared $predep_objects $libobjs $deplibs $postdep_objects $linker_flags ${wl}-soname $wl$soname -o $lib'
        archive_expsym_cmds='$CC -shared $predep_objects $libobjs $deplibs $postdep_objects $linker_flags ${wl}-soname $wl$soname  -o $lib ${wl}-retain-symbols-file $wl$export_symbols'

        runpath_var=LD_RUN_PATH
        hardcode_libdir_flag_spec='-rpath $libdir'
        hardcode_libdir_separator=:

        # Commands to make compiler produce verbose output that lists
        # what "hidden" libraries, object files and flags are used when
        # linking a shared library.
        #
        # There doesn't appear to be a way to prevent this compiler from
        # explicitly linking system object files so we need to strip them
        # from the output so that they don't get included in the library
        # dependencies.
        output_verbose_link_cmds='templist=`$CC -shared $CFLAGS -v conftest.$objext 2>&1 | grep "ld"`; templist=`echo $templist | sed "s/\(^.*ld.*\)\( .*ld .*$\)/\1/"`; list=""; for z in $templist; do case $z in conftest.$objext) list="$list $z";; *.$objext);; *) list="$list $z";;esac; done; echo $list'
        ;;
    esac
    ;;
  lynxos*)
    # FIXME: insert proper C++ library support
    ld_shlibs=no
    ;;
  m88k*)
    # FIXME: insert proper C++ library support
    ld_shlibs=no
    ;;
  mvs*)
    case "$cc_basename" in
      cxx)
        # FIXME: insert proper C++ library support
        ld_shlibs=no
        ;;
      *)
        # FIXME: insert proper C++ library support
        ld_shlibs=no
        ;;
    esac   
    ;;
  netbsd*)
    # FIXME: insert proper C++ library support
    ld_shlibs=no
    ;;
  osf3*)
    if test "$with_gcc" = yes && test "$with_gnu_ld" = no; then
      allow_undefined_flag=' ${wl}-expect_unresolved ${wl}\*'
      archive_cmds='$CC -shared -nostdlib ${allow_undefined_flag} $predep_objects $libobjs $deplibs $postdep_objects $compiler_flags ${wl}-soname ${wl}$soname `test -n "$verstring" && echo ${wl}-set_version ${wl}$verstring` ${wl}-update_registry ${wl}${objdir}/so_locations -o $lib'

      hardcode_libdir_flag_spec='${wl}-rpath ${wl}$libdir'
      hardcode_libdir_separator=:

      # Commands to make compiler produce verbose output that lists
      # what "hidden" libraries, object files and flags are used when
      # linking a shared library.
      output_verbose_link_cmds='$CC -shared $CFLAGS -v conftest.$objext 2>&1 | egrep "\-L"'
    fi

    case "$cc_basename" in
      KCC)
        # Kuck and Associates, Inc. (KAI) C++ Compiler

        # KCC will only create a shared library if the output file
        # ends with ".so" (or ".sl" for HP-UX), so rename the library
        # to its proper name (with version) after linking.
        archive_cmds='templib=`echo $lib | sed -e "s/\.so\..*/\.so/"`; $CC $predep_objects $libobjs $deplibs $postdep_objects $linker_flags --soname $soname -o \$templib; mv \$templib $lib'

        hardcode_libdir_flag_spec='${wl}-rpath,$libdir'
        hardcode_libdir_separator=:

	# Archives containing C++ object files must be created using
	# "CC -Bstatic", where "CC" is the KAI C++ compiler.
        old_archive_cmds='$CC -Bstatic -o $oldlib $oldobjs'

        ;;
      RCC)
        # Rational C++ 2.4.1
        # FIXME: insert proper C++ library support
        ld_shlibs=no
        ;;
      cxx)
        allow_undefined_flag=' ${wl}-expect_unresolved ${wl}\*'
        archive_cmds='$CC -shared${allow_undefined_flag} $predep_objects $libobjs $deplibs $postdep_objects $linker_flags ${wl}-soname $soname `test -n "$verstring" && echo ${wl}-set_version $verstring` -update_registry ${objdir}/so_locations -o $lib'

        hardcode_libdir_flag_spec='${wl}-rpath ${wl}$libdir'
        hardcode_libdir_separator=:

        # Commands to make compiler produce verbose output that lists
        # what "hidden" libraries, object files and flags are used when
        # linking a shared library.
        #
        # There doesn't appear to be a way to prevent this compiler from
        # explicitly linking system object files so we need to strip them
        # from the output so that they don't get included in the library
        # dependencies.
        output_verbose_link_cmds='templist=`$CC -shared $CFLAGS -v conftest.$objext 2>&1 | grep "ld" | grep -v "ld:"`; templist=`echo $templist | sed "s/\(^.*ld.*\)\( .*ld.*$\)/\1/"`; list=""; for z in $templist; do case $z in conftest.$objext) list="$list $z";; *.$objext);; *) list="$list $z";;esac; done; echo $list'
        ;;
      *)
        # FIXME: insert proper C++ library support
        ld_shlibs=no
        ;;
    esac
    ;;
  osf4* | osf5*)
    if test "$with_gcc" = yes && test "$with_gnu_ld" = no; then
      allow_undefined_flag=' ${wl}-expect_unresolved ${wl}\*'
      archive_cmds='$CC -shared -nostdlib ${allow_undefined_flag} $predep_objects $libobjs $deplibs $postdep_objects $compiler_flags ${wl}-msym ${wl}-soname ${wl}$soname `test -n "$verstring" && echo ${wl}-set_version ${wl}$verstring` ${wl}-update_registry ${wl}${objdir}/so_locations -o $lib'

      hardcode_libdir_flag_spec='${wl}-rpath ${wl}$libdir'
      hardcode_libdir_separator=:

      # Commands to make compiler produce verbose output that lists
      # what "hidden" libraries, object files and flags are used when
      # linking a shared library.
      output_verbose_link_cmds='$CC -shared $CFLAGS -v conftest.$objext 2>&1 | egrep "\-L"'
    fi

    case "$cc_basename" in
      KCC)
        # Kuck and Associates, Inc. (KAI) C++ Compiler

        # KCC will only create a shared library if the output file
        # ends with ".so" (or ".sl" for HP-UX), so rename the library
        # to its proper name (with version) after linking.
        archive_cmds='templib=`echo $lib | sed -e "s/\.so\..*/\.so/"`; $CC $predep_objects $libobjs $deplibs $postdep_objects $linker_flags --soname $soname -o \$templib; mv \$templib $lib'

        hardcode_libdir_flag_spec='${wl}-rpath,$libdir'
        hardcode_libdir_separator=:

	# Archives containing C++ object files must be created using
	# the KAI C++ compiler.
        old_archive_cmds='$CC -o $oldlib $oldobjs'
        ;;
      RCC)
        # Rational C++ 2.4.1
        # FIXME: insert proper C++ library support
        ld_shlibs=no
        ;;
      cxx)
        allow_undefined_flag=' ${wl}-expect_unresolved ${wl}\*'
        archive_cmds='$CC -shared${allow_undefined_flag} $predep_objects $libobjs $deplibs $postdep_objects $linker_flags ${wl}-msym ${wl}-soname $soname `test -n "$verstring" && echo ${wl}-set_version $verstring` -update_registry ${objdir}/so_locations -o $lib'
        
        hardcode_libdir_flag_spec='${wl}-rpath ${wl}$libdir'
        hardcode_libdir_separator=:

        # Commands to make compiler produce verbose output that lists
        # what "hidden" libraries, object files and flags are used when
        # linking a shared library.
        #
        # There doesn't appear to be a way to prevent this compiler from
        # explicitly linking system object files so we need to strip them
        # from the output so that they don't get included in the library
        # dependencies.
        output_verbose_link_cmds='templist=`$CC -shared $CFLAGS -v conftest.$objext 2>&1 | grep "ld" | grep -v "ld:"`; templist=`echo $templist | sed "s/\(^.*ld.*\)\( .*ld.*$\)/\1/"`; list=""; for z in $templist; do case $z in conftest.$objext) list="$list $z";; *.$objext);; *) list="$list $z";;esac; done; echo $list'
        ;;
      *)
        # FIXME: insert proper C++ library support
        ld_shlibs=no
        ;;
    esac
    ;;
  psos*)
    # FIXME: insert proper C++ library support
    ld_shlibs=no
    ;;
  sco*)
    case "$cc_basename" in
      CC)
        # FIXME: insert proper C++ library support
        ld_shlibs=no
        ;;
      *)
        # FIXME: insert proper C++ library support
        ld_shlibs=no
        ;;
    esac
    ;;
  sunos4*)
    case "$cc_basename" in
      CC)
        # Sun C++ 4.x
        # FIXME: insert proper C++ library support
        ld_shlibs=no
        ;;
      lcc)
        # Lucid
        # FIXME: insert proper C++ library support
        ld_shlibs=no
        ;;
      *)
        # FIXME: insert proper C++ library support
        ld_shlibs=no
        ;;
    esac
    ;;
  solaris*)
    case "$cc_basename" in
      CC)
	# Sun C++ 4.2, 5.x and Centerline C++
        no_undefined_flag=' -ztext'
        archive_cmds='$CC -G${allow_undefined_flag} -nolib -h$soname -o $lib $predep_objects $libobjs $deplibs $postdep_objects $linker_flags'
        archive_expsym_cmds='$echo "{ global:" > $lib.exp~cat $export_symbols | sed -e "s/\(.*\)/\1;/" >> $lib.exp~$echo "local: *; };" >> $lib.exp~
        $CC -G${allow_undefined_flag} -nolib ${wl}-M ${wl}$lib.exp -h$soname -o $lib $predep_objects $libobjs $deplibs $postdep_objects $linker_flags~$rm $lib.exp'

        hardcode_libdir_flag_spec='-R$libdir'
        hardcode_shlibpath_var=no
        case "$host_os" in
          solaris2.[0-5] | solaris2.[0-5].*) ;;
          *)
            # The C++ compiler is used as linker so we must use $wl
            # flag to pass the commands to the underlying system
            # linker.
            # Supported since Solaris 2.6 (maybe 2.5.1?)
            whole_archive_flag_spec='${wl}-z ${wl}allextract$convenience ${wl}-z ${wl}defaultextract'
            ;;
        esac
        link_all_deplibs=yes

        # Commands to make compiler produce verbose output that lists
        # what "hidden" libraries, object files and flags are used when
        # linking a shared library.
        #
        # There doesn't appear to be a way to prevent this compiler from
        # explicitly linking system object files so we need to strip them
        # from the output so that they don't get included in the library
        # dependencies.
        output_verbose_link_cmds='templist=`$CC -G $CFLAGS -v conftest.$objext 2>&1 | egrep "\-R|\-L"`; list=""; for z in $templist; do case $z in conftest.$objext) list="$list $z";; *.$objext);; *) list="$list $z";;esac; done; echo $list'

	# Archives containing C++ object files must be created using
	# "CC -xar", where "CC" is the Sun C++ compiler.  This is
        # necessary to make sure instantiated templates are included
        # in the archive.
        old_archive_cmds='$CC -xar -o $oldlib $oldobjs'
        ;;
      gcx)
        # Green Hills C++ Compiler
        archive_cmds='$CC -shared $predep_objects $libobjs $deplibs $postdep_objects $linker_flags ${wl}-h $wl$soname -o $lib'

        # The C++ compiler must be used to create the archive.
        old_archive_cmds='$CC $LDFLAGS -archive -o $oldlib $oldobjs'
        ;;
      *)
        # GNU C++ compiler with Solaris linker
        if test "$with_gcc" = yes && test "$with_gnu_ld" = no; then
          if $CC --version | egrep -v '^2\.7' > /dev/null; then
            archive_cmds='$LD -shared -nostdlib $LDFLAGS $predep_objects $libobjs $deplibs $postdep_objects $linker_flags ${wl}-h $wl$soname -o $lib'
            archive_expsym_cmds='$echo "{ global:" > $lib.exp~cat $export_symbols | sed -e "s/\(.*\)/\1;/" >> $lib.exp~$echo "local: *; };" >> $lib.exp~
		$LD -shared -nostdlib ${wl}-M $wl$lib.exp -o $lib $predep_objects $libobjs $deplibs $postdep_objects $linker_flags~$rm $lib.exp'

            # Commands to make compiler produce verbose output that lists
            # what "hidden" libraries, object files and flags are used when
            # linking a shared library.
            output_verbose_link_cmds="$CC -shared $CFLAGS -v conftest.$objext 2>&1 | egrep \"\-L\""
          else
            # g++ 2.7 appears to require `-G' NOT `-shared' on this
            # platform.
            archive_cmds='$LD -G -nostdlib $LDFLAGS $predep_objects $libobjs $deplibs $postdep_objects $linker_flags ${wl}-h $wl$soname -o $lib'
            archive_expsym_cmds='$echo "{ global:" > $lib.exp~cat $export_symbols | sed -e "s/\(.*\)/\1;/" >> $lib.exp~$echo "local: *; };" >> $lib.exp~
		$LD -G -nostdlib ${wl}-M $wl$lib.exp -o $lib $predep_objects $libobjs $deplibs $postdep_objects $linker_flags~$rm $lib.exp'

            # Commands to make compiler produce verbose output that lists
            # what "hidden" libraries, object files and flags are used when
            # linking a shared library.
            output_verbose_link_cmds="$CC -G $CFLAGS -v conftest.$objext 2>&1 | egrep \"\-L\""
          fi

          hardcode_libdir_flag_spec='${wl}-R $wl$libdir'
        fi
        ;;
    esac   
    ;;
  tandem*)
    case "$cc_basename" in
      NCC)
        # NonStop-UX NCC 3.20
        # FIXME: insert proper C++ library support
        ld_shlibs=no
        ;;
      *)
        # FIXME: insert proper C++ library support
        ld_shlibs=no
        ;;
    esac   
    ;;
  unixware*)
    # FIXME: insert proper C++ library support
    ld_shlibs=no
    ;;
  vxworks*)
    # FIXME: insert proper C++ library support
    ld_shlibs=no
    ;;
  *)
    # FIXME: insert proper C++ library support
    ld_shlibs=no
    ;;
esac


## Compiler Characteristics: PIC flags, static flags, etc

# We don't use cached values here since only the C compiler
# characteristics should be cached.
ac_cv_prog_cc_pic=
ac_cv_prog_cc_shlib=
ac_cv_prog_cc_wl=
ac_cv_prog_cc_static=
ac_cv_prog_cc_no_builtin=
ac_cv_prog_cc_can_build_shared=$can_build_shared

# It is not enough to reset these cached values, they must be unset.
unset ac_cv_prog_cc_pic_works
unset ac_cv_prog_cc_static_works

if test "$with_gcc" = yes; then
  ac_cv_prog_cc_wl='-Wl,'
  ac_cv_prog_cc_static='-static'

  case "$host_os" in
  beos* | irix5* | irix6* | osf3* | osf4* | osf5*)
    # PIC is the default for these OSes.
    ;;
  aix*)
    # Below there is a dirty hack to force normal static linking with -ldl
    # The problem is because libdl dynamically linked with both libc and
    # libC (AIX C++ library), which obviously doesn't included in libraries
    # list by gcc. This cause undefined symbols with -static flags.
    # This hack allows C programs to be linked with "-static -ldl", but
    # we not sure about C++ programs.
    ac_cv_prog_cc_static="$ac_cv_prog_cc_static ${ac_cv_prog_cc_wl}-lC"
    ;;
  cygwin* | mingw* | os2*)
    # This hack is so that the source file can tell whether it is being
    # built for inclusion in a dll (and should export symbols for example).
    ac_cv_prog_cc_pic='-DDLL_EXPORT'
    ;;
  amigaos*)
    # FIXME: we need at least 68020 code to build shared libraries, but
    # adding the `-m68020' flag to GCC prevents building anything better,
    # like `-m68040'.
    ac_cv_prog_cc_pic='-m68020 -resident32 -malways-restore-a4'
    ;;
  sysv4*MP*)
    if test -d /usr/nec; then
      ac_cv_prog_cc_pic=-Kconform_pic
    fi
    ;;
  *)
    ac_cv_prog_cc_pic='-fPIC'
    ;;
  esac
else
  case "$host_os" in
    aix4*)
      # All AIX code is PIC.
      ;;
    chorus*)
      case "$cc_basename" in
      cxch68)
        # Green Hills C++ Compiler
        # ac_cv_prog_cc_static="--no_auto_instantiation -u __main -u __premain -u _abort -r $COOL_DIR/lib/libOrb.a $MVME_DIR/lib/CC/libC.a $MVME_DIR/lib/classix/libcx.s.a"
        ;;
      esac 
      ;;
    dgux*)
      case "$cc_basename" in
        ec++)
          ac_cv_prog_cc_pic='-KPIC'
          ;;
        ghcx)
          # Green Hills C++ Compiler
          ac_cv_prog_cc_pic='-pic'
          ;;
        *)
          ;;
      esac
      ;;
    freebsd*)
      # FreeBSD uses GNU C++
      ;;
    hpux9* | hpux10* | hpux11*)
      case "$cc_basename" in
        CC)
          ac_cv_prog_cc_wl='-Wl,'
          ac_cv_prog_cc_static="${ac_cv_prog_cc_wl}-a ${ac_cv_prog_cc_wl}archive"
          ac_cv_prog_cc_pic='+Z'
          ;;
        aCC)
          ac_cv_prog_cc_wl='-Wl,'
          ac_cv_prog_cc_static="${ac_cv_prog_cc_wl}-a ${ac_cv_prog_cc_wl}archive"
          ac_cv_prog_cc_pic='+Z'
          ;;
        *)
          ;;
      esac
      ;;
    irix5* | irix6*)
      case "$cc_basename" in
        CC)
          ac_cv_prog_cc_wl='-Wl,'
          ac_cv_prog_cc_static='-non_shared'
          ac_cv_prog_cc_pic='-KPIC'
          ;;
        *)
          ;;
      esac
      ;;
    linux*)
      case "$cc_basename" in
        KCC)
          # KAI C++ Compiler
          ac_cv_prog_cc_wl='--backend -Wl,'
          ac_cv_prog_cc_pic='-fPIC'
          ;;
        cxx)
          # Compaq C++
          # Make sure the PIC flag is empty.  It appears that all Alpha
          # Linux and Compaq Tru64 Unix objects are PIC.
          ac_cv_prog_cc_pic=
          ac_cv_prog_cc_static='-non_shared'
          ;;
        *)
          ;;
      esac
      ;;
    lynxos*)
      ;;
    m88k*)
      ;;
    mvs*)
      case "$cc_basename" in
        cxx)
          ac_cv_prog_cc_pic='-W c,exportall'
          ;;
        *)
          ;;
      esac   
      ;;
    netbsd*)
      ;;
    osf3* | osf4* | osf5*)
      case "$cc_basename" in
        KCC)
          ac_cv_prog_cc_wl='--backend -Wl,'
          ;;
        RCC)
          # Rational C++ 2.4.1
          ac_cv_prog_cc_pic='-pic'
          ;;
        cxx)
          # Digital/Compaq C++
          ac_cv_prog_cc_wl='-Wl,'
          # Make sure the PIC flag is empty.  It appears that all Alpha
          # Linux and Compaq Tru64 Unix objects are PIC.
          ac_cv_prog_cc_pic=
          ac_cv_prog_cc_static='-non_shared'
          ;;
        *)
          ;;
      esac
      ;;
    psos*)
      ;;
    sco*)
      case "$cc_basename" in
        CC)
          ac_cv_prog_cc_pic='-fPIC'
          ;;
        *)
          ;;
      esac
      ;;
    solaris*)
      case "$cc_basename" in
        CC)
          # Sun C++ 4.2, 5.x and Centerline C++
          ac_cv_prog_cc_pic='-KPIC'
          ac_cv_prog_cc_static='-Bstatic'
          ac_cv_prog_cc_wl='-Qoption ld '
          ;;
        gcx)
          # Green Hills C++ Compiler
          ac_cv_prog_cc_pic='-PIC'
          ;;
        *)
          ;;
      esac   
      ;;
    sunos4*)
      case "$cc_basename" in
        CC)
          # Sun C++ 4.x
          ac_cv_prog_cc_pic='-pic'
          ac_cv_prog_cc_static='-Bstatic'
          ;;
        lcc)
          # Lucid
          ac_cv_prog_cc_pic='-pic'
          ;;
        *)
          ;;
      esac
      ;;
    tandem*)
      case "$cc_basename" in
        NCC)
          # NonStop-UX NCC 3.20
          ac_cv_prog_cc_pic='-KPIC'
          ;;
        *)
          ;;
      esac   
      ;;
    unixware*)
      ;;
    vxworks*)
      ;;
    *)
      ac_cv_prog_cc_can_build_shared=no
      ;;
  esac
fi
ac_cv_prog_cc_pic="$ac_cv_prog_cc_pic -DPIC"


# Figure out "hidden" C++ library dependencies from verbose
# compiler output whening linking a shared library.
cat > conftest.$ac_ext <<EOF
class Foo
{
public:
  Foo (void) { a = 0; }
private:
  int a;
};
EOF


if eval $ac_compile 2>&5; then
  # Parse the compiler output and extract the necessary
  # objects, libraries and library flags.

  # Sentinel used to keep track of whether or not we are before
  # the conftest object file.
  pre_test_object_deps_done=no

  for p in `eval $output_verbose_link_cmds`; do

    case $p in

    -L* | -R* | -l*)
       # Some compilers place space between "-{L,R}" and the path.
       # Remove the space.
       if test $p = "-L" \
          || test $p = "-R"; then
         prev=$p
         continue
       else
         prev=
       fi

       if test "$pre_test_object_deps_done" = no; then
         case $p in
	 -L* | -R*)
	   # Internal compiler library paths should come after those
	   # provided the user.  The postdeps already come after the
	   # user supplied libs so there is no need to process them.
           if test -z "$compiler_lib_search_path"; then
             compiler_lib_search_path="${prev}${p}"
           else
             compiler_lib_search_path="${compiler_lib_search_path} ${prev}${p}"
           fi
           ;;
         # The "-l" case would never come before the object being
         # linked, so don't bother handling this case.
         esac
       else
         if test -z "$postdeps"; then
           postdeps="${prev}${p}"
         else
           postdeps="${postdeps} ${prev}${p}"
         fi
       fi
       ;;

    *.$objext)
       # This assumes that the test object file only shows up
       # once in the compiler output.
       if test "$p" = "conftest.$objext"; then
         pre_test_object_deps_done=yes
         continue
       fi

       if test "$pre_test_object_deps_done" = no; then
         if test -z "$predep_objects"; then
           predep_objects="$p"
         else
           predep_objects="$predep_objects $p"
         fi
       else
         if test -z "$postdep_objects"; then
           postdep_objects="$p"
         else
           postdep_objects="$postdep_objects $p"
         fi
       fi
       ;;

    *) ;; # Ignore the rest.

    esac
  done

  # Clean up.
  rm -f a.out
else
  echo "ltcf-cxx.sh: error: problem compiling test program"
fi

$rm -f confest.$objext

need_lc=yes
if test "$enable_shared" = yes && test "$with_gcc" = yes; then
  case "$archive_cmds" in
  *'~'*)
    # FIXME: we may have to deal with multi-command sequences.
    ;;
  '$CC '*)
    # Test whether the compiler implicitly links with -lc since on some
    # systems, -lgcc has to come before -lc. If gcc already passes -lc
    # to ld, don't add -lc before -lgcc.
    echo $ac_n "checking whether -lc is implicitly linked in... $ac_c" 1>&6
    if eval "test \"`echo '$''{'ac_cv_cxx_archive_cmds_needs_lc'+set}'`\" = set"; then
      echo $ac_n "(cached) $ac_c" 1>&6
      need_lc=$ac_cv_cxx_archive_cmds_needs_lc
    else
      $rm conftest*
      echo "static int dummy;" > conftest.$ac_ext
      if { (eval echo $progname:@LINENO@: \"$ac_compile\") 1>&5; (eval $ac_compile) 2>conftest.err; }; then
	# Append any warnings to the config.log.
	cat conftest.err 1>&5

	soname=conftest
	lib=conftest
	libobjs=conftest.o
	deplibs=
	compiler_flags=-v
	linker_flags=-v
	verstring=
	output_objdir=.
	libname=conftest
	allow_undefined_flag=
	if { (eval echo $progname:@LINENO@: \"$archive_cmds\") 1>&5; (eval $archive_cmds) 2>&1 | grep " -lc " 1>&5 ; }; then
	  need_lc=no
	fi
      else
	cat conftest.err 1>&5
      fi
    fi
    $rm conftest*
    echo "$ac_t$need_lc" 1>&6
    ;;
  esac
fi
ac_cv_cxx_archive_cmds_needs_lc=$need_lc
