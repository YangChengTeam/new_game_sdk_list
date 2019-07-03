.class public Lcom/duoyou/gamesdk/c/http/xutils/http/e;
.super Lcom/duoyou/gamesdk/c/http/xutils/http/a;


# instance fields
.field private A:Z

.field private a:Lcom/duoyou/gamesdk/c/http/xutils/http/a/a;

.field private b:Ljava/lang/String;

.field private final c:[Ljava/lang/String;

.field private final d:[Ljava/lang/String;

.field private e:Lcom/duoyou/gamesdk/c/http/xutils/http/b/d;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljavax/net/ssl/SSLSocketFactory;

.field private i:Ljava/net/Proxy;

.field private j:Z

.field private k:Ljava/lang/String;

.field private l:J

.field private m:J

.field private n:Ljava/util/concurrent/Executor;

.field private o:Lcom/duoyou/gamesdk/c/http/xutils/common/task/Priority;

.field private p:I

.field private q:I

.field private r:Z

.field private s:Z

.field private t:I

.field private u:Ljava/lang/String;

.field private v:Z

.field private w:I

.field private x:Lcom/duoyou/gamesdk/c/http/xutils/http/b/b;

.field private y:Lcom/duoyou/gamesdk/c/http/xutils/http/b/e;

.field private z:Lcom/duoyou/gamesdk/c/http/xutils/http/b/g;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0, v0, v0}, Lcom/duoyou/gamesdk/c/http/xutils/http/e;-><init>(Ljava/lang/String;Lcom/duoyou/gamesdk/c/http/xutils/http/b/d;[Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/duoyou/gamesdk/c/http/xutils/http/b/d;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 4

    const/16 v3, 0x3a98

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/duoyou/gamesdk/c/http/xutils/http/a;-><init>()V

    iput-boolean v2, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/e;->j:Z

    sget-object v0, Lcom/duoyou/gamesdk/c/http/xutils/common/task/Priority;->DEFAULT:Lcom/duoyou/gamesdk/c/http/xutils/common/task/Priority;

    iput-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/e;->o:Lcom/duoyou/gamesdk/c/http/xutils/common/task/Priority;

    iput v3, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/e;->p:I

    iput v3, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/e;->q:I

    iput-boolean v2, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/e;->r:Z

    iput-boolean v1, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/e;->s:Z

    const/4 v0, 0x2

    iput v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/e;->t:I

    iput-boolean v1, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/e;->v:Z

    const/16 v0, 0x12c

    iput v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/e;->w:I

    iput-boolean v1, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/e;->A:Z

    if-eqz p1, :cond_0

    if-nez p2, :cond_0

    new-instance p2, Lcom/duoyou/gamesdk/c/http/xutils/http/b/a;

    invoke-direct {p2}, Lcom/duoyou/gamesdk/c/http/xutils/http/b/a;-><init>()V

    :cond_0
    iput-object p1, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/e;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/e;->c:[Ljava/lang/String;

    iput-object p4, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/e;->d:[Ljava/lang/String;

    iput-object p2, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/e;->e:Lcom/duoyou/gamesdk/c/http/xutils/http/b/d;

    return-void
.end method

.method private B()V
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    new-instance v1, Lcom/duoyou/gamesdk/c/http/xutils/http/e$1;

    invoke-direct {v1, p0}, Lcom/duoyou/gamesdk/c/http/xutils/http/e$1;-><init>(Lcom/duoyou/gamesdk/c/http/xutils/http/e;)V

    invoke-static {p0, v0, v1}, Lcom/duoyou/gamesdk/c/http/xutils/http/f;->a(Ljava/lang/Object;Ljava/lang/Class;Lcom/duoyou/gamesdk/c/http/xutils/http/f$a;)V

    return-void
.end method

.method private C()Lcom/duoyou/gamesdk/c/http/xutils/http/a/a;
    .locals 2

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/e;->a:Lcom/duoyou/gamesdk/c/http/xutils/http/a/a;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/e;->A:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/e;->A:Z

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/duoyou/gamesdk/c/http/xutils/http/e;

    if-eq v0, v1, :cond_0

    const-class v1, Lcom/duoyou/gamesdk/c/http/xutils/http/a/a;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/duoyou/gamesdk/c/http/xutils/http/a/a;

    iput-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/e;->a:Lcom/duoyou/gamesdk/c/http/xutils/http/a/a;

    :cond_0
    iget-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/e;->a:Lcom/duoyou/gamesdk/c/http/xutils/http/a/a;

    return-object v0
.end method


# virtual methods
.method public A()Lcom/duoyou/gamesdk/c/http/xutils/http/b/g;
    .locals 1

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/e;->z:Lcom/duoyou/gamesdk/c/http/xutils/http/b/g;

    return-object v0
.end method

.method public bridge synthetic a()Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Lcom/duoyou/gamesdk/c/http/xutils/http/a;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-super {p0, p1}, Lcom/duoyou/gamesdk/c/http/xutils/http/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a(Lcom/duoyou/gamesdk/c/http/xutils/http/HttpMethod;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/duoyou/gamesdk/c/http/xutils/http/a;->a(Lcom/duoyou/gamesdk/c/http/xutils/http/HttpMethod;)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/duoyou/gamesdk/c/http/xutils/http/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/duoyou/gamesdk/c/http/xutils/http/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/net/Proxy;)V
    .locals 0

    iput-object p1, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/e;->i:Ljava/net/Proxy;

    return-void
.end method

.method public bridge synthetic b()Lcom/duoyou/gamesdk/c/http/xutils/http/HttpMethod;
    .locals 1

    invoke-super {p0}, Lcom/duoyou/gamesdk/c/http/xutils/http/a;->b()Lcom/duoyou/gamesdk/c/http/xutils/http/HttpMethod;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/e;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/e;->b:Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/e;->f:Ljava/lang/String;

    goto :goto_0
.end method

.method public bridge synthetic b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/duoyou/gamesdk/c/http/xutils/http/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic c()Ljava/util/List;
    .locals 1

    invoke-super {p0}, Lcom/duoyou/gamesdk/c/http/xutils/http/a;->c()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/duoyou/gamesdk/c/http/xutils/http/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic d()Ljava/util/List;
    .locals 1

    invoke-super {p0}, Lcom/duoyou/gamesdk/c/http/xutils/http/a;->d()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic e()Lcom/duoyou/gamesdk/c/http/xutils/http/c/f;
    .locals 1

    invoke-super {p0}, Lcom/duoyou/gamesdk/c/http/xutils/http/a;->e()Lcom/duoyou/gamesdk/c/http/xutils/http/c/f;

    move-result-object v0

    return-object v0
.end method

.method f()V
    .locals 2

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/e;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/e;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/duoyou/gamesdk/c/http/xutils/http/e;->C()Lcom/duoyou/gamesdk/c/http/xutils/http/a/a;

    move-result-object v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "uri is empty && @HttpRequest == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-direct {p0}, Lcom/duoyou/gamesdk/c/http/xutils/http/e;->B()V

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/e;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/e;->f:Ljava/lang/String;

    invoke-direct {p0}, Lcom/duoyou/gamesdk/c/http/xutils/http/e;->C()Lcom/duoyou/gamesdk/c/http/xutils/http/a/a;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-interface {v1}, Lcom/duoyou/gamesdk/c/http/xutils/http/a/a;->c()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoyou/gamesdk/c/http/xutils/http/b/d;

    iput-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/e;->e:Lcom/duoyou/gamesdk/c/http/xutils/http/b/d;

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/e;->e:Lcom/duoyou/gamesdk/c/http/xutils/http/b/d;

    invoke-interface {v0, p0, v1}, Lcom/duoyou/gamesdk/c/http/xutils/http/b/d;->a(Lcom/duoyou/gamesdk/c/http/xutils/http/e;Lcom/duoyou/gamesdk/c/http/xutils/http/a/a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/e;->f:Ljava/lang/String;

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/e;->e:Lcom/duoyou/gamesdk/c/http/xutils/http/b/d;

    invoke-interface {v0, p0}, Lcom/duoyou/gamesdk/c/http/xutils/http/b/d;->a(Lcom/duoyou/gamesdk/c/http/xutils/http/e;)V

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/e;->e:Lcom/duoyou/gamesdk/c/http/xutils/http/b/d;

    invoke-interface {v1}, Lcom/duoyou/gamesdk/c/http/xutils/http/a/a;->d()[Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Lcom/duoyou/gamesdk/c/http/xutils/http/b/d;->b(Lcom/duoyou/gamesdk/c/http/xutils/http/e;[Ljava/lang/String;)V

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/e;->h:Ljavax/net/ssl/SSLSocketFactory;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/e;->e:Lcom/duoyou/gamesdk/c/http/xutils/http/b/d;

    invoke-interface {v0}, Lcom/duoyou/gamesdk/c/http/xutils/http/b/d;->a()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/e;->h:Ljavax/net/ssl/SSLSocketFactory;

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/e;->e:Lcom/duoyou/gamesdk/c/http/xutils/http/b/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/e;->e:Lcom/duoyou/gamesdk/c/http/xutils/http/b/d;

    invoke-interface {v0, p0}, Lcom/duoyou/gamesdk/c/http/xutils/http/b/d;->a(Lcom/duoyou/gamesdk/c/http/xutils/http/e;)V

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/e;->e:Lcom/duoyou/gamesdk/c/http/xutils/http/b/d;

    iget-object v1, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/e;->c:[Ljava/lang/String;

    invoke-interface {v0, p0, v1}, Lcom/duoyou/gamesdk/c/http/xutils/http/b/d;->b(Lcom/duoyou/gamesdk/c/http/xutils/http/e;[Ljava/lang/String;)V

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/e;->h:Ljavax/net/ssl/SSLSocketFactory;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/e;->e:Lcom/duoyou/gamesdk/c/http/xutils/http/b/d;

    invoke-interface {v0}, Lcom/duoyou/gamesdk/c/http/xutils/http/b/d;->a()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/e;->h:Ljavax/net/ssl/SSLSocketFactory;

    goto :goto_0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/e;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/e;->b:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/e;->f:Ljava/lang/String;

    goto :goto_0
.end method

.method public h()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/e;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/e;->e:Lcom/duoyou/gamesdk/c/http/xutils/http/b/d;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/duoyou/gamesdk/c/http/xutils/http/e;->C()Lcom/duoyou/gamesdk/c/http/xutils/http/a/a;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/e;->e:Lcom/duoyou/gamesdk/c/http/xutils/http/b/d;

    invoke-interface {v0}, Lcom/duoyou/gamesdk/c/http/xutils/http/a/a;->e()[Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, p0, v0}, Lcom/duoyou/gamesdk/c/http/xutils/http/b/d;->a(Lcom/duoyou/gamesdk/c/http/xutils/http/e;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/e;->g:Ljava/lang/String;

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/e;->g:Ljava/lang/String;

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/e;->e:Lcom/duoyou/gamesdk/c/http/xutils/http/b/d;

    iget-object v1, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/e;->d:[Ljava/lang/String;

    invoke-interface {v0, p0, v1}, Lcom/duoyou/gamesdk/c/http/xutils/http/b/d;->a(Lcom/duoyou/gamesdk/c/http/xutils/http/e;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/e;->g:Ljava/lang/String;

    goto :goto_0
.end method

.method public i()Ljavax/net/ssl/SSLSocketFactory;
    .locals 1

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/e;->h:Ljavax/net/ssl/SSLSocketFactory;

    return-object v0
.end method

.method public j()Z
    .locals 1

    iget-boolean v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/e;->j:Z

    return v0
.end method

.method public k()Ljava/net/Proxy;
    .locals 1

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/e;->i:Ljava/net/Proxy;

    return-object v0
.end method

.method public l()Lcom/duoyou/gamesdk/c/http/xutils/common/task/Priority;
    .locals 1

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/e;->o:Lcom/duoyou/gamesdk/c/http/xutils/common/task/Priority;

    return-object v0
.end method

.method public m()I
    .locals 1

    iget v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/e;->p:I

    return v0
.end method

.method public n()I
    .locals 1

    iget v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/e;->q:I

    return v0
.end method

.method public o()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/e;->k:Ljava/lang/String;

    return-object v0
.end method

.method public p()J
    .locals 2

    iget-wide v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/e;->l:J

    return-wide v0
.end method

.method public q()J
    .locals 2

    iget-wide v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/e;->m:J

    return-wide v0
.end method

.method public r()Ljava/util/concurrent/Executor;
    .locals 1

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/e;->n:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method public s()Z
    .locals 1

    iget-boolean v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/e;->r:Z

    return v0
.end method

.method public t()Z
    .locals 1

    iget-boolean v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/e;->s:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Lcom/duoyou/gamesdk/c/http/xutils/http/e;->f()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {p0}, Lcom/duoyou/gamesdk/c/http/xutils/http/e;->g()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-super {p0}, Lcom/duoyou/gamesdk/c/http/xutils/http/a;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/duoyou/gamesdk/c/http/xutils/common/a/e;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "?"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "&"

    :goto_2
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Lcom/duoyou/gamesdk/c/http/xutils/http/a;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    const-string v0, "?"

    goto :goto_2
.end method

.method public u()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/e;->u:Ljava/lang/String;

    return-object v0
.end method

.method public v()I
    .locals 1

    iget v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/e;->t:I

    return v0
.end method

.method public w()Z
    .locals 1

    iget-boolean v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/e;->v:Z

    return v0
.end method

.method public x()I
    .locals 1

    iget v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/e;->w:I

    return v0
.end method

.method public y()Lcom/duoyou/gamesdk/c/http/xutils/http/b/b;
    .locals 1

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/e;->x:Lcom/duoyou/gamesdk/c/http/xutils/http/b/b;

    return-object v0
.end method

.method public z()Lcom/duoyou/gamesdk/c/http/xutils/http/b/e;
    .locals 1

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/e;->y:Lcom/duoyou/gamesdk/c/http/xutils/http/b/e;

    return-object v0
.end method
