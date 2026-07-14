MediaWiki Extension2 Starter Pack
=================================

FILES TO CREATE

LocalSettings.php
Template:Extension2
Module:Extension2
Template:Extension2/styles.css (optional)

------------------------------------------------------------
1. LocalSettings.php
------------------------------------------------------------

wfLoadExtension( 'Scribunto' );
wfLoadExtension( 'ParserFunctions' );
wfLoadExtension( 'TemplateData' );
wfLoadExtension( 'TemplateStyles' );
wfLoadExtension( 'SyntaxHighlight_GeSHi' );

$wgScribuntoDefaultEngine = 'luastandalone';

------------------------------------------------------------
2. Module:Extension2
------------------------------------------------------------

local p = {}

local function value(v,d)
    if v == nil or v == "" then
        return d
    end
    return v
end

function p.main(frame)

    local args = frame:getParent().args

    local rows = {

        {"Name",value(args.name,"Unknown")},
        {"Display Name",value(args["display-name"],"")},
        {"Version",value(args.version,"")},
        {"Status",value(args.status,"")},
        {"Author",value(args.author,"")},
        {"Maintainer",value(args.maintainer,"")},
        {"Description",value(args.description,"")},
        {"License",value(args.license,"")},
        {"MediaWiki",value(args.mediawiki,"")},
        {"PHP",value(args.php,"")},
        {"Repository",value(args.repo,"")},
        {"Download",value(args.download,"")},
        {"Documentation",value(args.documentation,"")},
        {"Composer",value(args.composer,"")},
        {"API",value(args.api,"")},
        {"REST",value(args["rest-api"],"")},
        {"GraphQL",value(args.graphql,"")},
        {"Docker",value(args.docker,"")},
        {"CI",value(args.ci,"")},
        {"Tests",value(args.tests,"")},
        {"Coverage",value(args.coverage,"")},
        {"Security",value(args["security-policy"],"")},
        {"Issue Tracker",value(args.issues,"")}
    }

    local out = '{| class="wikitable extension2"\n'

    for _,r in ipairs(rows) do
        if r[2] ~= "" then
            out = out ..
            '|-\n' ..
            '! '..r[1]..'\n' ..
            '| '..r[2]..'\n'
        end
    end

    out = out .. '|}'

    return out

end

return p

------------------------------------------------------------
3. Template:Extension2
------------------------------------------------------------

{{#invoke:Extension2|main}}

------------------------------------------------------------
4. Template:Extension2/styles.css
------------------------------------------------------------

.extension2{
    width:100%;
    border-collapse:collapse;
    font-size:90%;
}

.extension2 th{
    width:220px;
    text-align:left;
    background:#f8f9fa;
    padding:8px;
}

.extension2 td{
    padding:8px;
}

------------------------------------------------------------
5. Example Usage
------------------------------------------------------------

{{Extension2
|name=Aura Engine
|display-name=Aura Engine
|version=2.0.0
|status=stable
|author=Seriki Yakub
|maintainer=Aura Ecosystem
|description=Universal AI and software framework
|license=Apache-2.0
|mediawiki=1.43+
|php=8.2+
|composer=aura/engine
|repo=https://github.com/example/aura
|download=https://example.com/download
|documentation=https://docs.example.com
|api=Action API
|rest-api=Yes
|graphql=Yes
|docker=Supported
|ci=GitHub Actions
|tests=PHPUnit
|coverage=98%
|security-policy=SECURITY.md
|issues=https://github.com/example/aura/issues
}}

------------------------------------------------------------
6. Future Parameters
------------------------------------------------------------

schema-version
extension-id
uuid
slug
aliases
homepage
website
contact
contributors
organization
release-date
preview-version
lts
release-channel
branch
commit
tag
operating-system
database
mysql
mariadb
postgresql
sqlite
redis
memcached
elasticsearch
opensearch
kubernetes
helm
snap
flatpak
apt
rpm
nix
composer-package
npm-package
python-package
go-module
rust-crate
java-package
special-pages
parser-functions
parser-tags
magic-words
hooks
services
jobs
maintenance-scripts
rights
permissions
oauth
openid
webhooks
events
json-schema
yaml-schema
openapi
asyncapi
documentation
manual
tutorial
faq
examples
video
roadmap
benchmark
performance
phpunit
phpstan
psalm
lint
coverage
mutation-testing
translate
phabricator
gerrit
gitlab
github
downloads
stars
forks
watchers
open-issues
closed-issues
security-contact
signed-releases
checksums
sbom
compatibility
dependencies
optional-dependencies
conflicts
notes

============================================================
This provides the foundation for a modern MediaWiki extension
documentation system powered by Scribunto. From here, you can
extend the Lua module to support validation, badges, JSON export,
Semantic MediaWiki or Cargo integration, and advanced rendering.
============================================================
