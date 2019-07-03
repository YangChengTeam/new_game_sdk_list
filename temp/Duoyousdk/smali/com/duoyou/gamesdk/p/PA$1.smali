.class Lcom/duoyou/gamesdk/p/PA$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/duoyou/gamesdk/p/PA;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/duoyou/gamesdk/p/PA;


# direct methods
.method constructor <init>(Lcom/duoyou/gamesdk/p/PA;)V
    .locals 0

    iput-object p1, p0, Lcom/duoyou/gamesdk/p/PA$1;->a:Lcom/duoyou/gamesdk/p/PA;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/duoyou/gamesdk/p/PA$1;->a:Lcom/duoyou/gamesdk/p/PA;

    invoke-static {v0}, Lcom/duoyou/gamesdk/p/PA;->a(Lcom/duoyou/gamesdk/p/PA;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/duoyou/gamesdk/p/PA$1;->a:Lcom/duoyou/gamesdk/p/PA;

    invoke-virtual {v1}, Lcom/duoyou/gamesdk/p/PA;->a()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "dy_pay_item_selected"

    invoke-static {v1, v2}, Lcom/duoyou/gamesdk/c/c/p;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/duoyou/gamesdk/p/PA$1;->a:Lcom/duoyou/gamesdk/p/PA;

    invoke-static {v0}, Lcom/duoyou/gamesdk/p/PA;->b(Lcom/duoyou/gamesdk/p/PA;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/duoyou/gamesdk/p/PA$1;->a:Lcom/duoyou/gamesdk/p/PA;

    invoke-static {v0}, Lcom/duoyou/gamesdk/p/PA;->c(Lcom/duoyou/gamesdk/p/PA;)Landroid/widget/ImageView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/duoyou/gamesdk/p/PA$1;->a:Lcom/duoyou/gamesdk/p/PA;

    invoke-static {v0}, Lcom/duoyou/gamesdk/p/PA;->d(Lcom/duoyou/gamesdk/p/PA;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundResource(I)V

    return-void
.end method
