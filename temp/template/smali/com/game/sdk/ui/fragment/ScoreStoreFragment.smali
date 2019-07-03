.class public Lcom/game/sdk/ui/fragment/ScoreStoreFragment;
.super Lcom/game/sdk/ui/fragment/BaseFragment;
.source "ScoreStoreFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AbsListView$OnScrollListener;


# instance fields
.field private adapter:Lcom/game/sdk/adapter/ScoreStoreAdapter;

.field private backIv:Landroid/widget/ImageView;

.field private currentPage:I

.field private handler:Landroid/os/Handler;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HandlerLeak"
        }
    .end annotation
.end field

.field private lastItem:I

.field private mainActivity:Lcom/game/sdk/ui/MainActivity;

.field private noDataLayout:Landroid/widget/LinearLayout;

.field private scoreStoreEngin:Lcom/game/sdk/engin/ScoreStoreEngin;

.field private scoreStoreGridView:Landroid/widget/GridView;

.field scoreStoreInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/game/sdk/domain/ScoreStore;",
            ">;"
        }
    .end annotation
.end field

.field scoreStorePageList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/game/sdk/domain/ScoreStore;",
            ">;"
        }
    .end annotation
.end field

.field private titleTv:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/game/sdk/ui/fragment/BaseFragment;-><init>()V

    .line 56
    const/4 v0, 0x1

    iput v0, p0, Lcom/game/sdk/ui/fragment/ScoreStoreFragment;->currentPage:I

    .line 59
    new-instance v0, Lcom/game/sdk/ui/fragment/ScoreStoreFragment$1;

    invoke-direct {v0, p0}, Lcom/game/sdk/ui/fragment/ScoreStoreFragment$1;-><init>(Lcom/game/sdk/ui/fragment/ScoreStoreFragment;)V

    iput-object v0, p0, Lcom/game/sdk/ui/fragment/ScoreStoreFragment;->handler:Landroid/os/Handler;

    .line 34
    return-void
.end method

.method static synthetic access$0(Lcom/game/sdk/ui/fragment/ScoreStoreFragment;)Lcom/game/sdk/adapter/ScoreStoreAdapter;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/ScoreStoreFragment;->adapter:Lcom/game/sdk/adapter/ScoreStoreAdapter;

    return-object v0
.end method

.method static synthetic access$1(Lcom/game/sdk/ui/fragment/ScoreStoreFragment;)Landroid/widget/GridView;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/ScoreStoreFragment;->scoreStoreGridView:Landroid/widget/GridView;

    return-object v0
.end method

.method static synthetic access$2(Lcom/game/sdk/ui/fragment/ScoreStoreFragment;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/ScoreStoreFragment;->noDataLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$3(Lcom/game/sdk/ui/fragment/ScoreStoreFragment;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/ScoreStoreFragment;->handler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public getLayoutId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    const-string v0, "score_store_fragment"

    return-object v0
.end method

.method public initData()V
    .locals 3

    .prologue
    .line 99
    invoke-super {p0}, Lcom/game/sdk/ui/fragment/BaseFragment;->initData()V

    .line 102
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/game/sdk/ui/fragment/ScoreStoreFragment;->scoreStoreInfoList:Ljava/util/List;

    .line 103
    new-instance v0, Lcom/game/sdk/adapter/ScoreStoreAdapter;

    invoke-virtual {p0}, Lcom/game/sdk/ui/fragment/ScoreStoreFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/game/sdk/ui/fragment/ScoreStoreFragment;->scoreStoreInfoList:Ljava/util/List;

    invoke-direct {v0, v1, v2}, Lcom/game/sdk/adapter/ScoreStoreAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/game/sdk/ui/fragment/ScoreStoreFragment;->adapter:Lcom/game/sdk/adapter/ScoreStoreAdapter;

    .line 104
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/ScoreStoreFragment;->scoreStoreGridView:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/game/sdk/ui/fragment/ScoreStoreFragment;->adapter:Lcom/game/sdk/adapter/ScoreStoreAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 106
    invoke-virtual {p0}, Lcom/game/sdk/ui/fragment/ScoreStoreFragment;->loadScoreStoreData()V

    .line 107
    return-void
.end method

.method public initTheme()V
    .locals 0

    .prologue
    .line 113
    return-void
.end method

.method public initViews()V
    .locals 2

    .prologue
    .line 85
    invoke-super {p0}, Lcom/game/sdk/ui/fragment/BaseFragment;->initViews()V

    .line 86
    invoke-virtual {p0}, Lcom/game/sdk/ui/fragment/ScoreStoreFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/game/sdk/ui/MainActivity;

    iput-object v0, p0, Lcom/game/sdk/ui/fragment/ScoreStoreFragment;->mainActivity:Lcom/game/sdk/ui/MainActivity;

    .line 87
    const-string v0, "back_iv"

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/fragment/ScoreStoreFragment;->findImageViewByString(Ljava/lang/String;)Landroid/widget/ImageView;

    move-result-object v0

    iput-object v0, p0, Lcom/game/sdk/ui/fragment/ScoreStoreFragment;->backIv:Landroid/widget/ImageView;

    .line 88
    const-string v0, "title_tv"

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/fragment/ScoreStoreFragment;->findTextViewByString(Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lcom/game/sdk/ui/fragment/ScoreStoreFragment;->titleTv:Landroid/widget/TextView;

    .line 89
    const-string v0, "no_data_layout"

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/fragment/ScoreStoreFragment;->findViewByString(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/game/sdk/ui/fragment/ScoreStoreFragment;->noDataLayout:Landroid/widget/LinearLayout;

    .line 90
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/ScoreStoreFragment;->titleTv:Landroid/widget/TextView;

    const-string v1, "score_store_text"

    invoke-virtual {p0, v1}, Lcom/game/sdk/ui/fragment/ScoreStoreFragment;->findStringByResId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    const-string v0, "score_store_grid_view"

    invoke-virtual {p0, v0}, Lcom/game/sdk/ui/fragment/ScoreStoreFragment;->findViewByString(Ljava/lang/String;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/game/sdk/ui/fragment/ScoreStoreFragment;->scoreStoreGridView:Landroid/widget/GridView;

    .line 92
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/ScoreStoreFragment;->mainActivity:Lcom/game/sdk/ui/MainActivity;

    invoke-static {v0}, Lcom/game/sdk/engin/ScoreStoreEngin;->getImpl(Landroid/content/Context;)Lcom/game/sdk/engin/ScoreStoreEngin;

    move-result-object v0

    iput-object v0, p0, Lcom/game/sdk/ui/fragment/ScoreStoreFragment;->scoreStoreEngin:Lcom/game/sdk/engin/ScoreStoreEngin;

    .line 93
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/ScoreStoreFragment;->backIv:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/ScoreStoreFragment;->scoreStoreGridView:Landroid/widget/GridView;

    invoke-virtual {v0, p0}, Landroid/widget/GridView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 95
    return-void
.end method

.method public loadScoreStoreData()V
    .locals 4

    .prologue
    .line 130
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/ScoreStoreFragment;->scoreStoreEngin:Lcom/game/sdk/engin/ScoreStoreEngin;

    iget v1, p0, Lcom/game/sdk/ui/fragment/ScoreStoreFragment;->currentPage:I

    sget-object v2, Lcom/game/sdk/domain/GoagalInfo;->userInfo:Lcom/game/sdk/domain/UserInfo;

    iget-object v2, v2, Lcom/game/sdk/domain/UserInfo;->userId:Ljava/lang/String;

    new-instance v3, Lcom/game/sdk/ui/fragment/ScoreStoreFragment$2;

    invoke-direct {v3, p0}, Lcom/game/sdk/ui/fragment/ScoreStoreFragment$2;-><init>(Lcom/game/sdk/ui/fragment/ScoreStoreFragment;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/game/sdk/engin/ScoreStoreEngin;->getScoreStoreList(ILjava/lang/String;Lcom/game/sdk/net/listeners/Callback;)V

    .line 159
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 124
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const-string v1, "back_iv"

    invoke-virtual {p0, v1}, Lcom/game/sdk/ui/fragment/ScoreStoreFragment;->findIdByString(Ljava/lang/String;)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 125
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/ScoreStoreFragment;->mainActivity:Lcom/game/sdk/ui/MainActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/game/sdk/ui/MainActivity;->changeFragment(I)V

    .line 127
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 199
    invoke-super {p0}, Lcom/game/sdk/ui/fragment/BaseFragment;->onPause()V

    .line 200
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/ScoreStoreFragment;->mainActivity:Lcom/game/sdk/ui/MainActivity;

    invoke-static {v0}, Lcom/umeng/analytics/MobclickAgent;->onPause(Landroid/content/Context;)V

    .line 202
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 117
    invoke-super {p0}, Lcom/game/sdk/ui/fragment/BaseFragment;->onResume()V

    .line 118
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/ScoreStoreFragment;->mainActivity:Lcom/game/sdk/ui/MainActivity;

    invoke-static {v0}, Lcom/umeng/analytics/MobclickAgent;->onResume(Landroid/content/Context;)V

    .line 120
    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 1
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "firstVisibleItem"    # I
    .param p3, "visibleItemCount"    # I
    .param p4, "totalItemCount"    # I

    .prologue
    .line 226
    add-int v0, p2, p3

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/game/sdk/ui/fragment/ScoreStoreFragment;->lastItem:I

    .line 227
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 2
    .param p1, "view"    # Landroid/widget/AbsListView;
    .param p2, "scrollState"    # I

    .prologue
    .line 207
    if-nez p2, :cond_0

    .line 210
    invoke-virtual {p1}, Landroid/widget/AbsListView;->getLastVisiblePosition()I

    move-result v0

    invoke-virtual {p1}, Landroid/widget/AbsListView;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_0

    .line 212
    iget-object v0, p0, Lcom/game/sdk/ui/fragment/ScoreStoreFragment;->adapter:Lcom/game/sdk/adapter/ScoreStoreAdapter;

    invoke-virtual {v0}, Lcom/game/sdk/adapter/ScoreStoreAdapter;->getCount()I

    move-result v0

    const/16 v1, 0xa

    if-lt v0, v1, :cond_0

    .line 214
    iget v0, p0, Lcom/game/sdk/ui/fragment/ScoreStoreFragment;->currentPage:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/game/sdk/ui/fragment/ScoreStoreFragment;->currentPage:I

    .line 218
    invoke-virtual {p0}, Lcom/game/sdk/ui/fragment/ScoreStoreFragment;->loadScoreStoreData()V

    .line 222
    :cond_0
    return-void
.end method
