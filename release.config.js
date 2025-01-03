/**
 * @type {import('semantic-release').GlobalConfig}
 */
module.exports = {
    "tagFormat": "v${version}",
    "branches": [
        "main"
    ],
    "plugins": [
        "@semantic-release/commit-analyzer",
        [
            "@semantic-release/release-notes-generator",
            {
                "preset": "angular",
                "writerOpts": {
                    "commitsSort": ["subject", "scope"],
                    "includeDetails": true,
                    "commitGroupsSort": ["Features", "Bug Fixes", "Maintenance"],
                    "commitPartial": "* {{#if scope}}**{{scope}}:** {{/if}}{{subject}} ([{{shortHash}}]({{@root.host}}/{{@root.owner}}/{{@root.repository}}/commit/{{hash}}))\n{{#if body}}\n{{#with body}}\n{{#each (split this \"\\n\")}}\n    * {{this}}\n{{/each}}\n{{/with}}\n{{/if}}\n{{#if footer}}\n{{#with footer}}\n{{#each (split this \"\\n\")}}\n    * {{this}}\n{{/each}}\n{{/with}}\n{{/if}}",
                    "helpers": {
                        split: (str, sep) => str.split(sep)
                    }
                },
                "presetConfig": {
                    "types": [
                        {"type": "feat", "section": "Features", "hidden": false},
                        {"type": "fix", "section": "Bug Fixes", "hidden": false},
                        {"type": "chore", "section": "Maintenance", "hidden": false}
                    ]
                }
            }
        ],
        [
            "@semantic-release/changelog",
            {
                "changelogFile": "open-webui/CHANGELOG.md",
                "changelogTitle": "# Changelog",
                "changelogReleaseCount": 5
            }
        ],
        [
            "@semantic-release/git",
            {
                "assets": [
                    "open-webui/CHANGELOG.md"
                ],
                "message": "chore(release): ${nextRelease.version}\n\n${nextRelease.notes}"
            }
        ],
        "@semantic-release/github"
    ]
}; 