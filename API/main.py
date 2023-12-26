import glob
import os
import re

s = set()

for path in glob.glob(""):
    if '.cs' in path:
        s.add(path.split("\\")[-1].split('.')[0])

for v in s:
    print(
        f'        public override Task<{v}Response> {v}({v}Request request, ServerCallContext context)\n' +
        '        {\n' +
        f'            var task = new Task<{v}Response>(() => Commands.{v}.Execute(request));\n'
        '            RequestsQueue.Enqueue(task);\n'
        '            return task;\n' +
        '        }\n\n')
