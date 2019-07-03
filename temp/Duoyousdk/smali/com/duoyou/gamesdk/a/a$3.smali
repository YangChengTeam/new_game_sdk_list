.class Lcom/duoyou/gamesdk/a/a$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/duoyou/gamesdk/a/a;->pay(Landroid/app/Activity;Lcom/duoyou/gamesdk/openapi/DyPayInfo;Lcom/duoyou/gamesdk/openapi/OnPayCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/duoyou/gamesdk/openapi/OnPayCallback;

.field final synthetic b:Landroid/app/Activity;

.field final synthetic c:Lcom/duoyou/gamesdk/openapi/DyPayInfo;

.field final synthetic d:Lcom/duoyou/gamesdk/a/a;


# direct methods
.method constructor <init>(Lcom/duoyou/gamesdk/a/a;Lcom/duoyou/gamesdk/openapi/OnPayCallback;Landroid/app/Activity;Lcom/duoyou/gamesdk/openapi/DyPayInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/duoyou/gamesdk/a/a$3;->d:Lcom/duoyou/gamesdk/a/a;

    iput-object p2, p0, Lcom/duoyou/gamesdk/a/a$3;->a:Lcom/duoyou/gamesdk/openapi/OnPayCallback;

    iput-object p3, p0, Lcom/duoyou/gamesdk/a/a$3;->b:Landroid/app/Activity;

    iput-object p4, p0, Lcom/duoyou/gamesdk/a/a$3;->c:Lcom/duoyou/gamesdk/openapi/DyPayInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/duoyou/gamesdk/a/a$3;->d:Lcom/duoyou/gamesdk/a/a;

    iget-object v1, p0, Lcom/duoyou/gamesdk/a/a$3;->a:Lcom/duoyou/gamesdk/openapi/OnPayCallback;

    invoke-virtual {v0, v1}, Lcom/duoyou/gamesdk/a/a;->a(Lcom/duoyou/gamesdk/openapi/OnPayCallback;)V

    iget-object v0, p0, Lcom/duoyou/gamesdk/a/a$3;->b:Landroid/app/Activity;

    iget-object v1, p0, Lcom/duoyou/gamesdk/a/a$3;->c:Lcom/duoyou/gamesdk/openapi/DyPayInfo;

    invoke-static {v0, v1}, Lcom/duoyou/gamesdk/p/PA;->a(Landroid/content/Context;Lcom/duoyou/gamesdk/openapi/DyPayInfo;)V

    return-void
.end method
