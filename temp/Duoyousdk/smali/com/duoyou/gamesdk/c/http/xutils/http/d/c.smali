.class public Lcom/duoyou/gamesdk/c/http/xutils/http/d/c;
.super Lcom/duoyou/gamesdk/c/http/xutils/http/d/g;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/duoyou/gamesdk/c/http/xutils/http/d/g",
        "<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# instance fields
.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Z

.field private f:Z

.field private g:J

.field private h:Ljava/lang/String;

.field private i:Lcom/duoyou/gamesdk/c/http/xutils/cache/DiskCacheFile;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/duoyou/gamesdk/c/http/xutils/http/d/g;-><init>()V

    return-void
.end method

.method private a(Ljava/io/File;)Ljava/io/File;
    .locals 6

    iget-boolean v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/d/c;->f:Z

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/d/c;->h:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/d/c;->h:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/d/c;->h:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_2

    :goto_1
    move-object p1, v0

    :cond_1
    :goto_2
    return-object p1

    :cond_2
    move-object v0, p1

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/d/c;->d:Ljava/lang/String;

    iget-object v1, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/d/c;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/d/c;->d:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object p1, v0

    goto :goto_2
.end method

.method private d(Lcom/duoyou/gamesdk/c/http/xutils/http/e/d;)V
    .locals 3

    new-instance v0, Lcom/duoyou/gamesdk/c/http/xutils/cache/a;

    invoke-direct {v0}, Lcom/duoyou/gamesdk/c/http/xutils/cache/a;-><init>()V

    invoke-virtual {p1}, Lcom/duoyou/gamesdk/c/http/xutils/http/e/d;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/duoyou/gamesdk/c/http/xutils/cache/a;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/d/c;->a:Lcom/duoyou/gamesdk/c/http/xutils/http/e;

    invoke-virtual {v1}, Lcom/duoyou/gamesdk/c/http/xutils/http/e;->o()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/duoyou/gamesdk/c/http/xutils/cache/b;->a(Ljava/lang/String;)Lcom/duoyou/gamesdk/c/http/xutils/cache/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/duoyou/gamesdk/c/http/xutils/cache/b;->b(Lcom/duoyou/gamesdk/c/http/xutils/cache/a;)Lcom/duoyou/gamesdk/c/http/xutils/cache/DiskCacheFile;

    move-result-object v0

    iput-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/d/c;->i:Lcom/duoyou/gamesdk/c/http/xutils/cache/DiskCacheFile;

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/d/c;->i:Lcom/duoyou/gamesdk/c/http/xutils/cache/DiskCacheFile;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/d/c;->i:Lcom/duoyou/gamesdk/c/http/xutils/cache/DiskCacheFile;

    invoke-virtual {v0}, Lcom/duoyou/gamesdk/c/http/xutils/cache/DiskCacheFile;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/d/c;->d:Ljava/lang/String;

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/d/c;->d:Ljava/lang/String;

    iput-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/d/c;->c:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/d/c;->f:Z

    return-void

    :cond_0
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "create cache file error:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/duoyou/gamesdk/c/http/xutils/http/e/d;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static e(Lcom/duoyou/gamesdk/c/http/xutils/http/e/d;)Ljava/lang/String;
    .locals 4

    const/4 v1, 0x0

    if-nez p0, :cond_1

    move-object v0, v1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const-string v0, "Content-Disposition"

    invoke-virtual {p0, v0}, Lcom/duoyou/gamesdk/c/http/xutils/http/e/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "filename="

    invoke-virtual {v2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_3

    add-int/lit8 v3, v0, 0x9

    const-string v0, ";"

    invoke-virtual {v2, v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    if-gez v0, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    :cond_2
    if-le v0, v3, :cond_3

    :try_start_0
    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/duoyou/gamesdk/c/http/xutils/http/e/d;->o()Lcom/duoyou/gamesdk/c/http/xutils/http/e;

    move-result-object v2

    invoke-virtual {v2}, Lcom/duoyou/gamesdk/c/http/xutils/http/e;->a()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "\""

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "\""

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/duoyou/gamesdk/c/http/xutils/common/a/e;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    move-object v0, v1

    goto :goto_0
.end method

.method private static f(Lcom/duoyou/gamesdk/c/http/xutils/http/e/d;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v1, "Accept-Ranges"

    invoke-virtual {p0, v1}, Lcom/duoyou/gamesdk/c/http/xutils/http/e/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v0, "bytes"

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    goto :goto_0

    :cond_2
    const-string v1, "Content-Range"

    invoke-virtual {p0, v1}, Lcom/duoyou/gamesdk/c/http/xutils/http/e/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "bytes"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public a()Lcom/duoyou/gamesdk/c/http/xutils/http/d/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/duoyou/gamesdk/c/http/xutils/http/d/g",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/duoyou/gamesdk/c/http/xutils/http/d/c;

    invoke-direct {v0}, Lcom/duoyou/gamesdk/c/http/xutils/http/d/c;-><init>()V

    return-object v0
.end method

.method public a(Lcom/duoyou/gamesdk/c/http/xutils/cache/a;)Ljava/io/File;
    .locals 2

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/d/c;->a:Lcom/duoyou/gamesdk/c/http/xutils/http/e;

    invoke-virtual {v0}, Lcom/duoyou/gamesdk/c/http/xutils/http/e;->o()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/duoyou/gamesdk/c/http/xutils/cache/b;->a(Ljava/lang/String;)Lcom/duoyou/gamesdk/c/http/xutils/cache/b;

    move-result-object v0

    invoke-virtual {p1}, Lcom/duoyou/gamesdk/c/http/xutils/cache/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/duoyou/gamesdk/c/http/xutils/cache/b;->c(Ljava/lang/String;)Lcom/duoyou/gamesdk/c/http/xutils/cache/DiskCacheFile;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/duoyou/gamesdk/c/http/xutils/http/e/d;)Ljava/io/File;
    .locals 12

    const-wide/16 v10, 0x200

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    :try_start_0
    iget-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/d/c;->a:Lcom/duoyou/gamesdk/c/http/xutils/http/e;

    invoke-virtual {v0}, Lcom/duoyou/gamesdk/c/http/xutils/http/e;->u()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/d/c;->d:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/d/c;->i:Lcom/duoyou/gamesdk/c/http/xutils/cache/DiskCacheFile;

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/d/c;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/d/c;->b:Lcom/duoyou/gamesdk/c/http/xutils/http/d;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/d/c;->b:Lcom/duoyou/gamesdk/c/http/xutils/http/d;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    invoke-interface/range {v1 .. v6}, Lcom/duoyou/gamesdk/c/http/xutils/http/d;->a(JJZ)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/duoyou/gamesdk/c/http/xutils/common/Callback$CancelledException;

    const-string v1, "download stopped!"

    invoke-direct {v0, v1}, Lcom/duoyou/gamesdk/c/http/xutils/common/Callback$CancelledException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lcom/duoyou/gamesdk/c/http/xutils/ex/HttpException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catch_0
    move-exception v0

    move-object v1, v7

    :goto_0
    :try_start_1
    invoke-virtual {v0}, Lcom/duoyou/gamesdk/c/http/xutils/ex/HttpException;->getCode()I

    move-result v2

    const/16 v3, 0x1a0

    if-ne v2, v3, :cond_e

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/d/c;->i:Lcom/duoyou/gamesdk/c/http/xutils/cache/DiskCacheFile;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/d/c;->i:Lcom/duoyou/gamesdk/c/http/xutils/cache/DiskCacheFile;

    invoke-virtual {v0}, Lcom/duoyou/gamesdk/c/http/xutils/cache/DiskCacheFile;->commit()Lcom/duoyou/gamesdk/c/http/xutils/cache/DiskCacheFile;

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_d

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_d

    iget-boolean v2, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/d/c;->f:Z

    if-eqz v2, :cond_0

    invoke-static {p1}, Lcom/duoyou/gamesdk/c/http/xutils/http/d/c;->e(Lcom/duoyou/gamesdk/c/http/xutils/http/e/d;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/d/c;->h:Ljava/lang/String;

    :cond_0
    invoke-direct {p0, v0}, Lcom/duoyou/gamesdk/c/http/xutils/http/d/c;->a(Ljava/io/File;)Ljava/io/File;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    invoke-static {v1}, Lcom/duoyou/gamesdk/c/http/xutils/common/a/c;->a(Ljava/io/Closeable;)V

    iget-object v1, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/d/c;->i:Lcom/duoyou/gamesdk/c/http/xutils/cache/DiskCacheFile;

    invoke-static {v1}, Lcom/duoyou/gamesdk/c/http/xutils/common/a/c;->a(Ljava/io/Closeable;)V

    :goto_2
    return-object v0

    :cond_1
    :try_start_2
    invoke-direct {p0, p1}, Lcom/duoyou/gamesdk/c/http/xutils/http/d/c;->d(Lcom/duoyou/gamesdk/c/http/xutils/http/e/d;)V

    :goto_3
    iget-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/d/c;->b:Lcom/duoyou/gamesdk/c/http/xutils/http/d;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/d/c;->b:Lcom/duoyou/gamesdk/c/http/xutils/http/d;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    invoke-interface/range {v1 .. v6}, Lcom/duoyou/gamesdk/c/http/xutils/http/d;->a(JJZ)Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v0, Lcom/duoyou/gamesdk/c/http/xutils/common/Callback$CancelledException;

    const-string v1, "download stopped!"

    invoke-direct {v0, v1}, Lcom/duoyou/gamesdk/c/http/xutils/common/Callback$CancelledException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catch Lcom/duoyou/gamesdk/c/http/xutils/ex/HttpException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    :goto_4
    invoke-static {v7}, Lcom/duoyou/gamesdk/c/http/xutils/common/a/c;->a(Ljava/io/Closeable;)V

    iget-object v1, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/d/c;->i:Lcom/duoyou/gamesdk/c/http/xutils/cache/DiskCacheFile;

    invoke-static {v1}, Lcom/duoyou/gamesdk/c/http/xutils/common/a/c;->a(Ljava/io/Closeable;)V

    throw v0

    :cond_2
    :try_start_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/d/c;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".tmp"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/d/c;->c:Ljava/lang/String;

    goto :goto_3

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/d/c;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_lock"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/duoyou/gamesdk/c/http/xutils/common/a/h;->a(Ljava/lang/String;Z)Lcom/duoyou/gamesdk/c/http/xutils/common/a/h;
    :try_end_3
    .catch Lcom/duoyou/gamesdk/c/http/xutils/ex/HttpException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v7

    if-eqz v7, :cond_4

    :try_start_4
    invoke-virtual {v7}, Lcom/duoyou/gamesdk/c/http/xutils/common/a/h;->a()Z

    move-result v0

    if-nez v0, :cond_5

    :cond_4
    new-instance v0, Lcom/duoyou/gamesdk/c/http/xutils/ex/FileLockedException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "download exists: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/d/c;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/duoyou/gamesdk/c/http/xutils/ex/FileLockedException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_1
    move-exception v0

    move-object v1, v7

    goto/16 :goto_0

    :cond_5
    invoke-virtual {p1}, Lcom/duoyou/gamesdk/c/http/xutils/http/e/d;->o()Lcom/duoyou/gamesdk/c/http/xutils/http/e;

    move-result-object v0

    iput-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/d/c;->a:Lcom/duoyou/gamesdk/c/http/xutils/http/e;

    iget-boolean v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/d/c;->e:Z

    if-eqz v0, :cond_f

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/d/c;->c:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    cmp-long v1, v2, v10

    if-gtz v1, :cond_6

    invoke-static {v0}, Lcom/duoyou/gamesdk/c/http/xutils/common/a/c;->a(Ljava/io/File;)Z

    move-wide v0, v8

    :goto_5
    iget-object v2, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/d/c;->a:Lcom/duoyou/gamesdk/c/http/xutils/http/e;

    const-string v3, "RANGE"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "bytes="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lcom/duoyou/gamesdk/c/http/xutils/http/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/d/c;->b:Lcom/duoyou/gamesdk/c/http/xutils/http/d;

    if-eqz v0, :cond_7

    iget-object v1, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/d/c;->b:Lcom/duoyou/gamesdk/c/http/xutils/http/d;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    invoke-interface/range {v1 .. v6}, Lcom/duoyou/gamesdk/c/http/xutils/http/d;->a(JJZ)Z

    move-result v0

    if-nez v0, :cond_7

    new-instance v0, Lcom/duoyou/gamesdk/c/http/xutils/common/Callback$CancelledException;

    const-string v1, "download stopped!"

    invoke-direct {v0, v1}, Lcom/duoyou/gamesdk/c/http/xutils/common/Callback$CancelledException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    sub-long v0, v2, v10

    goto :goto_5

    :cond_7
    invoke-virtual {p1}, Lcom/duoyou/gamesdk/c/http/xutils/http/e/d;->a()V

    invoke-virtual {p1}, Lcom/duoyou/gamesdk/c/http/xutils/http/e/d;->h()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/d/c;->g:J

    iget-boolean v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/d/c;->f:Z

    if-eqz v0, :cond_8

    invoke-static {p1}, Lcom/duoyou/gamesdk/c/http/xutils/http/d/c;->e(Lcom/duoyou/gamesdk/c/http/xutils/http/e/d;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/d/c;->h:Ljava/lang/String;

    :cond_8
    iget-boolean v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/d/c;->e:Z

    if-eqz v0, :cond_9

    invoke-static {p1}, Lcom/duoyou/gamesdk/c/http/xutils/http/d/c;->f(Lcom/duoyou/gamesdk/c/http/xutils/http/e/d;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/d/c;->e:Z

    :cond_9
    iget-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/d/c;->b:Lcom/duoyou/gamesdk/c/http/xutils/http/d;

    if-eqz v0, :cond_a

    iget-object v1, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/d/c;->b:Lcom/duoyou/gamesdk/c/http/xutils/http/d;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    invoke-interface/range {v1 .. v6}, Lcom/duoyou/gamesdk/c/http/xutils/http/d;->a(JJZ)Z

    move-result v0

    if-nez v0, :cond_a

    new-instance v0, Lcom/duoyou/gamesdk/c/http/xutils/common/Callback$CancelledException;

    const-string v1, "download stopped!"

    invoke-direct {v0, v1}, Lcom/duoyou/gamesdk/c/http/xutils/common/Callback$CancelledException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    iget-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/d/c;->i:Lcom/duoyou/gamesdk/c/http/xutils/cache/DiskCacheFile;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/d/c;->i:Lcom/duoyou/gamesdk/c/http/xutils/cache/DiskCacheFile;

    invoke-virtual {v0}, Lcom/duoyou/gamesdk/c/http/xutils/cache/DiskCacheFile;->getCacheEntity()Lcom/duoyou/gamesdk/c/http/xutils/cache/a;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/duoyou/gamesdk/c/http/xutils/cache/a;->c(J)V

    invoke-virtual {p1}, Lcom/duoyou/gamesdk/c/http/xutils/http/e/d;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/duoyou/gamesdk/c/http/xutils/cache/a;->d(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/duoyou/gamesdk/c/http/xutils/http/e/d;->j()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/duoyou/gamesdk/c/http/xutils/cache/a;->a(J)V

    new-instance v1, Ljava/util/Date;

    invoke-virtual {p1}, Lcom/duoyou/gamesdk/c/http/xutils/http/e/d;->k()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Lcom/duoyou/gamesdk/c/http/xutils/cache/a;->a(Ljava/util/Date;)V

    :cond_b
    invoke-virtual {p1}, Lcom/duoyou/gamesdk/c/http/xutils/http/e/d;->g()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/duoyou/gamesdk/c/http/xutils/http/d/c;->a(Ljava/io/InputStream;)Ljava/io/File;
    :try_end_4
    .catch Lcom/duoyou/gamesdk/c/http/xutils/ex/HttpException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v0

    invoke-static {v7}, Lcom/duoyou/gamesdk/c/http/xutils/common/a/c;->a(Ljava/io/Closeable;)V

    iget-object v1, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/d/c;->i:Lcom/duoyou/gamesdk/c/http/xutils/cache/DiskCacheFile;

    invoke-static {v1}, Lcom/duoyou/gamesdk/c/http/xutils/common/a/c;->a(Ljava/io/Closeable;)V

    goto/16 :goto_2

    :cond_c
    :try_start_5
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/d/c;->c:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto/16 :goto_1

    :catchall_1
    move-exception v0

    move-object v7, v1

    goto/16 :goto_4

    :cond_d
    invoke-static {v0}, Lcom/duoyou/gamesdk/c/http/xutils/common/a/c;->a(Ljava/io/File;)Z

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cache file not found"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/duoyou/gamesdk/c/http/xutils/http/e/d;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :cond_f
    move-wide v0, v8

    goto/16 :goto_5
.end method

.method public a(Ljava/io/InputStream;)Ljava/io/File;
    .locals 12

    const/4 v6, 0x0

    const-wide/16 v2, 0x0

    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/d/c;->c:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/duoyou/gamesdk/c/http/xutils/common/a/c;->a(Ljava/io/File;)Z

    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v4

    if-nez v4, :cond_1

    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "can not create dir: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    move-object v1, v6

    :goto_0
    invoke-static {v1}, Lcom/duoyou/gamesdk/c/http/xutils/common/a/c;->a(Ljava/io/Closeable;)V

    invoke-static {v6}, Lcom/duoyou/gamesdk/c/http/xutils/common/a/c;->a(Ljava/io/Closeable;)V

    throw v0

    :cond_1
    :try_start_1
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v4

    iget-boolean v1, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/d/c;->e:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_3

    cmp-long v1, v4, v2

    if-lez v1, :cond_3

    const-wide/16 v8, 0x200

    sub-long v8, v4, v8

    cmp-long v1, v8, v2

    if-lez v1, :cond_4

    :try_start_2
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    const/16 v7, 0x200

    :try_start_3
    invoke-static {v1, v8, v9, v7}, Lcom/duoyou/gamesdk/c/http/xutils/common/a/c;->a(Ljava/io/InputStream;JI)[B

    move-result-object v7

    const-wide/16 v8, 0x0

    const/16 v10, 0x200

    invoke-static {p1, v8, v9, v10}, Lcom/duoyou/gamesdk/c/http/xutils/common/a/c;->a(Ljava/io/InputStream;JI)[B

    move-result-object v8

    invoke-static {v8, v7}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v7

    if-nez v7, :cond_2

    invoke-static {v1}, Lcom/duoyou/gamesdk/c/http/xutils/common/a/c;->a(Ljava/io/Closeable;)V

    invoke-static {v0}, Lcom/duoyou/gamesdk/c/http/xutils/common/a/c;->a(Ljava/io/File;)Z

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "need retry"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    :goto_1
    :try_start_4
    invoke-static {v1}, Lcom/duoyou/gamesdk/c/http/xutils/common/a/c;->a(Ljava/io/Closeable;)V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_2
    :try_start_5
    iget-wide v8, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/d/c;->g:J

    const-wide/16 v10, 0x200

    sub-long/2addr v8, v10

    iput-wide v8, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/d/c;->g:J
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    invoke-static {v1}, Lcom/duoyou/gamesdk/c/http/xutils/common/a/c;->a(Ljava/io/Closeable;)V

    :cond_3
    iget-boolean v1, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/d/c;->e:Z

    if-eqz v1, :cond_5

    new-instance v1, Ljava/io/FileOutputStream;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    :goto_2
    iget-wide v2, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/d/c;->g:J

    add-long/2addr v2, v4

    new-instance v8, Ljava/io/BufferedInputStream;

    invoke-direct {v8, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    new-instance v7, Ljava/io/BufferedOutputStream;

    invoke-direct {v7, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    :try_start_8
    iget-object v1, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/d/c;->b:Lcom/duoyou/gamesdk/c/http/xutils/http/d;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/d/c;->b:Lcom/duoyou/gamesdk/c/http/xutils/http/d;

    const/4 v6, 0x1

    invoke-interface/range {v1 .. v6}, Lcom/duoyou/gamesdk/c/http/xutils/http/d;->a(JJZ)Z

    move-result v1

    if-nez v1, :cond_6

    new-instance v0, Lcom/duoyou/gamesdk/c/http/xutils/common/Callback$CancelledException;

    const-string v1, "download stopped!"

    invoke-direct {v0, v1}, Lcom/duoyou/gamesdk/c/http/xutils/common/Callback$CancelledException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :catchall_2
    move-exception v0

    move-object v6, v7

    move-object v1, v8

    goto :goto_0

    :cond_4
    :try_start_9
    invoke-static {v0}, Lcom/duoyou/gamesdk/c/http/xutils/common/a/c;->a(Ljava/io/File;)Z

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "need retry"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    :catchall_3
    move-exception v0

    move-object v1, v6

    goto :goto_1

    :cond_5
    :try_start_a
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    move-wide v4, v2

    goto :goto_2

    :cond_6
    const/16 v1, 0x1000

    :try_start_b
    new-array v9, v1, [B

    :cond_7
    invoke-virtual {v8, v9}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v1

    const/4 v6, -0x1

    if-eq v1, v6, :cond_9

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_8

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    new-instance v0, Ljava/io/IOException;

    const-string v1, "parent be deleted!"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    const/4 v6, 0x0

    invoke-virtual {v7, v9, v6, v1}, Ljava/io/BufferedOutputStream;->write([BII)V

    int-to-long v10, v1

    add-long/2addr v4, v10

    iget-object v1, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/d/c;->b:Lcom/duoyou/gamesdk/c/http/xutils/http/d;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/d/c;->b:Lcom/duoyou/gamesdk/c/http/xutils/http/d;

    const/4 v6, 0x0

    invoke-interface/range {v1 .. v6}, Lcom/duoyou/gamesdk/c/http/xutils/http/d;->a(JJZ)Z

    move-result v1

    if-nez v1, :cond_7

    invoke-virtual {v7}, Ljava/io/BufferedOutputStream;->flush()V

    new-instance v0, Lcom/duoyou/gamesdk/c/http/xutils/common/Callback$CancelledException;

    const-string v1, "download stopped!"

    invoke-direct {v0, v1}, Lcom/duoyou/gamesdk/c/http/xutils/common/Callback$CancelledException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    invoke-virtual {v7}, Ljava/io/BufferedOutputStream;->flush()V

    iget-object v1, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/d/c;->i:Lcom/duoyou/gamesdk/c/http/xutils/cache/DiskCacheFile;

    if-eqz v1, :cond_a

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/d/c;->i:Lcom/duoyou/gamesdk/c/http/xutils/cache/DiskCacheFile;

    invoke-virtual {v0}, Lcom/duoyou/gamesdk/c/http/xutils/cache/DiskCacheFile;->commit()Lcom/duoyou/gamesdk/c/http/xutils/cache/DiskCacheFile;

    move-result-object v0

    :cond_a
    iget-object v1, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/d/c;->b:Lcom/duoyou/gamesdk/c/http/xutils/http/d;

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/d/c;->b:Lcom/duoyou/gamesdk/c/http/xutils/http/d;

    const/4 v6, 0x1

    invoke-interface/range {v1 .. v6}, Lcom/duoyou/gamesdk/c/http/xutils/http/d;->a(JJZ)Z
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    :cond_b
    invoke-static {v8}, Lcom/duoyou/gamesdk/c/http/xutils/common/a/c;->a(Ljava/io/Closeable;)V

    invoke-static {v7}, Lcom/duoyou/gamesdk/c/http/xutils/common/a/c;->a(Ljava/io/Closeable;)V

    invoke-direct {p0, v0}, Lcom/duoyou/gamesdk/c/http/xutils/http/d/c;->a(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    return-object v0

    :catchall_4
    move-exception v0

    move-object v1, v8

    goto/16 :goto_0
.end method

.method public a(Lcom/duoyou/gamesdk/c/http/xutils/http/e;)V
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/d/c;->a:Lcom/duoyou/gamesdk/c/http/xutils/http/e;

    invoke-virtual {p1}, Lcom/duoyou/gamesdk/c/http/xutils/http/e;->s()Z

    move-result v0

    iput-boolean v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/d/c;->e:Z

    invoke-virtual {p1}, Lcom/duoyou/gamesdk/c/http/xutils/http/e;->t()Z

    move-result v0

    iput-boolean v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/d/c;->f:Z

    :cond_0
    return-void
.end method

.method public synthetic b(Lcom/duoyou/gamesdk/c/http/xutils/cache/a;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/duoyou/gamesdk/c/http/xutils/http/d/c;->a(Lcom/duoyou/gamesdk/c/http/xutils/cache/a;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public b(Lcom/duoyou/gamesdk/c/http/xutils/http/e/d;)V
    .locals 0

    return-void
.end method

.method public synthetic c(Lcom/duoyou/gamesdk/c/http/xutils/http/e/d;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/duoyou/gamesdk/c/http/xutils/http/d/c;->a(Lcom/duoyou/gamesdk/c/http/xutils/http/e/d;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method
