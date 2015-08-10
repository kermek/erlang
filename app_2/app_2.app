{application, app_2,
[{description, "First application"},
{vsn, "1.0"},
{modules, [app_2_sup]}, % we've added our supervisor here
{registered, [kernek, stdlib]}, % registered processes
  {applications, [kernel, stdlib]}, % dependecies
  {mod, {app_2,[]}} % it's a module, in which function `start` will be called
]}.