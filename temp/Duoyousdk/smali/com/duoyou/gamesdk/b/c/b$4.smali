.class Lcom/duoyou/gamesdk/b/c/b$4;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/duoyou/gamesdk/b/c/b;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/duoyou/gamesdk/b/c/b;


# direct methods
.method constructor <init>(Lcom/duoyou/gamesdk/b/c/b;)V
    .locals 0

    iput-object p1, p0, Lcom/duoyou/gamesdk/b/c/b$4;->a:Lcom/duoyou/gamesdk/b/c/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 4

    const/16 v1, 0x8

    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/duoyou/gamesdk/b/c/b$4;->a:Lcom/duoyou/gamesdk/b/c/b;

    invoke-static {v0}, Lcom/duoyou/gamesdk/b/c/b;->e(Lcom/duoyou/gamesdk/b/c/b;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/duoyou/gamesdk/b/c/b$4;->a:Lcom/duoyou/gamesdk/b/c/b;

    invoke-static {v0}, Lcom/duoyou/gamesdk/b/c/b;->p(Lcom/duoyou/gamesdk/b/c/b;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    iget-object v0, p0, Lcom/duoyou/gamesdk/b/c/b$4;->a:Lcom/duoyou/gamesdk/b/c/b;

    invoke-static {v0}, Lcom/duoyou/gamesdk/b/c/b;->q(Lcom/duoyou/gamesdk/b/c/b;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/duoyou/gamesdk/b/c/b$4;->a:Lcom/duoyou/gamesdk/b/c/b;

    invoke-virtual {v1}, Lcom/duoyou/gamesdk/b/c/b;->a()Landroid/content/Context;

    move-result-object v1

    const-string v2, "dy_lock_select_icon"

    invoke-static {v1, v2}, Lcom/duoyou/gamesdk/c/c/p;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/duoyou/gamesdk/b/c/b$4;->a:Lcom/duoyou/gamesdk/b/c/b;

    invoke-static {v0}, Lcom/duoyou/gamesdk/b/c/b;->r(Lcom/duoyou/gamesdk/b/c/b;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/duoyou/gamesdk/b/c/b$4;->a:Lcom/duoyou/gamesdk/b/c/b;

    invoke-virtual {v1}, Lcom/duoyou/gamesdk/b/c/b;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/duoyou/gamesdk/b/c/b$4;->a:Lcom/duoyou/gamesdk/b/c/b;

    invoke-virtual {v2}, Lcom/duoyou/gamesdk/b/c/b;->a()Landroid/content/Context;

    move-result-object v2

    const-string v3, "dy_theme_blue"

    invoke-static {v2, v3}, Lcom/duoyou/gamesdk/c/c/p;->f(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    :goto_1
    return-void

    :cond_0
    iget-object v0, p0, Lcom/duoyou/gamesdk/b/c/b$4;->a:Lcom/duoyou/gamesdk/b/c/b;

    invoke-static {v0}, Lcom/duoyou/gamesdk/b/c/b;->p(Lcom/duoyou/gamesdk/b/c/b;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/duoyou/gamesdk/b/c/b$4;->a:Lcom/duoyou/gamesdk/b/c/b;

    invoke-static {v0}, Lcom/duoyou/gamesdk/b/c/b;->p(Lcom/duoyou/gamesdk/b/c/b;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/duoyou/gamesdk/b/c/b$4;->a:Lcom/duoyou/gamesdk/b/c/b;

    invoke-static {v0}, Lcom/duoyou/gamesdk/b/c/b;->q(Lcom/duoyou/gamesdk/b/c/b;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/duoyou/gamesdk/b/c/b$4;->a:Lcom/duoyou/gamesdk/b/c/b;

    invoke-virtual {v1}, Lcom/duoyou/gamesdk/b/c/b;->a()Landroid/content/Context;

    move-result-object v1

    const-string v2, "dy_lock_icon_normal"

    invoke-static {v1, v2}, Lcom/duoyou/gamesdk/c/c/p;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/duoyou/gamesdk/b/c/b$4;->a:Lcom/duoyou/gamesdk/b/c/b;

    invoke-static {v0}, Lcom/duoyou/gamesdk/b/c/b;->r(Lcom/duoyou/gamesdk/b/c/b;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/duoyou/gamesdk/b/c/b$4;->a:Lcom/duoyou/gamesdk/b/c/b;

    invoke-virtual {v1}, Lcom/duoyou/gamesdk/b/c/b;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/duoyou/gamesdk/b/c/b$4;->a:Lcom/duoyou/gamesdk/b/c/b;

    invoke-virtual {v2}, Lcom/duoyou/gamesdk/b/c/b;->a()Landroid/content/Context;

    move-result-object v2

    const-string v3, "dy_theme_line_grey"

    invoke-static {v2, v3}, Lcom/duoyou/gamesdk/c/c/p;->f(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_1
.end method