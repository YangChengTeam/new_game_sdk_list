.class public Lcom/duoyou/gamesdk/b/d/b;
.super Lcom/duoyou/gamesdk/c/base/a;


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/EditText;

.field private c:Landroid/widget/EditText;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/ImageView;

.field private f:Landroid/widget/ImageView;

.field private g:Landroid/widget/ImageView;

.field private h:Landroid/widget/TextView;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Landroid/widget/CheckBox;

.field private l:Landroid/widget/TextView;

.field private m:Landroid/widget/ImageView;

.field private n:Landroid/view/View;

.field private o:Landroid/widget/ImageView;

.field private p:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/duoyou/gamesdk/c/base/a;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/duoyou/gamesdk/b/d/b;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/duoyou/gamesdk/b/d/b;->b:Landroid/widget/EditText;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 1

    new-instance v0, Lcom/duoyou/gamesdk/b/d/b;

    invoke-direct {v0, p0}, Lcom/duoyou/gamesdk/b/d/b;-><init>(Landroid/content/Context;)V

    invoke-static {p0, v0}, Lcom/duoyou/gamesdk/c/c/g;->b(Landroid/content/Context;Landroid/app/Dialog;)V

    return-void
.end method

.method static synthetic a(Lcom/duoyou/gamesdk/b/d/b;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/duoyou/gamesdk/b/d/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    invoke-virtual {p0}, Lcom/duoyou/gamesdk/b/d/b;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u6b63\u5728\u6ce8\u518c..."

    invoke-static {v0, v1}, Lcom/duoyou/gamesdk/c/c/k;->a(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v0, Lcom/duoyou/gamesdk/b/a/a;

    invoke-direct {v0}, Lcom/duoyou/gamesdk/b/a/a;-><init>()V

    new-instance v1, Lcom/duoyou/gamesdk/b/c/e;

    invoke-virtual {p0}, Lcom/duoyou/gamesdk/b/d/b;->a()Landroid/content/Context;

    move-result-object v2

    const-string v3, "1"

    invoke-direct {v1, v2, p2, v3, p0}, Lcom/duoyou/gamesdk/b/c/e;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/app/Dialog;)V

    invoke-virtual {v0, p1, p2, v1}, Lcom/duoyou/gamesdk/b/a/a;->c(Ljava/lang/String;Ljava/lang/String;Lcom/duoyou/gamesdk/c/http/e;)V

    return-void
.end method

.method static synthetic b(Lcom/duoyou/gamesdk/b/d/b;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/duoyou/gamesdk/b/d/b;->c:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic c(Lcom/duoyou/gamesdk/b/d/b;)Landroid/widget/CheckBox;
    .locals 1

    iget-object v0, p0, Lcom/duoyou/gamesdk/b/d/b;->k:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic d(Lcom/duoyou/gamesdk/b/d/b;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/duoyou/gamesdk/b/d/b;->e:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic e(Lcom/duoyou/gamesdk/b/d/b;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/duoyou/gamesdk/b/d/b;->m:Landroid/widget/ImageView;

    return-object v0
.end method

.method private e()V
    .locals 2

    const-string v0, "back_login_tv"

    invoke-virtual {p0, v0}, Lcom/duoyou/gamesdk/b/d/b;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/duoyou/gamesdk/b/d/b;->a:Landroid/widget/TextView;

    const-string v0, "username_et"

    invoke-virtual {p0, v0}, Lcom/duoyou/gamesdk/b/d/b;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/duoyou/gamesdk/b/d/b;->b:Landroid/widget/EditText;

    const-string v0, "password_et"

    invoke-virtual {p0, v0}, Lcom/duoyou/gamesdk/b/d/b;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/duoyou/gamesdk/b/d/b;->c:Landroid/widget/EditText;

    const-string v0, "quick_register_tv"

    invoke-virtual {p0, v0}, Lcom/duoyou/gamesdk/b/d/b;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/duoyou/gamesdk/b/d/b;->d:Landroid/widget/TextView;

    const-string v0, "clear_username_iv"

    invoke-virtual {p0, v0}, Lcom/duoyou/gamesdk/b/d/b;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/duoyou/gamesdk/b/d/b;->e:Landroid/widget/ImageView;

    const-string v0, "clear_password_iv"

    invoke-virtual {p0, v0}, Lcom/duoyou/gamesdk/b/d/b;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/duoyou/gamesdk/b/d/b;->f:Landroid/widget/ImageView;

    const-string v0, "dy_register_red_tips_bg"

    invoke-virtual {p0, v0}, Lcom/duoyou/gamesdk/b/d/b;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/duoyou/gamesdk/b/d/b;->g:Landroid/widget/ImageView;

    const-string v0, "dy_register_red_tips_tv"

    invoke-virtual {p0, v0}, Lcom/duoyou/gamesdk/b/d/b;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/duoyou/gamesdk/b/d/b;->h:Landroid/widget/TextView;

    const-string v0, "account_iv"

    invoke-virtual {p0, v0}, Lcom/duoyou/gamesdk/b/d/b;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/duoyou/gamesdk/b/d/b;->m:Landroid/widget/ImageView;

    const-string v0, "account_bottom_line"

    invoke-virtual {p0, v0}, Lcom/duoyou/gamesdk/b/d/b;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/duoyou/gamesdk/b/d/b;->n:Landroid/view/View;

    const-string v0, "pwd_iv"

    invoke-virtual {p0, v0}, Lcom/duoyou/gamesdk/b/d/b;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/duoyou/gamesdk/b/d/b;->o:Landroid/widget/ImageView;

    const-string v0, "pwd_bottom_line"

    invoke-virtual {p0, v0}, Lcom/duoyou/gamesdk/b/d/b;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/duoyou/gamesdk/b/d/b;->p:Landroid/view/View;

    const-string v0, "protocal_tv"

    invoke-virtual {p0, v0}, Lcom/duoyou/gamesdk/b/d/b;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/duoyou/gamesdk/b/d/b;->l:Landroid/widget/TextView;

    const-string v0, "agree_ck"

    invoke-virtual {p0, v0}, Lcom/duoyou/gamesdk/b/d/b;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/duoyou/gamesdk/b/d/b;->k:Landroid/widget/CheckBox;

    iget-object v0, p0, Lcom/duoyou/gamesdk/b/d/b;->a:Landroid/widget/TextView;

    new-instance v1, Lcom/duoyou/gamesdk/b/d/b$1;

    invoke-direct {v1, p0}, Lcom/duoyou/gamesdk/b/d/b$1;-><init>(Lcom/duoyou/gamesdk/b/d/b;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/duoyou/gamesdk/b/d/b;->d:Landroid/widget/TextView;

    new-instance v1, Lcom/duoyou/gamesdk/b/d/b$3;

    invoke-direct {v1, p0}, Lcom/duoyou/gamesdk/b/d/b$3;-><init>(Lcom/duoyou/gamesdk/b/d/b;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/duoyou/gamesdk/b/d/b;->l:Landroid/widget/TextView;

    new-instance v1, Lcom/duoyou/gamesdk/b/d/b$4;

    invoke-direct {v1, p0}, Lcom/duoyou/gamesdk/b/d/b$4;-><init>(Lcom/duoyou/gamesdk/b/d/b;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/duoyou/gamesdk/b/d/b;->e:Landroid/widget/ImageView;

    new-instance v1, Lcom/duoyou/gamesdk/b/d/b$5;

    invoke-direct {v1, p0}, Lcom/duoyou/gamesdk/b/d/b$5;-><init>(Lcom/duoyou/gamesdk/b/d/b;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/duoyou/gamesdk/b/d/b;->f:Landroid/widget/ImageView;

    new-instance v1, Lcom/duoyou/gamesdk/b/d/b$6;

    invoke-direct {v1, p0}, Lcom/duoyou/gamesdk/b/d/b$6;-><init>(Lcom/duoyou/gamesdk/b/d/b;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/duoyou/gamesdk/b/d/b;->b:Landroid/widget/EditText;

    new-instance v1, Lcom/duoyou/gamesdk/b/d/b$7;

    invoke-direct {v1, p0}, Lcom/duoyou/gamesdk/b/d/b$7;-><init>(Lcom/duoyou/gamesdk/b/d/b;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v0, p0, Lcom/duoyou/gamesdk/b/d/b;->c:Landroid/widget/EditText;

    new-instance v1, Lcom/duoyou/gamesdk/b/d/b$8;

    invoke-direct {v1, p0}, Lcom/duoyou/gamesdk/b/d/b$8;-><init>(Lcom/duoyou/gamesdk/b/d/b;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v0, p0, Lcom/duoyou/gamesdk/b/d/b;->b:Landroid/widget/EditText;

    new-instance v1, Lcom/duoyou/gamesdk/b/d/b$9;

    invoke-direct {v1, p0}, Lcom/duoyou/gamesdk/b/d/b$9;-><init>(Lcom/duoyou/gamesdk/b/d/b;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/duoyou/gamesdk/b/d/b;->c:Landroid/widget/EditText;

    new-instance v1, Lcom/duoyou/gamesdk/b/d/b$10;

    invoke-direct {v1, p0}, Lcom/duoyou/gamesdk/b/d/b$10;-><init>(Lcom/duoyou/gamesdk/b/d/b;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    new-instance v0, Lcom/duoyou/gamesdk/b/d/b$2;

    invoke-direct {v0, p0}, Lcom/duoyou/gamesdk/b/d/b$2;-><init>(Lcom/duoyou/gamesdk/b/d/b;)V

    invoke-virtual {p0, v0}, Lcom/duoyou/gamesdk/b/d/b;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    return-void
.end method

.method static synthetic f(Lcom/duoyou/gamesdk/b/d/b;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/duoyou/gamesdk/b/d/b;->n:Landroid/view/View;

    return-object v0
.end method

.method private f()V
    .locals 2

    invoke-static {}, Lcom/duoyou/gamesdk/c/c/c;->f()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/duoyou/gamesdk/b/d/b;->i:Ljava/lang/String;

    invoke-static {}, Lcom/duoyou/gamesdk/c/c/c;->g()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/duoyou/gamesdk/b/d/b;->j:Ljava/lang/String;

    iget-object v0, p0, Lcom/duoyou/gamesdk/b/d/b;->b:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/duoyou/gamesdk/b/d/b;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/duoyou/gamesdk/b/d/b;->c:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/duoyou/gamesdk/b/d/b;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/duoyou/gamesdk/b/d/b;->b:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/duoyou/gamesdk/b/d/b;->b:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    iget-object v0, p0, Lcom/duoyou/gamesdk/b/d/b;->c:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/duoyou/gamesdk/b/d/b;->c:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    return-void
.end method

.method static synthetic g(Lcom/duoyou/gamesdk/b/d/b;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/duoyou/gamesdk/b/d/b;->f:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic h(Lcom/duoyou/gamesdk/b/d/b;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/duoyou/gamesdk/b/d/b;->o:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic i(Lcom/duoyou/gamesdk/b/d/b;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/duoyou/gamesdk/b/d/b;->p:Landroid/view/View;

    return-object v0
.end method

.method static synthetic j(Lcom/duoyou/gamesdk/b/d/b;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/duoyou/gamesdk/b/d/b;->i:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic k(Lcom/duoyou/gamesdk/b/d/b;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/duoyou/gamesdk/b/d/b;->g:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic l(Lcom/duoyou/gamesdk/b/d/b;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/duoyou/gamesdk/b/d/b;->h:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic m(Lcom/duoyou/gamesdk/b/d/b;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/duoyou/gamesdk/b/d/b;->j:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public dismiss()V
    .locals 0

    invoke-super {p0}, Lcom/duoyou/gamesdk/c/base/a;->dismiss()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/duoyou/gamesdk/c/base/a;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/duoyou/gamesdk/b/d/b;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "dy_register_quick_activity"

    invoke-static {v0, v1}, Lcom/duoyou/gamesdk/c/c/p;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/duoyou/gamesdk/b/d/b;->setContentView(I)V

    invoke-direct {p0}, Lcom/duoyou/gamesdk/b/d/b;->e()V

    invoke-direct {p0}, Lcom/duoyou/gamesdk/b/d/b;->f()V

    return-void
.end method
