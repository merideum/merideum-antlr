plugins {
  antlr

  `java-library`
  `maven-publish`
}

dependencies {
  val antlr4: String by project
  antlr("org.antlr:antlr4:$antlr4")
}

tasks.generateGrammarSource {
  arguments = arguments + listOf("-visitor")
}

publishing {
  publications {
    create<MavenPublication>("maven") {
      groupId = project.group.toString()
      artifactId = "antlr4"
      version = project.version.toString()

      from(components["java"])
    }
  }
}
