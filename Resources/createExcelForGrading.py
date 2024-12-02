''''
Operating instructions: 
python log_parameters_with_folder.py /path/to/folder arg1 arg2


'''
import sys
import logging
import os

def main():
    # Set up logging
    logging.basicConfig(
        filename='program.log',
        level=logging.INFO,
        format='%(asctime)s - %(message)s'
    )

    # Get the program name and arguments
    program_name = sys.argv[0]
    arguments = sys.argv[1:]

    # Print the program name
    print(f"Program Name: {program_name}")
    logging.info(f"Program Name: {program_name}")

    # Check for target operating folder
    if len(arguments) < 1:
        print("Warning: No target operating folder provided.")
        logging.warning("No target operating folder provided.")
    else:
        target_folder = arguments[0]
        if os.path.isdir(target_folder):
            os.chdir(target_folder)
            print(f"Changed operating folder to: {os.getcwd()}")
            logging.info(f"Changed operating folder to: {os.getcwd()}")
            
            # List files in the folder
            files = os.listdir('.')
            if files:
                print("Files in the target folder:")
                logging.info("Files in the target folder:")
                for file in files:
                    print(f"  {file}")
                    logging.info(f"  {file}")
            else:
                print("The target folder is empty.")
                logging.info("The target folder is empty.")
        else:
            print(f"Warning: '{target_folder}' is not a valid folder.")
            logging.warning(f"'{target_folder}' is not a valid folder.")

    # Print remaining arguments
    if len(arguments) > 1:
        print("Other arguments passed:")
        logging.info("Other arguments passed:")
        for i, arg in enumerate(arguments[1:], start=1):
            print(f"  Argument {i}: {arg}")
            logging.info(f"  Argument {i}: {arg}")
    else:
        print("No additional arguments were passed.")
        logging.info("No additional arguments were passed.")

if __name__ == "__main__":
    main()
