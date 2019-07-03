.class Lcom/duoyou/gamesdk/c/http/xutils/http/c/d$a;
.super Ljava/io/OutputStream;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/duoyou/gamesdk/c/http/xutils/http/c/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final a:Ljava/util/concurrent/atomic/AtomicLong;

.field final synthetic b:Lcom/duoyou/gamesdk/c/http/xutils/http/c/d;


# direct methods
.method public constructor <init>(Lcom/duoyou/gamesdk/c/http/xutils/http/c/d;)V
    .locals 4

    iput-object p1, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/c/d$a;->b:Lcom/duoyou/gamesdk/c/http/xutils/http/c/d;

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v2, 0x0

    invoke-direct {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/c/d$a;->a:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method


# virtual methods
.method public a(Ljava/io/File;)V
    .locals 4

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/c/d$a;->a:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/c/d$a;->a:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    goto :goto_0
.end method

.method public a(Ljava/io/InputStream;)V
    .locals 6

    const-wide/16 v4, -0x1

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/c/d$a;->a:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    cmp-long v0, v0, v4

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {p1}, Lcom/duoyou/gamesdk/c/http/xutils/http/c/c;->a(Ljava/io/InputStream;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    iget-object v2, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/c/d$a;->a:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/c/d$a;->a:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, v4, v5}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    goto :goto_0
.end method

.method public write(I)V
    .locals 4

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/c/d$a;->a:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/c/d$a;->a:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    goto :goto_0
.end method

.method public write([B)V
    .locals 4

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/c/d$a;->a:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/c/d$a;->a:Ljava/util/concurrent/atomic/AtomicLong;

    array-length v1, p1

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    goto :goto_0
.end method

.method public write([BII)V
    .locals 4

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/c/d$a;->a:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/c/d$a;->a:Ljava/util/concurrent/atomic/AtomicLong;

    int-to-long v2, p3

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    goto :goto_0
.end method
