# Acknowledgment

- There are many terms of and abstracted subdivision in computer software, we'll use the term **Component**.

- We arrange components into _layers_ or _levels_. A _layer_ or _level_ is a classification (or grouping) of a component according to where that component sits between the user and the hardware.

- A **Linux** system has three main levels.

## Hardware
Hardware includes the memory as well as one or more CPU to perform computation and to read from and write memory.

## Kernel
The Kernel (_runs in a kernel mode_) is software residing in memory that tell the CPU what to do. The area that only the kernel can access is called kernel space.

## Processes
_(Run in a user mode)_ The running programs that the kernel manages, called typically _user space_. For example: Web Servers.

User mode in comparission restricts access to a subset of memory. _User space_ refers to the parts of main memory that the user processes can access.

### 1. Hardware
#### Main Memory
##### State
Strictly speaking a state is a particular arrangement of bits. In a more abstract approach: something has done or is doing at the moment. For example, "The process is waiting for input". **Because it’s common to refer to the state in abstract terms rather than to the actual bits, the term image refers to a particular physical arrangement of bits.**

### 2. The Kernel
Why are we talking about main memory and states? Nearly everything that the kernel does revolves around
main memory. One of the kernel’s tasks is to split memory into many subdivisions, and it must maintain certain
state information about those subdivisions at all times. Each process gets its own share of memory, and the
kernel must ensure that each process keeps to its share.
The kernel is in charge of managing tasks in four general system areas:
- **Processes**. The kernel is responsible for determining which processes are allowed to use the CPU.
- **Memory.** The kernel needs to keep track of all memory—what is currently allocated to a particular process,
what might be shared between processes, and what is free.
- **Device drivers.** The kernel acts as an interface between hardware (such as a disk) and processes. It’s
usually the kernel’s job to operate the hardware.
- **System calls and support.** Processes normally use system calls to communicate with the kernel.
We’ll now briefly explore each of these areas.
