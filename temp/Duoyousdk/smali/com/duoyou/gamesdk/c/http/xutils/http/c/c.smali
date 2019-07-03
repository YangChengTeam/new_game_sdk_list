.class public Lcom/duoyou/gamesdk/c/http/xutils/http/c/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/duoyou/gamesdk/c/http/xutils/http/c/e;


# instance fields
.field private a:Ljava/io/InputStream;

.field private b:Ljava/lang/String;

.field private final c:J

.field private d:J

.field private e:Lcom/duoyou/gamesdk/c/http/xutils/http/d;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/duoyou/gamesdk/c/http/xutils/http/c/c;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/c/c;->d:J

    iput-object p1, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/c/c;->a:Ljava/io/InputStream;

    iput-object p2, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/c/c;->b:Ljava/lang/String;

    invoke-static {p1}, Lcom/duoyou/gamesdk/c/http/xutils/http/c/c;->a(Ljava/io/InputStream;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/c/c;->c:J

    return-void
.end method

.method public static a(Ljava/io/InputStream;)J
    .locals 2

    :try_start_0
    instance-of v0, p0, Ljava/io/FileInputStream;

    if-nez v0, :cond_0

    instance-of v0, p0, Ljava/io/ByteArrayInputStream;

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Ljava/io/InputStream;->available()I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    int-to-long v0, v0

    :goto_0
    return-wide v0

    :catch_0
    move-exception v0

    :cond_1
    const-wide/16 v0, -0x1

    goto :goto_0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/c/c;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "application/octet-stream"

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/c/c;->b:Ljava/lang/String;

    goto :goto_0
.end method

.method public a(Lcom/duoyou/gamesdk/c/http/xutils/http/d;)V
    .locals 0

    iput-object p1, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/c/c;->e:Lcom/duoyou/gamesdk/c/http/xutils/http/d;

    return-void
.end method

.method public a(Ljava/io/OutputStream;)V
    .locals 7

    const/4 v6, 0x1

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/c/c;->e:Lcom/duoyou/gamesdk/c/http/xutils/http/d;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/c/c;->e:Lcom/duoyou/gamesdk/c/http/xutils/http/d;

    iget-wide v2, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/c/c;->c:J

    iget-wide v4, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/c/c;->d:J

    invoke-interface/range {v1 .. v6}, Lcom/duoyou/gamesdk/c/http/xutils/http/d;->a(JJZ)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/duoyou/gamesdk/c/http/xutils/common/Callback$CancelledException;

    const-string v1, "upload stopped!"

    invoke-direct {v0, v1}, Lcom/duoyou/gamesdk/c/http/xutils/common/Callback$CancelledException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/16 v0, 0x400

    new-array v0, v0, [B

    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/c/c;->a:Ljava/io/InputStream;

    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    iget-wide v2, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/c/c;->d:J

    int-to-long v4, v1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/c/c;->d:J

    iget-object v1, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/c/c;->e:Lcom/duoyou/gamesdk/c/http/xutils/http/d;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/c/c;->e:Lcom/duoyou/gamesdk/c/http/xutils/http/d;

    iget-wide v2, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/c/c;->c:J

    iget-wide v4, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/c/c;->d:J

    const/4 v6, 0x0

    invoke-interface/range {v1 .. v6}, Lcom/duoyou/gamesdk/c/http/xutils/http/d;->a(JJZ)Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v0, Lcom/duoyou/gamesdk/c/http/xutils/common/Callback$CancelledException;

    const-string v1, "upload stopped!"

    invoke-direct {v0, v1}, Lcom/duoyou/gamesdk/c/http/xutils/common/Callback$CancelledException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/c/c;->a:Ljava/io/InputStream;

    invoke-static {v1}, Lcom/duoyou/gamesdk/c/http/xutils/common/a/c;->a(Ljava/io/Closeable;)V

    throw v0

    :cond_2
    :try_start_1
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/c/c;->e:Lcom/duoyou/gamesdk/c/http/xutils/http/d;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/c/c;->e:Lcom/duoyou/gamesdk/c/http/xutils/http/d;

    iget-wide v2, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/c/c;->c:J

    iget-wide v4, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/c/c;->c:J

    const/4 v6, 0x1

    invoke-interface/range {v1 .. v6}, Lcom/duoyou/gamesdk/c/http/xutils/http/d;->a(JJZ)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    iget-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/c/c;->a:Ljava/io/InputStream;

    invoke-static {v0}, Lcom/duoyou/gamesdk/c/http/xutils/common/a/c;->a(Ljava/io/Closeable;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/c/c;->b:Ljava/lang/String;

    return-void
.end method

.method public b()J
    .locals 2

    iget-wide v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/c/c;->c:J

    return-wide v0
.end method
