.class Lcom/duoyou/gamesdk/b/d/b$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    iput-object p1, p0, Lcom/duoyou/gamesdk/b/d/b$3;->a:Lcom/duoyou/gamesdk/b/d/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    iget-object v0, p0, Lcom/duoyou/gamesdk/b/d/b$3;->a:Lcom/duoyou/gamesdk/b/d/b;

    invoke-static {v0}, Lcom/duoyou/gamesdk/b/d/b;->a(Lcom/duoyou/gamesdk/b/d/b;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/duoyou/gamesdk/b/d/b$3;->a:Lcom/duoyou/gamesdk/b/d/b;

    invoke-static {v0}, Lcom/duoyou/gamesdk/b/d/b;->b(Lcom/duoyou/gamesdk/b/d/b;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "\u8d26\u53f7\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-static {v0}, Lcom/duoyou/gamesdk/c/c/r;->a(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "\u5bc6\u7801\u4e0d\u80fd\u4e3a\u7a7a"

    invoke-static {v0}, Lcom/duoyou/gamesdk/c/c/r;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/duoyou/gamesdk/b/d/b$3;->a:Lcom/duoyou/gamesdk/b/d/b;

    invoke-static {v0}, Lcom/duoyou/gamesdk/b/d/b;->c(Lcom/duoyou/gamesdk/b/d/b;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/duoyou/gamesdk/b/d/b$3;->a:Lcom/duoyou/gamesdk/b/d/b;

    invoke-virtual {v0}, Lcom/duoyou/gamesdk/b/d/b;->a()Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u60a8\u5c1a\u672a\u540c\u610f\u591a\u6e38\u5e73\u53f0\u7528\u6237\u670d\u52a1\u534f\u8bae"

    const-string v2, "\u786e\u5b9a"

    const-string v3, "\u53d6\u6d88"

    new-instance v4, Lcom/duoyou/gamesdk/b/d/b$3$1;

    invoke-direct {v4, p0, v5, v6}, Lcom/duoyou/gamesdk/b/d/b$3$1;-><init>(Lcom/duoyou/gamesdk/b/d/b$3;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/duoyou/gamesdk/c/c/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)Landroid/app/Dialog;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/duoyou/gamesdk/b/d/b$3;->a:Lcom/duoyou/gamesdk/b/d/b;

    invoke-static {v0, v5, v6}, Lcom/duoyou/gamesdk/b/d/b;->a(Lcom/duoyou/gamesdk/b/d/b;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
