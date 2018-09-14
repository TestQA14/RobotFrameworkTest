from robot.api import SuiteVisitor

class ExecutionTimeChecker(SuiteVisitor):
    
    def __init__(self, max_seconds):
        self.max_milliseconds = float(max_seconds) * 1000

    def visit_test(self, test):
        if test.status == 'PASS' and test.elapsedtime > self.max_milliseconds:
            test.status = 'FAIL'
            test.message = 'Test execution took too long.'