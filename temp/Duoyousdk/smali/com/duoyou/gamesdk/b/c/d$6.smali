.class Lcom/duoyou/gamesdk/b/c/d$6;
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

    iput-object p1, p0, Lcom/duoyou/gamesdk/b/c/d$6;->a:Lcom/duoyou/gamesdk/b/c/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/duoyou/gamesdk/b/c/d$6;->a:Lcom/duoyou/gamesdk/b/c/d;

    invoke-virtual {v0}, Lcom/duoyou/gamesdk/b/c/d;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/duoyou/gamesdk/b/c/c;->a(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/duoyou/gamesdk/b/c/d$6;->a:Lcom/duoyou/gamesdk/b/c/d;

    invoke-virtual {v0}, Lcom/duoyou/gamesdk/b/c/d;->dismiss()V

    return-void
.end method
