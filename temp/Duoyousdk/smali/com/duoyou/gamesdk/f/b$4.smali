.class Lcom/duoyou/gamesdk/f/b$4;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/duoyou/gamesdk/f/b;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/duoyou/gamesdk/f/b;


# direct methods
.method constructor <init>(Lcom/duoyou/gamesdk/f/b;)V
    .locals 0

    iput-object p1, p0, Lcom/duoyou/gamesdk/f/b$4;->a:Lcom/duoyou/gamesdk/f/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 3

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/duoyou/gamesdk/f/b$4;->a:Lcom/duoyou/gamesdk/f/b;

    invoke-static {v0}, Lcom/duoyou/gamesdk/f/b;->e(Lcom/duoyou/gamesdk/f/b;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/duoyou/gamesdk/f/b$4;->a:Lcom/duoyou/gamesdk/f/b;

    invoke-static {v0}, Lcom/duoyou/gamesdk/f/b;->f(Lcom/duoyou/gamesdk/f/b;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/duoyou/gamesdk/f/b$4;->a:Lcom/duoyou/gamesdk/f/b;

    invoke-static {v0}, Lcom/duoyou/gamesdk/f/b;->g(Lcom/duoyou/gamesdk/f/b;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/duoyou/gamesdk/f/b$4;->a:Lcom/duoyou/gamesdk/f/b;

    invoke-virtual {v1}, Lcom/duoyou/gamesdk/f/b;->a()Landroid/content/Context;

    move-result-object v1

    const-string v2, "dy_grey_edt_border_sel"

    invoke-static {v1, v2}, Lcom/duoyou/gamesdk/c/c/p;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    :goto_1
    return-void

    :cond_0
    iget-object v0, p0, Lcom/duoyou/gamesdk/f/b$4;->a:Lcom/duoyou/gamesdk/f/b;

    invoke-static {v0}, Lcom/duoyou/gamesdk/f/b;->f(Lcom/duoyou/gamesdk/f/b;)Landroid/widget/ImageView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/duoyou/gamesdk/f/b$4;->a:Lcom/duoyou/gamesdk/f/b;

    invoke-static {v0}, Lcom/duoyou/gamesdk/f/b;->g(Lcom/duoyou/gamesdk/f/b;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/duoyou/gamesdk/f/b$4;->a:Lcom/duoyou/gamesdk/f/b;

    invoke-virtual {v1}, Lcom/duoyou/gamesdk/f/b;->a()Landroid/content/Context;

    move-result-object v1

    const-string v2, "dy_grey_edt_border_nor"

    invoke-static {v1, v2}, Lcom/duoyou/gamesdk/c/c/p;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1
.end method
