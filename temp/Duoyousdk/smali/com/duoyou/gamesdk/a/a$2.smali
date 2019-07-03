.class Lcom/duoyou/gamesdk/a/a$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/duoyou/gamesdk/a/a;->login(Landroid/app/Activity;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Landroid/app/Activity;

.field final synthetic c:Lcom/duoyou/gamesdk/a/a;


# direct methods
.method constructor <init>(Lcom/duoyou/gamesdk/a/a;ZLandroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lcom/duoyou/gamesdk/a/a$2;->c:Lcom/duoyou/gamesdk/a/a;

    iput-boolean p2, p0, Lcom/duoyou/gamesdk/a/a$2;->a:Z

    iput-object p3, p0, Lcom/duoyou/gamesdk/a/a$2;->b:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Lcom/duoyou/gamesdk/c/c/c;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "appId \u4e0d\u5b58\u5728"

    invoke-static {v0}, Lcom/duoyou/gamesdk/c/c/r;->a(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/duoyou/gamesdk/c/c/c;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "appKey \u4e0d\u5b58\u5728"

    invoke-static {v0}, Lcom/duoyou/gamesdk/c/c/r;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/duoyou/gamesdk/c/c/m;

    invoke-direct {v0}, Lcom/duoyou/gamesdk/c/c/m;-><init>()V

    iget-boolean v1, p0, Lcom/duoyou/gamesdk/a/a$2;->a:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/duoyou/gamesdk/a/a$2;->b:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/duoyou/gamesdk/c/c/m;->b(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/duoyou/gamesdk/a/a$2;->b:Landroid/app/Activity;

    invoke-virtual {v0, v1}, Lcom/duoyou/gamesdk/c/c/m;->a(Landroid/content/Context;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/duoyou/gamesdk/a/a$2;->b:Landroid/app/Activity;

    invoke-static {v0}, Lcom/duoyou/gamesdk/b/c/d;->a(Landroid/content/Context;)V

    goto :goto_0
.end method
