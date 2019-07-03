.class public Lcom/duoyou/gamesdk/f/b;
.super Lcom/duoyou/gamesdk/c/base/a;


# instance fields
.field private a:Landroid/widget/ImageView;

.field private b:Landroid/view/View;

.field private c:Landroid/view/View;

.field private d:Landroid/widget/EditText;

.field private e:Landroid/widget/EditText;

.field private f:Landroid/widget/ImageView;

.field private g:Landroid/widget/ImageView;

.field private h:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/duoyou/gamesdk/c/base/a;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Landroid/content/DialogInterface$OnDismissListener;)V
    .locals 1

    new-instance v0, Lcom/duoyou/gamesdk/f/b;

    invoke-direct {v0, p0}, Lcom/duoyou/gamesdk/f/b;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lcom/duoyou/gamesdk/f/b;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-static {p0, v0}, Lcom/duoyou/gamesdk/c/c/g;->b(Landroid/content/Context;Landroid/app/Dialog;)V

    return-void
.end method

.method static synthetic a(Lcom/duoyou/gamesdk/f/b;)V
    .locals 0

    invoke-direct {p0}, Lcom/duoyou/gamesdk/f/b;->f()V

    return-void
.end method

.method static synthetic b(Lcom/duoyou/gamesdk/f/b;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/duoyou/gamesdk/f/b;->d:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic c(Lcom/duoyou/gamesdk/f/b;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/duoyou/gamesdk/f/b;->f:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic d(Lcom/duoyou/gamesdk/f/b;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/duoyou/gamesdk/f/b;->b:Landroid/view/View;

    return-object v0
.end method

.method static synthetic e(Lcom/duoyou/gamesdk/f/b;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/duoyou/gamesdk/f/b;->e:Landroid/widget/EditText;

    return-object v0
.end method

.method private e()V
    .locals 2

    const-string v0, "close_iv"

    invoke-virtual {p0, v0}, Lcom/duoyou/gamesdk/f/b;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/duoyou/gamesdk/f/b;->a:Landroid/widget/ImageView;

    const-string v0, "name_layout"

    invoke-virtual {p0, v0}, Lcom/duoyou/gamesdk/f/b;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/duoyou/gamesdk/f/b;->b:Landroid/view/View;

    const-string v0, "card_no_layout"

    invoke-virtual {p0, v0}, Lcom/duoyou/gamesdk/f/b;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/duoyou/gamesdk/f/b;->c:Landroid/view/View;

    const-string v0, "name_layout"

    invoke-virtual {p0, v0}, Lcom/duoyou/gamesdk/f/b;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/duoyou/gamesdk/f/b;->b:Landroid/view/View;

    const-string v0, "card_no_layout"

    invoke-virtual {p0, v0}, Lcom/duoyou/gamesdk/f/b;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/duoyou/gamesdk/f/b;->c:Landroid/view/View;

    const-string v0, "name_et"

    invoke-virtual {p0, v0}, Lcom/duoyou/gamesdk/f/b;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/duoyou/gamesdk/f/b;->d:Landroid/widget/EditText;

    const-string v0, "card_no_et"

    invoke-virtual {p0, v0}, Lcom/duoyou/gamesdk/f/b;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/duoyou/gamesdk/f/b;->e:Landroid/widget/EditText;

    const-string v0, "commit_tv"

    invoke-virtual {p0, v0}, Lcom/duoyou/gamesdk/f/b;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/duoyou/gamesdk/f/b;->h:Landroid/widget/TextView;

    const-string v0, "clear_card_no_iv"

    invoke-virtual {p0, v0}, Lcom/duoyou/gamesdk/f/b;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/duoyou/gamesdk/f/b;->g:Landroid/widget/ImageView;

    const-string v0, "clear_name_iv"

    invoke-virtual {p0, v0}, Lcom/duoyou/gamesdk/f/b;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/duoyou/gamesdk/f/b;->f:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/duoyou/gamesdk/f/b;->a:Landroid/widget/ImageView;

    new-instance v1, Lcom/duoyou/gamesdk/f/b$1;

    invoke-direct {v1, p0}, Lcom/duoyou/gamesdk/f/b$1;-><init>(Lcom/duoyou/gamesdk/f/b;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/duoyou/gamesdk/f/b;->h:Landroid/widget/TextView;

    new-instance v1, Lcom/duoyou/gamesdk/f/b$2;

    invoke-direct {v1, p0}, Lcom/duoyou/gamesdk/f/b$2;-><init>(Lcom/duoyou/gamesdk/f/b;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/duoyou/gamesdk/f/b;->d:Landroid/widget/EditText;

    new-instance v1, Lcom/duoyou/gamesdk/f/b$3;

    invoke-direct {v1, p0}, Lcom/duoyou/gamesdk/f/b$3;-><init>(Lcom/duoyou/gamesdk/f/b;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v0, p0, Lcom/duoyou/gamesdk/f/b;->e:Landroid/widget/EditText;

    new-instance v1, Lcom/duoyou/gamesdk/f/b$4;

    invoke-direct {v1, p0}, Lcom/duoyou/gamesdk/f/b$4;-><init>(Lcom/duoyou/gamesdk/f/b;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v0, p0, Lcom/duoyou/gamesdk/f/b;->f:Landroid/widget/ImageView;

    new-instance v1, Lcom/duoyou/gamesdk/f/b$5;

    invoke-direct {v1, p0}, Lcom/duoyou/gamesdk/f/b$5;-><init>(Lcom/duoyou/gamesdk/f/b;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/duoyou/gamesdk/f/b;->g:Landroid/widget/ImageView;

    new-instance v1, Lcom/duoyou/gamesdk/f/b$6;

    invoke-direct {v1, p0}, Lcom/duoyou/gamesdk/f/b$6;-><init>(Lcom/duoyou/gamesdk/f/b;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/duoyou/gamesdk/f/b;->d:Landroid/widget/EditText;

    new-instance v1, Lcom/duoyou/gamesdk/f/b$7;

    invoke-direct {v1, p0}, Lcom/duoyou/gamesdk/f/b$7;-><init>(Lcom/duoyou/gamesdk/f/b;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/duoyou/gamesdk/f/b;->e:Landroid/widget/EditText;

    new-instance v1, Lcom/duoyou/gamesdk/f/b$8;

    invoke-direct {v1, p0}, Lcom/duoyou/gamesdk/f/b$8;-><init>(Lcom/duoyou/gamesdk/f/b;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method static synthetic f(Lcom/duoyou/gamesdk/f/b;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/duoyou/gamesdk/f/b;->g:Landroid/widget/ImageView;

    return-object v0
.end method

.method private f()V
    .locals 4

    iget-object v0, p0, Lcom/duoyou/gamesdk/f/b;->d:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/duoyou/gamesdk/f/b;->e:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v0, "\u8bf7\u8f93\u5165\u771f\u5b9e\u59d3\u540d"

    invoke-static {v0}, Lcom/duoyou/gamesdk/c/c/r;->a(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v0, "\u8bf7\u8f93\u5165\u8eab\u4efd\u8bc1\u53f7"

    invoke-static {v0}, Lcom/duoyou/gamesdk/c/c/r;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance v2, Lcom/duoyou/gamesdk/b/a/a;

    invoke-direct {v2}, Lcom/duoyou/gamesdk/b/a/a;-><init>()V

    new-instance v3, Lcom/duoyou/gamesdk/f/b$9;

    invoke-direct {v3, p0}, Lcom/duoyou/gamesdk/f/b$9;-><init>(Lcom/duoyou/gamesdk/f/b;)V

    invoke-virtual {v2, v0, v1, v3}, Lcom/duoyou/gamesdk/b/a/a;->h(Ljava/lang/String;Ljava/lang/String;Lcom/duoyou/gamesdk/c/http/e;)V

    goto :goto_0
.end method

.method static synthetic g(Lcom/duoyou/gamesdk/f/b;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/duoyou/gamesdk/f/b;->c:Landroid/view/View;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/duoyou/gamesdk/c/base/a;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/duoyou/gamesdk/f/b;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "dy_floating_certification_layout"

    invoke-static {v0, v1}, Lcom/duoyou/gamesdk/c/c/p;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/duoyou/gamesdk/f/b;->setContentView(I)V

    invoke-direct {p0}, Lcom/duoyou/gamesdk/f/b;->e()V

    return-void
.end method
