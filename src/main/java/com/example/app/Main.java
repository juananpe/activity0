package com.example.app;

import javafx.application.Application;
import javafx.scene.Scene;
import javafx.scene.control.Label;
import javafx.scene.layout.StackPane;
import javafx.stage.Stage;

public class Main extends Application {
    @Override
    public void start(Stage stage) {
        Label label = new Label("Hello, World!");
        StackPane root = new StackPane(label);

        Scene scene = new Scene(root, 320, 240);
        stage.setScene(scene);
        stage.setTitle("JavaFX Modular App");
        stage.show();
    }

    public static void main(String[] args) {
        launch(args);
    }
}
