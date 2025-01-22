# Top level makefile, the real shit is at src/Makefile

# 指定默认目标为all，当执行make命令为指定目标时会执行default目标
default: all

# 通配规则，用于所有未在顶层Makefile中明确定义的目标。例如make clean，因为未在顶层makefile定义，那么会执行cd src && make clean
# 切换到src目录下，然后调用make处理$@目标，$@是GNU MAKE的自动变量，表示当前的目标名称
.DEFAULT:
	cd src && $(MAKE) $@

install:
	cd src && $(MAKE) $@

# 声明install为伪目标，
.PHONY: install