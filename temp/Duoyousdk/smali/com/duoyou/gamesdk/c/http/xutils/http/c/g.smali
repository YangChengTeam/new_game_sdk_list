.class public Lcom/duoyou/gamesdk/c/http/xutils/http/c/g;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/duoyou/gamesdk/c/http/xutils/http/c/f;


# instance fields
.field private a:[B

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "UTF-8"

    iput-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/c/g;->c:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p2, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/c/g;->c:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/c/g;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/c/g;->a:[B

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/c/g;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "application/json;charset="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/c/g;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/c/g;->b:Ljava/lang/String;

    goto :goto_0
.end method

.method public a(Ljava/io/OutputStream;)V
    .locals 1

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/c/g;->a:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/c/g;->b:Ljava/lang/String;

    return-void
.end method

.method public b()J
    .locals 2

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/c/g;->a:[B

    array-length v0, v0

    int-to-long v0, v0

    return-wide v0
.end method
