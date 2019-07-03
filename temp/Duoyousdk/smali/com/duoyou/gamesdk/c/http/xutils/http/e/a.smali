.class public Lcom/duoyou/gamesdk/c/http/xutils/http/e/a;
.super Lcom/duoyou/gamesdk/c/http/xutils/http/e/d;


# instance fields
.field private g:J

.field private h:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Lcom/duoyou/gamesdk/c/http/xutils/http/e;Ljava/lang/reflect/Type;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/duoyou/gamesdk/c/http/xutils/http/e/d;-><init>(Lcom/duoyou/gamesdk/c/http/xutils/http/e;Ljava/lang/reflect/Type;)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/e/a;->g:J

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public a()V
    .locals 0

    return-void
.end method

.method public b()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/e/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method public close()V
    .locals 1

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/e/a;->h:Ljava/io/InputStream;

    invoke-static {v0}, Lcom/duoyou/gamesdk/c/http/xutils/common/a/c;->a(Ljava/io/Closeable;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/e/a;->h:Ljava/io/InputStream;

    return-void
.end method

.method public d()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/e/a;->c:Lcom/duoyou/gamesdk/c/http/xutils/http/d/g;

    invoke-virtual {v0, p0}, Lcom/duoyou/gamesdk/c/http/xutils/http/d/g;->c(Lcom/duoyou/gamesdk/c/http/xutils/http/e/d;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public e()Ljava/lang/Object;
    .locals 6

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/e/a;->b:Lcom/duoyou/gamesdk/c/http/xutils/http/e;

    invoke-virtual {v1}, Lcom/duoyou/gamesdk/c/http/xutils/http/e;->o()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/duoyou/gamesdk/c/http/xutils/cache/b;->a(Ljava/lang/String;)Lcom/duoyou/gamesdk/c/http/xutils/cache/b;

    move-result-object v1

    iget-object v2, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/e/a;->b:Lcom/duoyou/gamesdk/c/http/xutils/http/e;

    invoke-virtual {v2}, Lcom/duoyou/gamesdk/c/http/xutils/http/e;->p()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/duoyou/gamesdk/c/http/xutils/cache/b;->a(J)Lcom/duoyou/gamesdk/c/http/xutils/cache/b;

    move-result-object v1

    invoke-virtual {p0}, Lcom/duoyou/gamesdk/c/http/xutils/http/e/a;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/duoyou/gamesdk/c/http/xutils/cache/b;->b(Ljava/lang/String;)Lcom/duoyou/gamesdk/c/http/xutils/cache/a;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/duoyou/gamesdk/c/http/xutils/cache/a;->g()Ljava/util/Date;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/duoyou/gamesdk/c/http/xutils/http/e/a;->m()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gez v2, :cond_1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/e/a;->c:Lcom/duoyou/gamesdk/c/http/xutils/http/d/g;

    invoke-virtual {v0, v1}, Lcom/duoyou/gamesdk/c/http/xutils/http/d/g;->b(Lcom/duoyou/gamesdk/c/http/xutils/cache/a;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public f()V
    .locals 0

    return-void
.end method

.method public g()Ljava/io/InputStream;
    .locals 3

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/e/a;->h:Ljava/io/InputStream;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/e/a;->d:Ljava/lang/ClassLoader;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "assets/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/e/a;->a:Ljava/lang/String;

    const-string v2, "assets://"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/e/a;->d:Ljava/lang/ClassLoader;

    invoke-virtual {v1, v0}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/e/a;->h:Ljava/io/InputStream;

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/e/a;->h:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/e/a;->g:J

    :cond_0
    iget-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/e/a;->h:Ljava/io/InputStream;

    return-object v0
.end method

.method public h()J
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Lcom/duoyou/gamesdk/c/http/xutils/http/e/a;->g()Ljava/io/InputStream;

    iget-wide v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/e/a;->g:J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-wide v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/duoyou/gamesdk/c/http/xutils/common/a/e;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public i()I
    .locals 1

    invoke-virtual {p0}, Lcom/duoyou/gamesdk/c/http/xutils/http/e/a;->g()Ljava/io/InputStream;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v0, 0xc8

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x194

    goto :goto_0
.end method

.method public j()J
    .locals 2

    const-wide v0, 0x7fffffffffffffffL

    return-wide v0
.end method

.method public k()J
    .locals 2

    invoke-virtual {p0}, Lcom/duoyou/gamesdk/c/http/xutils/http/e/a;->m()J

    move-result-wide v0

    return-wide v0
.end method

.method public l()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected m()J
    .locals 2

    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/duoyou/gamesdk/c/http/xutils/c;->b()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    return-wide v0
.end method
