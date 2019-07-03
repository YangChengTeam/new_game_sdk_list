.class public Lcom/duoyou/gamesdk/c/http/xutils/http/c/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/duoyou/gamesdk/c/http/xutils/http/c/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/duoyou/gamesdk/c/http/xutils/http/c/d$a;
    }
.end annotation


# static fields
.field private static a:[B

.field private static b:[B

.field private static c:[B


# instance fields
.field private d:[B

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/duoyou/gamesdk/c/http/xutils/common/a/d;",
            ">;"
        }
    .end annotation
.end field

.field private h:J

.field private i:J

.field private j:Lcom/duoyou/gamesdk/c/http/xutils/http/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "--------7da3d81520810"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/duoyou/gamesdk/c/http/xutils/http/c/d;->a:[B

    const-string v0, "\r\n"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/duoyou/gamesdk/c/http/xutils/http/c/d;->b:[B

    const-string v0, "--"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/duoyou/gamesdk/c/http/xutils/http/c/d;->c:[B

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/duoyou/gamesdk/c/http/xutils/common/a/d;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-wide/16 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "UTF-8"

    iput-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/c/d;->f:Ljava/lang/String;

    iput-wide v2, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/c/d;->h:J

    iput-wide v2, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/c/d;->i:J

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p2, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/c/d;->f:Ljava/lang/String;

    :cond_0
    iput-object p1, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/c/d;->g:Ljava/util/List;

    invoke-direct {p0}, Lcom/duoyou/gamesdk/c/http/xutils/http/c/d;->c()V

    new-instance v0, Lcom/duoyou/gamesdk/c/http/xutils/http/c/d$a;

    invoke-direct {v0, p0}, Lcom/duoyou/gamesdk/c/http/xutils/http/c/d$a;-><init>(Lcom/duoyou/gamesdk/c/http/xutils/http/c/d;)V

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/duoyou/gamesdk/c/http/xutils/http/c/d;->a(Ljava/io/OutputStream;)V

    iget-object v0, v0, Lcom/duoyou/gamesdk/c/http/xutils/http/c/d$a;->a:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/c/d;->h:J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/c/d;->h:J

    goto :goto_0
.end method

.method private a(Ljava/io/OutputStream;Ljava/io/File;)V
    .locals 1

    instance-of v0, p1, Lcom/duoyou/gamesdk/c/http/xutils/http/c/d$a;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/duoyou/gamesdk/c/http/xutils/http/c/d$a;

    invoke-virtual {p1, p2}, Lcom/duoyou/gamesdk/c/http/xutils/http/c/d$a;->a(Ljava/io/File;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {p0, p1, v0}, Lcom/duoyou/gamesdk/c/http/xutils/http/c/d;->a(Ljava/io/OutputStream;Ljava/io/InputStream;)V

    goto :goto_0
.end method

.method private a(Ljava/io/OutputStream;Ljava/io/InputStream;)V
    .locals 7

    instance-of v0, p1, Lcom/duoyou/gamesdk/c/http/xutils/http/c/d$a;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/duoyou/gamesdk/c/http/xutils/http/c/d$a;

    invoke-virtual {p1, p2}, Lcom/duoyou/gamesdk/c/http/xutils/http/c/d$a;->a(Ljava/io/InputStream;)V

    :goto_0
    return-void

    :cond_0
    const/16 v0, 0x400

    :try_start_0
    new-array v0, v0, [B

    :cond_1
    invoke-virtual {p2, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    if-ltz v1, :cond_2

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    iget-wide v2, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/c/d;->i:J

    int-to-long v4, v1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/c/d;->i:J

    iget-object v1, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/c/d;->j:Lcom/duoyou/gamesdk/c/http/xutils/http/d;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/c/d;->j:Lcom/duoyou/gamesdk/c/http/xutils/http/d;

    iget-wide v2, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/c/d;->h:J

    iget-wide v4, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/c/d;->i:J

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

    invoke-static {p2}, Lcom/duoyou/gamesdk/c/http/xutils/common/a/c;->a(Ljava/io/Closeable;)V

    throw v0

    :cond_2
    invoke-static {p2}, Lcom/duoyou/gamesdk/c/http/xutils/common/a/c;->a(Ljava/io/Closeable;)V

    goto :goto_0
.end method

.method private a(Ljava/io/OutputStream;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v0, 0x3

    new-array v0, v0, [[B

    sget-object v1, Lcom/duoyou/gamesdk/c/http/xutils/http/c/d;->c:[B

    aput-object v1, v0, v6

    sget-object v1, Lcom/duoyou/gamesdk/c/http/xutils/http/c/d;->a:[B

    aput-object v1, v0, v7

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/c/d;->d:[B

    aput-object v2, v0, v1

    invoke-direct {p0, p1, v0}, Lcom/duoyou/gamesdk/c/http/xutils/http/c/d;->a(Ljava/io/OutputStream;[[B)V

    const-string v1, ""

    const/4 v0, 0x0

    instance-of v2, p3, Lcom/duoyou/gamesdk/c/http/xutils/http/c/a;

    if-eqz v2, :cond_6

    check-cast p3, Lcom/duoyou/gamesdk/c/http/xutils/http/c/a;

    invoke-virtual {p3}, Lcom/duoyou/gamesdk/c/http/xutils/http/c/a;->a()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p3}, Lcom/duoyou/gamesdk/c/http/xutils/http/c/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3}, Lcom/duoyou/gamesdk/c/http/xutils/http/c/a;->c()Ljava/lang/String;

    move-result-object v0

    move-object v3, v1

    move-object v1, v2

    move-object v2, v0

    :goto_0
    instance-of v0, v1, Ljava/io/File;

    if-eqz v0, :cond_3

    move-object v0, v1

    check-cast v0, Ljava/io/File;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    :cond_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {v0}, Lcom/duoyou/gamesdk/c/http/xutils/http/c/b;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    :cond_1
    new-array v4, v7, [[B

    iget-object v5, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/c/d;->f:Ljava/lang/String;

    invoke-static {p2, v3, v5}, Lcom/duoyou/gamesdk/c/http/xutils/http/c/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v3

    aput-object v3, v4, v6

    invoke-direct {p0, p1, v4}, Lcom/duoyou/gamesdk/c/http/xutils/http/c/d;->a(Ljava/io/OutputStream;[[B)V

    new-array v3, v7, [[B

    iget-object v4, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/c/d;->f:Ljava/lang/String;

    invoke-static {v1, v2, v4}, Lcom/duoyou/gamesdk/c/http/xutils/http/c/d;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v1

    aput-object v1, v3, v6

    invoke-direct {p0, p1, v3}, Lcom/duoyou/gamesdk/c/http/xutils/http/c/d;->a(Ljava/io/OutputStream;[[B)V

    new-array v1, v6, [[B

    invoke-direct {p0, p1, v1}, Lcom/duoyou/gamesdk/c/http/xutils/http/c/d;->a(Ljava/io/OutputStream;[[B)V

    invoke-direct {p0, p1, v0}, Lcom/duoyou/gamesdk/c/http/xutils/http/c/d;->a(Ljava/io/OutputStream;Ljava/io/File;)V

    new-array v0, v6, [[B

    invoke-direct {p0, p1, v0}, Lcom/duoyou/gamesdk/c/http/xutils/http/c/d;->a(Ljava/io/OutputStream;[[B)V

    :cond_2
    :goto_1
    return-void

    :cond_3
    new-array v0, v7, [[B

    iget-object v4, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/c/d;->f:Ljava/lang/String;

    invoke-static {p2, v3, v4}, Lcom/duoyou/gamesdk/c/http/xutils/http/c/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v3

    aput-object v3, v0, v6

    invoke-direct {p0, p1, v0}, Lcom/duoyou/gamesdk/c/http/xutils/http/c/d;->a(Ljava/io/OutputStream;[[B)V

    new-array v0, v7, [[B

    iget-object v3, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/c/d;->f:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/duoyou/gamesdk/c/http/xutils/http/c/d;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v2

    aput-object v2, v0, v6

    invoke-direct {p0, p1, v0}, Lcom/duoyou/gamesdk/c/http/xutils/http/c/d;->a(Ljava/io/OutputStream;[[B)V

    new-array v0, v6, [[B

    invoke-direct {p0, p1, v0}, Lcom/duoyou/gamesdk/c/http/xutils/http/c/d;->a(Ljava/io/OutputStream;[[B)V

    instance-of v0, v1, Ljava/io/InputStream;

    if-eqz v0, :cond_4

    check-cast v1, Ljava/io/InputStream;

    invoke-direct {p0, p1, v1}, Lcom/duoyou/gamesdk/c/http/xutils/http/c/d;->a(Ljava/io/OutputStream;Ljava/io/InputStream;)V

    new-array v0, v6, [[B

    invoke-direct {p0, p1, v0}, Lcom/duoyou/gamesdk/c/http/xutils/http/c/d;->a(Ljava/io/OutputStream;[[B)V

    goto :goto_1

    :cond_4
    instance-of v0, v1, [B

    if-eqz v0, :cond_5

    check-cast v1, [B

    check-cast v1, [B

    :goto_2
    new-array v0, v7, [[B

    aput-object v1, v0, v6

    invoke-direct {p0, p1, v0}, Lcom/duoyou/gamesdk/c/http/xutils/http/c/d;->a(Ljava/io/OutputStream;[[B)V

    iget-wide v2, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/c/d;->i:J

    array-length v0, v1

    int-to-long v0, v0

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/c/d;->i:J

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/c/d;->j:Lcom/duoyou/gamesdk/c/http/xutils/http/d;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/c/d;->j:Lcom/duoyou/gamesdk/c/http/xutils/http/d;

    iget-wide v2, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/c/d;->h:J

    iget-wide v4, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/c/d;->i:J

    invoke-interface/range {v1 .. v6}, Lcom/duoyou/gamesdk/c/http/xutils/http/d;->a(JJZ)Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v0, Lcom/duoyou/gamesdk/c/http/xutils/common/Callback$CancelledException;

    const-string v1, "upload stopped!"

    invoke-direct {v0, v1}, Lcom/duoyou/gamesdk/c/http/xutils/common/Callback$CancelledException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/c/d;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    goto :goto_2

    :cond_6
    move-object v2, v0

    move-object v3, v1

    move-object v1, p3

    goto/16 :goto_0
.end method

.method private varargs a(Ljava/io/OutputStream;[[B)V
    .locals 3

    if-eqz p2, :cond_0

    array-length v1, p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget-object v2, p2, v0

    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write([B)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/duoyou/gamesdk/c/http/xutils/http/c/d;->b:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method

.method private static a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)[B
    .locals 3

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v0, "Content-Type: "

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "text/plain; charset="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "application/octet-stream"

    goto :goto_0

    :cond_1
    const-string v0, "\\/jpg$"

    const-string v2, "/jpeg"

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Content-Disposition: form-data"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "; name=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    const-string v3, "\\\""

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "; filename=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    const-string v3, "\\\""

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method private c()V
    .locals 4

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    const-wide v2, 0x40efffe000000000L    # 65535.0

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Double;->toHexString(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    iput-object v1, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/c/d;->d:[B

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "multipart/form-data; boundary="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/String;

    sget-object v3, Lcom/duoyou/gamesdk/c/http/xutils/http/c/d;->a:[B

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/c/d;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/c/d;->e:Ljava/lang/String;

    return-object v0
.end method

.method public a(Lcom/duoyou/gamesdk/c/http/xutils/http/d;)V
    .locals 0

    iput-object p1, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/c/d;->j:Lcom/duoyou/gamesdk/c/http/xutils/http/d;

    return-void
.end method

.method public a(Ljava/io/OutputStream;)V
    .locals 7

    const/4 v6, 0x1

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/c/d;->j:Lcom/duoyou/gamesdk/c/http/xutils/http/d;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/c/d;->j:Lcom/duoyou/gamesdk/c/http/xutils/http/d;

    iget-wide v2, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/c/d;->h:J

    iget-wide v4, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/c/d;->i:J

    invoke-interface/range {v1 .. v6}, Lcom/duoyou/gamesdk/c/http/xutils/http/d;->a(JJZ)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/duoyou/gamesdk/c/http/xutils/common/Callback$CancelledException;

    const-string v1, "upload stopped!"

    invoke-direct {v0, v1}, Lcom/duoyou/gamesdk/c/http/xutils/common/Callback$CancelledException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/c/d;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoyou/gamesdk/c/http/xutils/common/a/d;

    iget-object v2, v0, Lcom/duoyou/gamesdk/c/http/xutils/common/a/d;->a:Ljava/lang/String;

    iget-object v0, v0, Lcom/duoyou/gamesdk/c/http/xutils/common/a/d;->b:Ljava/lang/Object;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    if-eqz v0, :cond_1

    invoke-direct {p0, p1, v2, v0}, Lcom/duoyou/gamesdk/c/http/xutils/http/c/d;->a(Ljava/io/OutputStream;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x4

    new-array v0, v0, [[B

    const/4 v1, 0x0

    sget-object v2, Lcom/duoyou/gamesdk/c/http/xutils/http/c/d;->c:[B

    aput-object v2, v0, v1

    sget-object v1, Lcom/duoyou/gamesdk/c/http/xutils/http/c/d;->a:[B

    aput-object v1, v0, v6

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/c/d;->d:[B

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/duoyou/gamesdk/c/http/xutils/http/c/d;->c:[B

    aput-object v2, v0, v1

    invoke-direct {p0, p1, v0}, Lcom/duoyou/gamesdk/c/http/xutils/http/c/d;->a(Ljava/io/OutputStream;[[B)V

    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/c/d;->j:Lcom/duoyou/gamesdk/c/http/xutils/http/d;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/c/d;->j:Lcom/duoyou/gamesdk/c/http/xutils/http/d;

    iget-wide v2, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/c/d;->h:J

    iget-wide v4, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/c/d;->h:J

    invoke-interface/range {v1 .. v6}, Lcom/duoyou/gamesdk/c/http/xutils/http/d;->a(JJZ)Z

    :cond_3
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/c/d;->e:Ljava/lang/String;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "multipart/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/c/d;->e:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/c/d;->e:Ljava/lang/String;

    return-void
.end method

.method public b()J
    .locals 2

    iget-wide v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/c/d;->h:J

    return-wide v0
.end method
