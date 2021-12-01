# JMeter test

To edit the JMeter script [test.jmx](test.jmx):  

- Install [JMeter](https://jmeter.apache.org/).
- Run `jmeter -t test.jmx`.

# Configuration

As advised by JMeter, the GUI tool is not for running load tests. For load testing, it is advised to use the CLI mode. To run in CLI mode, you can use

```
jmeter -Jthreads=[num threads] -n -t [jmx file] -l [log file] -e -o [Path to web report folder]
```

Input:
- `[jmx file]` - name of the JMeter script, should be `quiz.jmx`
- `[results file]` - name of the file for results, in CSV format so should end in `*.csv`
- `[report folder]` - name of folder that can be used to generate HTML reports from the testing.
- `[num threads]` - number of threads (test students) to be run

Note:
- If you need to use an automatically generated report folder name, you can use the current date in your bash shell with the [command `date`](https://tecadmin.net/get-current-date-and-time-in-bash/).
- For best results, you are advised to run tests with a cloud runner or a VM with high networking capabilities.

A complete command should look like this:
```
jmeter -Jthreads=500 -n -t test.jmx -l "reportlog-`date +"%Y%m%dT%H%M%S"`.csv" -e -o "report_`date +"%Y%m%dT%H%M%S"`"
```

