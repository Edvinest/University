Működése:
- Ha teljesült a feltételünk, vagy elértünk egy olyan pontot ahonnan már nincs hová mozogni, akkor megállunk (Kilépési feltétel)
- Ellenőrizzük, hogy az eredmény megfelel-e a feltételnek, ideiglenesen ez lesz a megoldásunk
- Rekurzívan visszahívjuk a függvényt a részeredményünkkel, majd utána töröljük a részeredményünket
```pseudo
function backtrack(solution):
    if solution is complete:
        process the solution
        return

    for each option in available options:
        if option is valid:
            add option to solution
            backtrack(solution)  // recursive call
            remove option from solution  // undo the move (backtrack)

```

### Példa (N-királynő probléma)
```
function solveNQueens(board, row):
    if row == N:  // All queens placed
        print(board)  // Solution found
        return

    for column from 0 to N-1:
        if isSafe(board, row, column):  // Check if it's safe to place queen
            board[row][column] = 'Q'  // Place the queen
            solveNQueens(board, row + 1)  // Recurse for next row
            board[row][column] = '.'  // Backtrack: remove the queen

```