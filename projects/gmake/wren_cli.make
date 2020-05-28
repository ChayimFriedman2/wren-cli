# Alternative GNU Make project makefile autogenerated by Premake

ifndef config
  config=release_64bit
endif

ifndef verbose
  SILENT = @
endif

.PHONY: clean prebuild

SHELLTYPE := posix
ifeq (.exe,$(findstring .exe,$(ComSpec)))
	SHELLTYPE := msdos
endif

# Configurations
# #############################################

RESCOMP = windres
INCLUDES += -I../../src/cli -I../../src/module -I../../deps/wren/include -I../../deps/wren/src/vm -I../../deps/wren/src/optional -I../../deps/libuv/include -I../../deps/libuv/src
FORCE_INCLUDE +=
ALL_CPPFLAGS += $(CPPFLAGS) -MMD -MP $(DEFINES) $(INCLUDES)
ALL_RESFLAGS += $(RESFLAGS) $(DEFINES) $(INCLUDES)
LIBS += -lpthread -ldl -lm
LDDEPS +=
LINKCMD = $(CC) -o "$@" $(OBJECTS) $(RESOURCES) $(ALL_LDFLAGS) $(LIBS)
define PREBUILDCMDS
endef
define PRELINKCMDS
endef
define POSTBUILDCMDS
endef

ifeq ($(config),release_64bit)
TARGETDIR = ../../bin
TARGET = $(TARGETDIR)/wren_cli
OBJDIR = obj/64bit/Release
DEFINES += -DNDEBUG -D_GNU_SOURCE
ALL_CFLAGS += $(CFLAGS) $(ALL_CPPFLAGS) -m64 -O3 -std=c99
ALL_CXXFLAGS += $(CXXFLAGS) $(ALL_CPPFLAGS) -m64 -O3
ALL_LDFLAGS += $(LDFLAGS) -L/usr/lib64 -m64 -s

else ifeq ($(config),release_32bit)
TARGETDIR = ../../bin
TARGET = $(TARGETDIR)/wren_cli
OBJDIR = obj/32bit/Release
DEFINES += -DNDEBUG -D_GNU_SOURCE
ALL_CFLAGS += $(CFLAGS) $(ALL_CPPFLAGS) -m32 -O3 -std=c99
ALL_CXXFLAGS += $(CXXFLAGS) $(ALL_CPPFLAGS) -m32 -O3
ALL_LDFLAGS += $(LDFLAGS) -L/usr/lib32 -m32 -s

else ifeq ($(config),release_64bit-no-nan-tagging)
TARGETDIR = ../../bin
TARGET = $(TARGETDIR)/wren_cli
OBJDIR = obj/64bit-no-nan-tagging/Release
DEFINES += -DNDEBUG -DWREN_NAN_TAGGING=0 -D_GNU_SOURCE
ALL_CFLAGS += $(CFLAGS) $(ALL_CPPFLAGS) -O3 -std=c99
ALL_CXXFLAGS += $(CXXFLAGS) $(ALL_CPPFLAGS) -O3
ALL_LDFLAGS += $(LDFLAGS) -s

else ifeq ($(config),debug_64bit)
TARGETDIR = ../../bin
TARGET = $(TARGETDIR)/wren_cli_d
OBJDIR = obj/64bit/Debug
DEFINES += -DDEBUG -D_GNU_SOURCE
ALL_CFLAGS += $(CFLAGS) $(ALL_CPPFLAGS) -m64 -g -std=c99
ALL_CXXFLAGS += $(CXXFLAGS) $(ALL_CPPFLAGS) -m64 -g
ALL_LDFLAGS += $(LDFLAGS) -L/usr/lib64 -m64

else ifeq ($(config),debug_32bit)
TARGETDIR = ../../bin
TARGET = $(TARGETDIR)/wren_cli_d
OBJDIR = obj/32bit/Debug
DEFINES += -DDEBUG -D_GNU_SOURCE
ALL_CFLAGS += $(CFLAGS) $(ALL_CPPFLAGS) -m32 -g -std=c99
ALL_CXXFLAGS += $(CXXFLAGS) $(ALL_CPPFLAGS) -m32 -g
ALL_LDFLAGS += $(LDFLAGS) -L/usr/lib32 -m32

else ifeq ($(config),debug_64bit-no-nan-tagging)
TARGETDIR = ../../bin
TARGET = $(TARGETDIR)/wren_cli_d
OBJDIR = obj/64bit-no-nan-tagging/Debug
DEFINES += -DDEBUG -DWREN_NAN_TAGGING=0 -D_GNU_SOURCE
ALL_CFLAGS += $(CFLAGS) $(ALL_CPPFLAGS) -g -std=c99
ALL_CXXFLAGS += $(CXXFLAGS) $(ALL_CPPFLAGS) -g
ALL_LDFLAGS += $(LDFLAGS)

else
  $(error "invalid configuration $(config)")
endif

# Per File Configurations
# #############################################


# File sets
# #############################################

OBJECTS :=

OBJECTS += $(OBJDIR)/async.o
OBJECTS += $(OBJDIR)/core.o
OBJECTS += $(OBJDIR)/dl.o
OBJECTS += $(OBJDIR)/fs-poll.o
OBJECTS += $(OBJDIR)/fs.o
OBJECTS += $(OBJDIR)/getaddrinfo.o
OBJECTS += $(OBJDIR)/getnameinfo.o
OBJECTS += $(OBJDIR)/idna.o
OBJECTS += $(OBJDIR)/inet.o
OBJECTS += $(OBJDIR)/io.o
OBJECTS += $(OBJDIR)/linux-core.o
OBJECTS += $(OBJDIR)/linux-inotify.o
OBJECTS += $(OBJDIR)/linux-syscalls.o
OBJECTS += $(OBJDIR)/loop-watcher.o
OBJECTS += $(OBJDIR)/loop.o
OBJECTS += $(OBJDIR)/main.o
OBJECTS += $(OBJDIR)/modules.o
OBJECTS += $(OBJDIR)/os.o
OBJECTS += $(OBJDIR)/path.o
OBJECTS += $(OBJDIR)/pipe.o
OBJECTS += $(OBJDIR)/poll.o
OBJECTS += $(OBJDIR)/process.o
OBJECTS += $(OBJDIR)/procfs-exepath.o
OBJECTS += $(OBJDIR)/proctitle.o
OBJECTS += $(OBJDIR)/random-devurandom.o
OBJECTS += $(OBJDIR)/random-getrandom.o
OBJECTS += $(OBJDIR)/random-sysctl-linux.o
OBJECTS += $(OBJDIR)/random.o
OBJECTS += $(OBJDIR)/repl.o
OBJECTS += $(OBJDIR)/scheduler.o
OBJECTS += $(OBJDIR)/signal.o
OBJECTS += $(OBJDIR)/stream.o
OBJECTS += $(OBJDIR)/strscpy.o
OBJECTS += $(OBJDIR)/sysinfo-loadavg.o
OBJECTS += $(OBJDIR)/tcp.o
OBJECTS += $(OBJDIR)/thread.o
OBJECTS += $(OBJDIR)/threadpool.o
OBJECTS += $(OBJDIR)/timer.o
OBJECTS += $(OBJDIR)/timer1.o
OBJECTS += $(OBJDIR)/tty.o
OBJECTS += $(OBJDIR)/udp.o
OBJECTS += $(OBJDIR)/uv-common.o
OBJECTS += $(OBJDIR)/uv-data-getter-setters.o
OBJECTS += $(OBJDIR)/version.o
OBJECTS += $(OBJDIR)/vm.o
OBJECTS += $(OBJDIR)/wren_compiler.o
OBJECTS += $(OBJDIR)/wren_core.o
OBJECTS += $(OBJDIR)/wren_debug.o
OBJECTS += $(OBJDIR)/wren_opt_meta.o
OBJECTS += $(OBJDIR)/wren_opt_random.o
OBJECTS += $(OBJDIR)/wren_primitive.o
OBJECTS += $(OBJDIR)/wren_utils.o
OBJECTS += $(OBJDIR)/wren_value.o
OBJECTS += $(OBJDIR)/wren_vm.o

# Rules
# #############################################

all: $(TARGET)
	@:

$(TARGET): $(OBJECTS) $(LDDEPS) | $(TARGETDIR)
	$(PRELINKCMDS)
	@echo Linking wren_cli
	$(SILENT) $(LINKCMD)
	$(POSTBUILDCMDS)

$(TARGETDIR):
	@echo Creating $(TARGETDIR)
ifeq (posix,$(SHELLTYPE))
	$(SILENT) mkdir -p $(TARGETDIR)
else
	$(SILENT) mkdir $(subst /,\\,$(TARGETDIR))
endif

$(OBJDIR):
	@echo Creating $(OBJDIR)
ifeq (posix,$(SHELLTYPE))
	$(SILENT) mkdir -p $(OBJDIR)
else
	$(SILENT) mkdir $(subst /,\\,$(OBJDIR))
endif

clean:
	@echo Cleaning wren_cli
ifeq (posix,$(SHELLTYPE))
	$(SILENT) rm -f  $(TARGET)
	$(SILENT) rm -rf $(OBJDIR)
else
	$(SILENT) if exist $(subst /,\\,$(TARGET)) del $(subst /,\\,$(TARGET))
	$(SILENT) if exist $(subst /,\\,$(OBJDIR)) rmdir /s /q $(subst /,\\,$(OBJDIR))
endif

prebuild: | $(OBJDIR)
	$(PREBUILDCMDS)

ifneq (,$(PCH))
$(OBJECTS): $(GCH) | $(PCH_PLACEHOLDER)
$(GCH): $(PCH) | prebuild
	@echo $(notdir $<)
	$(SILENT) $(CC) -x c-header $(ALL_CFLAGS) -o "$@" -MF "$(@:%.gch=%.d)" -c "$<"
$(PCH_PLACEHOLDER): $(GCH) | $(OBJDIR)
ifeq (posix,$(SHELLTYPE))
	$(SILENT) touch "$@"
else
	$(SILENT) echo $null >> "$@"
endif
else
$(OBJECTS): | prebuild
endif


# File Rules
# #############################################

$(OBJDIR)/fs-poll.o: ../../deps/libuv/src/fs-poll.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/idna.o: ../../deps/libuv/src/idna.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/inet.o: ../../deps/libuv/src/inet.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/random.o: ../../deps/libuv/src/random.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/strscpy.o: ../../deps/libuv/src/strscpy.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/threadpool.o: ../../deps/libuv/src/threadpool.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/timer.o: ../../deps/libuv/src/timer.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/async.o: ../../deps/libuv/src/unix/async.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/core.o: ../../deps/libuv/src/unix/core.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/dl.o: ../../deps/libuv/src/unix/dl.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/fs.o: ../../deps/libuv/src/unix/fs.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/getaddrinfo.o: ../../deps/libuv/src/unix/getaddrinfo.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/getnameinfo.o: ../../deps/libuv/src/unix/getnameinfo.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/linux-core.o: ../../deps/libuv/src/unix/linux-core.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/linux-inotify.o: ../../deps/libuv/src/unix/linux-inotify.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/linux-syscalls.o: ../../deps/libuv/src/unix/linux-syscalls.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/loop-watcher.o: ../../deps/libuv/src/unix/loop-watcher.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/loop.o: ../../deps/libuv/src/unix/loop.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/pipe.o: ../../deps/libuv/src/unix/pipe.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/poll.o: ../../deps/libuv/src/unix/poll.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/process.o: ../../deps/libuv/src/unix/process.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/procfs-exepath.o: ../../deps/libuv/src/unix/procfs-exepath.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/proctitle.o: ../../deps/libuv/src/unix/proctitle.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/random-devurandom.o: ../../deps/libuv/src/unix/random-devurandom.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/random-getrandom.o: ../../deps/libuv/src/unix/random-getrandom.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/random-sysctl-linux.o: ../../deps/libuv/src/unix/random-sysctl-linux.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/signal.o: ../../deps/libuv/src/unix/signal.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/stream.o: ../../deps/libuv/src/unix/stream.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/sysinfo-loadavg.o: ../../deps/libuv/src/unix/sysinfo-loadavg.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/tcp.o: ../../deps/libuv/src/unix/tcp.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/thread.o: ../../deps/libuv/src/unix/thread.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/tty.o: ../../deps/libuv/src/unix/tty.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/udp.o: ../../deps/libuv/src/unix/udp.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/uv-common.o: ../../deps/libuv/src/uv-common.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/uv-data-getter-setters.o: ../../deps/libuv/src/uv-data-getter-setters.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/version.o: ../../deps/libuv/src/version.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/wren_opt_meta.o: ../../deps/wren/src/optional/wren_opt_meta.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/wren_opt_random.o: ../../deps/wren/src/optional/wren_opt_random.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/wren_compiler.o: ../../deps/wren/src/vm/wren_compiler.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/wren_core.o: ../../deps/wren/src/vm/wren_core.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/wren_debug.o: ../../deps/wren/src/vm/wren_debug.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/wren_primitive.o: ../../deps/wren/src/vm/wren_primitive.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/wren_utils.o: ../../deps/wren/src/vm/wren_utils.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/wren_value.o: ../../deps/wren/src/vm/wren_value.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/wren_vm.o: ../../deps/wren/src/vm/wren_vm.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/main.o: ../../src/cli/main.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/modules.o: ../../src/cli/modules.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/path.o: ../../src/cli/path.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/vm.o: ../../src/cli/vm.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/io.o: ../../src/module/io.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/os.o: ../../src/module/os.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/repl.o: ../../src/module/repl.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/scheduler.o: ../../src/module/scheduler.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"
$(OBJDIR)/timer1.o: ../../src/module/timer.c
	@echo $(notdir $<)
	$(SILENT) $(CC) $(ALL_CFLAGS) $(FORCE_INCLUDE) -o "$@" -MF "$(@:%.o=%.d)" -c "$<"

-include $(OBJECTS:%.o=%.d)
ifneq (,$(PCH))
  -include $(PCH_PLACEHOLDER).d
endif