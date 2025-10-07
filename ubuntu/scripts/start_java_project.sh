#!/bin/bash

TOP_DIR=$1
PACKAGE_NAME="test"

mkdir -p $TOP_DIR/src/main/java/$PACKAGE_NAME
mkdir -p $TOP_DIR/bin/
mkdir -p $TOP_DIR/lib

# pom.xml
cat << 'EOF' > $TOP_DIR/pom.xml
<project xmlns="http://maven.apache.org/POM/4.0.0" 
         xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
         xsi:schemaLocation="http://maven.apache.org/POM/4.0.0 
                             http://maven.apache.org/xsd/maven-4.0.0.xsd">
    <modelVersion>4.0.0</modelVersion>

    <groupId>com.example</groupId> 
    <artifactId>java_tutorial</artifactId>
    <version>1.0.0</version>

    <dependencies>
        <!-- 依存ライブラリがあればここに追加 -->
    </dependencies>

    <build>
        <sourceDirectory>src/main/java</sourceDirectory>
        <outputDirectory>bin</outputDirectory>
        <plugins>
            <!-- コンパイル設定 -->
            <plugin>
                <groupId>org.apache.maven.plugins</groupId>
                <artifactId>maven-compiler-plugin</artifactId>
                <version>3.11.0</version>
                <configuration>
                    <source>17</source>
                    <target>17</target>
                </configuration>
            </plugin>

            <!-- 実行可能Jarの作成 -->
            <plugin>
                <groupId>org.apache.maven.plugins</groupId>
                <artifactId>maven-jar-plugin</artifactId>
                <version>3.3.0</version>
                <configuration>
                    <archive>
                        <manifest>
                            <mainClass>main.Main</mainClass>
                        </manifest>
                    </archive>
                </configuration>
            </plugin>
        </plugins>
    </build>

</project>
EOF