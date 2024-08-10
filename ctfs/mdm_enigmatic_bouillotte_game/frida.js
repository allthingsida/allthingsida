const logStream = new File("log.txt", "w");

// Function to log both to file and console
function doLog(message) {
  console.log(message);
  logStream.write(message + '\n');
}

function installHooks(baseAddress) 
{
  Interceptor.attach(ptr(baseAddress).add(0x1965), {
    onEnter: function (args) {
      doLog("--------------------");
      doLog("index;       : " + this.context.rbp);
      doLog("input[i];    : " + this.context.rax);
      doLog("chgkey[i];   : " + this.context.rdx);
      //doLog("correctcount;R13: " + this.context.r13);
    }
  });
  Interceptor.attach(ptr(baseAddress).add(0x1977), {
    onEnter: function (args) {
      doLog("expected[i]  : " + this.context.rdx);
    }
  });
}

// Attach to the process
var processName = "mdmebg";

Process.enumerateModules({
  onMatch: function (module) {
    if (module.name === processName) {
      var baseAddress = module.base;
      doLog("Base address: " + baseAddress);

      // Call functions to dump registers
      installHooks(baseAddress);

      return 'stop';
    }
    return 'keep';
  },
  onComplete: function () {
    doLog("Module enumeration complete");
  }
});
