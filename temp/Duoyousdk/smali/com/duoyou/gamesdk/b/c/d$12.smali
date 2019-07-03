.class Lcom/duoyou/gamesdk/b/c/d$12;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/text/TextWatcher;


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

    iput-object p1, p0, Lcom/duoyou/gamesdk/b/c/d$12;->a:Lcom/duoyou/gamesdk/b/c/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 3

    const/16 v2, 0x8

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/duoyou/gamesdk/b/c/d$12;->a:Lcom/duoyou/gamesdk/b/c/d;

    invoke-static {v0}, Lcom/duoyou/gamesdk/b/c/d;->a(Lcom/duoyou/gamesdk/b/c/d;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/duoyou/gamesdk/b/c/d$12;->a:Lcom/duoyou/gamesdk/b/c/d;

    invoke-static {v0}, Lcom/duoyou/gamesdk/b/c/d;->c(Lcom/duoyou/gamesdk/b/c/d;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    iget-object v0, p0, Lcom/duoyou/gamesdk/b/c/d$12;->a:Lcom/duoyou/gamesdk/b/c/d;

    invoke-static {v0}, Lcom/duoyou/gamesdk/b/c/d;->i(Lcom/duoyou/gamesdk/b/c/d;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    iget-object v0, p0, Lcom/duoyou/gamesdk/b/c/d$12;->a:Lcom/duoyou/gamesdk/b/c/d;

    invoke-static {v0}, Lcom/duoyou/gamesdk/b/c/d;->j(Lcom/duoyou/gamesdk/b/c/d;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/duoyou/gamesdk/b/c/d$12;->a:Lcom/duoyou/gamesdk/b/c/d;

    invoke-virtual {v1}, Lcom/duoyou/gamesdk/b/c/d;->a()Landroid/content/Context;

    move-result-object v1

    const-string v2, "dy_login_arrow_down"

    invoke-static {v1, v2}, Lcom/duoyou/gamesdk/c/c/p;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/duoyou/gamesdk/b/c/d$12;->a:Lcom/duoyou/gamesdk/b/c/d;

    invoke-static {v0}, Lcom/duoyou/gamesdk/b/c/d;->b(Lcom/duoyou/gamesdk/b/c/d;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/duoyou/gamesdk/b/c/d$12;->a:Lcom/duoyou/gamesdk/b/c/d;

    invoke-static {v0}, Lcom/duoyou/gamesdk/b/c/d;->c(Lcom/duoyou/gamesdk/b/c/d;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method
