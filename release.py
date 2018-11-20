from github import Github
from shutil import make_archive
from argparse import ArgumentParser
from os import path

parser = ArgumentParser()
parser.add_argument('--token_file', type=str, default='~/git/access_token')
parser.add_argument('--message', type=str, default = '')
parser.add_argument('version', type=str)
parser.add_argument('datapacks', type=str, nargs='+')
args = parser.parse_args()

assets = []
for pack in args.datapacks:
    asset_path = 'release/' + pack
    assets.append(('{}.zip'.format(pack), '{}.zip'.format(asset_path)))
    make_archive(asset_path, 'zip', pack)

token = open(path.expanduser(args.token_file), 'r').read().strip()
g = Github(token)

repo = g.get_repo('JaredNeil/minecraft_datapacks')
release = repo.create_git_release(
    tag = args.version,
    name = args.version,
    message = args.message,
    draft = True,
    target_commitish = 'master',
)
for asset_name, asset_path in assets:
    release.upload_asset(
        path = asset_path,
        label = asset_name,
        content_type = 'application/zip'
    )
