.class Lcom/duoyou/gamesdk/b/c/c$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/text/TextWatcher;


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

    iput-object p1, p0, Lcom/duoyou/gamesdk/b/c/c$3;->a:Lcom/duoyou/gamesdk/b/c/c;

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
    .locals 2

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/duoyou/gamesdk/b/c/c$3;->a:Lcom/duoyou/gamesdk/b/c/c;

    invoke-static {v0}, Lcom/duoyou/gamesdk/b/c/c;->e(Lcom/duoyou/gamesdk/b/c/c;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/duoyou/gamesdk/b/c/c$3;->a:Lcom/duoyou/gamesdk/b/c/c;

    invoke-static {v0}, Lcom/duoyou/gamesdk/b/c/c;->i(Lcom/duoyou/gamesdk/b/c/c;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/duoyou/gamesdk/b/c/c$3;->a:Lcom/duoyou/gamesdk/b/c/c;

    invoke-static {v0}, Lcom/duoyou/gamesdk/b/c/c;->i(Lcom/duoyou/gamesdk/b/c/c;)Landroid/widget/ImageView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method
