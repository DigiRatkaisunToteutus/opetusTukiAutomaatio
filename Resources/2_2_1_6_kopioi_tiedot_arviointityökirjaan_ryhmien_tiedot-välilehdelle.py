import pandas as pd
import sys

def move_data(source_file):
    # Lataa työkirjan
    df = pd.read_excel(source_file, sheet_name=None)

    # Ottaa datan ensimmäisestä sarakkeesta
    first_sheet_name = list(df.keys())[0]
    data = df[first_sheet_name]

    # Ottaa tiedot vain ensimmäisestä sarakkeesta
    first_column = data.iloc[:, [0]]  # Tämä valitsee ensimmäisen sarakkeen kaikista riveistä.

    # Kirjoittaa tiedot uudelle välilehdelle
    with pd.ExcelWriter(source_file, engine='openpyxl', mode='a') as writer:
        first_column.to_excel(writer, sheet_name='ryhmientiedot', index=False)

    print(f"Data from the first column of '{first_sheet_name}' moved to 'ryhmientiedot'")

if __name__ == "__main__":
    if len(sys.argv) < 2:
        print("Usage: python excel_operations.py <source_excel_file>")
    else:
        move_data(sys.argv[1])
