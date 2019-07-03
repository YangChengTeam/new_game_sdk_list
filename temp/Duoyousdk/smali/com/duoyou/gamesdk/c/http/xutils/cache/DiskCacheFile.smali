.class public final Lcom/duoyou/gamesdk/c/http/xutils/cache/DiskCacheFile;
.super Ljava/io/File;

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field cacheEntity:Lcom/duoyou/gamesdk/c/http/xutils/cache/a;

.field lock:Lcom/duoyou/gamesdk/c/http/xutils/common/a/h;


# direct methods
.method constructor <init>(Lcom/duoyou/gamesdk/c/http/xutils/cache/a;Ljava/lang/String;Lcom/duoyou/gamesdk/c/http/xutils/common/a/h;)V
    .locals 0

    invoke-direct {p0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/duoyou/gamesdk/c/http/xutils/cache/DiskCacheFile;->cacheEntity:Lcom/duoyou/gamesdk/c/http/xutils/cache/a;

    iput-object p3, p0, Lcom/duoyou/gamesdk/c/http/xutils/cache/DiskCacheFile;->lock:Lcom/duoyou/gamesdk/c/http/xutils/common/a/h;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/cache/DiskCacheFile;->lock:Lcom/duoyou/gamesdk/c/http/xutils/common/a/h;

    invoke-static {v0}, Lcom/duoyou/gamesdk/c/http/xutils/common/a/c;->a(Ljava/io/Closeable;)V

    return-void
.end method

.method public commit()Lcom/duoyou/gamesdk/c/http/xutils/cache/DiskCacheFile;
    .locals 1

    invoke-virtual {p0}, Lcom/duoyou/gamesdk/c/http/xutils/cache/DiskCacheFile;->getDiskCache()Lcom/duoyou/gamesdk/c/http/xutils/cache/b;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/duoyou/gamesdk/c/http/xutils/cache/b;->a(Lcom/duoyou/gamesdk/c/http/xutils/cache/DiskCacheFile;)Lcom/duoyou/gamesdk/c/http/xutils/cache/DiskCacheFile;

    move-result-object v0

    return-object v0
.end method

.method protected finalize()V
    .locals 0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    invoke-virtual {p0}, Lcom/duoyou/gamesdk/c/http/xutils/cache/DiskCacheFile;->close()V

    return-void
.end method

.method public getCacheEntity()Lcom/duoyou/gamesdk/c/http/xutils/cache/a;
    .locals 1

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/cache/DiskCacheFile;->cacheEntity:Lcom/duoyou/gamesdk/c/http/xutils/cache/a;

    return-object v0
.end method

.method public getDiskCache()Lcom/duoyou/gamesdk/c/http/xutils/cache/b;
    .locals 1

    invoke-virtual {p0}, Lcom/duoyou/gamesdk/c/http/xutils/cache/DiskCacheFile;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/duoyou/gamesdk/c/http/xutils/cache/b;->a(Ljava/lang/String;)Lcom/duoyou/gamesdk/c/http/xutils/cache/b;

    move-result-object v0

    return-object v0
.end method
