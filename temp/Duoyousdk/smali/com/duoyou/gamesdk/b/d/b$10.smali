.class Lcom/duoyou/gamesdk/b/d/b$10;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/text/TextWatcher;


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

    iput-object p1, p0, Lcom/duoyou/gamesdk/b/d/b$10;->a:Lcom/duoyou/gamesdk/b/d/b;

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

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/duoyou/gamesdk/b/d/b$10;->a:Lcom/duoyou/gamesdk/b/d/b;

    invoke-static {v0}, Lcom/duoyou/gamesdk/b/d/b;->g(Lcom/duoyou/gamesdk/b/d/b;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/duoyou/gamesdk/b/d/b$10;->a:Lcom/duoyou/gamesdk/b/d/b;

    invoke-static {v1}, Lcom/duoyou/gamesdk/b/d/b;->m(Lcom/duoyou/gamesdk/b/d/b;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/duoyou/gamesdk/b/d/b$10;->a:Lcom/duoyou/gamesdk/b/d/b;

    invoke-static {v0}, Lcom/duoyou/gamesdk/b/d/b;->k(Lcom/duoyou/gamesdk/b/d/b;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/duoyou/gamesdk/b/d/b$10;->a:Lcom/duoyou/gamesdk/b/d/b;

    invoke-static {v0}, Lcom/duoyou/gamesdk/b/d/b;->l(Lcom/duoyou/gamesdk/b/d/b;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/duoyou/gamesdk/b/d/b$10;->a:Lcom/duoyou/gamesdk/b/d/b;

    invoke-static {v0}, Lcom/duoyou/gamesdk/b/d/b;->g(Lcom/duoyou/gamesdk/b/d/b;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method
