module com.tarefas {
    requires javafx.controls;
    requires javafx.fxml;

    requires org.controlsfx.controls;
    requires org.kordamp.bootstrapfx.core;
    requires java.sql;

    opens com.tarefas to javafx.fxml;
    opens controllers to javafx.fxml;

    exports com.tarefas;
    exports controllers;
}
