.class Lcom/duoyou/gamesdk/b/c/c$9;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/duoyou/gamesdk/b/c/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/duoyou/gamesdk/b/c/c;->h()V
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

    iput-object p1, p0, Lcom/duoyou/gamesdk/b/c/c$9;->a:Lcom/duoyou/gamesdk/b/c/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILcom/duoyou/gamesdk/b/b/b;)V
    .locals 4

    const/4 v3, 0x0

    const/16 v2, 0x8

    invoke-virtual {p2}, Lcom/duoyou/gamesdk/b/b/b;->d()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/duoyou/gamesdk/b/c/c$9;->a:Lcom/duoyou/gamesdk/b/c/c;

    invoke-static {v1}, Lcom/duoyou/gamesdk/b/c/c;->c(Lcom/duoyou/gamesdk/b/c/c;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/duoyou/gamesdk/b/c/c$9;->a:Lcom/duoyou/gamesdk/b/c/c;

    invoke-static {v0}, Lcom/duoyou/gamesdk/b/c/c;->c(Lcom/duoyou/gamesdk/b/c/c;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v0, p0, Lcom/duoyou/gamesdk/b/c/c$9;->a:Lcom/duoyou/gamesdk/b/c/c;

    invoke-virtual {v0}, Lcom/duoyou/gamesdk/b/c/c;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/duoyou/gamesdk/c/b/a;->a(Landroid/content/Context;)Lcom/duoyou/gamesdk/c/b/a;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/duoyou/gamesdk/c/b/a;->a(Lcom/duoyou/gamesdk/b/b/b;)V

    iget-object v0, p0, Lcom/duoyou/gamesdk/b/c/c$9;->a:Lcom/duoyou/gamesdk/b/c/c;

    invoke-static {v0}, Lcom/duoyou/gamesdk/b/c/c;->r(Lcom/duoyou/gamesdk/b/c/c;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/duoyou/gamesdk/b/c/c$9;->a:Lcom/duoyou/gamesdk/b/c/c;

    invoke-static {v0}, Lcom/duoyou/gamesdk/b/c/c;->l(Lcom/duoyou/gamesdk/b/c/c;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    iget-object v0, p0, Lcom/duoyou/gamesdk/b/c/c$9;->a:Lcom/duoyou/gamesdk/b/c/c;

    invoke-static {v0}, Lcom/duoyou/gamesdk/b/c/c;->r(Lcom/duoyou/gamesdk/b/c/c;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/duoyou/gamesdk/b/c/c$9;->a:Lcom/duoyou/gamesdk/b/c/c;

    invoke-static {v0}, Lcom/duoyou/gamesdk/b/c/c;->m(Lcom/duoyou/gamesdk/b/c/c;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/duoyou/gamesdk/b/c/c$9;->a:Lcom/duoyou/gamesdk/b/c/c;

    invoke-static {v0}, Lcom/duoyou/gamesdk/b/c/c;->s(Lcom/duoyou/gamesdk/b/c/c;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    iget-object v0, p0, Lcom/duoyou/gamesdk/b/c/c$9;->a:Lcom/duoyou/gamesdk/b/c/c;

    invoke-static {v0}, Lcom/duoyou/gamesdk/b/c/c;->m(Lcom/duoyou/gamesdk/b/c/c;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/duoyou/gamesdk/b/c/c$9;->a:Lcom/duoyou/gamesdk/b/c/c;

    invoke-virtual {v1}, Lcom/duoyou/gamesdk/b/c/c;->a()Landroid/content/Context;

    move-result-object v1

    const-string v2, "dy_login_arrow_down"

    invoke-static {v1, v2}, Lcom/duoyou/gamesdk/c/c/p;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/duoyou/gamesdk/b/c/c$9;->a:Lcom/duoyou/gamesdk/b/c/c;

    invoke-static {v0}, Lcom/duoyou/gamesdk/b/c/c;->m(Lcom/duoyou/gamesdk/b/c/c;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/duoyou/gamesdk/b/c/c$9;->a:Lcom/duoyou/gamesdk/b/c/c;

    invoke-static {v0}, Lcom/duoyou/gamesdk/b/c/c;->s(Lcom/duoyou/gamesdk/b/c/c;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public b(ILcom/duoyou/gamesdk/b/b/b;)V
    .locals 3

    iget-object v0, p0, Lcom/duoyou/gamesdk/b/c/c$9;->a:Lcom/duoyou/gamesdk/b/c/c;

    invoke-static {v0}, Lcom/duoyou/gamesdk/b/c/c;->c(Lcom/duoyou/gamesdk/b/c/c;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {p2}, Lcom/duoyou/gamesdk/b/b/b;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/duoyou/gamesdk/b/c/c$9;->a:Lcom/duoyou/gamesdk/b/c/c;

    invoke-static {v0}, Lcom/duoyou/gamesdk/b/c/c;->c(Lcom/duoyou/gamesdk/b/c/c;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/duoyou/gamesdk/b/c/c$9;->a:Lcom/duoyou/gamesdk/b/c/c;

    invoke-static {v1}, Lcom/duoyou/gamesdk/b/c/c;->c(Lcom/duoyou/gamesdk/b/c/c;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    iget-object v0, p0, Lcom/duoyou/gamesdk/b/c/c$9;->a:Lcom/duoyou/gamesdk/b/c/c;

    invoke-static {v0}, Lcom/duoyou/gamesdk/b/c/c;->l(Lcom/duoyou/gamesdk/b/c/c;)Landroid/widget/ListView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    iget-object v0, p0, Lcom/duoyou/gamesdk/b/c/c$9;->a:Lcom/duoyou/gamesdk/b/c/c;

    invoke-static {v0}, Lcom/duoyou/gamesdk/b/c/c;->m(Lcom/duoyou/gamesdk/b/c/c;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/duoyou/gamesdk/b/c/c$9;->a:Lcom/duoyou/gamesdk/b/c/c;

    invoke-virtual {v1}, Lcom/duoyou/gamesdk/b/c/c;->a()Landroid/content/Context;

    move-result-object v1

    const-string v2, "dy_login_arrow_down"

    invoke-static {v1, v2}, Lcom/duoyou/gamesdk/c/c/p;->c(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method
