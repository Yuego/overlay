/* config.h.  Generated from config.h.in by configure.  */
/* config.h.in.  Generated from configure.ac by autoheader.  */

/* Define if building universal (internal helper macro) */
/* #undef AC_APPLE_UNIVERSAL_BUILD */

/* Define as 1 to enable ALSA-raw midi (linux) */
#define ALSA_RAW_MIDI 1

/* Define as 1 to enable ALSA sequencer (linux) */
#define ALSA_SEQ_MIDI 1

/* errors in the resource config file only result in a warning message instead
   of forcing xjadeo to exit. */
#define CFG_WARN_ONLY 1

/* enable XV and imlib2 color equalizer */
#define COLOREQ 1

/* Define to one of `_getb67', `GETB67', `getb67' for Cray-2 and Cray-YMP
   systems. This function is required for `alloca.c' support on those systems.
   */
/* #undef CRAY_STACKSEG_END */

/* enable frame cropping */
/* #undef CROPIMG */

/* Define to 1 if using `alloca.c'. */
/* #undef C_ALLOCA */

/* enable xjadeo x11/glx drag and drop */
#define DND 1

/* paint a X on screen when unable to decode or display a frame. */
#define DRAW_CROSS 1

/* Define to 1 if you have `alloca', as a function or macro. */
#define HAVE_ALLOCA 1

/* Define to 1 if you have <alloca.h> and it should be used (not on Ultrix).
   */
#define HAVE_ALLOCA_H 1

/* Define to 1 if you have the <alsa/asoundlib.h> header file. */
#define HAVE_ALSA_ASOUNDLIB_H 1

/* Have FreeType2 include files */
#define HAVE_FREETYPE_H 1

/* Use freetype for OSD */
#define HAVE_FT 1

/* Define to enable openGL (win,osx,linux) */
#define HAVE_GL 1

/* Video Output: plain old imlib2 (linux) */
#define HAVE_IMLIB2 1

/* Define to 1 if you have the <inttypes.h> header file. */
#define HAVE_INTTYPES_H 1

/* Define as 1 if you have IPC message queues (system-V) */
/* #undef HAVE_IPCMSG */

/* Define as 1 to enable JACK-MIDI */
#define HAVE_JACKMIDI 1

/* Define to 1 if you have the <jack/midiport.h> header file. */
#define HAVE_JACK_MIDIPORT_H 1

/* Define to 1 if you have the <jack/session.h> header file. */
#define HAVE_JACK_SESSION_H 1

/* experimental code to use jack_transport fps, jack-svn >= r591 */
/* #undef HAVE_JACK_VIDEO */

/* Define as 1 if you have the loblo OSC library */
#define HAVE_LIBLO 1

/* Video Output: XVideo support (linux) */
#define HAVE_LIBXV 1

/* Define as 1 if you have libltc - http://github.com/x42/libltc */
#define HAVE_LTC 1

/* Define to 1 if you have the <memory.h> header file. */
#define HAVE_MEMORY_H 1

/* general MIDI (MTC) support */
#define HAVE_MIDI 1

/* Define as 1 if you have POSIX message queues (libc, librt) */
#define HAVE_MQ 1

/* Define as 1 to enable the portmidi driver (win,osx) */
#define HAVE_PORTMIDI 1

/* Define to 1 if you have the <portmidi.h> header file. */
#define HAVE_PORTMIDI_H 1

/* Define to 1 if you have the <porttime.h> header file. */
#define HAVE_PORTTIME_H 1

/* Define to 1 if you have the <pthread.h> header file. */
#define HAVE_PTHREAD_H 1

/* Define as 1 if you have the SDL toolkit (win,osx,linux) */
#define HAVE_SDL 1

/* Define to 1 if you have the <stdint.h> header file. */
#define HAVE_STDINT_H 1

/* Define to 1 if you have the <stdlib.h> header file. */
#define HAVE_STDLIB_H 1

/* Define to 1 if you have the <strings.h> header file. */
#define HAVE_STRINGS_H 1

/* Define to 1 if you have the <string.h> header file. */
#define HAVE_STRING_H 1

/* Define to 1 if you have the <sys/ipc.h> header file. */
/* #undef HAVE_SYS_IPC_H */

/* Define to 1 if you have the <sys/msg.h> header file. */
/* #undef HAVE_SYS_MSG_H */

/* Define to 1 if you have the <sys/stat.h> header file. */
#define HAVE_SYS_STAT_H 1

/* Define to 1 if you have the <sys/types.h> header file. */
#define HAVE_SYS_TYPES_H 1

/* Define to 1 if you have the <time.h> header file. */
#define HAVE_TIME_H 1

/* Define to 1 if you have the <unistd.h> header file. */
#define HAVE_UNISTD_H 1

/* Define to 1 if you have the <X11/Xlib.h> header file. */
#define HAVE_X11_XLIB_H 1

/* Define for RGBA32 imlib2 (not RGB24) */
#define IMLIB2RGBA /**/

/* add JACK Session support */
#define JACK_SESSION 1

/* Define to 1 if `major', `minor', and `makedev' are declared in <mkdev.h>.
   */
/* #undef MAJOR_IN_MKDEV */

/* Define to 1 if `major', `minor', and `makedev' are declared in
   <sysmacros.h>. */
/* #undef MAJOR_IN_SYSMACROS */

/* max length of a remote control line. */
#define MQLEN 512

/* use JACKs new latency API (ltc) */
#define NEW_JACK_LATENCY_API 1

/* Define to 1 if your C compiler doesn't accept -c and -o together. */
/* #undef NO_MINUS_C_MINUS_O */

/* Name of package */
#define PACKAGE "xjadeo"

/* Define to the address where bug reports for this package should be sent. */
#define PACKAGE_BUGREPORT ""

/* Define to the full name of this package. */
#define PACKAGE_NAME ""

/* Define to the full name and version of this package. */
#define PACKAGE_STRING ""

/* Define to the one symbol short name of this package. */
#define PACKAGE_TARNAME ""

/* Define to the home page for this package. */
#define PACKAGE_URL ""

/* Define to the version of this package. */
#define PACKAGE_VERSION ""

/* GNU/Linux version */
#define PLATFORM_LINUX /**/

/* Mac OSX version */
/* #undef PLATFORM_OSX */

/* Windows version */
/* #undef PLATFORM_WINDOWS */

/* The size of `double', as computed by sizeof. */
#define SIZEOF_DOUBLE 8

/* The size of `float', as computed by sizeof. */
#define SIZEOF_FLOAT 4

/* The size of `long', as computed by sizeof. */
#define SIZEOF_LONG 4

/* The size of `unsigned long', as computed by sizeof. */
#define SIZEOF_UNSIGNED_LONG 4

/* If using the C implementation of alloca, define if you know the
   direction of stack growth for your system; otherwise it will be
   automatically deduced at runtime.
	STACK_DIRECTION > 0 => grows toward higher addresses
	STACK_DIRECTION < 0 => grows toward lower addresses
	STACK_DIRECTION = 0 => direction of growth unknown */
/* #undef STACK_DIRECTION */

/* Define to 1 if you have the ANSI C header files. */
#define STDC_HEADERS 1

/* enable dynamic time scaling */
#define TIMEMAP 1

/* Define to 1 if your <sys/time.h> declares `struct tm'. */
/* #undef TM_IN_SYS_TIME */

/* absolute path to truetype default OSD font file */
/* #undef TTFFONTFILE */

/* Version number of package */
#define VERSION "0.8.1"

/* enable xjadeo windows context-menu */
#define WINMENU 1

/* Define WORDS_BIGENDIAN to 1 if your processor stores words with the most
   significant byte first (like Motorola and SPARC, unlike Intel). */
#if defined AC_APPLE_UNIVERSAL_BUILD
# if defined __BIG_ENDIAN__
#  define WORDS_BIGENDIAN 1
# endif
#else
# ifndef WORDS_BIGENDIAN
/* #  undef WORDS_BIGENDIAN */
# endif
#endif

/* enable xjadeo x11/glx context menu */
#define XDLG 1

/* enable xjadeo x11 file browser */
#define XFIB 1

/* Define to empty if `const' does not conform to ANSI C. */
/* #undef const */

/* Define to `unsigned int' if <sys/types.h> does not define. */
/* #undef size_t */
