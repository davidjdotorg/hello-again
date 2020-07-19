# name and language
project('com.github.davidjdotorg.hello-again', 'vala', 'c')

# include translations
i18n = import('i18n')

# set translation domain
add_global_arguments('-DGETTEXT_PACKAGE="@@@"'.format (meson.project_name()), language:'c')

# new executable
executable(
    meson.project_name(),
    'src/Application.vala',
    dependencies: [
        dependency('gtk+-3.0')
    ],
    install: true
)

# install desktop file
i18n.merge_file(
    input: join_paths('data', meson.project_name() + '.desktop.in'),
    output: meson.project_name() + '.desktop',
    po_dir: join_paths(meson.source_root(), 'po'),
    type: 'desktop',
    install: true,
    install_dir: join_paths(get_option('datadir'), 'applications')
)

# install .appdata file
i18n.merge_file(
    input: join_paths('data',meson.project_name() + '.appdata.xml.in'),
    output: meson.project_name() + '.appdata.xml',
    po_dir: join_paths(meson.source_root(), 'po'),
    install: true,
    install_dir: join_paths(get_option('datadir'), 'metainfo')
)

subdir('po')
