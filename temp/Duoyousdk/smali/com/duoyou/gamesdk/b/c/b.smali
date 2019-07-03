.class public Lcom/duoyou/gamesdk/b/c/b;
.super Lcom/duoyou/gamesdk/c/base/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/duoyou/gamesdk/b/c/b$a;,
        Lcom/duoyou/gamesdk/b/c/b$b;
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

.field private m:Landroid/widget/ImageView;

.field private n:Landroid/widget/ImageView;

.field private o:Landroid/view/View;

.field private p:Landroid/widget/ImageView;

.field private q:Landroid/view/View;

.field private r:Landroid/widget/ImageView;

.field private s:Landroid/view/View;

.field private t:Lcom/duoyou/gamesdk/b/c/b$b;

.field private u:Lcom/duoyou/gamesdk/b/c/b$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/duoyou/gamesdk/c/base/a;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/duoyou/gamesdk/b/c/b;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/duoyou/gamesdk/b/c/b;->d:Landroid/widget/TextView;

    return-object v0
.end method

.method public static a(Landroid/content/Context;Lcom/duoyou/gamesdk/b/c/b$a;)V
    .locals 1

    new-instance v0, Lcom/duoyou/gamesdk/b/c/b;

    invoke-direct {v0, p0}, Lcom/duoyou/gamesdk/b/c/b;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lcom/duoyou/gamesdk/b/c/b;->a(Lcom/duoyou/gamesdk/b/c/b$a;)V

    invoke-static {p0, v0}, Lcom/duoyou/gamesdk/c/c/g;->b(Landroid/content/Context;Landroid/app/Dialog;)V

    return-void
.end method

.method static synthetic b(Lcom/duoyou/gamesdk/b/c/b;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/duoyou/gamesdk/b/c/b;->e:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic c(Lcom/duoyou/gamesdk/b/c/b;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/duoyou/gamesdk/b/c/b;->l:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic d(Lcom/duoyou/gamesdk/b/c/b;)V
    .locals 0

    invoke-direct {p0}, Lcom/duoyou/gamesdk/b/c/b;->f()V

    return-void
.end method

.method static synthetic e(Lcom/duoyou/gamesdk/b/c/b;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/duoyou/gamesdk/b/c/b;->c:Landroid/widget/EditText;

    return-object v0
.end method

.method private e()V
    .locals 2

    const-string v0, "telephone_et"

    invoke-virtual {p0, v0}, Lcom/duoyou/gamesdk/b/c/b;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/duoyou/gamesdk/b/c/b;->a:Landroid/widget/EditText;

    const-string v0, "verify_code_et"

    invoke-virtual {p0, v0}, Lcom/duoyou/gamesdk/b/c/b;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/duoyou/gamesdk/b/c/b;->b:Landroid/widget/EditText;

    const-string v0, "password_et"

    invoke-virtual {p0, v0}, Lcom/duoyou/gamesdk/b/c/b;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/duoyou/gamesdk/b/c/b;->c:Landroid/widget/EditText;

    const-string v0, "get_tel_verify_code_tv"

    invoke-virtual {p0, v0}, Lcom/duoyou/gamesdk/b/c/b;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/duoyou/gamesdk/b/c/b;->d:Landroid/widget/TextView;

    const-string v0, "time_count_tv"

    invoke-virtual {p0, v0}, Lcom/duoyou/gamesdk/b/c/b;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/duoyou/gamesdk/b/c/b;->e:Landroid/widget/TextView;

    const-string v0, "register_tv"

    invoke-virtual {p0, v0}, Lcom/duoyou/gamesdk/b/c/b;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/duoyou/gamesdk/b/c/b;->k:Landroid/widget/TextView;

    const-string v0, "send_msg_tips_tv"

    invoke-virtual {p0, v0}, Lcom/duoyou/gamesdk/b/c/b;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/duoyou/gamesdk/b/c/b;->l:Landroid/widget/TextView;

    const-string v0, "eye_iv"

    invoke-virtual {p0, v0}, Lcom/duoyou/gamesdk/b/c/b;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/duoyou/gamesdk/b/c/b;->m:Landroid/widget/ImageView;

    const-string v0, "clear_username_iv"

    invoke-virtual {p0, v0}, Lcom/duoyou/gamesdk/b/c/b;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/duoyou/gamesdk/b/c/b;->h:Landroid/widget/ImageView;

    const-string v0, "clear_verify_code_iv"

    invoke-virtual {p0, v0}, Lcom/duoyou/gamesdk/b/c/b;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/duoyou/gamesdk/b/c/b;->i:Landroid/widget/ImageView;

    const-string v0, "clear_password_iv"

    invoke-virtual {p0, v0}, Lcom/duoyou/gamesdk/b/c/b;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/duoyou/gamesdk/b/c/b;->j:Landroid/widget/ImageView;

    const-string v0, "account_iv"

    invoke-virtual {p0, v0}, Lcom/duoyou/gamesdk/b/c/b;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/duoyou/gamesdk/b/c/b;->n:Landroid/widget/ImageView;

    const-string v0, "account_bottom_line"

    invoke-virtual {p0, v0}, Lcom/duoyou/gamesdk/b/c/b;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/duoyou/gamesdk/b/c/b;->o:Landroid/view/View;

    const-string v0, "pwd_iv"

    invoke-virtual {p0, v0}, Lcom/duoyou/gamesdk/b/c/b;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/duoyou/gamesdk/b/c/b;->r:Landroid/widget/ImageView;

    const-string v0, "pwd_bottom_line"

    invoke-virtual {p0, v0}, Lcom/duoyou/gamesdk/b/c/b;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/duoyou/gamesdk/b/c/b;->s:Landroid/view/View;

    const-string v0, "verify_code_iv"

    invoke-virtual {p0, v0}, Lcom/duoyou/gamesdk/b/c/b;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/duoyou/gamesdk/b/c/b;->p:Landroid/widget/ImageView;

    const-string v0, "verify_code_bottom_line"

    invoke-virtual {p0, v0}, Lcom/duoyou/gamesdk/b/c/b;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/duoyou/gamesdk/b/c/b;->q:Landroid/view/View;

    const-string v0, "account_password_login_tv"

    invoke-virtual {p0, v0}, Lcom/duoyou/gamesdk/b/c/b;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/duoyou/gamesdk/b/c/b;->f:Landroid/widget/TextView;

    const-string v0, "quick_register_tv"

    invoke-virtual {p0, v0}, Lcom/duoyou/gamesdk/b/c/b;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/duoyou/gamesdk/b/c/b;->g:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/duoyou/gamesdk/b/c/b;->d:Landroid/widget/TextView;

    new-instance v1, Lcom/duoyou/gamesdk/b/c/b$1;

    invoke-direct {v1, p0}, Lcom/duoyou/gamesdk/b/c/b$1;-><init>(Lcom/duoyou/gamesdk/b/c/b;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/duoyou/gamesdk/b/c/b;->f:Landroid/widget/TextView;

    new-instance v1, Lcom/duoyou/gamesdk/b/c/b$10;

    invoke-direct {v1, p0}, Lcom/duoyou/gamesdk/b/c/b$10;-><init>(Lcom/duoyou/gamesdk/b/c/b;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/duoyou/gamesdk/b/c/b;->g:Landroid/widget/TextView;

    new-instance v1, Lcom/duoyou/gamesdk/b/c/b$11;

    invoke-direct {v1, p0}, Lcom/duoyou/gamesdk/b/c/b$11;-><init>(Lcom/duoyou/gamesdk/b/c/b;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/duoyou/gamesdk/b/c/b;->m:Landroid/widget/ImageView;

    new-instance v1, Lcom/duoyou/gamesdk/b/c/b$12;

    invoke-direct {v1, p0}, Lcom/duoyou/gamesdk/b/c/b$12;-><init>(Lcom/duoyou/gamesdk/b/c/b;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/duoyou/gamesdk/b/c/b;->k:Landroid/widget/TextView;

    new-instance v1, Lcom/duoyou/gamesdk/b/c/b$13;

    invoke-direct {v1, p0}, Lcom/duoyou/gamesdk/b/c/b$13;-><init>(Lcom/duoyou/gamesdk/b/c/b;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/duoyou/gamesdk/b/c/b;->d:Landroid/widget/TextView;

    new-instance v1, Lcom/duoyou/gamesdk/b/c/b$14;

    invoke-direct {v1, p0}, Lcom/duoyou/gamesdk/b/c/b$14;-><init>(Lcom/duoyou/gamesdk/b/c/b;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/duoyou/gamesdk/b/c/b;->h:Landroid/widget/ImageView;

    new-instance v1, Lcom/duoyou/gamesdk/b/c/b$15;

    invoke-direct {v1, p0}, Lcom/duoyou/gamesdk/b/c/b$15;-><init>(Lcom/duoyou/gamesdk/b/c/b;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/duoyou/gamesdk/b/c/b;->j:Landroid/widget/ImageView;

    new-instance v1, Lcom/duoyou/gamesdk/b/c/b$16;

    invoke-direct {v1, p0}, Lcom/duoyou/gamesdk/b/c/b$16;-><init>(Lcom/duoyou/gamesdk/b/c/b;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/duoyou/gamesdk/b/c/b;->i:Landroid/widget/ImageView;

    new-instance v1, Lcom/duoyou/gamesdk/b/c/b$17;

    invoke-direct {v1, p0}, Lcom/duoyou/gamesdk/b/c/b$17;-><init>(Lcom/duoyou/gamesdk/b/c/b;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/duoyou/gamesdk/b/c/b;->a:Landroid/widget/EditText;

    new-instance v1, Lcom/duoyou/gamesdk/b/c/b$2;

    invoke-direct {v1, p0}, Lcom/duoyou/gamesdk/b/c/b$2;-><init>(Lcom/duoyou/gamesdk/b/c/b;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v0, p0, Lcom/duoyou/gamesdk/b/c/b;->b:Landroid/widget/EditText;

    new-instance v1, Lcom/duoyou/gamesdk/b/c/b$3;

    invoke-direct {v1, p0}, Lcom/duoyou/gamesdk/b/c/b$3;-><init>(Lcom/duoyou/gamesdk/b/c/b;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v0, p0, Lcom/duoyou/gamesdk/b/c/b;->c:Landroid/widget/EditText;

    new-instance v1, Lcom/duoyou/gamesdk/b/c/b$4;

    invoke-direct {v1, p0}, Lcom/duoyou/gamesdk/b/c/b$4;-><init>(Lcom/duoyou/gamesdk/b/c/b;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v0, p0, Lcom/duoyou/gamesdk/b/c/b;->a:Landroid/widget/EditText;

    new-instance v1, Lcom/duoyou/gamesdk/b/c/b$5;

    invoke-direct {v1, p0}, Lcom/duoyou/gamesdk/b/c/b$5;-><init>(Lcom/duoyou/gamesdk/b/c/b;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/duoyou/gamesdk/b/c/b;->b:Landroid/widget/EditText;

    new-instance v1, Lcom/duoyou/gamesdk/b/c/b$6;

    invoke-direct {v1, p0}, Lcom/duoyou/gamesdk/b/c/b$6;-><init>(Lcom/duoyou/gamesdk/b/c/b;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/duoyou/gamesdk/b/c/b;->c:Landroid/widget/EditText;

    new-instance v1, Lcom/duoyou/gamesdk/b/c/b$7;

    invoke-direct {v1, p0}, Lcom/duoyou/gamesdk/b/c/b$7;-><init>(Lcom/duoyou/gamesdk/b/c/b;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method static synthetic f(Lcom/duoyou/gamesdk/b/c/b;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/duoyou/gamesdk/b/c/b;->m:Landroid/widget/ImageView;

    return-object v0
.end method

.method private f()V
    .locals 4

    iget-object v0, p0, Lcom/duoyou/gamesdk/b/c/b;->a:Landroid/widget/EditText;

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
    invoke-virtual {p0}, Lcom/duoyou/gamesdk/b/c/b;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/duoyou/gamesdk/c/c/k;->a(Landroid/content/Context;)V

    new-instance v1, Lcom/duoyou/gamesdk/b/a/a;

    invoke-direct {v1}, Lcom/duoyou/gamesdk/b/a/a;-><init>()V

    const-string v2, "findPasswd"

    new-instance v3, Lcom/duoyou/gamesdk/b/c/b$8;

    invoke-direct {v3, p0, v0}, Lcom/duoyou/gamesdk/b/c/b$8;-><init>(Lcom/duoyou/gamesdk/b/c/b;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v0, v3}, Lcom/duoyou/gamesdk/b/a/a;->f(Ljava/lang/String;Ljava/lang/String;Lcom/duoyou/gamesdk/c/http/e;)V

    goto :goto_0
.end method

.method private g()V
    .locals 5

    iget-object v0, p0, Lcom/duoyou/gamesdk/b/c/b;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/duoyou/gamesdk/b/c/b;->b:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/duoyou/gamesdk/b/c/b;->c:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v0, "\u8bf7\u8f93\u5165\u624b\u673a\u53f7\u7801\uff01"

    invoke-static {v0}, Lcom/duoyou/gamesdk/c/c/r;->a(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string v3, "1"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0xb

    if-eq v3, v4, :cond_2

    :cond_1
    const-string v0, "\u8bf7\u8f93\u5165\u6b63\u786e\u7684\u624b\u673a\u53f7\u7801\uff01"

    invoke-static {v0}, Lcom/duoyou/gamesdk/c/c/r;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v0, "\u8bf7\u8f93\u5165\u9a8c\u8bc1\u7801\uff01"

    invoke-static {v0}, Lcom/duoyou/gamesdk/c/c/r;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v0, "\u8bf7\u8f93\u5165\u5bc6\u7801\uff01"

    invoke-static {v0}, Lcom/duoyou/gamesdk/c/c/r;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/duoyou/gamesdk/b/c/b;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/duoyou/gamesdk/c/c/k;->a(Landroid/content/Context;)V

    new-instance v3, Lcom/duoyou/gamesdk/b/a/a;

    invoke-direct {v3}, Lcom/duoyou/gamesdk/b/a/a;-><init>()V

    new-instance v4, Lcom/duoyou/gamesdk/b/c/b$9;

    invoke-direct {v4, p0, v0, v2}, Lcom/duoyou/gamesdk/b/c/b$9;-><init>(Lcom/duoyou/gamesdk/b/c/b;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v0, v1, v2, v4}, Lcom/duoyou/gamesdk/b/a/a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/duoyou/gamesdk/c/http/e;)V

    goto :goto_0
.end method

.method static synthetic g(Lcom/duoyou/gamesdk/b/c/b;)V
    .locals 0

    invoke-direct {p0}, Lcom/duoyou/gamesdk/b/c/b;->g()V

    return-void
.end method

.method static synthetic h(Lcom/duoyou/gamesdk/b/c/b;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/duoyou/gamesdk/b/c/b;->a:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic i(Lcom/duoyou/gamesdk/b/c/b;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/duoyou/gamesdk/b/c/b;->b:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic j(Lcom/duoyou/gamesdk/b/c/b;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/duoyou/gamesdk/b/c/b;->h:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic k(Lcom/duoyou/gamesdk/b/c/b;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/duoyou/gamesdk/b/c/b;->n:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic l(Lcom/duoyou/gamesdk/b/c/b;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/duoyou/gamesdk/b/c/b;->o:Landroid/view/View;

    return-object v0
.end method

.method static synthetic m(Lcom/duoyou/gamesdk/b/c/b;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/duoyou/gamesdk/b/c/b;->i:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic n(Lcom/duoyou/gamesdk/b/c/b;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/duoyou/gamesdk/b/c/b;->p:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic o(Lcom/duoyou/gamesdk/b/c/b;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/duoyou/gamesdk/b/c/b;->q:Landroid/view/View;

    return-object v0
.end method

.method static synthetic p(Lcom/duoyou/gamesdk/b/c/b;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/duoyou/gamesdk/b/c/b;->j:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic q(Lcom/duoyou/gamesdk/b/c/b;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/duoyou/gamesdk/b/c/b;->r:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic r(Lcom/duoyou/gamesdk/b/c/b;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/duoyou/gamesdk/b/c/b;->s:Landroid/view/View;

    return-object v0
.end method

.method static synthetic s(Lcom/duoyou/gamesdk/b/c/b;)Lcom/duoyou/gamesdk/b/c/b$b;
    .locals 1

    iget-object v0, p0, Lcom/duoyou/gamesdk/b/c/b;->t:Lcom/duoyou/gamesdk/b/c/b$b;

    return-object v0
.end method

.method static synthetic t(Lcom/duoyou/gamesdk/b/c/b;)Lcom/duoyou/gamesdk/b/c/b$a;
    .locals 1

    iget-object v0, p0, Lcom/duoyou/gamesdk/b/c/b;->u:Lcom/duoyou/gamesdk/b/c/b$a;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/duoyou/gamesdk/b/c/b$a;)V
    .locals 0

    iput-object p1, p0, Lcom/duoyou/gamesdk/b/c/b;->u:Lcom/duoyou/gamesdk/b/c/b$a;

    return-void
.end method

.method public dismiss()V
    .locals 0

    invoke-super {p0}, Lcom/duoyou/gamesdk/c/base/a;->dismiss()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    invoke-super {p0, p1}, Lcom/duoyou/gamesdk/c/base/a;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/duoyou/gamesdk/b/c/b;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "dy_login_forget_pwd_layout"

    invoke-static {v0, v1}, Lcom/duoyou/gamesdk/c/c/p;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/duoyou/gamesdk/b/c/b;->setContentView(I)V

    new-instance v0, Lcom/duoyou/gamesdk/b/c/b$b;

    const-wide/32 v2, 0x15f90

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/duoyou/gamesdk/b/c/b$b;-><init>(Lcom/duoyou/gamesdk/b/c/b;JJ)V

    iput-object v0, p0, Lcom/duoyou/gamesdk/b/c/b;->t:Lcom/duoyou/gamesdk/b/c/b$b;

    invoke-direct {p0}, Lcom/duoyou/gamesdk/b/c/b;->e()V

    return-void
.end method
