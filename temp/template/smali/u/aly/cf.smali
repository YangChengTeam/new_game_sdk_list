.class public Lu/aly/cf;
.super Ljava/lang/Object;
.source "TSerializer.java"


# instance fields
.field private final a:Ljava/io/ByteArrayOutputStream;

.field private final b:Lu/aly/dh;

.field private c:Lu/aly/cv;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 58
    new-instance v0, Lu/aly/cp$a;

    invoke-direct {v0}, Lu/aly/cp$a;-><init>()V

    invoke-direct {p0, v0}, Lu/aly/cf;-><init>(Lu/aly/cx;)V

    .line 59
    return-void
.end method

.method public constructor <init>(Lu/aly/cx;)V
    .locals 2

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lu/aly/cf;->a:Ljava/io/ByteArrayOutputStream;

    .line 47
    new-instance v0, Lu/aly/dh;

    iget-object v1, p0, Lu/aly/cf;->a:Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0, v1}, Lu/aly/dh;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lu/aly/cf;->b:Lu/aly/dh;

    .line 68
    iget-object v0, p0, Lu/aly/cf;->b:Lu/aly/dh;

    invoke-interface {p1, v0}, Lu/aly/cx;->a(Lu/aly/dj;)Lu/aly/cv;

    move-result-object v0

    iput-object v0, p0, Lu/aly/cf;->c:Lu/aly/cv;

    .line 69
    return-void
.end method


# virtual methods
.method public a(Lu/aly/bw;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cc;
        }
    .end annotation

    .prologue
    .line 97
    :try_start_0
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lu/aly/cf;->a(Lu/aly/bw;)[B

    move-result-object v1

    invoke-direct {v0, v1, p2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 98
    :catch_0
    move-exception v0

    .line 99
    new-instance v0, Lu/aly/cc;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "JVM DOES NOT SUPPORT ENCODING: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lu/aly/cc;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a(Lu/aly/bw;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cc;
        }
    .end annotation

    .prologue
    .line 81
    iget-object v0, p0, Lu/aly/cf;->a:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 82
    iget-object v0, p0, Lu/aly/cf;->c:Lu/aly/cv;

    invoke-interface {p1, v0}, Lu/aly/bw;->b(Lu/aly/cv;)V

    .line 83
    iget-object v0, p0, Lu/aly/cf;->a:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public b(Lu/aly/bw;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lu/aly/cc;
        }
    .end annotation

    .prologue
    .line 112
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lu/aly/cf;->a(Lu/aly/bw;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method
