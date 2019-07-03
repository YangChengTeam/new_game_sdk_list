.class Lcom/duoyou/gamesdk/b/d/b$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/duoyou/gamesdk/b/d/b;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/duoyou/gamesdk/b/d/b;


# direct methods
.method constructor <init>(Lcom/duoyou/gamesdk/b/d/b;)V
    .locals 0

    iput-object p1, p0, Lcom/duoyou/gamesdk/b/d/b$1;->a:Lcom/duoyou/gamesdk/b/d/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/duoyou/gamesdk/b/d/b$1;->a:Lcom/duoyou/gamesdk/b/d/b;

    invoke-virtual {v0}, Lcom/duoyou/gamesdk/b/d/b;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/duoyou/gamesdk/b/c/d;->a(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/duoyou/gamesdk/b/d/b$1;->a:Lcom/duoyou/gamesdk/b/d/b;

    invoke-virtual {v0}, Lcom/duoyou/gamesdk/b/d/b;->dismiss()V

    return-void
.end method
