# JavaFX Modular App (activity0)

A minimal modular Java 21 application using JavaFX 21.0.2.

Quick start:

- Build (compile):

  mvn -B -DskipTests package

- Run the application:

  - Using Maven (explicit classifier to ensure native libs resolve):

    mvn -Djavafx.platform=<classifier> javafx:run

    Example for mac x86_64:

    mvn -Djavafx.platform=mac javafx:run

  - Using the launcher scripts (recommended):

    - mac / linux: ./scripts/run.sh
    - windows: scripts\\run.bat

Notes:
- This project uses `os-maven-plugin` to detect the host platform and download the correct JavaFX artifacts.
- To force a platform classifier set `-Djavafx.platform=<classifier>` (e.g., `mac-aarch64`, `mac`, `linux`, `win`)
