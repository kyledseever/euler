var nums = [];
for (var i = 1; i < 1000; i++) {
    nums.push(i);
}

console.log(
    nums.filter(function(i) { return i % 3 == 0 || i % 5 == 0; })
        .reduce(function(last, current) { return last + current; })
);
