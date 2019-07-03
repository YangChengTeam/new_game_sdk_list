.class public Lcom/duoyou/gamesdk/f/a;
.super Lcom/duoyou/gamesdk/c/base/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/duoyou/gamesdk/f/a$a;
    }
.end annotation


# instance fields
.field private a:Landroid/widget/ImageView;

.field private b:Landroid/view/View;

.field private c:Landroid/view/View;

.field private d:Landroid/widget/EditText;

.field private e:Landroid/widget/EditText;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/ImageView;

.field private i:Landroid/widget/ImageView;

.field private j:Landroid/widget/TextView;

.field private k:Landroid/widget/TextView;

.field private l:Lcom/duoyou/gamesdk/f/a$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/duoyou/gamesdk/c/base/a;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/duoyou/gamesdk/f/a;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/duoyou/gamesdk/f/a;->g:Landroid/widget/TextView;

    return-object v0
.end method

.method public static a(Landroid/content/Context;Landroid/content/DialogInterface$OnDismissListener;)V
    .locals 1

    new-instance v0, Lcom/duoyou/gamesdk/f/a;

    invoke-direct {v0, p0}, Lcom/duoyou/gamesdk/f/a;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lcom/duoyou/gamesdk/f/a;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-static {p0, v0}, Lcom/duoyou/gamesdk/c/c/g;->b(Landroid/content/Context;Landroid/app/Dialog;)V

    return-void
.end method

.method static synthetic b(Lcom/duoyou/gamesdk/f/a;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/duoyou/gamesdk/f/a;->k:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic c(Lcom/duoyou/gamesdk/f/a;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/duoyou/gamesdk/f/a;->b:Landroid/view/View;

    return-object v0
.end method

.method static synthetic d(Lcom/duoyou/gamesdk/f/a;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/duoyou/gamesdk/f/a;->h:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic e(Lcom/duoyou/gamesdk/f/a;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/duoyou/gamesdk/f/a;->d:Landroid/widget/EditText;

    return-object v0
.end method

.method private e()V
    .locals 2

    invoke-virtual {p0}, Lcom/duoyou/gamesdk/f/a;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "close_iv"

    invoke-static {v0, v1}, Lcom/duoyou/gamesdk/c/c/p;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/duoyou/gamesdk/f/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/duoyou/gamesdk/f/a;->a:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/duoyou/gamesdk/f/a;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "tel_layout"

    invoke-static {v0, v1}, Lcom/duoyou/gamesdk/c/c/p;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/duoyou/gamesdk/f/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/duoyou/gamesdk/f/a;->b:Landroid/view/View;

    invoke-virtual {p0}, Lcom/duoyou/gamesdk/f/a;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "verify_code_layout"

    invoke-static {v0, v1}, Lcom/duoyou/gamesdk/c/c/p;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/duoyou/gamesdk/f/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/duoyou/gamesdk/f/a;->c:Landroid/view/View;

    invoke-virtual {p0}, Lcom/duoyou/gamesdk/f/a;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "telephone_et"

    invoke-static {v0, v1}, Lcom/duoyou/gamesdk/c/c/p;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/duoyou/gamesdk/f/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/duoyou/gamesdk/f/a;->d:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/duoyou/gamesdk/f/a;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "verify_code_et"

    invoke-static {v0, v1}, Lcom/duoyou/gamesdk/c/c/p;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/duoyou/gamesdk/f/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/duoyou/gamesdk/f/a;->e:Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/duoyou/gamesdk/f/a;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "bind_telephone_tv"

    invoke-static {v0, v1}, Lcom/duoyou/gamesdk/c/c/p;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/duoyou/gamesdk/f/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/duoyou/gamesdk/f/a;->f:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/duoyou/gamesdk/f/a;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "clear_tel_iv"

    invoke-static {v0, v1}, Lcom/duoyou/gamesdk/c/c/p;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/duoyou/gamesdk/f/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/duoyou/gamesdk/f/a;->h:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/duoyou/gamesdk/f/a;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "clear_verify_code_iv"

    invoke-static {v0, v1}, Lcom/duoyou/gamesdk/c/c/p;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/duoyou/gamesdk/f/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/duoyou/gamesdk/f/a;->i:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/duoyou/gamesdk/f/a;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "send_msg_tips_tv"

    invoke-static {v0, v1}, Lcom/duoyou/gamesdk/c/c/p;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/duoyou/gamesdk/f/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/duoyou/gamesdk/f/a;->j:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/duoyou/gamesdk/f/a;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "get_tel_verify_code_tv"

    invoke-static {v0, v1}, Lcom/duoyou/gamesdk/c/c/p;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/duoyou/gamesdk/f/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/duoyou/gamesdk/f/a;->g:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/duoyou/gamesdk/f/a;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "time_count_tv"

    invoke-static {v0, v1}, Lcom/duoyou/gamesdk/c/c/p;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/duoyou/gamesdk/f/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/duoyou/gamesdk/f/a;->k:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/duoyou/gamesdk/f/a;->d:Landroid/widget/EditText;

    new-instance v1, Lcom/duoyou/gamesdk/f/a$1;

    invoke-direct {v1, p0}, Lcom/duoyou/gamesdk/f/a$1;-><init>(Lcom/duoyou/gamesdk/f/a;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v0, p0, Lcom/duoyou/gamesdk/f/a;->e:Landroid/widget/EditText;

    new-instance v1, Lcom/duoyou/gamesdk/f/a$4;

    invoke-direct {v1, p0}, Lcom/duoyou/gamesdk/f/a$4;-><init>(Lcom/duoyou/gamesdk/f/a;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v0, p0, Lcom/duoyou/gamesdk/f/a;->f:Landroid/widget/TextView;

    new-instance v1, Lcom/duoyou/gamesdk/f/a$5;

    invoke-direct {v1, p0}, Lcom/duoyou/gamesdk/f/a$5;-><init>(Lcom/duoyou/gamesdk/f/a;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/duoyou/gamesdk/f/a;->h:Landroid/widget/ImageView;

    new-instance v1, Lcom/duoyou/gamesdk/f/a$6;

    invoke-direct {v1, p0}, Lcom/duoyou/gamesdk/f/a$6;-><init>(Lcom/duoyou/gamesdk/f/a;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/duoyou/gamesdk/f/a;->i:Landroid/widget/ImageView;

    new-instance v1, Lcom/duoyou/gamesdk/f/a$7;

    invoke-direct {v1, p0}, Lcom/duoyou/gamesdk/f/a$7;-><init>(Lcom/duoyou/gamesdk/f/a;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/duoyou/gamesdk/f/a;->g:Landroid/widget/TextView;

    new-instance v1, Lcom/duoyou/gamesdk/f/a$8;

    invoke-direct {v1, p0}, Lcom/duoyou/gamesdk/f/a$8;-><init>(Lcom/duoyou/gamesdk/f/a;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/duoyou/gamesdk/f/a;->a:Landroid/widget/ImageView;

    new-instance v1, Lcom/duoyou/gamesdk/f/a$9;

    invoke-direct {v1, p0}, Lcom/duoyou/gamesdk/f/a$9;-><init>(Lcom/duoyou/gamesdk/f/a;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/duoyou/gamesdk/f/a;->d:Landroid/widget/EditText;

    new-instance v1, Lcom/duoyou/gamesdk/f/a$10;

    invoke-direct {v1, p0}, Lcom/duoyou/gamesdk/f/a$10;-><init>(Lcom/duoyou/gamesdk/f/a;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/duoyou/gamesdk/f/a;->e:Landroid/widget/EditText;

    new-instance v1, Lcom/duoyou/gamesdk/f/a$11;

    invoke-direct {v1, p0}, Lcom/duoyou/gamesdk/f/a$11;-><init>(Lcom/duoyou/gamesdk/f/a;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method static synthetic f(Lcom/duoyou/gamesdk/f/a;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/duoyou/gamesdk/f/a;->c:Landroid/view/View;

    return-object v0
.end method

.method private f()V
    .locals 4

    iget-object v0, p0, Lcom/duoyou/gamesdk/f/a;->d:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "\u8bf7\u8f93\u5165\u624b\u673a\u53f7\u7801\uff01"

    invoke-static {v0}, Lcom/duoyou/gamesdk/c/c/r;->a(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xb

    if-eq v1, v2, :cond_2

    :cond_1
    const-string v0, "\u8bf7\u8f93\u5165\u6b63\u786e\u7684\u624b\u673a\u53f7\u7801\uff01"

    invoke-static {v0}, Lcom/duoyou/gamesdk/c/c/r;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/duoyou/gamesdk/f/a;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/duoyou/gamesdk/c/c/k;->a(Landroid/content/Context;)V

    new-instance v1, Lcom/duoyou/gamesdk/b/a/a;

    invoke-direct {v1}, Lcom/duoyou/gamesdk/b/a/a;-><init>()V

    const-string v2, "binding"

    new-instance v3, Lcom/duoyou/gamesdk/f/a$2;

    invoke-direct {v3, p0, v0}, Lcom/duoyou/gamesdk/f/a$2;-><init>(Lcom/duoyou/gamesdk/f/a;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v0, v3}, Lcom/duoyou/gamesdk/b/a/a;->f(Ljava/lang/String;Ljava/lang/String;Lcom/duoyou/gamesdk/c/http/e;)V

    goto :goto_0
.end method

.method static synthetic g(Lcom/duoyou/gamesdk/f/a;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/duoyou/gamesdk/f/a;->i:Landroid/widget/ImageView;

    return-object v0
.end method

.method private g()V
    .locals 4

    iget-object v0, p0, Lcom/duoyou/gamesdk/f/a;->d:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "\u8bf7\u8f93\u5165\u624b\u673a\u53f7\u7801\uff01"

    invoke-static {v0}, Lcom/duoyou/gamesdk/c/c/r;->a(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xb

    if-eq v1, v2, :cond_2

    :cond_1
    const-string v0, "\u8bf7\u8f93\u5165\u6b63\u786e\u7684\u624b\u673a\u53f7\u7801\uff01"

    invoke-static {v0}, Lcom/duoyou/gamesdk/c/c/r;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/duoyou/gamesdk/f/a;->e:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v0, "\u8bf7\u8f93\u5165\u77ed\u4fe1\u9a8c\u8bc1\u7801\uff01"

    invoke-static {v0}, Lcom/duoyou/gamesdk/c/c/r;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/duoyou/gamesdk/f/a;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/duoyou/gamesdk/c/c/k;->a(Landroid/content/Context;)V

    new-instance v2, Lcom/duoyou/gamesdk/b/a/a;

    invoke-direct {v2}, Lcom/duoyou/gamesdk/b/a/a;-><init>()V

    new-instance v3, Lcom/duoyou/gamesdk/f/a$3;

    invoke-direct {v3, p0, v0}, Lcom/duoyou/gamesdk/f/a$3;-><init>(Lcom/duoyou/gamesdk/f/a;Ljava/lang/String;)V

    invoke-virtual {v2, v0, v1, v3}, Lcom/duoyou/gamesdk/b/a/a;->d(Ljava/lang/String;Ljava/lang/String;Lcom/duoyou/gamesdk/c/http/e;)V

    goto :goto_0
.end method

.method static synthetic h(Lcom/duoyou/gamesdk/f/a;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/duoyou/gamesdk/f/a;->e:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic i(Lcom/duoyou/gamesdk/f/a;)V
    .locals 0

    invoke-direct {p0}, Lcom/duoyou/gamesdk/f/a;->g()V

    return-void
.end method

.method static synthetic j(Lcom/duoyou/gamesdk/f/a;)V
    .locals 0

    invoke-direct {p0}, Lcom/duoyou/gamesdk/f/a;->f()V

    return-void
.end method

.method static synthetic k(Lcom/duoyou/gamesdk/f/a;)Lcom/duoyou/gamesdk/f/a$a;
    .locals 1

    iget-object v0, p0, Lcom/duoyou/gamesdk/f/a;->l:Lcom/duoyou/gamesdk/f/a$a;

    return-object v0
.end method

.method static synthetic l(Lcom/duoyou/gamesdk/f/a;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/duoyou/gamesdk/f/a;->j:Landroid/widget/TextView;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    invoke-super {p0, p1}, Lcom/duoyou/gamesdk/c/base/a;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/duoyou/gamesdk/f/a;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "dy_floating_bind_tel_layout"

    invoke-static {v0, v1}, Lcom/duoyou/gamesdk/c/c/p;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/duoyou/gamesdk/f/a;->setContentView(I)V

    new-instance v0, Lcom/duoyou/gamesdk/f/a$a;

    const-wide/32 v2, 0x15f90

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/duoyou/gamesdk/f/a$a;-><init>(Lcom/duoyou/gamesdk/f/a;JJ)V

    iput-object v0, p0, Lcom/duoyou/gamesdk/f/a;->l:Lcom/duoyou/gamesdk/f/a$a;

    invoke-direct {p0}, Lcom/duoyou/gamesdk/f/a;->e()V

    return-void
.end method
