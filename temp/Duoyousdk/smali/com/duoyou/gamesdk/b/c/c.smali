.class public Lcom/duoyou/gamesdk/b/c/c;
.super Lcom/duoyou/gamesdk/c/base/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/duoyou/gamesdk/b/c/c$a;
    }
.end annotation


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/EditText;

.field private c:Landroid/widget/EditText;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/ImageView;

.field private h:Landroid/widget/ImageView;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/view/View;

.field private k:Landroid/widget/TextView;

.field private l:Landroid/widget/CheckBox;

.field private m:Landroid/widget/ImageView;

.field private n:Landroid/view/View;

.field private o:Landroid/widget/ImageView;

.field private p:Landroid/view/View;

.field private q:Landroid/widget/ImageView;

.field private r:Landroid/view/View;

.field private s:Landroid/widget/ListView;

.field private t:Lcom/duoyou/gamesdk/b/c/c$a;

.field private u:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/duoyou/gamesdk/b/b/b;",
            ">;"
        }
    .end annotation
.end field

.field private v:Lcom/duoyou/gamesdk/b/c/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/duoyou/gamesdk/c/base/a;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/duoyou/gamesdk/b/c/c;->u:Ljava/util/List;

    return-void
.end method

.method static synthetic a(Lcom/duoyou/gamesdk/b/c/c;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/duoyou/gamesdk/b/c/c;->d:Landroid/widget/TextView;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 1

    new-instance v0, Lcom/duoyou/gamesdk/b/c/c;

    invoke-direct {v0, p0}, Lcom/duoyou/gamesdk/b/c/c;-><init>(Landroid/content/Context;)V

    invoke-static {p0, v0}, Lcom/duoyou/gamesdk/c/c/g;->b(Landroid/content/Context;Landroid/app/Dialog;)V

    return-void
.end method

.method static synthetic a(Lcom/duoyou/gamesdk/b/c/c;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/duoyou/gamesdk/b/c/c;->b(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/duoyou/gamesdk/b/c/c;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/duoyou/gamesdk/b/c/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    invoke-virtual {p0}, Lcom/duoyou/gamesdk/b/c/c;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/duoyou/gamesdk/c/c/k;->a(Landroid/content/Context;)V

    new-instance v0, Lcom/duoyou/gamesdk/b/a/a;

    invoke-direct {v0}, Lcom/duoyou/gamesdk/b/a/a;-><init>()V

    invoke-static {}, Lcom/duoyou/gamesdk/c/c/c;->h()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/duoyou/gamesdk/b/c/e;

    invoke-virtual {p0}, Lcom/duoyou/gamesdk/b/c/c;->a()Landroid/content/Context;

    move-result-object v3

    const-string v4, "3"

    invoke-direct {v2, v3, v1, v4, p0}, Lcom/duoyou/gamesdk/b/c/e;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/app/Dialog;)V

    invoke-virtual {v0, p1, p2, v2}, Lcom/duoyou/gamesdk/b/a/a;->a(Ljava/lang/String;Ljava/lang/String;Lcom/duoyou/gamesdk/c/http/e;)V

    return-void
.end method

.method static synthetic b(Lcom/duoyou/gamesdk/b/c/c;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/duoyou/gamesdk/b/c/c;->e:Landroid/widget/TextView;

    return-object v0
.end method

.method private b(Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p0}, Lcom/duoyou/gamesdk/b/c/c;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/duoyou/gamesdk/c/c/k;->a(Landroid/content/Context;)V

    new-instance v0, Lcom/duoyou/gamesdk/b/a/a;

    invoke-direct {v0}, Lcom/duoyou/gamesdk/b/a/a;-><init>()V

    const-string v1, "login"

    new-instance v2, Lcom/duoyou/gamesdk/b/c/c$7;

    invoke-direct {v2, p0}, Lcom/duoyou/gamesdk/b/c/c$7;-><init>(Lcom/duoyou/gamesdk/b/c/c;)V

    invoke-virtual {v0, v1, p1, v2}, Lcom/duoyou/gamesdk/b/a/a;->f(Ljava/lang/String;Ljava/lang/String;Lcom/duoyou/gamesdk/c/http/e;)V

    return-void
.end method

.method static synthetic c(Lcom/duoyou/gamesdk/b/c/c;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/duoyou/gamesdk/b/c/c;->b:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic d(Lcom/duoyou/gamesdk/b/c/c;)V
    .locals 0

    invoke-direct {p0}, Lcom/duoyou/gamesdk/b/c/c;->f()V

    return-void
.end method

.method static synthetic e(Lcom/duoyou/gamesdk/b/c/c;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/duoyou/gamesdk/b/c/c;->c:Landroid/widget/EditText;

    return-object v0
.end method

.method private e()V
    .locals 6

    const-string v0, "quick_register_tv"

    invoke-virtual {p0, v0}, Lcom/duoyou/gamesdk/b/c/c;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/duoyou/gamesdk/b/c/c;->a:Landroid/widget/TextView;

    const-string v0, "telephone_et"

    invoke-virtual {p0, v0}, Lcom/duoyou/gamesdk/b/c/c;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/duoyou/gamesdk/b/c/c;->b:Landroid/widget/EditText;

    const-string v0, "verify_code_et"

    invoke-virtual {p0, v0}, Lcom/duoyou/gamesdk/b/c/c;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/duoyou/gamesdk/b/c/c;->c:Landroid/widget/EditText;

    const-string v0, "time_count_tv"

    invoke-virtual {p0, v0}, Lcom/duoyou/gamesdk/b/c/c;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/duoyou/gamesdk/b/c/c;->e:Landroid/widget/TextView;

    const-string v0, "get_tel_verify_code_tv"

    invoke-virtual {p0, v0}, Lcom/duoyou/gamesdk/b/c/c;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/duoyou/gamesdk/b/c/c;->d:Landroid/widget/TextView;

    const-string v0, "play_game_tv"

    invoke-virtual {p0, v0}, Lcom/duoyou/gamesdk/b/c/c;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/duoyou/gamesdk/b/c/c;->f:Landroid/widget/TextView;

    const-string v0, "password_login_tv"

    invoke-virtual {p0, v0}, Lcom/duoyou/gamesdk/b/c/c;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/duoyou/gamesdk/b/c/c;->i:Landroid/widget/TextView;

    const-string v0, "clear_telephone_iv"

    invoke-virtual {p0, v0}, Lcom/duoyou/gamesdk/b/c/c;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/duoyou/gamesdk/b/c/c;->g:Landroid/widget/ImageView;

    const-string v0, "clear_verify_code_iv"

    invoke-virtual {p0, v0}, Lcom/duoyou/gamesdk/b/c/c;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/duoyou/gamesdk/b/c/c;->h:Landroid/widget/ImageView;

    const-string v0, "quick_play_game_layout"

    invoke-virtual {p0, v0}, Lcom/duoyou/gamesdk/b/c/c;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/duoyou/gamesdk/b/c/c;->j:Landroid/view/View;

    const-string v0, "account_iv"

    invoke-virtual {p0, v0}, Lcom/duoyou/gamesdk/b/c/c;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/duoyou/gamesdk/b/c/c;->o:Landroid/widget/ImageView;

    const-string v0, "account_bottom_line"

    invoke-virtual {p0, v0}, Lcom/duoyou/gamesdk/b/c/c;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/duoyou/gamesdk/b/c/c;->p:Landroid/view/View;

    const-string v0, "pwd_iv"

    invoke-virtual {p0, v0}, Lcom/duoyou/gamesdk/b/c/c;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/duoyou/gamesdk/b/c/c;->q:Landroid/widget/ImageView;

    const-string v0, "pwd_bottom_line"

    invoke-virtual {p0, v0}, Lcom/duoyou/gamesdk/b/c/c;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/duoyou/gamesdk/b/c/c;->r:Landroid/view/View;

    const-string v0, "protocal_tv"

    invoke-virtual {p0, v0}, Lcom/duoyou/gamesdk/b/c/c;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/duoyou/gamesdk/b/c/c;->k:Landroid/widget/TextView;

    const-string v0, "agreen_protrocal_ck"

    invoke-virtual {p0, v0}, Lcom/duoyou/gamesdk/b/c/c;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/duoyou/gamesdk/b/c/c;->l:Landroid/widget/CheckBox;

    const-string v0, "arrow_down_iv"

    invoke-virtual {p0, v0}, Lcom/duoyou/gamesdk/b/c/c;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/duoyou/gamesdk/b/c/c;->m:Landroid/widget/ImageView;

    const-string v0, "vertical_line"

    invoke-virtual {p0, v0}, Lcom/duoyou/gamesdk/b/c/c;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/duoyou/gamesdk/b/c/c;->n:Landroid/view/View;

    const-string v0, "list_view"

    invoke-virtual {p0, v0}, Lcom/duoyou/gamesdk/b/c/c;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/duoyou/gamesdk/b/c/c;->s:Landroid/widget/ListView;

    new-instance v0, Lcom/duoyou/gamesdk/b/c/c$a;

    const-wide/32 v2, 0x15f90

    const-wide/16 v4, 0x3e8

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/duoyou/gamesdk/b/c/c$a;-><init>(Lcom/duoyou/gamesdk/b/c/c;JJ)V

    iput-object v0, p0, Lcom/duoyou/gamesdk/b/c/c;->t:Lcom/duoyou/gamesdk/b/c/c$a;

    iget-object v0, p0, Lcom/duoyou/gamesdk/b/c/c;->d:Landroid/widget/TextView;

    new-instance v1, Lcom/duoyou/gamesdk/b/c/c$1;

    invoke-direct {v1, p0}, Lcom/duoyou/gamesdk/b/c/c$1;-><init>(Lcom/duoyou/gamesdk/b/c/c;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/duoyou/gamesdk/b/c/c;->a:Landroid/widget/TextView;

    new-instance v1, Lcom/duoyou/gamesdk/b/c/c$10;

    invoke-direct {v1, p0}, Lcom/duoyou/gamesdk/b/c/c$10;-><init>(Lcom/duoyou/gamesdk/b/c/c;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/duoyou/gamesdk/b/c/c;->f:Landroid/widget/TextView;

    new-instance v1, Lcom/duoyou/gamesdk/b/c/c$11;

    invoke-direct {v1, p0}, Lcom/duoyou/gamesdk/b/c/c$11;-><init>(Lcom/duoyou/gamesdk/b/c/c;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/duoyou/gamesdk/b/c/c;->i:Landroid/widget/TextView;

    new-instance v1, Lcom/duoyou/gamesdk/b/c/c$12;

    invoke-direct {v1, p0}, Lcom/duoyou/gamesdk/b/c/c$12;-><init>(Lcom/duoyou/gamesdk/b/c/c;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/duoyou/gamesdk/b/c/c;->h:Landroid/widget/ImageView;

    new-instance v1, Lcom/duoyou/gamesdk/b/c/c$13;

    invoke-direct {v1, p0}, Lcom/duoyou/gamesdk/b/c/c$13;-><init>(Lcom/duoyou/gamesdk/b/c/c;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/duoyou/gamesdk/b/c/c;->g:Landroid/widget/ImageView;

    new-instance v1, Lcom/duoyou/gamesdk/b/c/c$14;

    invoke-direct {v1, p0}, Lcom/duoyou/gamesdk/b/c/c$14;-><init>(Lcom/duoyou/gamesdk/b/c/c;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/duoyou/gamesdk/b/c/c;->k:Landroid/widget/TextView;

    new-instance v1, Lcom/duoyou/gamesdk/b/c/c$15;

    invoke-direct {v1, p0}, Lcom/duoyou/gamesdk/b/c/c$15;-><init>(Lcom/duoyou/gamesdk/b/c/c;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/duoyou/gamesdk/b/c/c;->b:Landroid/widget/EditText;

    new-instance v1, Lcom/duoyou/gamesdk/b/c/c$16;

    invoke-direct {v1, p0}, Lcom/duoyou/gamesdk/b/c/c$16;-><init>(Lcom/duoyou/gamesdk/b/c/c;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v0, p0, Lcom/duoyou/gamesdk/b/c/c;->c:Landroid/widget/EditText;

    new-instance v1, Lcom/duoyou/gamesdk/b/c/c$17;

    invoke-direct {v1, p0}, Lcom/duoyou/gamesdk/b/c/c$17;-><init>(Lcom/duoyou/gamesdk/b/c/c;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v0, p0, Lcom/duoyou/gamesdk/b/c/c;->b:Landroid/widget/EditText;

    new-instance v1, Lcom/duoyou/gamesdk/b/c/c$2;

    invoke-direct {v1, p0}, Lcom/duoyou/gamesdk/b/c/c$2;-><init>(Lcom/duoyou/gamesdk/b/c/c;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/duoyou/gamesdk/b/c/c;->c:Landroid/widget/EditText;

    new-instance v1, Lcom/duoyou/gamesdk/b/c/c$3;

    invoke-direct {v1, p0}, Lcom/duoyou/gamesdk/b/c/c$3;-><init>(Lcom/duoyou/gamesdk/b/c/c;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/duoyou/gamesdk/b/c/c;->j:Landroid/view/View;

    new-instance v1, Lcom/duoyou/gamesdk/b/c/c$4;

    invoke-direct {v1, p0}, Lcom/duoyou/gamesdk/b/c/c$4;-><init>(Lcom/duoyou/gamesdk/b/c/c;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/duoyou/gamesdk/b/c/c;->m:Landroid/widget/ImageView;

    new-instance v1, Lcom/duoyou/gamesdk/b/c/c$5;

    invoke-direct {v1, p0}, Lcom/duoyou/gamesdk/b/c/c$5;-><init>(Lcom/duoyou/gamesdk/b/c/c;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/duoyou/gamesdk/b/c/c$6;

    invoke-direct {v0, p0}, Lcom/duoyou/gamesdk/b/c/c$6;-><init>(Lcom/duoyou/gamesdk/b/c/c;)V

    invoke-virtual {p0, v0}, Lcom/duoyou/gamesdk/b/c/c;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    return-void
.end method

.method static synthetic f(Lcom/duoyou/gamesdk/b/c/c;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/duoyou/gamesdk/b/c/c;->g:Landroid/widget/ImageView;

    return-object v0
.end method

.method private f()V
    .locals 7

    iget-object v0, p0, Lcom/duoyou/gamesdk/b/c/c;->b:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "\u8bf7\u8f93\u5165\u624b\u673a\u53f7\u7801\uff01"

    invoke-static {v0}, Lcom/duoyou/gamesdk/c/c/r;->a(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "1"

    invoke-virtual {v5, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xb

    if-eq v0, v1, :cond_2

    :cond_1
    const-string v0, "\u8bf7\u8f93\u5165\u6b63\u786e\u7684\u624b\u673a\u53f7\u7801\uff01"

    invoke-static {v0}, Lcom/duoyou/gamesdk/c/c/r;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/duoyou/gamesdk/b/c/c;->c:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "\u8bf7\u8f93\u5165\u77ed\u4fe1\u9a8c\u8bc1\u7801\uff01"

    invoke-static {v0}, Lcom/duoyou/gamesdk/c/c/r;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/duoyou/gamesdk/b/c/c;->l:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/duoyou/gamesdk/b/c/c;->a()Landroid/content/Context;

    move-result-object v0

    const-string v1, "\u60a8\u5c1a\u672a\u540c\u610f\u591a\u6e38\u5e73\u53f0\u7528\u6237\u670d\u52a1\u534f\u8bae"

    const-string v2, "\u786e\u5b9a"

    const-string v3, "\u53d6\u6d88"

    new-instance v4, Lcom/duoyou/gamesdk/b/c/c$8;

    invoke-direct {v4, p0, v5, v6}, Lcom/duoyou/gamesdk/b/c/c$8;-><init>(Lcom/duoyou/gamesdk/b/c/c;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/duoyou/gamesdk/c/c/g;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)Landroid/app/Dialog;

    goto :goto_0

    :cond_4
    invoke-direct {p0, v5, v6}, Lcom/duoyou/gamesdk/b/c/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic g(Lcom/duoyou/gamesdk/b/c/c;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/duoyou/gamesdk/b/c/c;->o:Landroid/widget/ImageView;

    return-object v0
.end method

.method private g()V
    .locals 4

    const/16 v2, 0x8

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/duoyou/gamesdk/b/c/c;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/duoyou/gamesdk/c/b/a;->a(Landroid/content/Context;)Lcom/duoyou/gamesdk/c/b/a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/duoyou/gamesdk/c/b/a;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoyou/gamesdk/b/b/b;

    iget-object v2, p0, Lcom/duoyou/gamesdk/b/c/c;->b:Landroid/widget/EditText;

    invoke-virtual {v0}, Lcom/duoyou/gamesdk/b/b/b;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/duoyou/gamesdk/b/c/c;->m:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/duoyou/gamesdk/b/c/c;->n:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/duoyou/gamesdk/b/c/c;->u:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/duoyou/gamesdk/b/c/c;->u:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/duoyou/gamesdk/b/c/c;->m:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/duoyou/gamesdk/b/c/c;->n:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic h(Lcom/duoyou/gamesdk/b/c/c;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/duoyou/gamesdk/b/c/c;->p:Landroid/view/View;

    return-object v0
.end method

.method private h()V
    .locals 4

    iget-object v0, p0, Lcom/duoyou/gamesdk/b/c/c;->v:Lcom/duoyou/gamesdk/b/c/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/duoyou/gamesdk/b/c/a;

    invoke-virtual {p0}, Lcom/duoyou/gamesdk/b/c/c;->a()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/duoyou/gamesdk/b/c/c;->u:Ljava/util/List;

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/duoyou/gamesdk/b/c/a;-><init>(Landroid/content/Context;Ljava/util/List;I)V

    iput-object v0, p0, Lcom/duoyou/gamesdk/b/c/c;->v:Lcom/duoyou/gamesdk/b/c/a;

    iget-object v0, p0, Lcom/duoyou/gamesdk/b/c/c;->s:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/duoyou/gamesdk/b/c/c;->v:Lcom/duoyou/gamesdk/b/c/a;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/duoyou/gamesdk/b/c/c;->v:Lcom/duoyou/gamesdk/b/c/a;

    new-instance v1, Lcom/duoyou/gamesdk/b/c/c$9;

    invoke-direct {v1, p0}, Lcom/duoyou/gamesdk/b/c/c$9;-><init>(Lcom/duoyou/gamesdk/b/c/c;)V

    invoke-virtual {v0, v1}, Lcom/duoyou/gamesdk/b/c/a;->a(Lcom/duoyou/gamesdk/b/c/a$a;)V

    :goto_0
    iget-object v0, p0, Lcom/duoyou/gamesdk/b/c/c;->v:Lcom/duoyou/gamesdk/b/c/a;

    iget-object v1, p0, Lcom/duoyou/gamesdk/b/c/c;->b:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/duoyou/gamesdk/b/c/a;->a(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/duoyou/gamesdk/b/c/c;->v:Lcom/duoyou/gamesdk/b/c/a;

    invoke-virtual {v0}, Lcom/duoyou/gamesdk/b/c/a;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method static synthetic i(Lcom/duoyou/gamesdk/b/c/c;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/duoyou/gamesdk/b/c/c;->h:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic j(Lcom/duoyou/gamesdk/b/c/c;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/duoyou/gamesdk/b/c/c;->q:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic k(Lcom/duoyou/gamesdk/b/c/c;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/duoyou/gamesdk/b/c/c;->r:Landroid/view/View;

    return-object v0
.end method

.method static synthetic l(Lcom/duoyou/gamesdk/b/c/c;)Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lcom/duoyou/gamesdk/b/c/c;->s:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic m(Lcom/duoyou/gamesdk/b/c/c;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/duoyou/gamesdk/b/c/c;->m:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic n(Lcom/duoyou/gamesdk/b/c/c;)V
    .locals 0

    invoke-direct {p0}, Lcom/duoyou/gamesdk/b/c/c;->h()V

    return-void
.end method

.method static synthetic o(Lcom/duoyou/gamesdk/b/c/c;)Lcom/duoyou/gamesdk/b/c/a;
    .locals 1

    iget-object v0, p0, Lcom/duoyou/gamesdk/b/c/c;->v:Lcom/duoyou/gamesdk/b/c/a;

    return-object v0
.end method

.method static synthetic p(Lcom/duoyou/gamesdk/b/c/c;)Lcom/duoyou/gamesdk/b/c/c$a;
    .locals 1

    iget-object v0, p0, Lcom/duoyou/gamesdk/b/c/c;->t:Lcom/duoyou/gamesdk/b/c/c$a;

    return-object v0
.end method

.method static synthetic q(Lcom/duoyou/gamesdk/b/c/c;)Landroid/widget/CheckBox;
    .locals 1

    iget-object v0, p0, Lcom/duoyou/gamesdk/b/c/c;->l:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic r(Lcom/duoyou/gamesdk/b/c/c;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/duoyou/gamesdk/b/c/c;->u:Ljava/util/List;

    return-object v0
.end method

.method static synthetic s(Lcom/duoyou/gamesdk/b/c/c;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/duoyou/gamesdk/b/c/c;->n:Landroid/view/View;

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

    invoke-virtual {p0}, Lcom/duoyou/gamesdk/b/c/c;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "dy_login_with_telephone_activity"

    invoke-static {v0, v1}, Lcom/duoyou/gamesdk/c/c/p;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/duoyou/gamesdk/b/c/c;->setContentView(I)V

    invoke-direct {p0}, Lcom/duoyou/gamesdk/b/c/c;->e()V

    invoke-direct {p0}, Lcom/duoyou/gamesdk/b/c/c;->g()V

    return-void
.end method
