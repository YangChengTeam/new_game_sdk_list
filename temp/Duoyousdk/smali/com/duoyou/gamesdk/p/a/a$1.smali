.class Lcom/duoyou/gamesdk/p/a/a$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/duoyou/gamesdk/p/a/a;->a(Landroid/app/Activity;Lcom/duoyou/gamesdk/openapi/DyPayInfo;Ljava/lang/String;Lcom/duoyou/gamesdk/openapi/OnPayCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/duoyou/gamesdk/openapi/OnPayCallback;

.field final synthetic d:Lcom/duoyou/gamesdk/openapi/DyPayInfo;

.field final synthetic e:Lcom/duoyou/gamesdk/p/a/a;


# direct methods
.method constructor <init>(Lcom/duoyou/gamesdk/p/a/a;Landroid/app/Activity;Ljava/lang/String;Lcom/duoyou/gamesdk/openapi/OnPayCallback;Lcom/duoyou/gamesdk/openapi/DyPayInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/duoyou/gamesdk/p/a/a$1;->e:Lcom/duoyou/gamesdk/p/a/a;

    iput-object p2, p0, Lcom/duoyou/gamesdk/p/a/a$1;->a:Landroid/app/Activity;

    iput-object p3, p0, Lcom/duoyou/gamesdk/p/a/a$1;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/duoyou/gamesdk/p/a/a$1;->c:Lcom/duoyou/gamesdk/openapi/OnPayCallback;

    iput-object p5, p0, Lcom/duoyou/gamesdk/p/a/a$1;->d:Lcom/duoyou/gamesdk/openapi/DyPayInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    new-instance v0, Lcom/alipay/sdk/app/PayTask;

    iget-object v1, p0, Lcom/duoyou/gamesdk/p/a/a$1;->a:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/alipay/sdk/app/PayTask;-><init>(Landroid/app/Activity;)V

    iget-object v1, p0, Lcom/duoyou/gamesdk/p/a/a$1;->b:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/alipay/sdk/app/PayTask;->payV2(Ljava/lang/String;Z)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/duoyou/gamesdk/p/a/a$1;->a:Landroid/app/Activity;

    new-instance v2, Lcom/duoyou/gamesdk/p/a/a$1$1;

    invoke-direct {v2, p0, v0}, Lcom/duoyou/gamesdk/p/a/a$1$1;-><init>(Lcom/duoyou/gamesdk/p/a/a$1;Ljava/util/Map;)V

    invoke-virtual {v1, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
