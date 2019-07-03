.class public Lcom/duoyou/gamesdk/c/c/a/c;
.super Ljava/lang/Object;


# direct methods
.method private static a()Ljava/lang/String;
    .locals 3

    const-string v0, "AB9CD8EF7GH6IJ5KL4MN3OP2QR1ST0UVWXYZ"

    const/4 v1, 0x0

    const/16 v2, 0x18

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/duoyou/gamesdk/c/c/a/c;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/duoyou/gamesdk/c/c/a/c;->b()Ljava/lang/String;

    move-result-object v2

    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    const-string v4, "desede/CBC/PKCS5Padding"

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v3, v1, v4, v2}, Lcom/duoyou/gamesdk/c/c/b/a/a;->a([B[BLjava/lang/String;[B)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v0, ""

    goto :goto_0
.end method

.method private static b()Ljava/lang/String;
    .locals 3

    const-string v0, "AB9CD8EF7GH6IJ5KL4MN3OP2QR1ST0UVWXYZ"

    const/4 v1, 0x0

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    :try_start_0
    invoke-static {}, Lcom/duoyou/gamesdk/c/c/a/c;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/duoyou/gamesdk/c/c/a/c;->b()Ljava/lang/String;

    move-result-object v2

    new-instance v0, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    const-string v3, "desede/CBC/PKCS5Padding"

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {p0, v1, v3, v2}, Lcom/duoyou/gamesdk/c/c/b/a/a;->a(Ljava/lang/String;[BLjava/lang/String;[B)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v0, ""

    goto :goto_0
.end method
