.class Lcom/duoyou/gamesdk/a/a$4$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/duoyou/gamesdk/a/a$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/duoyou/gamesdk/a/a$4;


# direct methods
.method constructor <init>(Lcom/duoyou/gamesdk/a/a$4;)V
    .locals 0

    iput-object p1, p0, Lcom/duoyou/gamesdk/a/a$4$1;->a:Lcom/duoyou/gamesdk/a/a$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/duoyou/gamesdk/a/a$4$1;->a:Lcom/duoyou/gamesdk/a/a$4;

    iget-object v0, v0, Lcom/duoyou/gamesdk/a/a$4;->c:Lcom/duoyou/gamesdk/a/a;

    invoke-static {v0}, Lcom/duoyou/gamesdk/a/a;->b(Lcom/duoyou/gamesdk/a/a;)V

    invoke-static {}, Lcom/duoyou/gamesdk/c/http/b;->b()V

    iget-object v0, p0, Lcom/duoyou/gamesdk/a/a$4$1;->a:Lcom/duoyou/gamesdk/a/a$4;

    iget-object v0, v0, Lcom/duoyou/gamesdk/a/a$4;->b:Lcom/duoyou/gamesdk/openapi/OnExitCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/duoyou/gamesdk/a/a$4$1;->a:Lcom/duoyou/gamesdk/a/a$4;

    iget-object v0, v0, Lcom/duoyou/gamesdk/a/a$4;->b:Lcom/duoyou/gamesdk/openapi/OnExitCallback;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/duoyou/gamesdk/openapi/OnExitCallback;->onExitCallback(Z)V

    :cond_0
    return-void
.end method
