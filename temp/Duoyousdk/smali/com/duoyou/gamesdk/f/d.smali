.class public Lcom/duoyou/gamesdk/f/d;
.super Lcom/duoyou/gamesdk/c/base/a;


# instance fields
.field private a:Landroid/widget/ImageView;

.field private b:Landroid/widget/EditText;

.field private c:Landroid/widget/EditText;

.field private d:Landroid/widget/EditText;

.field private e:Landroid/view/View;

.field private f:Landroid/view/View;

.field private g:Landroid/view/View;

.field private h:Landroid/widget/ImageView;

.field private i:Landroid/widget/ImageView;

.field private j:Landroid/widget/ImageView;

.field private k:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/duoyou/gamesdk/c/base/a;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/duoyou/gamesdk/f/d;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/duoyou/gamesdk/f/d;->e:Landroid/view/View;

    return-object v0
.end method

.method public static a(Landroid/content/Context;Landroid/content/DialogInterface$OnDismissListener;)V
    .locals 1

    new-instance v0, Lcom/duoyou/gamesdk/f/d;

    invoke-direct {v0, p0}, Lcom/duoyou/gamesdk/f/d;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lcom/duoyou/gamesdk/f/d;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-static {p0, v0}, Lcom/duoyou/gamesdk/c/c/g;->b(Landroid/content/Context;Landroid/app/Dialog;)V

    return-void
.end method

.method static synthetic b(Lcom/duoyou/gamesdk/f/d;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/duoyou/gamesdk/f/d;->h:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic c(Lcom/duoyou/gamesdk/f/d;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/duoyou/gamesdk/f/d;->b:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic d(Lcom/duoyou/gamesdk/f/d;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/duoyou/gamesdk/f/d;->f:Landroid/view/View;

    return-object v0
.end method

.method static synthetic e(Lcom/duoyou/gamesdk/f/d;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/duoyou/gamesdk/f/d;->i:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic f(Lcom/duoyou/gamesdk/f/d;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/duoyou/gamesdk/f/d;->c:Landroid/widget/EditText;

    return-object v0
.end method

.method private f()V
    .locals 2

    const-string v0, "close_iv"

    invoke-virtual {p0, v0}, Lcom/duoyou/gamesdk/f/d;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/duoyou/gamesdk/f/d;->a:Landroid/widget/ImageView;

    const-string v0, "old_password_et"

    invoke-virtual {p0, v0}, Lcom/duoyou/gamesdk/f/d;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/duoyou/gamesdk/f/d;->b:Landroid/widget/EditText;

    const-string v0, "new_password_et_1"

    invoke-virtual {p0, v0}, Lcom/duoyou/gamesdk/f/d;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/duoyou/gamesdk/f/d;->c:Landroid/widget/EditText;

    const-string v0, "new_password_et_2"

    invoke-virtual {p0, v0}, Lcom/duoyou/gamesdk/f/d;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/duoyou/gamesdk/f/d;->d:Landroid/widget/EditText;

    const-string v0, "old_pwd_layout"

    invoke-virtual {p0, v0}, Lcom/duoyou/gamesdk/f/d;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/duoyou/gamesdk/f/d;->e:Landroid/view/View;

    const-string v0, "new_pwd_layout_1"

    invoke-virtual {p0, v0}, Lcom/duoyou/gamesdk/f/d;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/duoyou/gamesdk/f/d;->f:Landroid/view/View;

    const-string v0, "new_pwd_layout_2"

    invoke-virtual {p0, v0}, Lcom/duoyou/gamesdk/f/d;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/duoyou/gamesdk/f/d;->g:Landroid/view/View;

    const-string v0, "clear_old_pwd_iv"

    invoke-virtual {p0, v0}, Lcom/duoyou/gamesdk/f/d;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/duoyou/gamesdk/f/d;->h:Landroid/widget/ImageView;

    const-string v0, "clear_new_password_1"

    invoke-virtual {p0, v0}, Lcom/duoyou/gamesdk/f/d;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/duoyou/gamesdk/f/d;->i:Landroid/widget/ImageView;

    const-string v0, "clear_new_password_2"

    invoke-virtual {p0, v0}, Lcom/duoyou/gamesdk/f/d;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/duoyou/gamesdk/f/d;->j:Landroid/widget/ImageView;

    const-string v0, "commit_tv"

    invoke-virtual {p0, v0}, Lcom/duoyou/gamesdk/f/d;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/duoyou/gamesdk/f/d;->k:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/duoyou/gamesdk/f/d;->b:Landroid/widget/EditText;

    new-instance v1, Lcom/duoyou/gamesdk/f/d$1;

    invoke-direct {v1, p0}, Lcom/duoyou/gamesdk/f/d$1;-><init>(Lcom/duoyou/gamesdk/f/d;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v0, p0, Lcom/duoyou/gamesdk/f/d;->c:Landroid/widget/EditText;

    new-instance v1, Lcom/duoyou/gamesdk/f/d$5;

    invoke-direct {v1, p0}, Lcom/duoyou/gamesdk/f/d$5;-><init>(Lcom/duoyou/gamesdk/f/d;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v0, p0, Lcom/duoyou/gamesdk/f/d;->d:Landroid/widget/EditText;

    new-instance v1, Lcom/duoyou/gamesdk/f/d$6;

    invoke-direct {v1, p0}, Lcom/duoyou/gamesdk/f/d$6;-><init>(Lcom/duoyou/gamesdk/f/d;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v0, p0, Lcom/duoyou/gamesdk/f/d;->h:Landroid/widget/ImageView;

    new-instance v1, Lcom/duoyou/gamesdk/f/d$7;

    invoke-direct {v1, p0}, Lcom/duoyou/gamesdk/f/d$7;-><init>(Lcom/duoyou/gamesdk/f/d;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/duoyou/gamesdk/f/d;->i:Landroid/widget/ImageView;

    new-instance v1, Lcom/duoyou/gamesdk/f/d$8;

    invoke-direct {v1, p0}, Lcom/duoyou/gamesdk/f/d$8;-><init>(Lcom/duoyou/gamesdk/f/d;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/duoyou/gamesdk/f/d;->j:Landroid/widget/ImageView;

    new-instance v1, Lcom/duoyou/gamesdk/f/d$9;

    invoke-direct {v1, p0}, Lcom/duoyou/gamesdk/f/d$9;-><init>(Lcom/duoyou/gamesdk/f/d;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/duoyou/gamesdk/f/d;->k:Landroid/widget/TextView;

    new-instance v1, Lcom/duoyou/gamesdk/f/d$10;

    invoke-direct {v1, p0}, Lcom/duoyou/gamesdk/f/d$10;-><init>(Lcom/duoyou/gamesdk/f/d;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/duoyou/gamesdk/f/d;->b:Landroid/widget/EditText;

    new-instance v1, Lcom/duoyou/gamesdk/f/d$11;

    invoke-direct {v1, p0}, Lcom/duoyou/gamesdk/f/d$11;-><init>(Lcom/duoyou/gamesdk/f/d;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/duoyou/gamesdk/f/d;->c:Landroid/widget/EditText;

    new-instance v1, Lcom/duoyou/gamesdk/f/d$12;

    invoke-direct {v1, p0}, Lcom/duoyou/gamesdk/f/d$12;-><init>(Lcom/duoyou/gamesdk/f/d;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/duoyou/gamesdk/f/d;->d:Landroid/widget/EditText;

    new-instance v1, Lcom/duoyou/gamesdk/f/d$2;

    invoke-direct {v1, p0}, Lcom/duoyou/gamesdk/f/d$2;-><init>(Lcom/duoyou/gamesdk/f/d;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/duoyou/gamesdk/f/d;->a:Landroid/widget/ImageView;

    new-instance v1, Lcom/duoyou/gamesdk/f/d$3;

    invoke-direct {v1, p0}, Lcom/duoyou/gamesdk/f/d$3;-><init>(Lcom/duoyou/gamesdk/f/d;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic g(Lcom/duoyou/gamesdk/f/d;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/duoyou/gamesdk/f/d;->g:Landroid/view/View;

    return-object v0
.end method

.method private g()V
    .locals 0

    return-void
.end method

.method static synthetic h(Lcom/duoyou/gamesdk/f/d;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/duoyou/gamesdk/f/d;->j:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic i(Lcom/duoyou/gamesdk/f/d;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/duoyou/gamesdk/f/d;->d:Landroid/widget/EditText;

    return-object v0
.end method


# virtual methods
.method public e()V
    .locals 4

    iget-object v0, p0, Lcom/duoyou/gamesdk/f/d;->b:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/duoyou/gamesdk/f/d;->c:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/duoyou/gamesdk/f/d;->d:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v0, "\u8bf7\u8f93\u5165\u65e7\u5bc6\u7801"

    invoke-static {v0}, Lcom/duoyou/gamesdk/c/c/r;->a(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v0, "\u8bf7\u8f93\u5165\u65b0\u5bc6\u7801"

    invoke-static {v0}, Lcom/duoyou/gamesdk/c/c/r;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v0, "\u8bf7\u786e\u8ba4\u65b0\u5bc6\u7801"

    invoke-static {v0}, Lcom/duoyou/gamesdk/c/c/r;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v0, "\u4e24\u6b21\u8f93\u5165\u7684\u5bc6\u7801\u4e0d\u4e00\u6837"

    invoke-static {v0}, Lcom/duoyou/gamesdk/c/c/r;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/duoyou/gamesdk/f/d;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/duoyou/gamesdk/c/c/k;->a(Landroid/content/Context;)V

    new-instance v2, Lcom/duoyou/gamesdk/b/a/a;

    invoke-direct {v2}, Lcom/duoyou/gamesdk/b/a/a;-><init>()V

    new-instance v3, Lcom/duoyou/gamesdk/f/d$4;

    invoke-direct {v3, p0, v1}, Lcom/duoyou/gamesdk/f/d$4;-><init>(Lcom/duoyou/gamesdk/f/d;Ljava/lang/String;)V

    invoke-virtual {v2, v0, v1, v3}, Lcom/duoyou/gamesdk/b/a/a;->g(Ljava/lang/String;Ljava/lang/String;Lcom/duoyou/gamesdk/c/http/e;)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/duoyou/gamesdk/c/base/a;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/duoyou/gamesdk/f/d;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "dy_floating_modify_pwd_activity"

    invoke-static {v0, v1}, Lcom/duoyou/gamesdk/c/c/p;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/duoyou/gamesdk/f/d;->setContentView(I)V

    invoke-direct {p0}, Lcom/duoyou/gamesdk/f/d;->f()V

    invoke-direct {p0}, Lcom/duoyou/gamesdk/f/d;->g()V

    return-void
.end method
