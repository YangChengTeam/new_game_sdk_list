.class Lcom/duoyou/gamesdk/b/c/d$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/duoyou/gamesdk/b/c/d;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/duoyou/gamesdk/b/c/d;


# direct methods
.method constructor <init>(Lcom/duoyou/gamesdk/b/c/d;)V
    .locals 0

    iput-object p1, p0, Lcom/duoyou/gamesdk/b/c/d$3;->a:Lcom/duoyou/gamesdk/b/c/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/duoyou/gamesdk/b/c/d$3;->a:Lcom/duoyou/gamesdk/b/c/d;

    invoke-virtual {v0}, Lcom/duoyou/gamesdk/b/c/d;->a()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/duoyou/gamesdk/b/c/d$3$1;

    invoke-direct {v1, p0}, Lcom/duoyou/gamesdk/b/c/d$3$1;-><init>(Lcom/duoyou/gamesdk/b/c/d$3;)V

    invoke-static {v0, v1}, Lcom/duoyou/gamesdk/b/c/b;->a(Landroid/content/Context;Lcom/duoyou/gamesdk/b/c/b$a;)V

    return-void
.end method
