env "local" {
  src = "file://schema/schema.hcl"
  url = "postgres://postgres:postgres@postgres:5432/specvital?sslmode=disable"
  dev = "postgres://postgres:postgres@postgres:5432/postgres?sslmode=disable"

  migration {
    dir = "file://schema/migrations"
  }
}

env "ci" {
  src = "file://schema/schema.hcl"
  url = "postgres://postgres:postgres@localhost:5432/specvital?sslmode=disable"
  dev = "postgres://postgres:postgres@localhost:5432/postgres?sslmode=disable"

  migration {
    dir = "file://schema/migrations"
  }
}
