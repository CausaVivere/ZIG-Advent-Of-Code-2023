const std = @import("std");
const dayOne = @import("1.zig");
const dayTwo = @import("2.zig");

pub fn main() !void {
    try dayOne.Solution();
    try dayTwo.Solution();
}

test "simple test" {
    var list = std.ArrayList(i32).init(std.testing.allocator);
    defer list.deinit(); // try commenting this out and see if zig detects the memory leak!
    try list.append(42);
    try std.testing.expectEqual(@as(i32, 42), list.pop());
}
