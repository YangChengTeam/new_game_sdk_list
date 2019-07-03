.class public Lcom/duoyou/gamesdk/f/f;
.super Lcom/duoyou/gamesdk/c/base/a;


# instance fields
.field private a:Lcom/duoyou/gamesdk/c/view/listview/XListView;

.field private b:Lcom/duoyou/gamesdk/f/a/a;

.field private c:Landroid/widget/ImageView;

.field private d:I

.field private e:Z

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/duoyou/gamesdk/f/entity/OrderInfo;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/duoyou/gamesdk/f/entity/OrderInfo;",
            ">;"
        }
    .end annotation
.end field

.field private h:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1}, Lcom/duoyou/gamesdk/c/base/a;-><init>(Landroid/content/Context;)V

    iput v0, p0, Lcom/duoyou/gamesdk/f/f;->d:I

    iput-boolean v0, p0, Lcom/duoyou/gamesdk/f/f;->e:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/duoyou/gamesdk/f/f;->f:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/duoyou/gamesdk/f/f;->g:Ljava/util/List;

    return-void
.end method

.method static synthetic a(Lcom/duoyou/gamesdk/f/f;I)I
    .locals 0

    iput p1, p0, Lcom/duoyou/gamesdk/f/f;->d:I

    return p1
.end method

.method private a(Lcom/duoyou/gamesdk/f/entity/OrderInfo;)Lcom/duoyou/gamesdk/f/entity/OrderInfo;
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/duoyou/gamesdk/f/f;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/duoyou/gamesdk/f/entity/OrderInfo;

    invoke-virtual {v0}, Lcom/duoyou/gamesdk/f/entity/OrderInfo;->getFormatCreateTime()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/duoyou/gamesdk/f/entity/OrderInfo;->getCreateTime()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/duoyou/gamesdk/c/c/e;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    if-nez v0, :cond_1

    new-instance v0, Lcom/duoyou/gamesdk/f/entity/OrderInfo;

    invoke-direct {v0}, Lcom/duoyou/gamesdk/f/entity/OrderInfo;-><init>()V

    iput v1, v0, Lcom/duoyou/gamesdk/f/entity/OrderInfo;->DATA_TYPE:I

    invoke-virtual {p1}, Lcom/duoyou/gamesdk/f/entity/OrderInfo;->getCreateTime()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/duoyou/gamesdk/c/c/e;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/duoyou/gamesdk/f/entity/OrderInfo;->setFormatCreateTime(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/duoyou/gamesdk/f/f;->g:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method static synthetic a(Lcom/duoyou/gamesdk/f/f;Lcom/duoyou/gamesdk/f/entity/OrderInfo;)Lcom/duoyou/gamesdk/f/entity/OrderInfo;
    .locals 1

    invoke-direct {p0, p1}, Lcom/duoyou/gamesdk/f/f;->a(Lcom/duoyou/gamesdk/f/entity/OrderInfo;)Lcom/duoyou/gamesdk/f/entity/OrderInfo;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 1

    new-instance v0, Lcom/duoyou/gamesdk/f/f;

    invoke-direct {v0, p0}, Lcom/duoyou/gamesdk/f/f;-><init>(Landroid/content/Context;)V

    invoke-static {p0, v0}, Lcom/duoyou/gamesdk/c/c/g;->b(Landroid/content/Context;Landroid/app/Dialog;)V

    return-void
.end method

.method static synthetic a(Lcom/duoyou/gamesdk/f/f;)V
    .locals 0

    invoke-direct {p0}, Lcom/duoyou/gamesdk/f/f;->g()V

    return-void
.end method

.method static synthetic a(Lcom/duoyou/gamesdk/f/f;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/duoyou/gamesdk/f/f;->e:Z

    return p1
.end method

.method static synthetic b(Lcom/duoyou/gamesdk/f/f;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/duoyou/gamesdk/f/f;->f:Ljava/util/List;

    return-object v0
.end method

.method static synthetic c(Lcom/duoyou/gamesdk/f/f;)Lcom/duoyou/gamesdk/c/view/listview/XListView;
    .locals 1

    iget-object v0, p0, Lcom/duoyou/gamesdk/f/f;->a:Lcom/duoyou/gamesdk/c/view/listview/XListView;

    return-object v0
.end method

.method static synthetic d(Lcom/duoyou/gamesdk/f/f;)I
    .locals 1

    iget v0, p0, Lcom/duoyou/gamesdk/f/f;->d:I

    return v0
.end method

.method static synthetic e(Lcom/duoyou/gamesdk/f/f;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/duoyou/gamesdk/f/f;->g:Ljava/util/List;

    return-object v0
.end method

.method private e()V
    .locals 4

    const/4 v3, 0x1

    const-string v0, "empty_layout"

    invoke-virtual {p0, v0}, Lcom/duoyou/gamesdk/f/f;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/duoyou/gamesdk/f/f;->h:Landroid/view/View;

    const-string v0, "recycler_view"

    invoke-virtual {p0, v0}, Lcom/duoyou/gamesdk/f/f;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/duoyou/gamesdk/c/view/listview/XListView;

    iput-object v0, p0, Lcom/duoyou/gamesdk/f/f;->a:Lcom/duoyou/gamesdk/c/view/listview/XListView;

    iget-object v0, p0, Lcom/duoyou/gamesdk/f/f;->a:Lcom/duoyou/gamesdk/c/view/listview/XListView;

    const-string v1, "ola_"

    invoke-virtual {v0, v1}, Lcom/duoyou/gamesdk/c/view/listview/XListView;->setRefreshSuffix(Ljava/lang/String;)V

    const-string v0, "close_iv"

    invoke-virtual {p0, v0}, Lcom/duoyou/gamesdk/f/f;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/duoyou/gamesdk/f/f;->c:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/duoyou/gamesdk/f/f;->c:Landroid/widget/ImageView;

    new-instance v1, Lcom/duoyou/gamesdk/f/f$1;

    invoke-direct {v1, p0}, Lcom/duoyou/gamesdk/f/f$1;-><init>(Lcom/duoyou/gamesdk/f/f;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/duoyou/gamesdk/f/f;->a:Lcom/duoyou/gamesdk/c/view/listview/XListView;

    new-instance v1, Lcom/duoyou/gamesdk/f/f$2;

    invoke-direct {v1, p0}, Lcom/duoyou/gamesdk/f/f$2;-><init>(Lcom/duoyou/gamesdk/f/f;)V

    invoke-virtual {v0, v1}, Lcom/duoyou/gamesdk/c/view/listview/XListView;->setXListViewListener(Lcom/duoyou/gamesdk/c/view/listview/XListView$IXListViewListener;)V

    new-instance v0, Lcom/duoyou/gamesdk/f/a/a;

    invoke-virtual {p0}, Lcom/duoyou/gamesdk/f/f;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/duoyou/gamesdk/f/f;->f:Ljava/util/List;

    invoke-direct {v0, v1, v2}, Lcom/duoyou/gamesdk/f/a/a;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/duoyou/gamesdk/f/f;->b:Lcom/duoyou/gamesdk/f/a/a;

    iget-object v0, p0, Lcom/duoyou/gamesdk/f/f;->a:Lcom/duoyou/gamesdk/c/view/listview/XListView;

    iget-object v1, p0, Lcom/duoyou/gamesdk/f/f;->b:Lcom/duoyou/gamesdk/f/a/a;

    invoke-virtual {v0, v1}, Lcom/duoyou/gamesdk/c/view/listview/XListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/duoyou/gamesdk/f/f;->a:Lcom/duoyou/gamesdk/c/view/listview/XListView;

    invoke-virtual {v0, v3}, Lcom/duoyou/gamesdk/c/view/listview/XListView;->setPullRefreshEnable(Z)V

    iget-object v0, p0, Lcom/duoyou/gamesdk/f/f;->a:Lcom/duoyou/gamesdk/c/view/listview/XListView;

    invoke-virtual {v0, v3}, Lcom/duoyou/gamesdk/c/view/listview/XListView;->setPullLoadEnable(Z)V

    iget-object v0, p0, Lcom/duoyou/gamesdk/f/f;->a:Lcom/duoyou/gamesdk/c/view/listview/XListView;

    new-instance v1, Lcom/duoyou/gamesdk/f/f$3;

    invoke-direct {v1, p0}, Lcom/duoyou/gamesdk/f/f$3;-><init>(Lcom/duoyou/gamesdk/f/f;)V

    invoke-virtual {v0, v1}, Lcom/duoyou/gamesdk/c/view/listview/XListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method static synthetic f(Lcom/duoyou/gamesdk/f/f;)I
    .locals 2

    iget v0, p0, Lcom/duoyou/gamesdk/f/f;->d:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/duoyou/gamesdk/f/f;->d:I

    return v0
.end method

.method private f()V
    .locals 1

    invoke-virtual {p0}, Lcom/duoyou/gamesdk/f/f;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/duoyou/gamesdk/c/c/k;->a(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/duoyou/gamesdk/f/f;->g()V

    return-void
.end method

.method static synthetic g(Lcom/duoyou/gamesdk/f/f;)Lcom/duoyou/gamesdk/f/a/a;
    .locals 1

    iget-object v0, p0, Lcom/duoyou/gamesdk/f/f;->b:Lcom/duoyou/gamesdk/f/a/a;

    return-object v0
.end method

.method private g()V
    .locals 3

    iget-boolean v0, p0, Lcom/duoyou/gamesdk/f/f;->e:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/duoyou/gamesdk/p/b/a;

    invoke-direct {v0}, Lcom/duoyou/gamesdk/p/b/a;-><init>()V

    iget v1, p0, Lcom/duoyou/gamesdk/f/f;->d:I

    new-instance v2, Lcom/duoyou/gamesdk/f/f$4;

    invoke-direct {v2, p0}, Lcom/duoyou/gamesdk/f/f$4;-><init>(Lcom/duoyou/gamesdk/f/f;)V

    invoke-virtual {v0, v1, v2}, Lcom/duoyou/gamesdk/p/b/a;->a(ILcom/duoyou/gamesdk/c/http/e;)V

    goto :goto_0
.end method

.method static synthetic h(Lcom/duoyou/gamesdk/f/f;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/duoyou/gamesdk/f/f;->h:Landroid/view/View;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/duoyou/gamesdk/c/base/a;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/duoyou/gamesdk/f/f;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "dy_floating_order_list_layout"

    invoke-static {v0, v1}, Lcom/duoyou/gamesdk/c/c/p;->d(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/duoyou/gamesdk/f/f;->setContentView(I)V

    invoke-direct {p0}, Lcom/duoyou/gamesdk/f/f;->e()V

    invoke-direct {p0}, Lcom/duoyou/gamesdk/f/f;->f()V

    return-void
.end method
