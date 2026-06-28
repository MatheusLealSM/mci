
# MCI v0.2 Proposal

This package is a reviewed project snapshot.

## Goals
- Stable bootstrap
- Absolute path loading
- Single source of truth for VERSION
- Libraries without side effects
- Standard API:
  - logger_init
  - environment_init
  - validation_init
  - package_*
  - service_*
  - runner_run

## Directory layout

core/
lib/
modules/
tests/
docs/

## Next priorities

1. Fix path resolution using MCI_ROOT.
2. Finish packages library.
3. Implement services library.
4. Implement runner.
5. Add tests.
6. Implement first module: Nextcloud.

