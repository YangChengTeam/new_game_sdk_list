.class public Lcom/duoyou/gamesdk/f/FIA;
.super Lcom/duoyou/gamesdk/c/base/BaseActivity;


# instance fields
.field private a:Landroid/widget/ImageView;

.field private b:Landroid/view/View;

.field private c:Landroid/view/View;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/view/View;

.field private g:Landroid/view/View;

.field private h:Landroid/view/View;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/view/View;

.field private k:Landroid/widget/TextView;

.field private l:Landroid/widget/TextView;

.field private m:Landroid/content/DialogInterface$OnDismissListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/duoyou/gamesdk/c/base/BaseActivity;-><init>()V

    new-instance v0, Lcom/duoyou/gamesdk/f/FIA$9;

    invoke-direct {v0, p0}, Lcom/duoyou/gamesdk/f/FIA$9;-><init>(Lcom/duoyou/gamesdk/f/FIA;)V

    iput-object v0, p0, Lcom/duoyou/gamesdk/f/FIA;->m:Landroid/content/DialogInterface$OnDismissListener;

    return-void
.end method

.method static synthetic a(Lcom/duoyou/gamesdk/f/FIA;)Landroid/content/DialogInterface$OnDismissListener;
    .locals 1

    iget-object v0, p0, Lcom/duoyou/gamesdk/f/FIA;->m:Landroid/content/DialogInterface$OnDismissListener;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/duoyou/gamesdk/f/FIA;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private b()V
    .locals 2

    const-string v0, "close_iv"

    invoke-virtual {p0, v0}, Lcom/duoyou/gamesdk/f/FIA;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/duoyou/gamesdk/f/FIA;->a:Landroid/widget/ImageView;

    const-string v0, "kefu_layout"

    invoke-virtual {p0, v0}, Lcom/duoyou/gamesdk/f/FIA;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/duoyou/gamesdk/f/FIA;->b:Landroid/view/View;

    const-string v0, "modify_pwd_layout"

    invoke-virtual {p0, v0}, Lcom/duoyou/gamesdk/f/FIA;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/duoyou/gamesdk/f/FIA;->f:Landroid/view/View;

    const-string v0, "bind_telephone_layout"

    invoke-virtual {p0, v0}, Lcom/duoyou/gamesdk/f/FIA;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/duoyou/gamesdk/f/FIA;->c:Landroid/view/View;

    const-string v0, "order_list_layout"

    invoke-virtual {p0, v0}, Lcom/duoyou/gamesdk/f/FIA;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/duoyou/gamesdk/f/FIA;->g:Landroid/view/View;

    const-string v0, "system_message_layout"

    invoke-virtual {p0, v0}, Lcom/duoyou/gamesdk/f/FIA;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/duoyou/gamesdk/f/FIA;->h:Landroid/view/View;

    const-string v0, "no_login_layout"

    invoke-virtual {p0, v0}, Lcom/duoyou/gamesdk/f/FIA;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/duoyou/gamesdk/f/FIA;->j:Landroid/view/View;

    const-string v0, "switch_account_tv"

    invoke-virtual {p0, v0}, Lcom/duoyou/gamesdk/f/FIA;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/duoyou/gamesdk/f/FIA;->i:Landroid/widget/TextView;

    const-string v0, "verify_real_name_tv"

    invoke-virtual {p0, v0}, Lcom/duoyou/gamesdk/f/FIA;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/duoyou/gamesdk/f/FIA;->k:Landroid/widget/TextView;

    const-string v0, "account_tv"

    invoke-virtual {p0, v0}, Lcom/duoyou/gamesdk/f/FIA;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/duoyou/gamesdk/f/FIA;->l:Landroid/widget/TextView;

    const-string v0, "telephone_label"

    invoke-virtual {p0, v0}, Lcom/duoyou/gamesdk/f/FIA;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/duoyou/gamesdk/f/FIA;->e:Landroid/widget/TextView;

    const-string v0, "bind_text_label"

    invoke-virtual {p0, v0}, Lcom/duoyou/gamesdk/f/FIA;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/duoyou/gamesdk/f/FIA;->d:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/duoyou/gamesdk/f/FIA;->a:Landroid/widget/ImageView;

    new-instance v1, Lcom/duoyou/gamesdk/f/FIA$1;

    invoke-direct {v1, p0}, Lcom/duoyou/gamesdk/f/FIA$1;-><init>(Lcom/duoyou/gamesdk/f/FIA;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/duoyou/gamesdk/f/FIA;->b:Landroid/view/View;

    new-instance v1, Lcom/duoyou/gamesdk/f/FIA$2;

    invoke-direct {v1, p0}, Lcom/duoyou/gamesdk/f/FIA$2;-><init>(Lcom/duoyou/gamesdk/f/FIA;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/duoyou/gamesdk/f/FIA;->c:Landroid/view/View;

    new-instance v1, Lcom/duoyou/gamesdk/f/FIA$3;

    invoke-direct {v1, p0}, Lcom/duoyou/gamesdk/f/FIA$3;-><init>(Lcom/duoyou/gamesdk/f/FIA;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/duoyou/gamesdk/f/FIA;->f:Landroid/view/View;

    new-instance v1, Lcom/duoyou/gamesdk/f/FIA$4;

    invoke-direct {v1, p0}, Lcom/duoyou/gamesdk/f/FIA$4;-><init>(Lcom/duoyou/gamesdk/f/FIA;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/duoyou/gamesdk/f/FIA;->g:Landroid/view/View;

    new-instance v1, Lcom/duoyou/gamesdk/f/FIA$5;

    invoke-direct {v1, p0}, Lcom/duoyou/gamesdk/f/FIA$5;-><init>(Lcom/duoyou/gamesdk/f/FIA;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/duoyou/gamesdk/f/FIA;->h:Landroid/view/View;

    new-instance v1, Lcom/duoyou/gamesdk/f/FIA$6;

    invoke-direct {v1, p0}, Lcom/duoyou/gamesdk/f/FIA$6;-><init>(Lcom/duoyou/gamesdk/f/FIA;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/duoyou/gamesdk/f/FIA;->i:Landroid/widget/TextView;

    new-instance v1, Lcom/duoyou/gamesdk/f/FIA$7;

    invoke-direct {v1, p0}, Lcom/duoyou/gamesdk/f/FIA$7;-><init>(Lcom/duoyou/gamesdk/f/FIA;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/duoyou/gamesdk/f/FIA;->k:Landroid/widget/TextView;

    new-instance v1, Lcom/duoyou/gamesdk/f/FIA$8;

    invoke-direct {v1, p0}, Lcom/duoyou/gamesdk/f/FIA$8;-><init>(Lcom/duoyou/gamesdk/f/FIA;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic b(Lcom/duoyou/gamesdk/f/FIA;)V
    .locals 0

    invoke-direct {p0}, Lcom/duoyou/gamesdk/f/FIA;->c()V

    return-void
.end method

.method private c()V
    .locals 4

    const/4 v3, 0x0

    invoke-static {}, Lcom/duoyou/gamesdk/b/b/a;->a()Lcom/duoyou/gamesdk/b/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoyou/gamesdk/b/b/a;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/duoyou/gamesdk/f/FIA;->i:Landroid/widget/TextView;

    const-string v1, "\u5207\u6362\u8d26\u53f7"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/duoyou/gamesdk/f/FIA;->j:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/duoyou/gamesdk/f/FIA;->l:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u8d26\u53f7\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/duoyou/gamesdk/b/b/a;->a()Lcom/duoyou/gamesdk/b/b/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/duoyou/gamesdk/b/b/a;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v0, "1"

    invoke-static {}, Lcom/duoyou/gamesdk/b/b/a;->a()Lcom/duoyou/gamesdk/b/b/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/duoyou/gamesdk/b/b/a;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/duoyou/gamesdk/f/FIA;->k:Landroid/widget/TextView;

    const-string v1, "\u5b9e\u540d\uff1a\u5df2\u63d0\u4ea4"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/duoyou/gamesdk/f/FIA;->k:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    :goto_0
    invoke-static {}, Lcom/duoyou/gamesdk/b/b/a;->a()Lcom/duoyou/gamesdk/b/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoyou/gamesdk/b/b/a;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/duoyou/gamesdk/f/FIA;->e:Landroid/widget/TextView;

    const-string v1, "\u624b\u673a\u53f7\u7801"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/duoyou/gamesdk/f/FIA;->d:Landroid/widget/TextView;

    const-string v1, "\u7acb\u5373\u7ed1\u5b9a"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    return-void

    :cond_0
    iget-object v0, p0, Lcom/duoyou/gamesdk/f/FIA;->k:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/duoyou/gamesdk/f/FIA;->k:Landroid/widget/TextView;

    const-string v1, "\u5b9e\u540d\uff1a<font color=\'#f6ff00\'>\u672a\u8ba4\u8bc1</font>"

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/duoyou/gamesdk/f/FIA;->j:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/duoyou/gamesdk/f/FIA;->l:Landroid/widget/TextView;

    const-string v1, "\u8d26\u53f7\uff1a----"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/duoyou/gamesdk/f/FIA;->k:Landroid/widget/TextView;

    const-string v1, "\u5b9e\u540d\uff1a----"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/duoyou/gamesdk/f/FIA;->k:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/duoyou/gamesdk/f/FIA;->i:Landroid/widget/TextView;

    const-string v1, "\u767b\u5f55/\u6ce8\u518c"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/duoyou/gamesdk/f/FIA;->e:Landroid/widget/TextView;

    invoke-static {}, Lcom/duoyou/gamesdk/b/b/a;->a()Lcom/duoyou/gamesdk/b/b/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/duoyou/gamesdk/b/b/a;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/duoyou/gamesdk/f/FIA;->d:Landroid/widget/TextView;

    const-string v1, "\u89e3\u9664\u7ed1\u5b9a"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method


# virtual methods
.method public finish()V
    .locals 1

    const/4 v0, 0x0

    invoke-super {p0}, Lcom/duoyou/gamesdk/c/base/BaseActivity;->finish()V

    invoke-virtual {p0, v0, v0}, Lcom/duoyou/gamesdk/f/FIA;->overridePendingTransition(II)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/duoyou/gamesdk/c/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "dy_floating_info_activity"

    invoke-static {p0, v0}, Lcom/duoyou/gamesdk/c/c/p;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/duoyou/gamesdk/f/FIA;->setContentView(I)V

    invoke-direct {p0}, Lcom/duoyou/gamesdk/f/FIA;->b()V

    invoke-direct {p0}, Lcom/duoyou/gamesdk/f/FIA;->c()V

    return-void
.end method

.method protected onResume()V
    .locals 0

    invoke-super {p0}, Lcom/duoyou/gamesdk/c/base/BaseActivity;->onResume()V

    invoke-direct {p0}, Lcom/duoyou/gamesdk/f/FIA;->c()V

    return-void
.end method
