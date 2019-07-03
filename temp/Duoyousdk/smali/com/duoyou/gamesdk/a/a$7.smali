.class Lcom/duoyou/gamesdk/a/a$7;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/duoyou/gamesdk/a/a;->a(Lcom/duoyou/gamesdk/openapi/PAY_TYPE;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/duoyou/gamesdk/openapi/PAY_TYPE;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/duoyou/gamesdk/a/a;


# direct methods
.method constructor <init>(Lcom/duoyou/gamesdk/a/a;Lcom/duoyou/gamesdk/openapi/PAY_TYPE;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/duoyou/gamesdk/a/a$7;->c:Lcom/duoyou/gamesdk/a/a;

    iput-object p2, p0, Lcom/duoyou/gamesdk/a/a$7;->a:Lcom/duoyou/gamesdk/openapi/PAY_TYPE;

    iput-object p3, p0, Lcom/duoyou/gamesdk/a/a$7;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/duoyou/gamesdk/a/a$7;->c:Lcom/duoyou/gamesdk/a/a;

    invoke-static {v0}, Lcom/duoyou/gamesdk/a/a;->c(Lcom/duoyou/gamesdk/a/a;)Lcom/duoyou/gamesdk/openapi/OnPayCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/duoyou/gamesdk/a/a$7;->c:Lcom/duoyou/gamesdk/a/a;

    invoke-static {v0}, Lcom/duoyou/gamesdk/a/a;->c(Lcom/duoyou/gamesdk/a/a;)Lcom/duoyou/gamesdk/openapi/OnPayCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/duoyou/gamesdk/a/a$7;->a:Lcom/duoyou/gamesdk/openapi/PAY_TYPE;

    iget-object v2, p0, Lcom/duoyou/gamesdk/a/a$7;->b:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/duoyou/gamesdk/openapi/OnPayCallback;->onPayCallback(Lcom/duoyou/gamesdk/openapi/PAY_TYPE;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
