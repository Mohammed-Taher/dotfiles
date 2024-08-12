"""Simple script for wal api."""
import pywal


def main():
    """Main function."""
    # Validate image and pick a random image if a
    # directory is given below.
    image = pywal.image.get("~/Pictures/2853628.jpg")

    # Return a dict with the palette.
    # Set quiet to 'True' to disable notifications.
    colors = pywal.colors.get(image)

    # Apply the palette to all open terminals.
    # Second argument is a boolean for VTE terminals.
    # Set it to true if the terminal you're using is
    # VTE based. (xfce4-terminal, termite, gnome-terminal.)
    pywal.sequences.send(colors, vte=False)

    # Export all template files.
    pywal.export.every(colors, cache_dir)

    # Export individual template files.
    # pywal.export.color(colors, "xresources", "/home/dylan/.Xresources")
    # pywal.export.color(colors, "shell", "/home/dylan/colors.sh")

    # Reload xrdb, i3 and polybar.
    pywal.reload.env()

    # Set the wallpaper.
    # pywal.wallpaper.change(image)


if __name__ == '__main__':
    main()
