.class public Lcom/duoyou/gamesdk/b/c/d;
.super Lcom/duoyou/gamesdk/c/base/a;


# instance fields
.field private a:Landroid/widget/EditText;

.field private b:Landroid/widget/EditText;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/ImageView;

.field private g:Landroid/widget/ImageView;

.field private h:Landroid/widget/ListView;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/ImageView;

.field private k:Landroid/view/View;

.field private l:Landroid/widget/ImageView;

.field private m:Landroid/view/View;

.field private n:Landroid/widget/ImageView;

.field private o:Landroid/view/View;

.field private p:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/duoyou/gamesdk/b/b/b;",
            ">;"
        }
    .end annotation
.end field

.field private q:Lcom/duoyou/gamesdk/b/c/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/duoyou/gamesdk/c/base/a;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/duoyou/gamesdk/b/c/d;->p:Ljava/util/List;

    return-void
.end method

.method static synthetic a(Lcom/duoyou/gamesdk/b/c/d;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/duoyou/gamesdk/b/c/d;->a:Landroid/widget/EditText;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 1

    new-instance v0, Lcom/duoyou/gamesdk/b/c/d;

    invoke-direct {v0, p0}, Lcom/duoyou/gamesdk/b/c/d;-><init>(Landroid/content/Context;)V

    invoke-static {p0, v0}, Lcom/duoyou/gamesdk/c/c/g;->b(Landroid/content/Context;Landroid/app/Dialog;)V

    return-void
.end method

.method static synthetic a(Lcom/duoyou/gamesdk/b/c/d;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/duoyou/gamesdk/b/c/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    invoke-virtual {p0}, Lcom/duoyou/gamesdk/b/c/d;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/duoyou/gamesdk/c/c/k;->a(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v0, Lcom/duoyou/gamesdk/b/a/a;

    invoke-direct {v0}, Lcom/duoyou/gamesdk/b/a/a;-><init>()V

    new-instance v1, Lcom/duoyou/gamesdk/b/c/e;

    invoke-virtual {p0}, Lcom/duoyou/gamesdk/b/c/d;->a()Landroid/content/Context;

    move-result-object v2

    const-string v3, "2"

    invoke-direct {v1, v2, p2, v3, p0}, Lcom/duoyou/gamesdk/b/c/e;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/app/Dialog;)V

    invoke-virtual {v0, p1, p2, v1}, Lcom/duoyou/gamesdk/b/a/a;->b(Ljava/lang/String;Ljava/lang/String;Lcom/duoyou/gamesdk/c/http/e;)Lcom/duoyou/gamesdk/c/http/xutils/common/Callback$b;

    return-void
.end method

.method static synthetic b(Lcom/duoyou/gamesdk/b/c/d;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/duoyou/gamesdk/b/c/d;->b:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic c(Lcom/duoyou/gamesdk/b/c/d;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/duoyou/gamesdk/b/c/d;->f:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic d(Lcom/duoyou/gamesdk/b/c/d;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/duoyou/gamesdk/b/c/d;->l:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic e(Lcom/duoyou/gamesdk/b/c/d;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/duoyou/gamesdk/b/c/d;->m:Landroid/view/View;

    return-object v0
.end method

.method private e()V
    .locals 2

    const-string v0, "quick_register_tv"

    invoke-virtual {p0, v0}, Lcom/duoyou/gamesdk/b/c/d;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/duoyou/gamesdk/b/c/d;->i:Landroid/widget/TextView;

    const-string v0, "username_et"

    invoke-virtual {p0, v0}, Lcom/duoyou/gamesdk/b/c/d;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/duoyou/gamesdk/b/c/d;->a:Landroid/widget/EditText;

    const-string v0, "password_et"

    invoke-virtual {p0, v0}, Lcom/duoyou/gamesdk/b/c/d;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/duoyou/gamesdk/b/c/d;->b:Landroid/widget/EditText;

    const-string v0, "play_game_tv"

    invoke-virtual {p0, v0}, Lcom/duoyou/gamesdk/b/c/d;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/duoyou/gamesdk/b/c/d;->c:Landroid/widget/TextView;

    const-string v0, "phone_login_tv"

    invoke-virtual {p0, v0}, Lcom/duoyou/gamesdk/b/c/d;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/duoyou/gamesdk/b/c/d;->d:Landroid/widget/TextView;

    const-string v0, "clear_username_iv"

    invoke-virtual {p0, v0}, Lcom/duoyou/gamesdk/b/c/d;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/duoyou/gamesdk/b/c/d;->f:Landroid/widget/ImageView;

    const-string v0, "clear_password_iv"

    invoke-virtual {p0, v0}, Lcom/duoyou/gamesdk/b/c/d;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/duoyou/gamesdk/b/c/d;->g:Landroid/widget/ImageView;

    const-string v0, "list_view"

    invoke-virtual {p0, v0}, Lcom/duoyou/gamesdk/b/c/d;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/duoyou/gamesdk/b/c/d;->h:Landroid/widget/ListView;

    const-string v0, "forget_password_tv"

    invoke-virtual {p0, v0}, Lcom/duoyou/gamesdk/b/c/d;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/duoyou/gamesdk/b/c/d;->e:Landroid/widget/TextView;

    const-string v0, "account_iv"

    invoke-virtual {p0, v0}, Lcom/duoyou/gamesdk/b/c/d;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/duoyou/gamesdk/b/c/d;->l:Landroid/widget/ImageView;

    const-string v0, "account_bottom_line"

    invoke-virtual {p0, v0}, Lcom/duoyou/gamesdk/b/c/d;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/duoyou/gamesdk/b/c/d;->m:Landroid/view/View;

    const-string v0, "pwd_iv"

    invoke-virtual {p0, v0}, Lcom/duoyou/gamesdk/b/c/d;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/duoyou/gamesdk/b/c/d;->n:Landroid/widget/ImageView;

    const-string v0, "pwd_bottom_line"

    invoke-virtual {p0, v0}, Lcom/duoyou/gamesdk/b/c/d;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/duoyou/gamesdk/b/c/d;->o:Landroid/view/View;

    const-string v0, "arrow_down_iv"

    invoke-virtual {p0, v0}, Lcom/duoyou/gamesdk/b/c/d;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/duoyou/gamesdk/b/c/d;->j:Landroid/widget/ImageView;

    const-string v0, "vertical_line"

    invoke-virtual {p0, v0}, Lcom/duoyou/gamesdk/b/c/d;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/duoyou/gamesdk/b/c/d;->k:Landroid/view/View;

    iget-object v0, p0, Lcom/duoyou/gamesdk/b/c/d;->c:Landroid/widget/TextView;

    new-instance v1, Lcom/duoyou/gamesdk/b/c/d$1;

    invoke-direct {v1, p0}, Lcom/duoyou/gamesdk/b/c/d$1;-><init>(Lcom/duoyou/gamesdk/b/c/d;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/duoyou/gamesdk/b/c/d;->d:Landroid/widget/TextView;

    new-instance v1, Lcom/duoyou/gamesdk/b/c/d$6;

    invoke-direct {v1, p0}, Lcom/duoyou/gamesdk/b/c/d$6;-><init>(Lcom/duoyou/gamesdk/b/c/d;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/duoyou/gamesdk/b/c/d;->f:Landroid/widget/ImageView;

    new-instance v1, Lcom/duoyou/gamesdk/b/c/d$7;

    invoke-direct {v1, p0}, Lcom/duoyou/gamesdk/b/c/d$7;-><init>(Lcom/duoyou/gamesdk/b/c/d;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/duoyou/gamesdk/b/c/d;->g:Landroid/widget/ImageView;

    new-instance v1, Lcom/duoyou/gamesdk/b/c/d$8;

    invoke-direct {v1, p0}, Lcom/duoyou/gamesdk/b/c/d$8;-><init>(Lcom/duoyou/gamesdk/b/c/d;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/duoyou/gamesdk/b/c/d;->a:Landroid/widget/EditText;

    new-instance v1, Lcom/duoyou/gamesdk/b/c/d$9;

    invoke-direct {v1, p0}, Lcom/duoyou/gamesdk/b/c/d$9;-><init>(Lcom/duoyou/gamesdk/b/c/d;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v0, p0, Lcom/duoyou/gamesdk/b/c/d;->b:Landroid/widget/EditText;

    new-instance v1, Lcom/duoyou/gamesdk/b/c/d$10;

    invoke-direct {v1, p0}, Lcom/duoyou/gamesdk/b/c/d$10;-><init>(Lcom/duoyou/gamesdk/b/c/d;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v0, p0, Lcom/duoyou/gamesdk/b/c/d;->i:Landroid/widget/TextView;

    new-instance v1, Lcom/duoyou/gamesdk/b/c/d$11;

    invoke-direct {v1, p0}, Lcom/duoyou/gamesdk/b/c/d$11;-><init>(Lcom/duoyou/gamesdk/b/c/d;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/duoyou/gamesdk/b/c/d;->a:Landroid/widget/EditText;

    new-instance v1, Lcom/duoyou/gamesdk/b/c/d$12;

    invoke-direct {v1, p0}, Lcom/duoyou/gamesdk/b/c/d$12;-><init>(Lcom/duoyou/gamesdk/b/c/d;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/duoyou/gamesdk/b/c/d;->b:Landroid/widget/EditText;

    new-instance v1, Lcom/duoyou/gamesdk/b/c/d$13;

    invoke-direct {v1, p0}, Lcom/duoyou/gamesdk/b/c/d$13;-><init>(Lcom/duoyou/gamesdk/b/c/d;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/duoyou/gamesdk/b/c/d;->j:Landroid/widget/ImageView;

    new-instance v1, Lcom/duoyou/gamesdk/b/c/d$2;

    invoke-direct {v1, p0}, Lcom/duoyou/gamesdk/b/c/d$2;-><init>(Lcom/duoyou/gamesdk/b/c/d;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/duoyou/gamesdk/b/c/d;->e:Landroid/widget/TextView;

    new-instance v1, Lcom/duoyou/gamesdk/b/c/d$3;

    invoke-direct {v1, p0}, Lcom/duoyou/gamesdk/b/c/d$3;-><init>(Lcom/duoyou/gamesdk/b/c/d;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/duoyou/gamesdk/b/c/d$4;

    invoke-direct {v0, p0}, Lcom/duoyou/gamesdk/b/c/d$4;-><init>(Lcom/duoyou/gamesdk/b/c/d;)V

    invoke-virtual {p0, v0}, Lcom/duoyou/gamesdk/b/c/d;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    return-void
.end method

.method static synthetic f(Lcom/duoyou/gamesdk/b/c/d;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/duoyou/gamesdk/b/c/d;->g:Landroid/widget/ImageView;

    return-object v0
.end method

.method private f()V
    .locals 5

    const/16 v2, 0x8

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/duoyou/gamesdk/b/c/d;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/duoyou/gamesdk/c/b/a;->a(Landroid/content/Context;)Lcom/duoyou/gamesdk/c/b/a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/duoyou/gamesdk/c/b/a;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoyou/gamesdk/b/b/b;

    iget-object v2, p0, Lcom/duoyou/gamesdk/b/c/d;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Lcom/duoyou/gamesdk/b/b/b;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/duoyou/gamesdk/b/c/d;->b:Landroid/widget/EditText;

    invoke-virtual {v0}, Lcom/duoyou/gamesdk/b/b/b;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/duoyou/gamesdk/b/c/d;->a:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/duoyou/gamesdk/b/c/d;->a:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setSelection(I)V

    iget-object v0, p0, Lcom/duoyou/gamesdk/b/c/d;->b:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/duoyou/gamesdk/b/c/d;->b:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setSelection(I)V

    iget-object v0, p0, Lcom/duoyou/gamesdk/b/c/d;->j:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/duoyou/gamesdk/b/c/d;->k:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/duoyou/gamesdk/b/c/d;->p:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/duoyou/gamesdk/b/c/d;->p:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/duoyou/gamesdk/b/c/d;->j:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/duoyou/gamesdk/b/c/d;->k:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic g(Lcom/duoyou/gamesdk/b/c/d;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/duoyou/gamesdk/b/c/d;->n:Landroid/widget/ImageView;

    return-object v0
.end method

.method private g()V
    .locals 4

    iget-object v0, p0, Lcom/duoyou/gamesdk/b/c/d;->q:Lcom/duoyou/gamesdk/b/c/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/duoyou/gamesdk/b/c/a;

    invoke-virtual {p0}, Lcom/duoyou/gamesdk/b/c/d;->a()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/duoyou/gamesdk/b/c/d;->p:Ljava/util/List;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/duoyou/gamesdk/b/c/a;-><init>(Landroid/content/Context;Ljava/util/List;I)V

    iput-object v0, p0, Lcom/duoyou/gamesdk/b/c/d;->q:Lcom/duoyou/gamesdk/b/c/a;

    iget-object v0, p0, Lcom/duoyou/gamesdk/b/c/d;->h:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/duoyou/gamesdk/b/c/d;->q:Lcom/duoyou/gamesdk/b/c/a;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/duoyou/gamesdk/b/c/d;->q:Lcom/duoyou/gamesdk/b/c/a;

    new-instance v1, Lcom/duoyou/gamesdk/b/c/d$5;

    invoke-direct {v1, p0}, Lcom/duoyou/gamesdk/b/c/d$5;-><init>(Lcom/duoyou/gamesdk/b/c/d;)V

    invoke-virtual {v0, v1}, Lcom/duoyou/gamesdk/b/c/a;->a(Lcom/duoyou/gamesdk/b/c/a$a;)V

    :goto_0
    iget-object v0, p0, Lcom/duoyou/gamesdk/b/c/d;->q:Lcom/duoyou/gamesdk/b/c/a;

    iget-object v1, p0, Lcom/duoyou/gamesdk/b/c/d;->a:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/duoyou/gamesdk/b/c/a;->a(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/duoyou/gamesdk/b/c/d;->q:Lcom/duoyou/gamesdk/b/c/a;

    invoke-virtual {v0}, Lcom/duoyou/gamesdk/b/c/a;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method static synthetic h(Lcom/duoyou/gamesdk/b/c/d;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/duoyou/gamesdk/b/c/d;->o:Landroid/view/View;

    return-object v0
.end method

.method static synthetic i(Lcom/duoyou/gamesdk/b/c/d;)Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lcom/duoyou/gamesdk/b/c/d;->h:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic j(Lcom/duoyou/gamesdk/b/c/d;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/duoyou/gamesdk/b/c/d;->j:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic k(Lcom/duoyou/gamesdk/b/c/d;)V
    .locals 0

    invoke-direct {p0}, Lcom/duoyou/gamesdk/b/c/d;->g()V

    return-void
.end method

.method static synthetic l(Lcom/duoyou/gamesdk/b/c/d;)Lcom/duoyou/gamesdk/b/c/a;
    .locals 1

    iget-object v0, p0, Lcom/duoyou/gamesdk/b/c/d;->q:Lcom/duoyou/gamesdk/b/c/a;

    return-object v0
.end method

.method static synthetic m(Lcom/duoyou/gamesdk/b/c/d;)V
    .locals 0

    invoke-direct {p0}, Lcom/duoyou/gamesdk/b/c/d;->f()V

    return-void
.end method

.method static synthetic n(Lcom/duoyou/gamesdk/b/c/d;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/duoyou/gamesdk/b/c/d;->p:Ljava/util/List;

    return-object v0
.end method

.method static synthetic o(Lcom/duoyou/gamesdk/b/c/d;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/duoyou/gamesdk/b/c/d;->k:Landroid/view/View;

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

    invoke-virtual {p0}, Lcom/duoyou/gamesdk/b/c/d;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "dy_login_with_account_activity"

    invoke-static {v0, v1}, Lcom/duoyou/gamesdk/c/c/p;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/duoyou/gamesdk/b/c/d;->setContentView(I)V

    invoke-direct {p0}, Lcom/duoyou/gamesdk/b/c/d;->e()V

    invoke-direct {p0}, Lcom/duoyou/gamesdk/b/c/d;->f()V

    return-void
.end method
