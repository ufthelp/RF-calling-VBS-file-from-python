import subprocess

#Call VBS function from python
def callVBS(scriptPath):
    try:
        subprocess.call('cscript.exe '+ scriptPath)
        return "PASS"
    except:
        return "FAIL"

