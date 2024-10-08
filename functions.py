import re
def checkpasswordvalidity(password):
    if len(password) < 6:
        return "password is too short"
    elif re.search(r"[A-Z]",password):
        return "atleast 1 lowercase"
    elif re.search(r"[a-z]",password):
        return "atleast 1 lowercase"
    elif re.search(r"[0-9]",password):
        return "atleast 1 digit"
    elif re.search(r"[!@#$%^&*]",password):
        return "atleast 1 lowercase"
    else:
        return True
    