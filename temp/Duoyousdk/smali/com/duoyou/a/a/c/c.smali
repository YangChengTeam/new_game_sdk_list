.class public Lcom/duoyou/a/a/c/c;
.super Ljava/lang/Object;


# static fields
.field static a:Ljava/lang/String;

.field static final b:Ljava/lang/Object;

.field private static c:Lcom/duoyou/a/a/c/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/duoyou/a/a/c/c;->c:Lcom/duoyou/a/a/c/b;

    const-string v0, "d6fc3a4a06adbde89223bvefedc24fecde188aaa9161"

    sput-object v0, Lcom/duoyou/a/a/c/c;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/duoyou/a/a/c/c;->b:Ljava/lang/Object;

    return-void
.end method

.method static a(Lcom/duoyou/a/a/c/b;)J
    .locals 6

    if-eqz p0, :cond_0

    const-string v0, "%s%s%s%s%s"

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/duoyou/a/a/c/b;->e()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/duoyou/a/a/c/b;->d()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/duoyou/a/a/c/b;->a()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/duoyou/a/a/c/b;->c()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    invoke-virtual {p0}, Lcom/duoyou/a/a/c/b;->b()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/duoyou/a/a/a/a/e;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/zip/Adler32;

    invoke-direct {v1}, Ljava/util/zip/Adler32;-><init>()V

    invoke-virtual {v1}, Ljava/util/zip/Adler32;->reset()V

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/zip/Adler32;->update([B)V

    invoke-virtual {v1}, Ljava/util/zip/Adler32;->getValue()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public static declared-synchronized a(Landroid/content/Context;)Lcom/duoyou/a/a/c/b;
    .locals 2

    const-class v1, Lcom/duoyou/a/a/c/c;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/duoyou/a/a/c/c;->c:Lcom/duoyou/a/a/c/b;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/duoyou/a/a/c/c;->c:Lcom/duoyou/a/a/c/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v1

    return-object v0

    :cond_0
    if-eqz p0, :cond_1

    :try_start_1
    invoke-static {p0}, Lcom/duoyou/a/a/c/c;->b(Landroid/content/Context;)Lcom/duoyou/a/a/c/b;

    move-result-object v0

    sput-object v0, Lcom/duoyou/a/a/c/c;->c:Lcom/duoyou/a/a/c/b;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Landroid/content/Context;)Lcom/duoyou/a/a/c/b;
    .locals 7

    if-eqz p0, :cond_1

    new-instance v0, Lcom/duoyou/a/a/c/b;

    invoke-direct {v0}, Lcom/duoyou/a/a/c/b;-><init>()V

    sget-object v2, Lcom/duoyou/a/a/c/c;->b:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    invoke-static {p0}, Lcom/duoyou/a/a/c/d;->a(Landroid/content/Context;)Lcom/duoyou/a/a/c/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoyou/a/a/c/d;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/duoyou/a/a/a/a/e;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    :goto_0
    new-instance v0, Lcom/duoyou/a/a/c/b;

    invoke-direct {v0}, Lcom/duoyou/a/a/c/b;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {p0}, Lcom/duoyou/a/a/a/a/d;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0}, Lcom/duoyou/a/a/a/a/d;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v3}, Lcom/duoyou/a/a/c/b;->c(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lcom/duoyou/a/a/c/b;->a(Ljava/lang/String;)V

    invoke-virtual {v0, v4, v5}, Lcom/duoyou/a/a/c/b;->b(J)V

    invoke-virtual {v0, v6}, Lcom/duoyou/a/a/c/b;->b(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/duoyou/a/a/c/b;->d(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/duoyou/a/a/c/c;->a(Lcom/duoyou/a/a/c/b;)J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/duoyou/a/a/c/b;->a(J)V

    monitor-exit v2

    :goto_1
    return-object v0

    :cond_0
    monitor-exit v2

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    move-object v1, v0

    goto :goto_0
.end method
