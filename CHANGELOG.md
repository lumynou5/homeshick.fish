# Changelog
All notable changes to this project will be documented in this file.

## [2.0.0] - 2024-11-06
### Fixed
- Use `$__fish_config_dir` instead of hardcoded path to the configuration
  directory.
### Changed
- Symbolic links for the completion and the function are not created every
  time a new session opened now.
- Installation is not aborted in case that Homeshick was cloned now.

## [1.0.2] - 2024-02-16
### Fixed
- Symbolic links are removed when uninstall now.

## [1.0.1] - 2024-02-16
### Changed
- Uses symbolic links instead of sourcing the scripts to improve
  performance by using Fish's function lazy loading.

## [1.0.0] - 2023-05-19
### Added
- First release.

[2.0.0]: https://github.com/lumynou5/homeshick.fish/releases/tag/v2.0.0
[1.0.2]: https://github.com/lumynou5/homeshick.fish/releases/tag/v1.0.2
[1.0.1]: https://github.com/lumynou5/homeshick.fish/releases/tag/v1.0.1
[1.0.0]: https://github.com/lumynou5/homeshick.fish/releases/tag/v1.0.0
