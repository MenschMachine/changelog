# README

This is a repository to generate weekly changelogs for the pdfdancer stack.
The repositories we look at are defined in submodules.txt and are linked here as history only repositories.

## Checkout repositories (history only)

```sh
for i in `cat submodules.txt `; do 
  git clone --no-checkout --filter=blob:none $i  `echo $i|sed 's|git.*Machine/\(.*\)\.git|\1|g'`
done
```

## Update repositories

```sh
for i in `cat submodules.txt `; do 
  cd `echo $i|sed 's|git.*Machine/\(.*\)\.git|\1|g'` && git pull && cd ..
done
```