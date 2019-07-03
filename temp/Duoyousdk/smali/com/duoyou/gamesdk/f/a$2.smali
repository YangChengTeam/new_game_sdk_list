.class Lcom/duoyou/gamesdk/f/a$2;
.super Lcom/duoyou/gamesdk/c/http/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/duoyou/gamesdk/f/a;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/duoyou/gamesdk/c/http/e",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/duoyou/gamesdk/f/a;


# direct methods
.method constructor <init>(Lcom/duoyou/gamesdk/f/a;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/duoyou/gamesdk/f/a$2;->b:Lcom/duoyou/gamesdk/f/a;

    iput-object p2, p0, Lcom/duoyou/gamesdk/f/a$2;->a:Ljava/lang/String;

    invoke-direct {p0}, Lcom/duoyou/gamesdk/c/http/e;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/duoyou/gamesdk/f/a$2;->a(Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/duoyou/gamesdk/c/c/k;->a()V

    invoke-static {p1}, Lcom/duoyou/gamesdk/c/c/j;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/duoyou/gamesdk/f/a$2;->b:Lcom/duoyou/gamesdk/f/a;

    invoke-static {v0}, Lcom/duoyou/gamesdk/f/a;->k(Lcom/duoyou/gamesdk/f/a;)Lcom/duoyou/gamesdk/f/a$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoyou/gamesdk/f/a$a;->start()Landroid/os/CountDownTimer;

    iget-object v0, p0, Lcom/duoyou/gamesdk/f/a$2;->b:Lcom/duoyou/gamesdk/f/a;

    invoke-static {v0}, Lcom/duoyou/gamesdk/f/a;->l(Lcom/duoyou/gamesdk/f/a;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u5df2\u5411\u624b\u673a<font color=\'#ff9900\'>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/duoyou/gamesdk/f/a$2;->a:Ljava/lang/String;

    invoke-static {v1}, Lcom/duoyou/gamesdk/c/c/c;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</font>\u53d1\u9001\u77ed\u4fe1\u9a8c\u8bc1\u7801"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/duoyou/gamesdk/f/a$2;->b:Lcom/duoyou/gamesdk/f/a;

    invoke-static {v1}, Lcom/duoyou/gamesdk/f/a;->l(Lcom/duoyou/gamesdk/f/a;)Landroid/widget/TextView;

    move-result-object v1

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {p1}, Lcom/duoyou/gamesdk/c/c/j;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/duoyou/gamesdk/c/c/r;->a(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {p1}, Lcom/duoyou/gamesdk/c/c/j;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/duoyou/gamesdk/c/c/r;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/Throwable;Z)V
    .locals 1

    invoke-static {}, Lcom/duoyou/gamesdk/c/c/k;->a()V

    invoke-static {p1}, Lcom/duoyou/gamesdk/c/http/a;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/duoyou/gamesdk/c/c/r;->a(Ljava/lang/String;)V

    return-void
.end method
