.class Lcom/duoyou/gamesdk/c/http/xutils/http/e/d$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/duoyou/gamesdk/c/http/xutils/http/e/d;->b_()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/duoyou/gamesdk/c/http/xutils/http/e/d;


# direct methods
.method constructor <init>(Lcom/duoyou/gamesdk/c/http/xutils/http/e/d;)V
    .locals 0

    iput-object p1, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/e/d$1;->a:Lcom/duoyou/gamesdk/c/http/xutils/http/e/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/e/d$1;->a:Lcom/duoyou/gamesdk/c/http/xutils/http/e/d;

    iget-object v0, v0, Lcom/duoyou/gamesdk/c/http/xutils/http/e/d;->c:Lcom/duoyou/gamesdk/c/http/xutils/http/d/g;

    iget-object v1, p0, Lcom/duoyou/gamesdk/c/http/xutils/http/e/d$1;->a:Lcom/duoyou/gamesdk/c/http/xutils/http/e/d;

    invoke-virtual {v0, v1}, Lcom/duoyou/gamesdk/c/http/xutils/http/d/g;->b(Lcom/duoyou/gamesdk/c/http/xutils/http/e/d;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/duoyou/gamesdk/c/http/xutils/common/a/e;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
