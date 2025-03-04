# Changelog

# [1.18.0](https://github.com/lindehoff/addon-open-webui/compare/v1.17.0...v1.18.0) (2025-03-04)


### Features

* enhance Open WebUI add-on configuration 🎉 ([aaf04a8](https://github.com/lindehoff/addon-open-webui/commit/aaf04a87b6bdc372f5192b07278e68c05d812330))

  - Added detailed usage instructions to the README.md for better user guidance.

  - Introduced new configuration options for `port` and `openai_api_key` in config.yaml.

  - Updated the `ingress_port` and `watchdog` settings to use the configured `port`.

  - Ensured compatibility with existing services by allowing port customization.

  This update improves the overall usability and flexibility of the Open WebUI add-on for Home Assistant. 🚀

# [1.17.0](https://github.com/lindehoff/addon-open-webui/compare/v1.16.0...v1.17.0) (2025-03-03)


### Features

* **openui:** update dependency open-webui/open-webui to v0.5.18 ([e94a1a8](https://github.com/lindehoff/addon-open-webui/commit/e94a1a8354e91d79e5543c373adcdc9fa5e7fc4a))

  Release notes:

# [1.16.0](https://github.com/lindehoff/addon-open-webui/compare/v1.15.0...v1.16.0) (2025-02-22)


### Features

* **changelog:** process Renovate release notes in changelog ([e0769c7](https://github.com/lindehoff/addon-open-webui/commit/e0769c73cd9b46bcf984c794c19c50f4e2c17189))

  - Extract release notes from commit bodies using regex pattern

  - Format release notes as indented bullet points in changelog

  - Preserve existing commit body processing for non-Renovate commits

  - Remove markdown list markers from extracted release notes

# [1.15.0](https://github.com/lindehoff/addon-open-webui/compare/v1.14.0...v1.15.0) (2025-02-22)


### Features

* **openui:** update dependency open-webui/open-webui to v0.5.16 ([99b08ea](https://github.com/lindehoff/addon-open-webui/commit/99b08ea5f1a97f5723aa3ea1878b67d7362f2173))

  Release notes:

# [1.14.0](https://github.com/lindehoff/addon-open-webui/compare/v1.13.0...v1.14.0) (2025-02-15)


### Features

* **openui:** update dependency open-webui/open-webui to v0.5.12 ([6f8c365](https://github.com/lindehoff/addon-open-webui/commit/6f8c365747c110f76e1d4e9bdd8d50c00a3cc6d2))

  Release notes:

# [1.13.0](https://github.com/lindehoff/addon-open-webui/compare/v1.12.0...v1.13.0) (2025-02-10)


### Features

* **openui:** update dependency open-webui/open-webui to v0.5.10 ([b8c150e](https://github.com/lindehoff/addon-open-webui/commit/b8c150eaad37f518a28aac1750843d3e798e66d2))

  Release notes:

# [1.12.0](https://github.com/lindehoff/addon-open-webui/compare/v1.11.0...v1.12.0) (2025-01-25)


### Features

* **openui:** update dependency open-webui/open-webui to v0.5.7 ([e19a960](https://github.com/lindehoff/addon-open-webui/commit/e19a96008c3191e6b3b69c6ca7849361effc056e))

  Release notes:

# [1.11.0](https://github.com/lindehoff/addon-open-webui/compare/v1.10.9...v1.11.0) (2025-01-09)


### Features

* **openui:** update dependency open-webui/open-webui to v0.5.4 ([1385494](https://github.com/lindehoff/addon-open-webui/commit/13854947bf356942da62e263e597ee79ae431513))

  Release notes:

## [1.10.9](https://github.com/lindehoff/addon-open-webui/compare/v1.10.8...v1.10.9) (2025-01-03)


### Bug Fixes

* **changelog:** adjust indentation in commit messages ([8b2e0a9](https://github.com/lindehoff/addon-open-webui/commit/8b2e0a94022e7aa22e468dab0703111347eba6fa))

  - Add consistent four-space indentation for bullet points

  - Improve readability of changelog entries

  - Test new JavaScript-based configuration
* **changelog:** correct handlebars template syntax ([4591959](https://github.com/lindehoff/addon-open-webui/commit/4591959dc8115282e3576406386fc0134d22675d))

  - Fix nested if/each blocks in template

  - Add proper condition for notes section

  - Improve template formatting

  - Remove problematic whitespace
* **changelog:** ensure correct Handlebars template syntax ([03f5fb4](https://github.com/lindehoff/addon-open-webui/commit/03f5fb440ecd5359199357798a9aaf4ea8413a2f))

  - Verify proper nesting of each blocks

  - Remove unnecessary whitespace

  - Ensure bodyLines and notes are processed correctly
* **changelog:** ensure proper date handling ([b953449](https://github.com/lindehoff/addon-open-webui/commit/b9534492afcc4506a684a5b678e57a34dfe68fc4))

  - Add date object conversion in transform function

  - Fix TypeError with date handling

  - Keep existing body line formatting

  - Add code comments for better maintainability
* **changelog:** handle date formatting in transform ([24bd122](https://github.com/lindehoff/addon-open-webui/commit/24bd12267dd04e3e3e7c1282f8d84d7566fd1ba3))

  - Add proper date handling in transform function

  - Convert dates to ISO format strings

  - Keep same body line processing

  - Add code structure comments
* **changelog:** handle immutable commit object ([c903925](https://github.com/lindehoff/addon-open-webui/commit/c90392587054d7346ab8954963908ec87928deec))

  - Create copy of commit object before modification

  - Fix error with immutable object modification

  - Keep same formatting and functionality

  - Use spread operator for object cloning
* **changelog:** handle immutable commit object in transform ([324b24c](https://github.com/lindehoff/addon-open-webui/commit/324b24c9e915fd74bf0ecda349c73d69b7a50584))

  - Create copy of commit object before modification

  - Keep same body line processing logic

  - Return modified copy instead of original

  - Fix "Cannot modify immutable object" error
* **changelog:** implement stackoverflow solution ([5241090](https://github.com/lindehoff/addon-open-webui/commit/5241090d60580d0cf159c42373c69e9230eea067))

  - Follow proven solution from Stack Overflow

  - Add separate commit template file

  - Use finalizeContext for body line processing

  - Simplify template structure

  [Source](https://stackoverflow.com/a/77548066)
* **changelog:** remove problematic date handling ([b9b2ab9](https://github.com/lindehoff/addon-open-webui/commit/b9b2ab98b5cc98ccf8b70cae855346e2ce1779c9))

  - Remove date handling from transform function

  - Simplify header template

  - Keep body line processing and formatting

  - Remove date-related template parts
* **changelog:** revert to angular preset ([198a708](https://github.com/lindehoff/addon-open-webui/commit/198a7085851c8b22f5cdc8ec4d3799dec736eaf4))

  - Switch back to angular preset to avoid dependency issues

  - Keep improved template and context handling

  - Remove conventional-changelog-conventionalcommits dependency
* **changelog:** revert to angular preset with custom template ([3a3fdb9](https://github.com/lindehoff/addon-open-webui/commit/3a3fdb9569958f74ff010d11c906d78b9332e4ee))

  - Switch back to angular preset to avoid dependency issues

  - Keep improved template formatting

  - Use built-in string split in template

  - Remove conventional-changelog-conventionalcommits dependency
* **changelog:** simplify release notes configuration ([4a30a64](https://github.com/lindehoff/addon-open-webui/commit/4a30a64382ce53a8a01044337786098cfe9826b9))

  - Switch to conventionalcommits preset

  - Move template logic to mainTemplate

  - Remove problematic transform function

  - Simplify date handling with preset defaults
* **changelog:** use custom template file ([b4b3b1f](https://github.com/lindehoff/addon-open-webui/commit/b4b3b1fc6efcec7461f42a997c683d9c02b13282))

  - Add separate changelog template file

  - Remove problematic date handling

  - Simplify release notes generation

  - Move template to dedicated handlebars file
* **changelog:** use transform function for body formatting ([6288265](https://github.com/lindehoff/addon-open-webui/commit/628826587fb1f98465093c323009e1aaf3391dc5))

  - Add transform function to pre-process commit body

  - Remove string.split from template

  - Keep same formatting and structure

  - Simplify handlebars template logic
* **changelog:** use transform function for commit formatting ([a8cde3e](https://github.com/lindehoff/addon-open-webui/commit/a8cde3e35d9d60ec28d36a03f12862f55d18ffc1))

  - Replace custom helper with transform function

  - Process commit body lines before template rendering

  - Keep consistent indentation and formatting

  - Fix Handlebars helper error
* **release:** add conventional commits dependency ([1a0ae0d](https://github.com/lindehoff/addon-open-webui/commit/1a0ae0d08e30d8c2d4b51315d24dd7fdf1f2feca))

  - Add conventional-changelog-conventionalcommits package

  - Keep existing configuration and templates

  - Required for conventionalcommits preset
* **release:** add conventional commits dependency ([e1c198a](https://github.com/lindehoff/addon-open-webui/commit/e1c198a2e19c96b261a4874e3e9f4163aa4e1f16))

  - Add conventional-changelog-conventionalcommits package installation

  - Keep existing semantic-release configuration

  - Ensure all required dependencies are installed

## [1.10.8](https://github.com/lindehoff/addon-open-webui/compare/v1.10.7...v1.10.8) (2025-01-03)


### Bug Fixes

* **changelog:** add handlebars-helpers for better formatting ([41c26b0](https://github.com/lindehoff/addon-open-webui/commit/41c26b09fb5f051d6e853ae9d0e43cb8a816b62b))
    * - Add handlebars-helpers package for enhanced template functionality
- Register split helper for proper line-by-line formatting
- Update workflow to install required dependency
* **changelog:** correct handlebars template syntax ([54c5129](https://github.com/lindehoff/addon-open-webui/commit/54c51298d7bc2c5fc4ef99e2e21cfb6ab829c6d9))
    * - Fix invalid split syntax in commitPartial template
- Use proper Handlebars helper syntax for string splitting
- Keep consistent formatting and indentation
* **changelog:** improve list formatting and indentation ([4dbba84](https://github.com/lindehoff/addon-open-webui/commit/4dbba84bbc383aecebd7cda85bc35a89b0409dfe))
    * - Add proper line-by-line formatting for commit body and footer
- Ensure consistent indentation for all bullet points
- Remove extra whitespace between lines
- Keep bullet point style consistent throughout entries
* **changelog:** simplify template using built-in handlebars helpers ([91951be](https://github.com/lindehoff/addon-open-webui/commit/91951be3c1103d6e877be560d21ac3ac2288b656))
    * - Replace custom helpers with built-in with helper
- Remove dependency on handlebars-helpers package
- Keep consistent formatting for commit messages

## [1.10.7](https://github.com/lindehoff/addon-open-webui/compare/v1.10.6...v1.10.7) (2025-01-03)


### Bug Fixes

* **changelog:** improve formatting and use short commit hash ([5899f55](https://github.com/lindehoff/addon-open-webui/commit/5899f55bde981063804229e1c52ddf8ed46a3277))
  * - Change to short commit hash in display while keeping full hash in links
- Add bullet points for commit body and footer entries
- Adjust indentation for better readability

## [1.10.6](https://github.com/lindehoff/addon-open-webui/compare/v1.10.5...v1.10.6) (2025-01-03)


### Bug Fixes

* **changelog:** restore commit links and fix indentation ([44036fae3a4fdb4e274446477b3275f843d0b01f](https://github.com/lindehoff/addon-open-webui/commit/44036fae3a4fdb4e274446477b3275f843d0b01f))
    - Add back commit hash links to each changelog entry
- Fix indentation of commit body and footer with proper spacing
- Keep consistent formatting throughout the changelog

## [1.10.5](https://github.com/lindehoff/addon-open-webui/compare/v1.10.4...v1.10.5) (2025-01-03)


### Bug Fixes

* **changelog:** configure commit template for full message inclusion
  - Add commitPartial template to include commit body and footer
- Improve formatting with proper indentation
- Add commit groups sorting for consistent order
- Remove unnecessary parserOpts configuration

## [1.10.4](https://github.com/lindehoff/addon-open-webui/compare/v1.10.3...v1.10.4) (2025-01-03)


### Bug Fixes

* **changelog:** improve release notes generation ([20642ee](https://github.com/lindehoff/addon-open-webui/commit/20642ee3b339d7199abd303fbbd3d9d36e0fe73f))
* **changelog:** improve release notes generation ([c441686](https://github.com/lindehoff/addon-open-webui/commit/c4416864beb2b650597fc872f87074f60fa8367f))

### Bug Fixes

* **changelog:** include full commit message with body ([71ba6d5](https://github.com/lindehoff/addon-open-webui/commit/71ba6d5aff14e88c305d44c727e815159ceb8492))

## [1.10.2](https://github.com/lindehoff/addon-open-webui/compare/v1.10.1...v1.10.2) (2025-01-03)


### Bug Fixes

* **renovate:** update release notes configuration ([79baa4b](https://github.com/lindehoff/addon-open-webui/commit/79baa4b37f9f289925044b61faed3d322b47a1f9))

## [1.10.1](https://github.com/lindehoff/addon-open-webui/compare/v1.10.0...v1.10.1) (2025-01-03)


### Bug Fixes

* **renovate:** move includeReleaseNotes to root level ([5618c26](https://github.com/lindehoff/addon-open-webui/commit/5618c2603181d09a4b9d0d36659a412c6d5bb8e7))

# [1.10.0](https://github.com/lindehoff/addon-open-webui/compare/v1.9.0...v1.10.0) (2025-01-03)


### Bug Fixes

* **renovate:** correct release notes config and update timing ([9a5847b](https://github.com/lindehoff/addon-open-webui/commit/9a5847ba227eb1e0d14dee5c426f8a91ed8889ec))


### Features

* **release:** enhance changelog generation with detailed PR content ([fd09ffe](https://github.com/lindehoff/addon-open-webui/commit/fd09ffe2a1a9ba67130dd39ef5108bc5bc197555))

# [1.9.0](https://github.com/lindehoff/addon-open-webui/compare/v1.8.1...v1.9.0) (2025-01-03)


### Features

* **renovate:** add release notes to version update PRs ([acf43ca](https://github.com/lindehoff/addon-open-webui/commit/acf43cacf1787d177fdd67a9cb0defa02a51d51e))

## [1.8.1](https://github.com/lindehoff/addon-open-webui/compare/v1.8.0...v1.8.1) (2025-01-03)


### Bug Fixes

* **deps:** update dependency open-webui/open-webui to v0.5.3 ([7f8ff85](https://github.com/lindehoff/addon-open-webui/commit/7f8ff852d5fee3ec80cf5204639909f39aed7e70))

# [1.8.0](https://github.com/lindehoff/addon-open-webui/compare/v1.7.0...v1.8.0) (2025-01-03)


### Features

* **renovate:** configure renovate ([f152333](https://github.com/lindehoff/addon-open-webui/commit/f15233318ac05c51e7ecd5c3af3c80a013a31c71))

# [1.7.0](https://github.com/lindehoff/addon-open-webui/compare/v1.6.0...v1.7.0) (2025-01-03)


### Features

* **renovate:** check for update of Open WebUI ([6d9d1ad](https://github.com/lindehoff/addon-open-webui/commit/6d9d1adbf9ecd4d1a3b20332bcda68fc655a7e2a))

# [1.6.0](https://github.com/lindehoff/addon-open-webui/compare/v1.5.0...v1.6.0) (2024-12-05)


### Features

* **open-webui:** Update to version 0.4.7 ([ef73c47](https://github.com/lindehoff/addon-open-webui/commit/ef73c4720bd5f37f4a66c94e3e2719e85a49628b))

# [1.5.0](https://github.com/lindehoff/addon-open-webui/compare/v1.4.0...v1.5.0) (2024-11-27)


### Features

* **openwebui:** update to v0.4.6 ([0d85621](https://github.com/lindehoff/addon-open-webui/commit/0d856214c0c02cdb41fc248ce3eded3c255da907))

# [1.4.0](https://github.com/lindehoff/addon-open-webui/compare/v1.3.0...v1.4.0) (2024-11-20)


### Features

* **open-webui:** update to version 0.4.1 ([07a9a90](https://github.com/lindehoff/addon-open-webui/commit/07a9a9050b40a25881e6dfc6bdf3d84818ebc9f1))

# [1.3.0](https://github.com/lindehoff/addon-open-webui/compare/v1.2.0...v1.3.0) (2024-11-20)


### Features

* **openui:** update version to 0.3.35 ([f4e6600](https://github.com/lindehoff/addon-open-webui/commit/f4e6600adac287e9aabe693feafb192e91a84844))
* **sem_ver:** fix sem_ver ([65d3d3d](https://github.com/lindehoff/addon-open-webui/commit/65d3d3d332aa36532a5e6c25cb005510e7c58eee))

# [1.2.0](https://github.com/lindehoff/addon-open-webui/compare/v1.1.0...v1.2.0) (2024-10-09)


### Features

* **config:** test variable ([f2fec7a](https://github.com/lindehoff/addon-open-webui/commit/f2fec7a9abfa2e13a1bf87a27b50d2a6893549b4))

# [1.1.0](https://github.com/lindehoff/addon-open-webui/compare/v1.0.1...v1.1.0) (2024-10-09)


### Features

* **config:** add env_vars ([aaede7d](https://github.com/lindehoff/addon-open-webui/commit/aaede7dfed14e6c2540067bff11379c15442f616))

## [1.0.1](https://github.com/lindehoff/addon-open-webui/compare/v1.0.0...v1.0.1) (2024-10-09)


### Bug Fixes

* **config:** clean up ([31fd20a](https://github.com/lindehoff/addon-open-webui/commit/31fd20aa18ec2a74b62f93defff4e7d16d5db9df))

# 1.0.0 (2024-10-09)


### Features

* **ci:** release ([c8813da](https://github.com/lindehoff/addon-open-webui/commit/c8813da178e08c30c121acdf7f86206932e6ced3))
* **open-webui:** example -> open webui ([af56c52](https://github.com/lindehoff/addon-open-webui/commit/af56c520f9cb668e187a3649c57a2d6c5684f889))
* **pre commit:** add .pre-commit-config.yaml ([c38ee27](https://github.com/lindehoff/addon-open-webui/commit/c38ee27f33602889e39cb82e69c27056204002a5))

<!-- https://developers.home-assistant.io/docs/add-ons/presentation#keeping-a-changelog -->

## 0.1.0

- Initial release
