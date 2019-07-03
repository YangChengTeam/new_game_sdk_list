.class public Lcom/duoyou/a/a/c/a;
.super Ljava/lang/Object;


# direct methods
.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Lcom/duoyou/a/a/c/c;->a(Landroid/content/Context;)Lcom/duoyou/a/a/c/b;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/duoyou/a/a/c/b;->e()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/duoyou/a/a/a/a/e;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const-string v0, "ffffffffffffffffffffffff"

    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {v0}, Lcom/duoyou/a/a/c/b;->e()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
