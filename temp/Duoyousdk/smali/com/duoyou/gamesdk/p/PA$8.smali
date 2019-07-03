.class Lcom/duoyou/gamesdk/p/PA$8;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/duoyou/gamesdk/p/PA;->a(Lcom/duoyou/gamesdk/openapi/PAY_TYPE;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/duoyou/gamesdk/openapi/PAY_TYPE;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/duoyou/gamesdk/p/PA;


# direct methods
.method constructor <init>(Lcom/duoyou/gamesdk/p/PA;Lcom/duoyou/gamesdk/openapi/PAY_TYPE;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/duoyou/gamesdk/p/PA$8;->c:Lcom/duoyou/gamesdk/p/PA;

    iput-object p2, p0, Lcom/duoyou/gamesdk/p/PA$8;->a:Lcom/duoyou/gamesdk/openapi/PAY_TYPE;

    iput-object p3, p0, Lcom/duoyou/gamesdk/p/PA$8;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    new-instance v0, Lcom/duoyou/gamesdk/p/b/a;

    invoke-direct {v0}, Lcom/duoyou/gamesdk/p/b/a;-><init>()V

    iget-object v1, p0, Lcom/duoyou/gamesdk/p/PA$8;->a:Lcom/duoyou/gamesdk/openapi/PAY_TYPE;

    iget-object v2, p0, Lcom/duoyou/gamesdk/p/PA$8;->b:Ljava/lang/String;

    new-instance v3, Lcom/duoyou/gamesdk/p/PA$8$1;

    invoke-direct {v3, p0}, Lcom/duoyou/gamesdk/p/PA$8$1;-><init>(Lcom/duoyou/gamesdk/p/PA$8;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/duoyou/gamesdk/p/b/a;->a(Lcom/duoyou/gamesdk/openapi/PAY_TYPE;Ljava/lang/String;Lcom/duoyou/gamesdk/c/http/e;)V

    return-void
.end method
