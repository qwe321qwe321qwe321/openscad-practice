echo("Basic For Loop 0~10");
for (a =[0:10]) {
    echo(a);
}

echo("Basic For Loop 0~9 with increment 2");
for (a =[0:2:9]) {
    echo(a);
}

echo("For Loop in list[1,2,3]");
for (a =[1, 2, 3]) {
    echo(a);     
}

echo("For Loop in string abc");
for (c = "abc") {
    echo(c);
}

echo("奇怪的操作");
sum = 0;
for (a =[0:5]) {
    sum = sum + 1;
    echo(sum);
}
echo(sum);