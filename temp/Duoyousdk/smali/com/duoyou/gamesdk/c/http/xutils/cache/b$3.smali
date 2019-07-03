.class Lcom/duoyou/gamesdk/c/http/xutils/cache/b$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/duoyou/gamesdk/c/http/xutils/cache/b;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/duoyou/gamesdk/c/http/xutils/cache/b;


# direct methods
.method constructor <init>(Lcom/duoyou/gamesdk/c/http/xutils/cache/b;)V
    .locals 0

    iput-object p1, p0, Lcom/duoyou/gamesdk/c/http/xutils/cache/b$3;->a:Lcom/duoyou/gamesdk/c/http/xutils/cache/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/cache/b$3;->a:Lcom/duoyou/gamesdk/c/http/xutils/cache/b;

    invoke-static {v0}, Lcom/duoyou/gamesdk/c/http/xutils/cache/b;->b(Lcom/duoyou/gamesdk/c/http/xutils/cache/b;)Z

    move-result v0

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/cache/b$3;->a:Lcom/duoyou/gamesdk/c/http/xutils/cache/b;

    invoke-static {v0}, Lcom/duoyou/gamesdk/c/http/xutils/cache/b;->e(Lcom/duoyou/gamesdk/c/http/xutils/cache/b;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_1

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iget-object v4, p0, Lcom/duoyou/gamesdk/c/http/xutils/cache/b$3;->a:Lcom/duoyou/gamesdk/c/http/xutils/cache/b;

    invoke-static {v4}, Lcom/duoyou/gamesdk/c/http/xutils/cache/b;->a(Lcom/duoyou/gamesdk/c/http/xutils/cache/b;)Lcom/duoyou/gamesdk/c/http/xutils/a;

    move-result-object v4

    const-class v5, Lcom/duoyou/gamesdk/c/http/xutils/cache/a;

    invoke-interface {v4, v5}, Lcom/duoyou/gamesdk/c/http/xutils/a;->c(Ljava/lang/Class;)Lcom/duoyou/gamesdk/c/http/xutils/db/d;

    move-result-object v4

    const-string v5, "path"

    const-string v6, "="

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v5, v6, v7}, Lcom/duoyou/gamesdk/c/http/xutils/db/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/duoyou/gamesdk/c/http/xutils/db/d;

    move-result-object v4

    invoke-virtual {v4}, Lcom/duoyou/gamesdk/c/http/xutils/db/d;->h()J

    move-result-wide v4

    const-wide/16 v6, 0x1

    cmp-long v4, v4, v6

    if-gez v4, :cond_0

    invoke-static {v0}, Lcom/duoyou/gamesdk/c/http/xutils/common/a/c;->a(Ljava/io/File;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :cond_0
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v0}, Lcom/duoyou/gamesdk/c/http/xutils/common/a/e;->b(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/duoyou/gamesdk/c/http/xutils/common/a/e;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method
