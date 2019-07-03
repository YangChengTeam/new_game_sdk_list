.class Lcom/duoyou/gamesdk/a/a$1$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/duoyou/gamesdk/a/a$1$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/duoyou/gamesdk/a/a$1$1;


# direct methods
.method constructor <init>(Lcom/duoyou/gamesdk/a/a$1$1;)V
    .locals 0

    iput-object p1, p0, Lcom/duoyou/gamesdk/a/a$1$1$1;->a:Lcom/duoyou/gamesdk/a/a$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    invoke-static {}, Lcom/duoyou/gamesdk/b/b/a;->a()Lcom/duoyou/gamesdk/b/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoyou/gamesdk/b/b/a;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/duoyou/gamesdk/a/a$1$1$1;->a:Lcom/duoyou/gamesdk/a/a$1$1;

    iget-object v0, v0, Lcom/duoyou/gamesdk/a/a$1$1;->a:Lcom/duoyou/gamesdk/a/a$1;

    iget-object v0, v0, Lcom/duoyou/gamesdk/a/a$1;->a:Lcom/duoyou/gamesdk/a/a;

    invoke-static {v0}, Lcom/duoyou/gamesdk/a/a;->a(Lcom/duoyou/gamesdk/a/a;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/duoyou/gamesdk/f/FIA;->a(Landroid/content/Context;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/duoyou/gamesdk/a/a$1$1$1;->a:Lcom/duoyou/gamesdk/a/a$1$1;

    iget-object v0, v0, Lcom/duoyou/gamesdk/a/a$1$1;->a:Lcom/duoyou/gamesdk/a/a$1;

    iget-object v0, v0, Lcom/duoyou/gamesdk/a/a$1;->a:Lcom/duoyou/gamesdk/a/a;

    invoke-static {v0}, Lcom/duoyou/gamesdk/a/a;->a(Lcom/duoyou/gamesdk/a/a;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/duoyou/gamesdk/b/c/d;->a(Landroid/content/Context;)V

    goto :goto_0
.end method
