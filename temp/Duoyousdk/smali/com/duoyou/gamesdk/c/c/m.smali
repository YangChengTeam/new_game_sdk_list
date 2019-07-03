.class public Lcom/duoyou/gamesdk/c/c/m;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/os/Handler;

.field private b:Lcom/duoyou/gamesdk/c/http/xutils/common/Callback$b;

.field private c:Ljava/lang/Runnable;

.field private d:Z

.field private e:Landroid/app/Dialog;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/duoyou/gamesdk/c/c/m;->a:Landroid/os/Handler;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/duoyou/gamesdk/c/c/m;->d:Z

    return-void
.end method

.method static synthetic a(Lcom/duoyou/gamesdk/c/c/m;Lcom/duoyou/gamesdk/c/http/xutils/common/Callback$b;)Lcom/duoyou/gamesdk/c/http/xutils/common/Callback$b;
    .locals 0

    iput-object p1, p0, Lcom/duoyou/gamesdk/c/c/m;->b:Lcom/duoyou/gamesdk/c/http/xutils/common/Callback$b;

    return-object p1
.end method

.method static synthetic a(Lcom/duoyou/gamesdk/c/c/m;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/duoyou/gamesdk/c/c/m;->d:Z

    return v0
.end method

.method static synthetic a(Lcom/duoyou/gamesdk/c/c/m;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/duoyou/gamesdk/c/c/m;->d:Z

    return p1
.end method

.method static synthetic b(Lcom/duoyou/gamesdk/c/c/m;)Landroid/app/Dialog;
    .locals 1

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/c/m;->e:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic c(Lcom/duoyou/gamesdk/c/c/m;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/c/m;->c:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic d(Lcom/duoyou/gamesdk/c/c/m;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/c/m;->a:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic e(Lcom/duoyou/gamesdk/c/c/m;)Lcom/duoyou/gamesdk/c/http/xutils/common/Callback$b;
    .locals 1

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/c/m;->b:Lcom/duoyou/gamesdk/c/http/xutils/common/Callback$b;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/duoyou/gamesdk/c/c/m;->d:Z

    invoke-static {p1}, Lcom/duoyou/gamesdk/c/b/a;->a(Landroid/content/Context;)Lcom/duoyou/gamesdk/c/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoyou/gamesdk/c/b/a;->a()Lcom/duoyou/gamesdk/b/b/b;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u6b22\u8fce\u60a8,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/duoyou/gamesdk/b/b/b;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/duoyou/gamesdk/c/c/m$1;

    invoke-direct {v2, p0}, Lcom/duoyou/gamesdk/c/c/m$1;-><init>(Lcom/duoyou/gamesdk/c/c/m;)V

    invoke-static {p1, v1, v2}, Lcom/duoyou/gamesdk/c/c/g;->a(Landroid/content/Context;Ljava/lang/String;Landroid/view/View$OnClickListener;)Landroid/app/Dialog;

    move-result-object v1

    iput-object v1, p0, Lcom/duoyou/gamesdk/c/c/m;->e:Landroid/app/Dialog;

    new-instance v1, Lcom/duoyou/gamesdk/c/c/m$2;

    invoke-direct {v1, p0, v0, p1}, Lcom/duoyou/gamesdk/c/c/m$2;-><init>(Lcom/duoyou/gamesdk/c/c/m;Lcom/duoyou/gamesdk/b/b/b;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/duoyou/gamesdk/c/c/m;->c:Ljava/lang/Runnable;

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/c/m;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/duoyou/gamesdk/c/c/m;->c:Ljava/lang/Runnable;

    const-wide/16 v2, 0x2bc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public b(Landroid/content/Context;)Z
    .locals 3

    const/4 v0, 0x0

    invoke-static {p1}, Lcom/duoyou/gamesdk/c/b/a;->a(Landroid/content/Context;)Lcom/duoyou/gamesdk/c/b/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/duoyou/gamesdk/c/b/a;->a()Lcom/duoyou/gamesdk/b/b/b;

    move-result-object v1

    const-string v2, "is_auto_login_success"

    invoke-static {p1, v2, v0}, Lcom/duoyou/gamesdk/c/c/q;->b(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method
