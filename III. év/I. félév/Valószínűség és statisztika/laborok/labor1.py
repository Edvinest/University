pulses = [72, 68, 75, 80, 77, 83, 65, 70, 74, 69, 78, 71, 76, 85, 79, 67, 73, 82, 66, 88, 74, 72, 69, 81, 77, 70, 75, 84, 68, 71]
sorted_pulses = sorted(pulses)
total = 0
freq = {}
modes = []

for pulse in pulses:
    total += pulse

    freq[pulse] = freq.get(pulse, 0) + 1

max_count = max(freq.values())
avg_count = sum(freq.values())/len(freq)

modes = [k for k, v in freq.items() if v == max_count and v > avg_count]
mode = min(modes)

mlen = len(sorted_pulses)
if (mlen % 2 == 0):
    median = (sorted_pulses[mlen // 2 -1] + sorted_pulses[mlen // 2])  /2
else:
    median = sorted_pulses[mlen // 2]

avg = total/len(pulses)

print(f"Average: {round(avg,2)}")
print(f"Median: {round(median, 2)}")
print(f"Mode(s): {mode}")
