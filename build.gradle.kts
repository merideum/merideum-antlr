plugins {
  antlr

  `java-library`
  `maven-publish`
}

dependencies {
  val antlr4: String by project

  antlr("org.antlr:antlr4:$antlr4")
}

group = "org.merideum"

repositories { mavenCentral() }

tasks.generateGrammarSource { arguments = arguments + listOf("-visitor") }

publishing {
  publications {
    create<MavenPublication>("maven") {
      groupId = project.group.toString()
      artifactId = "grammar"
      version = project.version.toString()

      from(components["java"])
    }
  }
}
