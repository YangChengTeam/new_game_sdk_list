.class public Lcom/duoyou/gamesdk/c/http/xutils/http/e/c;
.super Lcom/duoyou/gamesdk/c/http/xutils/http/e/d;


# instance fields
.field private g:Ljava/io/InputStream;


# direct methods
.method constructor <init>(Lcom/duoyou/gamesdk/c/http/xutils/http/e;Ljava/lang/reflect/Type;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/duoyou/gamesdk/c/http/xutils/http/e/d;-><init>(Lcom/duoyou/gamesdk/c/http/xutils/http/e;Ljava/lang/reflect/Type;)V

    return-void
.end method

.method private p()Ljava/io/File;
    .locals 2

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/e/c;->a:Ljava/lang/String;

    const-string v1, "file:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/e/c;->a:Ljava/lang/String;

    const-string v1, "file:"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/e/c;->a:Ljava/lang/String;

    goto :goto_0
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

.method public b_()V
    .locals 0

    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public close()V
    .locals 1

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/e/c;->g:Ljava/io/InputStream;

    invoke-static {v0}, Lcom/duoyou/gamesdk/c/http/xutils/common/a/c;->a(Ljava/io/Closeable;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/e/c;->g:Ljava/io/InputStream;

    return-void
.end method

.method public d()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/e/c;->c:Lcom/duoyou/gamesdk/c/http/xutils/http/d/g;

    instance-of v0, v0, Lcom/duoyou/gamesdk/c/http/xutils/http/d/c;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/duoyou/gamesdk/c/http/xutils/http/e/c;->p()Ljava/io/File;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/e/c;->c:Lcom/duoyou/gamesdk/c/http/xutils/http/d/g;

    invoke-virtual {v0, p0}, Lcom/duoyou/gamesdk/c/http/xutils/http/d/g;->c(Lcom/duoyou/gamesdk/c/http/xutils/http/e/d;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public e()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public f()V
    .locals 0

    return-void
.end method

.method public g()Ljava/io/InputStream;
    .locals 2

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/e/c;->g:Ljava/io/InputStream;

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {p0}, Lcom/duoyou/gamesdk/c/http/xutils/http/e/c;->p()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/e/c;->g:Ljava/io/InputStream;

    :cond_0
    iget-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/e/c;->g:Ljava/io/InputStream;

    return-object v0
.end method

.method public h()J
    .locals 2

    invoke-direct {p0}, Lcom/duoyou/gamesdk/c/http/xutils/http/e/c;->p()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    return-wide v0
.end method

.method public i()I
    .locals 1

    invoke-direct {p0}, Lcom/duoyou/gamesdk/c/http/xutils/http/e/c;->p()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

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

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public k()J
    .locals 2

    invoke-direct {p0}, Lcom/duoyou/gamesdk/c/http/xutils/http/e/c;->p()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    return-wide v0
.end method

.method public l()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
