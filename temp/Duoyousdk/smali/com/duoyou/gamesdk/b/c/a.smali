.class public Lcom/duoyou/gamesdk/b/c/a;
.super Landroid/widget/BaseAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/duoyou/gamesdk/b/c/a$a;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/duoyou/gamesdk/b/b/b;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/lang/String;

.field private d:I

.field private e:Lcom/duoyou/gamesdk/b/c/a$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/duoyou/gamesdk/b/b/b;",
            ">;I)V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput p3, p0, Lcom/duoyou/gamesdk/b/c/a;->d:I

    iput-object p1, p0, Lcom/duoyou/gamesdk/b/c/a;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/duoyou/gamesdk/b/c/a;->b:Ljava/util/List;

    return-void
.end method

.method static synthetic a(Lcom/duoyou/gamesdk/b/c/a;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/duoyou/gamesdk/b/c/a;->a:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic b(Lcom/duoyou/gamesdk/b/c/a;)Lcom/duoyou/gamesdk/b/c/a$a;
    .locals 1

    iget-object v0, p0, Lcom/duoyou/gamesdk/b/c/a;->e:Lcom/duoyou/gamesdk/b/c/a$a;

    return-object v0
.end method


# virtual methods
.method public a(I)Lcom/duoyou/gamesdk/b/b/b;
    .locals 1

    iget-object v0, p0, Lcom/duoyou/gamesdk/b/c/a;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoyou/gamesdk/b/b/b;

    return-object v0
.end method

.method public a(Landroid/widget/ListView;)V
    .locals 5

    const/4 v4, 0x4

    :try_start_0
    invoke-virtual {p1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2, p1}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/View;->measure(II)V

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    invoke-virtual {p1}, Landroid/widget/ListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    if-gt v0, v4, :cond_2

    const/4 v0, -0x2

    iput v0, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_1
    :goto_1
    invoke-virtual {p1, v2}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_2
    if-le v0, v4, :cond_1

    mul-int/lit8 v0, v1, 0x4

    :try_start_1
    iput v0, v2, Landroid/view/ViewGroup$LayoutParams;->height:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public a(Lcom/duoyou/gamesdk/b/c/a$a;)V
    .locals 0

    iput-object p1, p0, Lcom/duoyou/gamesdk/b/c/a;->e:Lcom/duoyou/gamesdk/b/c/a$a;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/duoyou/gamesdk/b/c/a;->c:Ljava/lang/String;

    return-void
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/duoyou/gamesdk/b/c/a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/duoyou/gamesdk/b/c/a;->a(I)Lcom/duoyou/gamesdk/b/b/b;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/duoyou/gamesdk/b/c/a;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/duoyou/gamesdk/b/c/a;->a:Landroid/content/Context;

    const-string v2, "dy_login_recent_accounts_item"

    invoke-static {v1, v2}, Lcom/duoyou/gamesdk/c/c/p;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    :cond_0
    iget-object v0, p0, Lcom/duoyou/gamesdk/b/c/a;->a:Landroid/content/Context;

    const-string v1, "user_name_tv"

    invoke-static {v0, v1}, Lcom/duoyou/gamesdk/c/c/p;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/duoyou/gamesdk/b/c/a;->a:Landroid/content/Context;

    const-string v2, "clear_username_iv"

    invoke-static {v1, v2}, Lcom/duoyou/gamesdk/c/c/p;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/duoyou/gamesdk/b/c/a;->b:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/duoyou/gamesdk/b/b/b;

    iget v3, p0, Lcom/duoyou/gamesdk/b/c/a;->d:I

    if-nez v3, :cond_1

    invoke-virtual {v2}, Lcom/duoyou/gamesdk/b/b/b;->a()Ljava/lang/String;

    move-result-object v3

    :goto_0
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/duoyou/gamesdk/b/c/a;->c:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/duoyou/gamesdk/b/c/a;->a:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget-object v5, p0, Lcom/duoyou/gamesdk/b/c/a;->a:Landroid/content/Context;

    const-string v6, "dy_theme_blue"

    invoke-static {v5, v6}, Lcom/duoyou/gamesdk/c/c/p;->f(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_1
    new-instance v0, Lcom/duoyou/gamesdk/b/c/a$1;

    invoke-direct {v0, p0, v3, p1, v2}, Lcom/duoyou/gamesdk/b/c/a$1;-><init>(Lcom/duoyou/gamesdk/b/c/a;Ljava/lang/String;ILcom/duoyou/gamesdk/b/b/b;)V

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/duoyou/gamesdk/b/c/a$2;

    invoke-direct {v0, p0, p1, v2}, Lcom/duoyou/gamesdk/b/c/a$2;-><init>(Lcom/duoyou/gamesdk/b/c/a;ILcom/duoyou/gamesdk/b/b/b;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p2

    :cond_1
    invoke-virtual {v2}, Lcom/duoyou/gamesdk/b/b/b;->d()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lcom/duoyou/gamesdk/b/c/a;->a:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget-object v5, p0, Lcom/duoyou/gamesdk/b/c/a;->a:Landroid/content/Context;

    const-string v6, "dy_theme_grey_dark"

    invoke-static {v5, v6}, Lcom/duoyou/gamesdk/c/c/p;->f(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1
.end method
