import sublime, sublime_plugin, os, threading

class BuildonSave(sublime_plugin.EventListener):

    def on_post_save(self, view):
        working_dir = view.window().folders()[0]

        print('BuildonSave: ', view.file_name())

        if view.file_name().split('.')[-1] != 'tpl':
            return

        SaveAction('source $HOME/.bash_profile;export PATH="/usr/local/bin:$PATH";$HOME/kits/bin/tpl ' + view.file_name()).start()


class SaveAction(threading.Thread):

    def __init__(self, command):
        self.command = command
        threading.Thread.__init__(self)

    def run(self):
        print(self.command)
        output = os.popen(self.command)
        print(output.read() + 'finish!')

