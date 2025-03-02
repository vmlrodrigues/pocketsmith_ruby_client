# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [1.1.0] - 2024-03-20

### Changed
- Modified `accounts_id_transactions_get` to automatically handle pagination. The method now returns all transactions across all pages instead of requiring manual pagination handling.
- Removed the `page` parameter from the public API as pagination is now handled internally.
- Improved error handling for pagination to gracefully handle "out of bounds" responses.

## [1.0.0] - Initial Release

### Added
- Initial release of the PocketSmith Ruby Client
- Basic API functionality for interacting with the PocketSmith API 