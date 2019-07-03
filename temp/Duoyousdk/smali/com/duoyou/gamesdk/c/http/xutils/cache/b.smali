.class public final Lcom/duoyou/gamesdk/c/http/xutils/cache/b;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/duoyou/gamesdk/c/http/xutils/cache/b;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private b:Z

.field private final c:Lcom/duoyou/gamesdk/c/http/xutils/a;

.field private d:Ljava/io/File;

.field private e:J

.field private final f:Ljava/util/concurrent/Executor;

.field private g:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lcom/duoyou/gamesdk/c/http/xutils/cache/b;->a:Ljava/util/HashMap;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/cache/b;->b:Z

    const-wide/32 v0, 0x6400000

    iput-wide v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/cache/b;->e:J

    new-instance v0, Lcom/duoyou/gamesdk/c/http/xutils/common/task/a;

    invoke-direct {v0, v2, v2}, Lcom/duoyou/gamesdk/c/http/xutils/common/task/a;-><init>(IZ)V

    iput-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/cache/b;->f:Ljava/util/concurrent/Executor;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/cache/b;->g:J

    sget-object v0, Lcom/duoyou/gamesdk/c/http/xutils/config/DbConfigs;->HTTP:Lcom/duoyou/gamesdk/c/http/xutils/config/DbConfigs;

    invoke-virtual {v0}, Lcom/duoyou/gamesdk/c/http/xutils/config/DbConfigs;->getConfig()Lcom/duoyou/gamesdk/c/http/xutils/a$a;

    move-result-object v0

    invoke-static {v0}, Lcom/duoyou/gamesdk/c/http/xutils/c;->a(Lcom/duoyou/gamesdk/c/http/xutils/a$a;)Lcom/duoyou/gamesdk/c/http/xutils/a;

    move-result-object v0

    iput-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/cache/b;->c:Lcom/duoyou/gamesdk/c/http/xutils/a;

    invoke-static {p1}, Lcom/duoyou/gamesdk/c/http/xutils/common/a/b;->a(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/cache/b;->d:Ljava/io/File;

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/cache/b;->d:Ljava/io/File;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/cache/b;->d:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/cache/b;->d:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iput-boolean v2, p0, Lcom/duoyou/gamesdk/c/http/xutils/cache/b;->b:Z

    :cond_1
    invoke-direct {p0}, Lcom/duoyou/gamesdk/c/http/xutils/cache/b;->c()V

    return-void
.end method

.method static synthetic a(Lcom/duoyou/gamesdk/c/http/xutils/cache/b;J)J
    .locals 1

    iput-wide p1, p0, Lcom/duoyou/gamesdk/c/http/xutils/cache/b;->g:J

    return-wide p1
.end method

.method static synthetic a(Lcom/duoyou/gamesdk/c/http/xutils/cache/b;)Lcom/duoyou/gamesdk/c/http/xutils/a;
    .locals 1

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/cache/b;->c:Lcom/duoyou/gamesdk/c/http/xutils/a;

    return-object v0
.end method

.method public static declared-synchronized a(Ljava/lang/String;)Lcom/duoyou/gamesdk/c/http/xutils/cache/b;
    .locals 3

    const-class v1, Lcom/duoyou/gamesdk/c/http/xutils/cache/b;

    monitor-enter v1

    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "xUtils_cache"

    :cond_0
    sget-object v0, Lcom/duoyou/gamesdk/c/http/xutils/cache/b;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoyou/gamesdk/c/http/xutils/cache/b;

    if-nez v0, :cond_1

    new-instance v0, Lcom/duoyou/gamesdk/c/http/xutils/cache/b;

    invoke-direct {v0, p0}, Lcom/duoyou/gamesdk/c/http/xutils/cache/b;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/duoyou/gamesdk/c/http/xutils/cache/b;->a:Ljava/util/HashMap;

    invoke-virtual {v2, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private a()V
    .locals 2

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/cache/b;->f:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/duoyou/gamesdk/c/http/xutils/cache/b$2;

    invoke-direct {v1, p0}, Lcom/duoyou/gamesdk/c/http/xutils/cache/b$2;-><init>(Lcom/duoyou/gamesdk/c/http/xutils/cache/b;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic a(Lcom/duoyou/gamesdk/c/http/xutils/cache/b;Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/duoyou/gamesdk/c/http/xutils/cache/b;->d(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private b()V
    .locals 4

    :try_start_0
    const-string v0, "expires"

    const-string v1, "<"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/duoyou/gamesdk/c/http/xutils/db/sqlite/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/duoyou/gamesdk/c/http/xutils/db/sqlite/c;

    move-result-object v0

    iget-object v1, p0, Lcom/duoyou/gamesdk/c/http/xutils/cache/b;->c:Lcom/duoyou/gamesdk/c/http/xutils/a;

    const-class v2, Lcom/duoyou/gamesdk/c/http/xutils/cache/a;

    invoke-interface {v1, v2}, Lcom/duoyou/gamesdk/c/http/xutils/a;->c(Ljava/lang/Class;)Lcom/duoyou/gamesdk/c/http/xutils/db/d;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/duoyou/gamesdk/c/http/xutils/db/d;->a(Lcom/duoyou/gamesdk/c/http/xutils/db/sqlite/c;)Lcom/duoyou/gamesdk/c/http/xutils/db/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/duoyou/gamesdk/c/http/xutils/db/d;->g()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/duoyou/gamesdk/c/http/xutils/cache/b;->c:Lcom/duoyou/gamesdk/c/http/xutils/a;

    const-class v3, Lcom/duoyou/gamesdk/c/http/xutils/cache/a;

    invoke-interface {v2, v3, v0}, Lcom/duoyou/gamesdk/c/http/xutils/a;->a(Ljava/lang/Class;Lcom/duoyou/gamesdk/c/http/xutils/db/sqlite/c;)I

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoyou/gamesdk/c/http/xutils/cache/a;

    invoke-virtual {v0}, Lcom/duoyou/gamesdk/c/http/xutils/cache/a;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {p0, v0}, Lcom/duoyou/gamesdk/c/http/xutils/cache/b;->d(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/duoyou/gamesdk/c/http/xutils/common/a/e;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method

.method static synthetic b(Lcom/duoyou/gamesdk/c/http/xutils/cache/b;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/cache/b;->b:Z

    return v0
.end method

.method static synthetic c(Lcom/duoyou/gamesdk/c/http/xutils/cache/b;)J
    .locals 2

    iget-wide v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/cache/b;->g:J

    return-wide v0
.end method

.method private c()V
    .locals 2

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/cache/b;->f:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/duoyou/gamesdk/c/http/xutils/cache/b$3;

    invoke-direct {v1, p0}, Lcom/duoyou/gamesdk/c/http/xutils/cache/b$3;-><init>(Lcom/duoyou/gamesdk/c/http/xutils/cache/b;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic d(Lcom/duoyou/gamesdk/c/http/xutils/cache/b;)V
    .locals 0

    invoke-direct {p0}, Lcom/duoyou/gamesdk/c/http/xutils/cache/b;->b()V

    return-void
.end method

.method private d(Ljava/lang/String;)Z
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x1

    :try_start_0
    invoke-static {p1, v0}, Lcom/duoyou/gamesdk/c/http/xutils/common/a/h;->a(Ljava/lang/String;Z)Lcom/duoyou/gamesdk/c/http/xutils/common/a/h;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/duoyou/gamesdk/c/http/xutils/common/a/h;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/duoyou/gamesdk/c/http/xutils/common/a/c;->a(Ljava/io/File;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    invoke-static {v1}, Lcom/duoyou/gamesdk/c/http/xutils/common/a/c;->a(Ljava/io/Closeable;)V

    :goto_0
    return v0

    :cond_0
    invoke-static {v1}, Lcom/duoyou/gamesdk/c/http/xutils/common/a/c;->a(Ljava/io/Closeable;)V

    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v1}, Lcom/duoyou/gamesdk/c/http/xutils/common/a/c;->a(Ljava/io/Closeable;)V

    throw v0
.end method

.method static synthetic e(Lcom/duoyou/gamesdk/c/http/xutils/cache/b;)Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/cache/b;->d:Ljava/io/File;

    return-object v0
.end method

.method static synthetic f(Lcom/duoyou/gamesdk/c/http/xutils/cache/b;)J
    .locals 2

    iget-wide v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/cache/b;->e:J

    return-wide v0
.end method


# virtual methods
.method a(Lcom/duoyou/gamesdk/c/http/xutils/cache/DiskCacheFile;)Lcom/duoyou/gamesdk/c/http/xutils/cache/DiskCacheFile;
    .locals 9

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/duoyou/gamesdk/c/http/xutils/cache/DiskCacheFile;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x1

    cmp-long v0, v2, v4

    if-gez v0, :cond_1

    invoke-static {p1}, Lcom/duoyou/gamesdk/c/http/xutils/common/a/c;->a(Ljava/io/Closeable;)V

    move-object p1, v1

    :cond_0
    :goto_0
    return-object p1

    :cond_1
    iget-boolean v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/cache/b;->b:Z

    if-eqz v0, :cond_2

    if-nez p1, :cond_3

    :cond_2
    move-object p1, v1

    goto :goto_0

    :cond_3
    iget-object v3, p1, Lcom/duoyou/gamesdk/c/http/xutils/cache/DiskCacheFile;->cacheEntity:Lcom/duoyou/gamesdk/c/http/xutils/cache/a;

    invoke-virtual {p1}, Lcom/duoyou/gamesdk/c/http/xutils/cache/DiskCacheFile;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v2, ".tmp"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v3}, Lcom/duoyou/gamesdk/c/http/xutils/cache/a;->b()Ljava/lang/String;

    move-result-object v4

    const/4 v0, 0x1

    const-wide/16 v6, 0xbb8

    invoke-static {v4, v0, v6, v7}, Lcom/duoyou/gamesdk/c/http/xutils/common/a/h;->a(Ljava/lang/String;ZJ)Lcom/duoyou/gamesdk/c/http/xutils/common/a/h;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v2

    if-eqz v2, :cond_5

    :try_start_1
    invoke-virtual {v2}, Lcom/duoyou/gamesdk/c/http/xutils/common/a/h;->a()Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Lcom/duoyou/gamesdk/c/http/xutils/cache/DiskCacheFile;

    invoke-direct {v0, v3, v4, v2}, Lcom/duoyou/gamesdk/c/http/xutils/cache/DiskCacheFile;-><init>(Lcom/duoyou/gamesdk/c/http/xutils/cache/a;Ljava/lang/String;Lcom/duoyou/gamesdk/c/http/xutils/common/a/h;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    invoke-virtual {p1, v0}, Lcom/duoyou/gamesdk/c/http/xutils/cache/DiskCacheFile;->renameTo(Ljava/io/File;)Z
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v4

    if-eqz v4, :cond_4

    :try_start_3
    iget-object v1, p0, Lcom/duoyou/gamesdk/c/http/xutils/cache/b;->c:Lcom/duoyou/gamesdk/c/http/xutils/a;

    invoke-interface {v1, v3}, Lcom/duoyou/gamesdk/c/http/xutils/a;->a(Ljava/lang/Object;)V
    :try_end_3
    .catch Lcom/duoyou/gamesdk/c/http/xutils/ex/DbException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :goto_1
    :try_start_4
    invoke-direct {p0}, Lcom/duoyou/gamesdk/c/http/xutils/cache/b;->a()V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    if-nez v0, :cond_6

    invoke-static {v0}, Lcom/duoyou/gamesdk/c/http/xutils/common/a/c;->a(Ljava/io/Closeable;)V

    invoke-static {v2}, Lcom/duoyou/gamesdk/c/http/xutils/common/a/c;->a(Ljava/io/Closeable;)V

    invoke-static {v0}, Lcom/duoyou/gamesdk/c/http/xutils/common/a/c;->a(Ljava/io/File;)Z

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_5
    invoke-virtual {v1}, Lcom/duoyou/gamesdk/c/http/xutils/ex/DbException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/duoyou/gamesdk/c/http/xutils/common/a/e;->b(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_1

    :catch_1
    move-exception v1

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    :goto_2
    :try_start_6
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/duoyou/gamesdk/c/http/xutils/common/a/e;->b(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    if-nez p1, :cond_7

    invoke-static {v1}, Lcom/duoyou/gamesdk/c/http/xutils/common/a/c;->a(Ljava/io/Closeable;)V

    invoke-static {v2}, Lcom/duoyou/gamesdk/c/http/xutils/common/a/c;->a(Ljava/io/Closeable;)V

    invoke-static {v1}, Lcom/duoyou/gamesdk/c/http/xutils/common/a/c;->a(Ljava/io/File;)Z

    goto :goto_0

    :cond_4
    :try_start_7
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "rename:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/duoyou/gamesdk/c/http/xutils/cache/DiskCacheFile;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :catchall_0
    move-exception v3

    move-object v8, v3

    move-object v3, v1

    move-object v1, v0

    move-object v0, v8

    :goto_3
    if-nez v3, :cond_8

    invoke-static {v1}, Lcom/duoyou/gamesdk/c/http/xutils/common/a/c;->a(Ljava/io/Closeable;)V

    invoke-static {v2}, Lcom/duoyou/gamesdk/c/http/xutils/common/a/c;->a(Ljava/io/Closeable;)V

    invoke-static {v1}, Lcom/duoyou/gamesdk/c/http/xutils/common/a/c;->a(Ljava/io/File;)Z

    :goto_4
    throw v0

    :cond_5
    :try_start_8
    new-instance v0, Lcom/duoyou/gamesdk/c/http/xutils/ex/FileLockedException;

    invoke-direct {v0, v4}, Lcom/duoyou/gamesdk/c/http/xutils/ex/FileLockedException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :catch_2
    move-exception v0

    goto :goto_2

    :cond_6
    invoke-static {p1}, Lcom/duoyou/gamesdk/c/http/xutils/common/a/c;->a(Ljava/io/Closeable;)V

    invoke-static {p1}, Lcom/duoyou/gamesdk/c/http/xutils/common/a/c;->a(Ljava/io/File;)Z

    move-object p1, v0

    goto/16 :goto_0

    :cond_7
    invoke-static {p1}, Lcom/duoyou/gamesdk/c/http/xutils/common/a/c;->a(Ljava/io/Closeable;)V

    invoke-static {p1}, Lcom/duoyou/gamesdk/c/http/xutils/common/a/c;->a(Ljava/io/File;)Z

    goto/16 :goto_0

    :cond_8
    invoke-static {p1}, Lcom/duoyou/gamesdk/c/http/xutils/common/a/c;->a(Ljava/io/Closeable;)V

    invoke-static {p1}, Lcom/duoyou/gamesdk/c/http/xutils/common/a/c;->a(Ljava/io/File;)Z

    goto :goto_4

    :catchall_1
    move-exception v0

    move-object v2, v1

    move-object v3, v1

    goto :goto_3

    :catchall_2
    move-exception v0

    move-object v3, v1

    goto :goto_3

    :catchall_3
    move-exception v1

    move-object v3, v0

    move-object v8, v0

    move-object v0, v1

    move-object v1, v8

    goto :goto_3

    :catchall_4
    move-exception v0

    move-object v3, p1

    goto :goto_3

    :catch_3
    move-exception v0

    move-object v2, v1

    goto :goto_2
.end method

.method public a(J)Lcom/duoyou/gamesdk/c/http/xutils/cache/b;
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    invoke-static {}, Lcom/duoyou/gamesdk/c/http/xutils/common/a/b;->a()J

    move-result-wide v0

    cmp-long v2, v0, p1

    if-lez v2, :cond_1

    iput-wide p1, p0, Lcom/duoyou/gamesdk/c/http/xutils/cache/b;->e:J

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    iput-wide v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/cache/b;->e:J

    goto :goto_0
.end method

.method public a(Lcom/duoyou/gamesdk/c/http/xutils/cache/a;)V
    .locals 4

    iget-boolean v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/cache/b;->b:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/duoyou/gamesdk/c/http/xutils/cache/a;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/duoyou/gamesdk/c/http/xutils/cache/a;->d()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/cache/b;->c:Lcom/duoyou/gamesdk/c/http/xutils/a;

    invoke-interface {v0, p1}, Lcom/duoyou/gamesdk/c/http/xutils/a;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/duoyou/gamesdk/c/http/xutils/ex/DbException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    invoke-direct {p0}, Lcom/duoyou/gamesdk/c/http/xutils/cache/b;->a()V

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/duoyou/gamesdk/c/http/xutils/ex/DbException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/duoyou/gamesdk/c/http/xutils/common/a/e;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public b(Lcom/duoyou/gamesdk/c/http/xutils/cache/a;)Lcom/duoyou/gamesdk/c/http/xutils/cache/DiskCacheFile;
    .locals 3

    iget-boolean v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/cache/b;->b:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_2

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/duoyou/gamesdk/c/http/xutils/cache/b;->d:Ljava/io/File;

    invoke-virtual {p1}, Lcom/duoyou/gamesdk/c/http/xutils/cache/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/duoyou/gamesdk/c/http/xutils/common/a/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/duoyou/gamesdk/c/http/xutils/cache/a;->b(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/duoyou/gamesdk/c/http/xutils/cache/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".tmp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x1

    invoke-static {v1, v0}, Lcom/duoyou/gamesdk/c/http/xutils/common/a/h;->a(Ljava/lang/String;Z)Lcom/duoyou/gamesdk/c/http/xutils/common/a/h;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lcom/duoyou/gamesdk/c/http/xutils/common/a/h;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Lcom/duoyou/gamesdk/c/http/xutils/cache/DiskCacheFile;

    invoke-direct {v0, p1, v1, v2}, Lcom/duoyou/gamesdk/c/http/xutils/cache/DiskCacheFile;-><init>(Lcom/duoyou/gamesdk/c/http/xutils/cache/a;Ljava/lang/String;Lcom/duoyou/gamesdk/c/http/xutils/common/a/h;)V

    invoke-virtual {v0}, Lcom/duoyou/gamesdk/c/http/xutils/cache/DiskCacheFile;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/duoyou/gamesdk/c/http/xutils/cache/DiskCacheFile;->mkdirs()Z

    goto :goto_0

    :cond_3
    new-instance v0, Lcom/duoyou/gamesdk/c/http/xutils/ex/FileLockedException;

    invoke-virtual {p1}, Lcom/duoyou/gamesdk/c/http/xutils/cache/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/duoyou/gamesdk/c/http/xutils/ex/FileLockedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public b(Ljava/lang/String;)Lcom/duoyou/gamesdk/c/http/xutils/cache/a;
    .locals 6

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/cache/b;->b:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    move-object v0, v1

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/cache/b;->c:Lcom/duoyou/gamesdk/c/http/xutils/a;

    const-class v2, Lcom/duoyou/gamesdk/c/http/xutils/cache/a;

    invoke-interface {v0, v2}, Lcom/duoyou/gamesdk/c/http/xutils/a;->c(Ljava/lang/Class;)Lcom/duoyou/gamesdk/c/http/xutils/db/d;

    move-result-object v0

    const-string v2, "key"

    const-string v3, "="

    invoke-virtual {v0, v2, v3, p1}, Lcom/duoyou/gamesdk/c/http/xutils/db/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/duoyou/gamesdk/c/http/xutils/db/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoyou/gamesdk/c/http/xutils/db/d;->f()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoyou/gamesdk/c/http/xutils/cache/a;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/duoyou/gamesdk/c/http/xutils/cache/a;->d()J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gez v2, :cond_3

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/duoyou/gamesdk/c/http/xutils/common/a/e;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/duoyou/gamesdk/c/http/xutils/cache/b;->f:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/duoyou/gamesdk/c/http/xutils/cache/b$1;

    invoke-direct {v2, p0, v0}, Lcom/duoyou/gamesdk/c/http/xutils/cache/b$1;-><init>(Lcom/duoyou/gamesdk/c/http/xutils/cache/b;Lcom/duoyou/gamesdk/c/http/xutils/cache/a;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public c(Ljava/lang/String;)Lcom/duoyou/gamesdk/c/http/xutils/cache/DiskCacheFile;
    .locals 6

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/duoyou/gamesdk/c/http/xutils/cache/b;->b:Z

    if-eqz v1, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/duoyou/gamesdk/c/http/xutils/cache/b;->b(Ljava/lang/String;)Lcom/duoyou/gamesdk/c/http/xutils/cache/a;

    move-result-object v2

    if-eqz v2, :cond_0

    new-instance v1, Ljava/io/File;

    invoke-virtual {v2}, Lcom/duoyou/gamesdk/c/http/xutils/cache/a;->b()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v2}, Lcom/duoyou/gamesdk/c/http/xutils/cache/a;->b()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    const-wide/16 v4, 0xbb8

    invoke-static {v1, v3, v4, v5}, Lcom/duoyou/gamesdk/c/http/xutils/common/a/h;->a(Ljava/lang/String;ZJ)Lcom/duoyou/gamesdk/c/http/xutils/common/a/h;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/duoyou/gamesdk/c/http/xutils/common/a/h;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/duoyou/gamesdk/c/http/xutils/cache/DiskCacheFile;

    invoke-virtual {v2}, Lcom/duoyou/gamesdk/c/http/xutils/cache/a;->b()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v4, v3}, Lcom/duoyou/gamesdk/c/http/xutils/cache/DiskCacheFile;-><init>(Lcom/duoyou/gamesdk/c/http/xutils/cache/a;Ljava/lang/String;Lcom/duoyou/gamesdk/c/http/xutils/common/a/h;)V

    invoke-virtual {v1}, Lcom/duoyou/gamesdk/c/http/xutils/cache/DiskCacheFile;->exists()Z

    move-result v3

    if-nez v3, :cond_2

    :try_start_0
    iget-object v1, p0, Lcom/duoyou/gamesdk/c/http/xutils/cache/b;->c:Lcom/duoyou/gamesdk/c/http/xutils/a;

    invoke-interface {v1, v2}, Lcom/duoyou/gamesdk/c/http/xutils/a;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/duoyou/gamesdk/c/http/xutils/ex/DbException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lcom/duoyou/gamesdk/c/http/xutils/ex/DbException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/duoyou/gamesdk/c/http/xutils/common/a/e;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method
