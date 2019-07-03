.class Lcom/duoyou/gamesdk/b/c/c$4;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/duoyou/gamesdk/b/c/c;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/duoyou/gamesdk/b/c/c;


# direct methods
.method constructor <init>(Lcom/duoyou/gamesdk/b/c/c;)V
    .locals 0

    iput-object p1, p0, Lcom/duoyou/gamesdk/b/c/c$4;->a:Lcom/duoyou/gamesdk/b/c/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/duoyou/gamesdk/b/c/c$4;->a:Lcom/duoyou/gamesdk/b/c/c;

    invoke-virtual {v0}, Lcom/duoyou/gamesdk/b/c/c;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/duoyou/gamesdk/b/d/a;->a(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/duoyou/gamesdk/b/c/c$4;->a:Lcom/duoyou/gamesdk/b/c/c;

    invoke-virtual {v0}, Lcom/duoyou/gamesdk/b/c/c;->dismiss()V

    return-void
.end method
