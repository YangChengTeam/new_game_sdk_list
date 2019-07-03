.class Lcom/duoyou/gamesdk/b/c/d$2;
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

    iput-object p1, p0, Lcom/duoyou/gamesdk/b/c/d$2;->a:Lcom/duoyou/gamesdk/b/c/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/duoyou/gamesdk/b/c/d$2;->a:Lcom/duoyou/gamesdk/b/c/d;

    invoke-static {v0}, Lcom/duoyou/gamesdk/b/c/d;->i(Lcom/duoyou/gamesdk/b/c/d;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/duoyou/gamesdk/b/c/d$2;->a:Lcom/duoyou/gamesdk/b/c/d;

    invoke-static {v0}, Lcom/duoyou/gamesdk/b/c/d;->i(Lcom/duoyou/gamesdk/b/c/d;)Landroid/widget/ListView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    iget-object v0, p0, Lcom/duoyou/gamesdk/b/c/d$2;->a:Lcom/duoyou/gamesdk/b/c/d;

    invoke-static {v0}, Lcom/duoyou/gamesdk/b/c/d;->j(Lcom/duoyou/gamesdk/b/c/d;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/duoyou/gamesdk/b/c/d$2;->a:Lcom/duoyou/gamesdk/b/c/d;

    invoke-virtual {v1}, Lcom/duoyou/gamesdk/b/c/d;->a()Landroid/content/Context;

    move-result-object v1

    const-string v2, "dy_login_arrow_down"

    invoke-static {v1, v2}, Lcom/duoyou/gamesdk/c/c/p;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/duoyou/gamesdk/b/c/d$2;->a:Lcom/duoyou/gamesdk/b/c/d;

    invoke-static {v0}, Lcom/duoyou/gamesdk/b/c/d;->k(Lcom/duoyou/gamesdk/b/c/d;)V

    iget-object v0, p0, Lcom/duoyou/gamesdk/b/c/d$2;->a:Lcom/duoyou/gamesdk/b/c/d;

    invoke-static {v0}, Lcom/duoyou/gamesdk/b/c/d;->l(Lcom/duoyou/gamesdk/b/c/d;)Lcom/duoyou/gamesdk/b/c/a;

    move-result-object v0

    iget-object v1, p0, Lcom/duoyou/gamesdk/b/c/d$2;->a:Lcom/duoyou/gamesdk/b/c/d;

    invoke-static {v1}, Lcom/duoyou/gamesdk/b/c/d;->i(Lcom/duoyou/gamesdk/b/c/d;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/duoyou/gamesdk/b/c/a;->a(Landroid/widget/ListView;)V

    iget-object v0, p0, Lcom/duoyou/gamesdk/b/c/d$2;->a:Lcom/duoyou/gamesdk/b/c/d;

    invoke-static {v0}, Lcom/duoyou/gamesdk/b/c/d;->i(Lcom/duoyou/gamesdk/b/c/d;)Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    iget-object v0, p0, Lcom/duoyou/gamesdk/b/c/d$2;->a:Lcom/duoyou/gamesdk/b/c/d;

    invoke-static {v0}, Lcom/duoyou/gamesdk/b/c/d;->j(Lcom/duoyou/gamesdk/b/c/d;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/duoyou/gamesdk/b/c/d$2;->a:Lcom/duoyou/gamesdk/b/c/d;

    invoke-virtual {v1}, Lcom/duoyou/gamesdk/b/c/d;->a()Landroid/content/Context;

    move-result-object v1

    const-string v2, "dy_login_arrow_up_icon"

    invoke-static {v1, v2}, Lcom/duoyou/gamesdk/c/c/p;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method
