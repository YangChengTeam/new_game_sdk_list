.class final Lcom/duoyou/gamesdk/c/http/xutils/http/cookie/a;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/duoyou/gamesdk/c/http/xutils/db/a/b;
    a = "cookie"
    b = "CREATE UNIQUE INDEX index_cookie_unique ON cookie(\"name\",\"domain\",\"path\")"
.end annotation


# static fields
.field private static final a:J


# instance fields
.field private b:Ljava/lang/String;
    .annotation runtime Lcom/duoyou/gamesdk/c/http/xutils/db/a/a;
        a = "uri"
    .end annotation
.end field

.field private c:Ljava/lang/String;
    .annotation runtime Lcom/duoyou/gamesdk/c/http/xutils/db/a/a;
        a = "name"
    .end annotation
.end field

.field private d:Ljava/lang/String;
    .annotation runtime Lcom/duoyou/gamesdk/c/http/xutils/db/a/a;
        a = "value"
    .end annotation
.end field

.field private e:Ljava/lang/String;
    .annotation runtime Lcom/duoyou/gamesdk/c/http/xutils/db/a/a;
        a = "comment"
    .end annotation
.end field

.field private f:Ljava/lang/String;
    .annotation runtime Lcom/duoyou/gamesdk/c/http/xutils/db/a/a;
        a = "commentURL"
    .end annotation
.end field

.field private g:Z
    .annotation runtime Lcom/duoyou/gamesdk/c/http/xutils/db/a/a;
        a = "discard"
    .end annotation
.end field

.field private h:Ljava/lang/String;
    .annotation runtime Lcom/duoyou/gamesdk/c/http/xutils/db/a/a;
        a = "domain"
    .end annotation
.end field

.field private i:J
    .annotation runtime Lcom/duoyou/gamesdk/c/http/xutils/db/a/a;
        a = "expiry"
    .end annotation
.end field

.field private j:Ljava/lang/String;
    .annotation runtime Lcom/duoyou/gamesdk/c/http/xutils/db/a/a;
        a = "path"
    .end annotation
.end field

.field private k:Ljava/lang/String;
    .annotation runtime Lcom/duoyou/gamesdk/c/http/xutils/db/a/a;
        a = "portList"
    .end annotation
.end field

.field private l:Z
    .annotation runtime Lcom/duoyou/gamesdk/c/http/xutils/db/a/a;
        a = "secure"
    .end annotation
.end field

.field private m:I
    .annotation runtime Lcom/duoyou/gamesdk/c/http/xutils/db/a/a;
        a = "version"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide v2, 0x2d432498000L

    add-long/2addr v0, v2

    sput-wide v0, Lcom/duoyou/gamesdk/c/http/xutils/http/cookie/a;->a:J

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-wide v0, Lcom/duoyou/gamesdk/c/http/xutils/http/cookie/a;->a:J

    iput-wide v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/cookie/a;->i:J

    const/4 v0, 0x1

    iput v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/cookie/a;->m:I

    return-void
.end method

.method public constructor <init>(Ljava/net/URI;Ljava/net/HttpCookie;)V
    .locals 10

    const-wide/16 v8, 0x0

    const-wide/16 v6, -0x1

    const/4 v4, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-wide v0, Lcom/duoyou/gamesdk/c/http/xutils/http/cookie/a;->a:J

    iput-wide v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/cookie/a;->i:J

    iput v4, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/cookie/a;->m:I

    if-nez p1, :cond_2

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/cookie/a;->b:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/net/HttpCookie;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/cookie/a;->c:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/net/HttpCookie;->getValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/cookie/a;->d:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/net/HttpCookie;->getComment()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/cookie/a;->e:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/net/HttpCookie;->getCommentURL()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/cookie/a;->f:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/net/HttpCookie;->getDiscard()Z

    move-result v0

    iput-boolean v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/cookie/a;->g:Z

    invoke-virtual {p2}, Ljava/net/HttpCookie;->getDomain()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/cookie/a;->h:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/net/HttpCookie;->getMaxAge()J

    move-result-wide v0

    cmp-long v2, v0, v6

    if-eqz v2, :cond_3

    cmp-long v2, v0, v8

    if-lez v2, :cond_3

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/cookie/a;->i:J

    iget-wide v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/cookie/a;->i:J

    cmp-long v0, v0, v8

    if-gez v0, :cond_0

    sget-wide v0, Lcom/duoyou/gamesdk/c/http/xutils/http/cookie/a;->a:J

    iput-wide v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/cookie/a;->i:J

    :cond_0
    :goto_1
    invoke-virtual {p2}, Ljava/net/HttpCookie;->getPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/cookie/a;->j:Ljava/lang/String;

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/cookie/a;->j:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/cookie/a;->j:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v4, :cond_1

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/cookie/a;->j:Ljava/lang/String;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/cookie/a;->j:Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/cookie/a;->j:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/cookie/a;->j:Ljava/lang/String;

    :cond_1
    invoke-virtual {p2}, Ljava/net/HttpCookie;->getPortlist()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/cookie/a;->k:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/net/HttpCookie;->getSecure()Z

    move-result v0

    iput-boolean v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/cookie/a;->l:Z

    invoke-virtual {p2}, Ljava/net/HttpCookie;->getVersion()I

    move-result v0

    iput v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/cookie/a;->m:I

    return-void

    :cond_2
    invoke-virtual {p1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_3
    iput-wide v6, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/cookie/a;->i:J

    goto :goto_1
.end method


# virtual methods
.method public a()Ljava/net/HttpCookie;
    .locals 6

    const-wide/16 v4, -0x1

    new-instance v0, Ljava/net/HttpCookie;

    iget-object v1, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/cookie/a;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/cookie/a;->d:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/net/HttpCookie;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/cookie/a;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/net/HttpCookie;->setComment(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/cookie/a;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/net/HttpCookie;->setCommentURL(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/cookie/a;->g:Z

    invoke-virtual {v0, v1}, Ljava/net/HttpCookie;->setDiscard(Z)V

    iget-object v1, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/cookie/a;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/net/HttpCookie;->setDomain(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/cookie/a;->i:J

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    invoke-virtual {v0, v4, v5}, Ljava/net/HttpCookie;->setMaxAge(J)V

    :goto_0
    iget-object v1, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/cookie/a;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/net/HttpCookie;->setPath(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/cookie/a;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/net/HttpCookie;->setPortlist(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/cookie/a;->l:Z

    invoke-virtual {v0, v1}, Ljava/net/HttpCookie;->setSecure(Z)V

    iget v1, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/cookie/a;->m:I

    invoke-virtual {v0, v1}, Ljava/net/HttpCookie;->setVersion(I)V

    return-object v0

    :cond_0
    iget-wide v2, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/cookie/a;->i:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/net/HttpCookie;->setMaxAge(J)V

    goto :goto_0
.end method

.method public b()Z
    .locals 4

    iget-wide v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/cookie/a;->i:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/cookie/a;->i:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
