#include <JavaScriptCore/JavaScriptCore.h>
#include <iostream>
#import "experiment.h"
#import "GlobalContext.h"

int runJS() {
    // Create a JSC context
  
    CFAbsoluteTime startTime = CFAbsoluteTimeGetCurrent();
  
   std::cout << "JS EXECUTE START TIME" << startTime;
    JSGlobalContextRef ctx = JSGlobalContextCreate(NULL);

    // Define a JavaScript string
    std::string script = "2 + 2";

    // Create a JSC string
    JSStringRef scriptJS = JSStringCreateWithUTF8CString(script.c_str());

    // Evaluate the JavaScript string
    JSValueRef exception = NULL;
    JSValueRef result = JSEvaluateScript(ctx, scriptJS, NULL, NULL, 0, &exception);
    CFAbsoluteTime endTime = CFAbsoluteTimeGetCurrent();
    std::cout << "JS EXECUTE END TIME" << endTime;
  
   std::cout << "JS EXECUTE TOTAL TIME" << endTime - startTime;

    // Check for errors
    if (exception) {
        JSStringRef exceptionJS = JSValueToStringCopy(ctx, exception, NULL);
        size_t bufferSize = JSStringGetMaximumUTF8CStringSize(exceptionJS);
        char* buffer = new char[bufferSize];
        JSStringGetUTF8CString(exceptionJS, buffer, bufferSize);
        std::cerr << "Error: " << std::string(buffer) << std::endl;
        delete[] buffer;
        JSStringRelease(exceptionJS);
    } else {
             JSStringRef resultJS = JSValueToStringCopy(ctx, result, NULL);
             size_t bufferSize = JSStringGetMaximumUTF8CStringSize(resultJS);
             char* buffer = new char[bufferSize];
             JSStringGetUTF8CString(resultJS, buffer, bufferSize);
             std::cout << "JavaScript output: " << std::string(buffer) << std::endl;
             GlobalContext::answer = std::string(buffer);
             delete[] buffer;
             JSStringRelease(resultJS);
    }

    // Clean up
    JSStringRelease(scriptJS);
    JSGlobalContextRelease(ctx);

    return 0;
}
