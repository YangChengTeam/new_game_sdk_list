.class Lcom/duoyou/gamesdk/p/PA$7$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/duoyou/gamesdk/openapi/OnPayCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/duoyou/gamesdk/p/PA$7;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/duoyou/gamesdk/p/PA$7;


# direct methods
.method constructor <init>(Lcom/duoyou/gamesdk/p/PA$7;)V
    .locals 0

    iput-object p1, p0, Lcom/duoyou/gamesdk/p/PA$7$1;->a:Lcom/duoyou/gamesdk/p/PA$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPayCallback(Lcom/duoyou/gamesdk/openapi/PAY_TYPE;Ljava/lang/String;)V
    .locals 2

    const-string v0, "0"

    invoke-static {p2}, Lcom/duoyou/gamesdk/c/c/j;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/duoyou/gamesdk/p/PA$7$1;->a:Lcom/duoyou/gamesdk/p/PA$7;

    iget-object v0, v0, Lcom/duoyou/gamesdk/p/PA$7;->a:Lcom/duoyou/gamesdk/p/PA;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/duoyou/gamesdk/p/PA;->b(Lcom/duoyou/gamesdk/p/PA;Z)Z

    invoke-static {}, Lcom/duoyou/gamesdk/a/a;->a()Lcom/duoyou/gamesdk/a/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/duoyou/gamesdk/a/a;->a(Lcom/duoyou/gamesdk/openapi/PAY_TYPE;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/duoyou/gamesdk/p/PA$7$1;->a:Lcom/duoyou/gamesdk/p/PA$7;

    iget-object v0, v0, Lcom/duoyou/gamesdk/p/PA$7;->a:Lcom/duoyou/gamesdk/p/PA;

    invoke-virtual {v0}, Lcom/duoyou/gamesdk/p/PA;->finish()V

    :cond_0
    return-void
.end method
