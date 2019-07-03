.class public final Lcom/duoyou/gamesdk/c/http/xutils/cache/a;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/duoyou/gamesdk/c/http/xutils/db/a/b;
    a = "disk_cache"
.end annotation


# instance fields
.field private a:Ljava/lang/String;
    .annotation runtime Lcom/duoyou/gamesdk/c/http/xutils/db/a/a;
        a = "key"
        b = "UNIQUE"
    .end annotation
.end field

.field private b:Ljava/lang/String;
    .annotation runtime Lcom/duoyou/gamesdk/c/http/xutils/db/a/a;
        a = "path"
    .end annotation
.end field

.field private c:Ljava/lang/String;
    .annotation runtime Lcom/duoyou/gamesdk/c/http/xutils/db/a/a;
        a = "textContent"
    .end annotation
.end field

.field private d:J
    .annotation runtime Lcom/duoyou/gamesdk/c/http/xutils/db/a/a;
        a = "expires"
    .end annotation
.end field

.field private e:Ljava/lang/String;
    .annotation runtime Lcom/duoyou/gamesdk/c/http/xutils/db/a/a;
        a = "etag"
    .end annotation
.end field

.field private f:J
    .annotation runtime Lcom/duoyou/gamesdk/c/http/xutils/db/a/a;
        a = "hits"
    .end annotation
.end field

.field private g:Ljava/util/Date;
    .annotation runtime Lcom/duoyou/gamesdk/c/http/xutils/db/a/a;
        a = "lastModify"
    .end annotation
.end field

.field private h:J
    .annotation runtime Lcom/duoyou/gamesdk/c/http/xutils/db/a/a;
        a = "lastAccess"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/cache/a;->d:J

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/cache/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(J)V
    .locals 1

    iput-wide p1, p0, Lcom/duoyou/gamesdk/c/http/xutils/cache/a;->d:J

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/duoyou/gamesdk/c/http/xutils/cache/a;->a:Ljava/lang/String;

    return-void
.end method

.method public a(Ljava/util/Date;)V
    .locals 0

    iput-object p1, p0, Lcom/duoyou/gamesdk/c/http/xutils/cache/a;->g:Ljava/util/Date;

    return-void
.end method

.method b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/cache/a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b(J)V
    .locals 1

    iput-wide p1, p0, Lcom/duoyou/gamesdk/c/http/xutils/cache/a;->f:J

    return-void
.end method

.method b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/duoyou/gamesdk/c/http/xutils/cache/a;->b:Ljava/lang/String;

    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/cache/a;->c:Ljava/lang/String;

    return-object v0
.end method

.method public c(J)V
    .locals 1

    iput-wide p1, p0, Lcom/duoyou/gamesdk/c/http/xutils/cache/a;->h:J

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/duoyou/gamesdk/c/http/xutils/cache/a;->c:Ljava/lang/String;

    return-void
.end method

.method public d()J
    .locals 2

    iget-wide v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/cache/a;->d:J

    return-wide v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/duoyou/gamesdk/c/http/xutils/cache/a;->e:Ljava/lang/String;

    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/cache/a;->e:Ljava/lang/String;

    return-object v0
.end method

.method public f()J
    .locals 2

    iget-wide v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/cache/a;->f:J

    return-wide v0
.end method

.method public g()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/cache/a;->g:Ljava/util/Date;

    return-object v0
.end method
