.class public Lcom/duoyou/gamesdk/b/d/a;
.super Lcom/duoyou/gamesdk/c/base/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/duoyou/gamesdk/b/d/a$a;
    }
.end annotation


# instance fields
.field private a:Landroid/widget/EditText;

.field private b:Landroid/widget/EditText;

.field private c:Landroid/widget/EditText;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/ImageView;

.field private i:Landroid/widget/ImageView;

.field private j:Landroid/widget/ImageView;

.field private k:Landroid/widget/TextView;

.field private l:Landroid/widget/TextView;

.field private m:Landroid/widget/CheckBox;

.field private n:Landroid/widget/TextView;

.field private o:Landroid/widget/ImageView;

.field private p:Landroid/view/View;

.field private q:Landroid/widget/ImageView;

.field private r:Landroid/view/View;

.field private s:Landroid/widget/ImageView;

.field private t:Landroid/view/View;

.field private u:Lcom/duoyou/gamesdk/b/d/a$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/duoyou/gamesdk/c/base/a;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/duoyou/gamesdk/b/d/a;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/duoyou/gamesdk/b/d/a;->d:Landroid/widget/TextView;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 1

    new-instance v0, Lcom/duoyou/gamesdk/b/d/a;

    invoke-direct {v0, p0}, Lcom/duoyou/gamesdk/b/d/a;-><init>(Landroid/content/Context;)V

    invoke-static {p0, v0}, Lcom/duoyou/gamesdk/c/c/g;->b(Landroid/content/Context;Landroid/app/Dialog;)V

    return-void
.end method

.method static synthetic a(Lcom/duoyou/gamesdk/b/d/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/duoyou/gamesdk/b/d/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    invoke-virtual {p0}, Lcom/duoyou/gamesdk/b/d/a;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/duoyou/gamesdk/c/c/k;->a(Landroid/content/Context;)V

    new-instance v0, Lcom/duoyou/gamesdk/b/a/a;

    invoke-direct {v0}, Lcom/duoyou/gamesdk/b/a/a;-><init>()V

    new-instance v1, Lcom/duoyou/gamesdk/b/c/e;

    invoke-virtual {p0}, Lcom/duoyou/gamesdk/b/d/a;->a()Landroid/content/Context;

    move-result-object v2

    const-string v3, "3"

    invoke-direct {v1, v2, p3, v3, p0}, Lcom/duoyou/gamesdk/b/c/e;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/app/Dialog;)V

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/duoyou/gamesdk/b/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/duoyou/gamesdk/c/http/e;)V

    return-void
.end method

.method static synthetic b(Lcom/duoyou/gamesdk/b/d/a;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/duoyou/gamesdk/b/d/a;->e:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic c(Lcom/duoyou/gamesdk/b/d/a;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/duoyou/gamesdk/b/d/a;->l:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic d(Lcom/duoyou/gamesdk/b/d/a;)V
    .locals 0

    invoke-direct {p0}, Lcom/duoyou/gamesdk/b/d/a;->f()V

    return-void
.end method

.method static synthetic e(Lcom/duoyou/gamesdk/b/d/a;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/duoyou/gamesdk/b/d/a;->a:Landroid/widget/EditText;

    return-object v0
.end method

.method private e()V
    .locals 2

    const-string v0, "telephone_et"

    invoke-virtual {p0, v0}, Lcom/duoyou/gamesdk/b/d/a;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/duoyou/gamesdk/b/d/a;->a:Landroid/widget/EditText;

    const-string v0, "verify_code_et"

    invoke-virtual {p0, v0}, Lcom/duoyou/gamesdk/b/d/a;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/duoyou/gamesdk/b/d/a;->b:Landroid/widget/EditText;

    const-string v0, "password_et"

    invoke-virtual {p0, v0}, Lcom/duoyou/gamesdk/b/d/a;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/duoyou/gamesdk/b/d/a;->c:Landroid/widget/EditText;

    const-string v0, "get_tel_verify_code_tv"

    invoke-virtual {p0, v0}, Lcom/duoyou/gamesdk/b/d/a;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/duoyou/gamesdk/b/d/a;->d:Landroid/widget/TextView;

    const-string v0, "time_count_tv"

    invoke-virtual {p0, v0}, Lcom/duoyou/gamesdk/b/d/a;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/duoyou/gamesdk/b/d/a;->e:Landroid/widget/TextView;

    const-string v0, "register_tv"

    invoke-virtual {p0, v0}, Lcom/duoyou/gamesdk/b/d/a;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/duoyou/gamesdk/b/d/a;->k:Landroid/widget/TextView;

    const-string v0, "send_msg_tips_tv"

    invoke-virtual {p0, v0}, Lcom/duoyou/gamesdk/b/d/a;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/duoyou/gamesdk/b/d/a;->l:Landroid/widget/TextView;

    const-string v0, "agree_ck"

    invoke-virtual {p0, v0}, Lcom/duoyou/gamesdk/b/d/a;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/duoyou/gamesdk/b/d/a;->m:Landroid/widget/CheckBox;

    const-string v0, "protrocal_tv"

    invoke-virtual {p0, v0}, Lcom/duoyou/gamesdk/b/d/a;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/duoyou/gamesdk/b/d/a;->n:Landroid/widget/TextView;

    const-string v0, "clear_username_iv"

    invoke-virtual {p0, v0}, Lcom/duoyou/gamesdk/b/d/a;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/duoyou/gamesdk/b/d/a;->h:Landroid/widget/ImageView;

    const-string v0, "clear_verify_code_iv"

    invoke-virtual {p0, v0}, Lcom/duoyou/gamesdk/b/d/a;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/duoyou/gamesdk/b/d/a;->i:Landroid/widget/ImageView;

    const-string v0, "clear_password_iv"

    invoke-virtual {p0, v0}, Lcom/duoyou/gamesdk/b/d/a;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/duoyou/gamesdk/b/d/a;->j:Landroid/widget/ImageView;

    const-string v0, "account_iv"

    invoke-virtual {p0, v0}, Lcom/duoyou/gamesdk/b/d/a;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/duoyou/gamesdk/b/d/a;->o:Landroid/widget/ImageView;

    const-string v0, "account_bottom_line"

    invoke-virtual {p0, v0}, Lcom/duoyou/gamesdk/b/d/a;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/duoyou/gamesdk/b/d/a;->p:Landroid/view/View;

    const-string v0, "pwd_iv"

    invoke-virtual {p0, v0}, Lcom/duoyou/gamesdk/b/d/a;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/duoyou/gamesdk/b/d/a;->s:Landroid/widget/ImageView;

    const-string v0, "pwd_bottom_line"

    invoke-virtual {p0, v0}, Lcom/duoyou/gamesdk/b/d/a;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/duoyou/gamesdk/b/d/a;->t:Landroid/view/View;

    const-string v0, "verify_code_iv"

    invoke-virtual {p0, v0}, Lcom/duoyou/gamesdk/b/d/a;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/duoyou/gamesdk/b/d/a;->q:Landroid/widget/ImageView;

    const-string v0, "verify_code_bottom_line"

    invoke-virtual {p0, v0}, Lcom/duoyou/gamesdk/b/d/a;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/duoyou/gamesdk/b/d/a;->r:Landroid/view/View;

    const-string v0, "account_password_login_tv"

    invoke-virtual {p0, v0}, Lcom/duoyou/gamesdk/b/d/a;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/duoyou/gamesdk/b/d/a;->f:Landroid/widget/TextView;

    const-string v0, "quick_register_tv"

    invoke-virtual {p0, v0}, Lcom/duoyou/gamesdk/b/d/a;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/duoyou/gamesdk/b/d/a;->g:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/duoyou/gamesdk/b/d/a;->d:Landroid/widget/TextView;

    new-instance v1, Lcom/duoyou/gamesdk/b/d/a$1;

    invoke-direct {v1, p0}, Lcom/duoyou/gamesdk/b/d/a$1;-><init>(Lcom/duoyou/gamesdk/b/d/a;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/duoyou/gamesdk/b/d/a;->f:Landroid/widget/TextView;

    new-instance v1, Lcom/duoyou/gamesdk/b/d/a$10;

    invoke-direct {v1, p0}, Lcom/duoyou/gamesdk/b/d/a$10;-><init>(Lcom/duoyou/gamesdk/b/d/a;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/duoyou/gamesdk/b/d/a;->g:Landroid/widget/TextView;

    new-instance v1, Lcom/duoyou/gamesdk/b/d/a$11;

    invoke-direct {v1, p0}, Lcom/duoyou/gamesdk/b/d/a$11;-><init>(Lcom/duoyou/gamesdk/b/d/a;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/duoyou/gamesdk/b/d/a;->h:Landroid/widget/ImageView;

    new-instance v1, Lcom/duoyou/gamesdk/b/d/a$12;

    invoke-direct {v1, p0}, Lcom/duoyou/gamesdk/b/d/a$12;-><init>(Lcom/duoyou/gamesdk/b/d/a;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/duoyou/gamesdk/b/d/a;->j:Landroid/widget/ImageView;

    new-instance v1, Lcom/duoyou/gamesdk/b/d/a$13;

    invoke-direct {v1, p0}, Lcom/duoyou/gamesdk/b/d/a$13;-><init>(Lcom/duoyou/gamesdk/b/d/a;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/duoyou/gamesdk/b/d/a;->i:Landroid/widget/ImageView;

    new-instance v1, Lcom/duoyou/gamesdk/b/d/a$14;

    invoke-direct {v1, p0}, Lcom/duoyou/gamesdk/b/d/a$14;-><init>(Lcom/duoyou/gamesdk/b/d/a;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/duoyou/gamesdk/b/d/a;->k:Landroid/widget/TextView;

    new-instance v1, Lcom/duoyou/gamesdk/b/d/a$15;

    invoke-direct {v1, p0}, Lcom/duoyou/gamesdk/b/d/a$15;-><init>(Lcom/duoyou/gamesdk/b/d/a;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/duoyou/gamesdk/b/d/a;->d:Landroid/widget/TextView;

    new-instance v1, Lcom/duoyou/gamesdk/b/d/a$16;

    invoke-direct {v1, p0}, Lcom/duoyou/gamesdk/b/d/a$16;-><init>(Lcom/duoyou/gamesdk/b/d/a;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/duoyou/gamesdk/b/d/a;->n:Landroid/widget/TextView;

    new-instance v1, Lcom/duoyou/gamesdk/b/d/a$17;

    invoke-direct {v1, p0}, Lcom/duoyou/gamesdk/b/d/a$17;-><init>(Lcom/duoyou/gamesdk/b/d/a;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/duoyou/gamesdk/b/d/a;->a:Landroid/widget/EditText;

    new-instance v1, Lcom/duoyou/gamesdk/b/d/a$2;

    invoke-direct {v1, p0}, Lcom/duoyou/gamesdk/b/d/a$2;-><init>(Lcom/duoyou/gamesdk/b/d/a;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v0, p0, Lcom/duoyou/gamesdk/b/d/a;->b:Landroid/widget/EditText;

    new-instance v1, Lcom/duoyou/gamesdk/b/d/a$3;

    invoke-direct {v1, p0}, Lcom/duoyou/gamesdk/b/d/a$3;-><init>(Lcom/duoyou/gamesdk/b/d/a;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v0, p0, Lcom/duoyou/gamesdk/b/d/a;->c:Landroid/widget/EditText;

    new-instance v1, Lcom/duoyou/gamesdk/b/d/a$4;

    invoke-direct {v1, p0}, Lcom/duoyou/gamesdk/b/d/a$4;-><init>(Lcom/duoyou/gamesdk/b/d/a;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v0, p0, Lcom/duoyou/gamesdk/b/d/a;->a:Landroid/widget/EditText;

    new-instance v1, Lcom/duoyou/gamesdk/b/d/a$5;

    invoke-direct {v1, p0}, Lcom/duoyou/gamesdk/b/d/a$5;-><init>(Lcom/duoyou/gamesdk/b/d/a;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/duoyou/gamesdk/b/d/a;->b:Landroid/widget/EditText;

    new-instance v1, Lcom/duoyou/gamesdk/b/d/a$6;

    invoke-direct {v1, p0}, Lcom/duoyou/gamesdk/b/d/a$6;-><init>(Lcom/duoyou/gamesdk/b/d/a;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/duoyou/gamesdk/b/d/a;->c:Landroid/widget/EditText;

    new-instance v1, Lcom/duoyou/gamesdk/b/d/a$7;

    invoke-direct {v1, p0}, Lcom/duoyou/gamesdk/b/d/a$7;-><init>(Lcom/duoyou/gamesdk/b/d/a;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    new-instance v0, Lcom/duoyou/gamesdk/b/d/a$8;

    invoke-direct {v0, p0}, Lcom/duoyou/gamesdk/b/d/a$8;-><init>(Lcom/duoyou/gamesdk/b/d/a;)V

    invoke-virtual {p0, v0}, Lcom/duoyou/gamesdk/b/d/a;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    return-void
.end method

.method static synthetic f(Lcom/duoyou/gamesdk/b/d/a;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/duoyou/gamesdk/b/d/a;->c:Landroid/widget/EditText;

    return-object v0
.end method

.method private f()V
    .locals 4

    iget-object v0, p0, Lcom/duoyou/gamesdk/b/d/a;->a:Landroid/widget/EditText;

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
    invoke-virtual {p0}, Lcom/duoyou/gamesdk/b/d/a;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/duoyou/gamesdk/c/c/k;->a(Landroid/content/Context;)V

    new-instance v1, Lcom/duoyou/gamesdk/b/a/a;

    invoke-direct {v1}, Lcom/duoyou/gamesdk/b/a/a;-><init>()V

    const-string v2, "register"

    new-instance v3, Lcom/duoyou/gamesdk/b/d/a$9;

    invoke-direct {v3, p0, v0}, Lcom/duoyou/gamesdk/b/d/a$9;-><init>(Lcom/duoyou/gamesdk/b/d/a;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v0, v3}, Lcom/duoyou/gamesdk/b/a/a;->f(Ljava/lang/String;Ljava/lang/String;Lcom/duoyou/gamesdk/c/http/e;)V

    goto :goto_0
.end method

.method static synthetic g(Lcom/duoyou/gamesdk/b/d/a;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/duoyou/gamesdk/b/d/a;->b:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic h(Lcom/duoyou/gamesdk/b/d/a;)Landroid/widget/CheckBox;
    .locals 1

    iget-object v0, p0, Lcom/duoyou/gamesdk/b/d/a;->m:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic i(Lcom/duoyou/gamesdk/b/d/a;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/duoyou/gamesdk/b/d/a;->h:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic j(Lcom/duoyou/gamesdk/b/d/a;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/duoyou/gamesdk/b/d/a;->o:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic k(Lcom/duoyou/gamesdk/b/d/a;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/duoyou/gamesdk/b/d/a;->p:Landroid/view/View;

    return-object v0
.end method

.method static synthetic l(Lcom/duoyou/gamesdk/b/d/a;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/duoyou/gamesdk/b/d/a;->i:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic m(Lcom/duoyou/gamesdk/b/d/a;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/duoyou/gamesdk/b/d/a;->q:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic n(Lcom/duoyou/gamesdk/b/d/a;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/duoyou/gamesdk/b/d/a;->r:Landroid/view/View;

    return-object v0
.end method

.method static synthetic o(Lcom/duoyou/gamesdk/b/d/a;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/duoyou/gamesdk/b/d/a;->j:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic p(Lcom/duoyou/gamesdk/b/d/a;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/duoyou/gamesdk/b/d/a;->s:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic q(Lcom/duoyou/gamesdk/b/d/a;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/duoyou/gamesdk/b/d/a;->t:Landroid/view/View;

    return-object v0
.end method

.method static synthetic r(Lcom/duoyou/gamesdk/b/d/a;)Lcom/duoyou/gamesdk/b/d/a$a;
    .locals 1

    iget-object v0, p0, Lcom/duoyou/gamesdk/b/d/a;->u:Lcom/duoyou/gamesdk/b/d/a$a;

    return-object v0
.end method


# virtual methods
.method public dismiss()V
    .locals 0

    invoke-super {p0}, Lcom/duoyou/gamesdk/c/base/a;->dismiss()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    invoke-super {p0, p1}, Lcom/duoyou/gamesdk/c/base/a;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/duoyou/gamesdk/b/d/a;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "dy_register_phone_activity"

    invoke-static {v0, v1}, Lcom/duoyou/gamesdk/c/c/p;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/duoyou/gamesdk/b/d/a;->setContentView(I)V

    new-instance v0, Lcom/duoyou/gamesdk/b/d/a$a;

    const-wide/32 v2, 0x15f90

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/duoyou/gamesdk/b/d/a$a;-><init>(Lcom/duoyou/gamesdk/b/d/a;JJ)V

    iput-object v0, p0, Lcom/duoyou/gamesdk/b/d/a;->u:Lcom/duoyou/gamesdk/b/d/a$a;

    invoke-direct {p0}, Lcom/duoyou/gamesdk/b/d/a;->e()V

    return-void
.end method
