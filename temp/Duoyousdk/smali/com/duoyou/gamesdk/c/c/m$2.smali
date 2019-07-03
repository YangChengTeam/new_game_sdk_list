.class Lcom/duoyou/gamesdk/c/c/m$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/duoyou/gamesdk/c/c/m;->a(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/duoyou/gamesdk/b/b/b;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Lcom/duoyou/gamesdk/c/c/m;


# direct methods
.method constructor <init>(Lcom/duoyou/gamesdk/c/c/m;Lcom/duoyou/gamesdk/b/b/b;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/duoyou/gamesdk/c/c/m$2;->c:Lcom/duoyou/gamesdk/c/c/m;

    iput-object p2, p0, Lcom/duoyou/gamesdk/c/c/m$2;->a:Lcom/duoyou/gamesdk/b/b/b;

    iput-object p3, p0, Lcom/duoyou/gamesdk/c/c/m$2;->b:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/c/m$2;->c:Lcom/duoyou/gamesdk/c/c/m;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/duoyou/gamesdk/c/c/m;->a(Lcom/duoyou/gamesdk/c/c/m;Z)Z

    new-instance v0, Lcom/duoyou/gamesdk/b/a/a;

    invoke-direct {v0}, Lcom/duoyou/gamesdk/b/a/a;-><init>()V

    iget-object v1, p0, Lcom/duoyou/gamesdk/c/c/m$2;->c:Lcom/duoyou/gamesdk/c/c/m;

    iget-object v2, p0, Lcom/duoyou/gamesdk/c/c/m$2;->a:Lcom/duoyou/gamesdk/b/b/b;

    invoke-virtual {v2}, Lcom/duoyou/gamesdk/b/b/b;->a()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/duoyou/gamesdk/c/c/m$2;->a:Lcom/duoyou/gamesdk/b/b/b;

    invoke-virtual {v3}, Lcom/duoyou/gamesdk/b/b/b;->b()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/duoyou/gamesdk/c/c/m$2$1;

    invoke-direct {v4, p0}, Lcom/duoyou/gamesdk/c/c/m$2$1;-><init>(Lcom/duoyou/gamesdk/c/c/m$2;)V

    invoke-virtual {v0, v2, v3, v4}, Lcom/duoyou/gamesdk/b/a/a;->b(Ljava/lang/String;Ljava/lang/String;Lcom/duoyou/gamesdk/c/http/e;)Lcom/duoyou/gamesdk/c/http/xutils/common/Callback$b;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/duoyou/gamesdk/c/c/m;->a(Lcom/duoyou/gamesdk/c/c/m;Lcom/duoyou/gamesdk/c/http/xutils/common/Callback$b;)Lcom/duoyou/gamesdk/c/http/xutils/common/Callback$b;

    return-void
.end method
