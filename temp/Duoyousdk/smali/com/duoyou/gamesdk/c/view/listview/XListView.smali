.class public Lcom/duoyou/gamesdk/c/view/listview/XListView;
.super Landroid/widget/ListView;

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/duoyou/gamesdk/c/view/listview/XListView$IXListViewListener;,
        Lcom/duoyou/gamesdk/c/view/listview/XListView$OnXScrollListener;
    }
.end annotation


# static fields
.field private static final OFFSET_RADIO:F = 1.8f

.field private static final PULL_LOAD_MORE_DELTA:I = 0x0

.field private static final SCROLLBACK_FOOTER:I = 0x1

.field private static final SCROLLBACK_HEADER:I = 0x0

.field private static final SCROLL_DURATION:I = 0x190


# instance fields
.field private enabled:Z

.field private hasSetRefreshTime:Z

.field private mEnablePullLoad:Z

.field private mEnablePullRefresh:Z

.field private mFooterView:Lcom/duoyou/gamesdk/c/view/listview/XListViewFooter;

.field private mHeaderTimeView:Landroid/widget/TextView;

.field private mHeaderView:Lcom/duoyou/gamesdk/c/view/listview/XListViewHeader;

.field private mHeaderViewContent:Landroid/widget/RelativeLayout;

.field private mHeaderViewHeight:I

.field private mIsFooterReady:Z

.field private mLastY:F

.field private mListViewListener:Lcom/duoyou/gamesdk/c/view/listview/XListView$IXListViewListener;

.field private mPullLoading:Z

.field private mPullRefreshing:Z

.field private mScrollBack:I

.field private mScrollListener:Landroid/widget/AbsListView$OnScrollListener;

.field private mScroller:Landroid/widget/Scroller;

.field private mTotalItemCount:I

.field private suffix:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/duoyou/gamesdk/c/view/listview/XListView;->mLastY:F

    iput-boolean v2, p0, Lcom/duoyou/gamesdk/c/view/listview/XListView;->mEnablePullRefresh:Z

    iput-boolean v1, p0, Lcom/duoyou/gamesdk/c/view/listview/XListView;->mPullRefreshing:Z

    iput-boolean v2, p0, Lcom/duoyou/gamesdk/c/view/listview/XListView;->mEnablePullLoad:Z

    iput-boolean v1, p0, Lcom/duoyou/gamesdk/c/view/listview/XListView;->mIsFooterReady:Z

    iput-boolean v1, p0, Lcom/duoyou/gamesdk/c/view/listview/XListView;->hasSetRefreshTime:Z

    iput-boolean v2, p0, Lcom/duoyou/gamesdk/c/view/listview/XListView;->enabled:Z

    invoke-direct {p0, p1}, Lcom/duoyou/gamesdk/c/view/listview/XListView;->initWithContext(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/duoyou/gamesdk/c/view/listview/XListView;->mLastY:F

    iput-boolean v2, p0, Lcom/duoyou/gamesdk/c/view/listview/XListView;->mEnablePullRefresh:Z

    iput-boolean v1, p0, Lcom/duoyou/gamesdk/c/view/listview/XListView;->mPullRefreshing:Z

    iput-boolean v2, p0, Lcom/duoyou/gamesdk/c/view/listview/XListView;->mEnablePullLoad:Z

    iput-boolean v1, p0, Lcom/duoyou/gamesdk/c/view/listview/XListView;->mIsFooterReady:Z

    iput-boolean v1, p0, Lcom/duoyou/gamesdk/c/view/listview/XListView;->hasSetRefreshTime:Z

    iput-boolean v2, p0, Lcom/duoyou/gamesdk/c/view/listview/XListView;->enabled:Z

    invoke-direct {p0, p1}, Lcom/duoyou/gamesdk/c/view/listview/XListView;->initWithContext(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/duoyou/gamesdk/c/view/listview/XListView;->mLastY:F

    iput-boolean v2, p0, Lcom/duoyou/gamesdk/c/view/listview/XListView;->mEnablePullRefresh:Z

    iput-boolean v1, p0, Lcom/duoyou/gamesdk/c/view/listview/XListView;->mPullRefreshing:Z

    iput-boolean v2, p0, Lcom/duoyou/gamesdk/c/view/listview/XListView;->mEnablePullLoad:Z

    iput-boolean v1, p0, Lcom/duoyou/gamesdk/c/view/listview/XListView;->mIsFooterReady:Z

    iput-boolean v1, p0, Lcom/duoyou/gamesdk/c/view/listview/XListView;->hasSetRefreshTime:Z

    iput-boolean v2, p0, Lcom/duoyou/gamesdk/c/view/listview/XListView;->enabled:Z

    invoke-direct {p0, p1}, Lcom/duoyou/gamesdk/c/view/listview/XListView;->initWithContext(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$002(Lcom/duoyou/gamesdk/c/view/listview/XListView;I)I
    .locals 0

    iput p1, p0, Lcom/duoyou/gamesdk/c/view/listview/XListView;->mHeaderViewHeight:I

    return p1
.end method

.method static synthetic access$100(Lcom/duoyou/gamesdk/c/view/listview/XListView;)Landroid/widget/RelativeLayout;
    .locals 1

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/view/listview/XListView;->mHeaderViewContent:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$200(Lcom/duoyou/gamesdk/c/view/listview/XListView;)V
    .locals 0

    invoke-direct {p0}, Lcom/duoyou/gamesdk/c/view/listview/XListView;->startLoadMore()V

    return-void
.end method

.method static synthetic access$300(Lcom/duoyou/gamesdk/c/view/listview/XListView;)Lcom/duoyou/gamesdk/c/view/listview/XListView$IXListViewListener;
    .locals 1

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/view/listview/XListView;->mListViewListener:Lcom/duoyou/gamesdk/c/view/listview/XListView$IXListViewListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/duoyou/gamesdk/c/view/listview/XListView;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/view/listview/XListView;->suffix:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$502(Lcom/duoyou/gamesdk/c/view/listview/XListView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/duoyou/gamesdk/c/view/listview/XListView;->hasSetRefreshTime:Z

    return p1
.end method

.method private initWithContext(Landroid/content/Context;)V
    .locals 2

    invoke-super {p0, p0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    new-instance v0, Landroid/widget/Scroller;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-direct {v0, p1, v1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lcom/duoyou/gamesdk/c/view/listview/XListView;->mScroller:Landroid/widget/Scroller;

    new-instance v0, Lcom/duoyou/gamesdk/c/view/listview/XListViewHeader;

    invoke-direct {v0, p1}, Lcom/duoyou/gamesdk/c/view/listview/XListViewHeader;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/duoyou/gamesdk/c/view/listview/XListView;->mHeaderView:Lcom/duoyou/gamesdk/c/view/listview/XListViewHeader;

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/view/listview/XListView;->mHeaderView:Lcom/duoyou/gamesdk/c/view/listview/XListViewHeader;

    const-string v1, "xlistview_header_content"

    invoke-static {p1, v1}, Lcom/duoyou/gamesdk/c/c/p;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/duoyou/gamesdk/c/view/listview/XListViewHeader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/duoyou/gamesdk/c/view/listview/XListView;->mHeaderViewContent:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/view/listview/XListView;->mHeaderView:Lcom/duoyou/gamesdk/c/view/listview/XListViewHeader;

    const-string v1, "xlistview_header_time"

    invoke-static {p1, v1}, Lcom/duoyou/gamesdk/c/c/p;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/duoyou/gamesdk/c/view/listview/XListViewHeader;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/duoyou/gamesdk/c/view/listview/XListView;->mHeaderTimeView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/view/listview/XListView;->mHeaderView:Lcom/duoyou/gamesdk/c/view/listview/XListViewHeader;

    invoke-virtual {p0, v0}, Lcom/duoyou/gamesdk/c/view/listview/XListView;->addHeaderView(Landroid/view/View;)V

    new-instance v0, Lcom/duoyou/gamesdk/c/view/listview/XListViewFooter;

    invoke-direct {v0, p1}, Lcom/duoyou/gamesdk/c/view/listview/XListViewFooter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/duoyou/gamesdk/c/view/listview/XListView;->mFooterView:Lcom/duoyou/gamesdk/c/view/listview/XListViewFooter;

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/view/listview/XListView;->mHeaderView:Lcom/duoyou/gamesdk/c/view/listview/XListViewHeader;

    invoke-virtual {v0}, Lcom/duoyou/gamesdk/c/view/listview/XListViewHeader;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/duoyou/gamesdk/c/view/listview/XListView$1;

    invoke-direct {v1, p0}, Lcom/duoyou/gamesdk/c/view/listview/XListView$1;-><init>(Lcom/duoyou/gamesdk/c/view/listview/XListView;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/duoyou/gamesdk/c/view/listview/XListView;->setOverScrollMode(I)V

    return-void
.end method

.method private invokeOnScrolling()V
    .locals 1

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/view/listview/XListView;->mScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    instance-of v0, v0, Lcom/duoyou/gamesdk/c/view/listview/XListView$OnXScrollListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/view/listview/XListView;->mScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    check-cast v0, Lcom/duoyou/gamesdk/c/view/listview/XListView$OnXScrollListener;

    invoke-interface {v0, p0}, Lcom/duoyou/gamesdk/c/view/listview/XListView$OnXScrollListener;->onXScrolling(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private resetHeaderHeight()V
    .locals 6

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/view/listview/XListView;->mHeaderView:Lcom/duoyou/gamesdk/c/view/listview/XListViewHeader;

    invoke-virtual {v0}, Lcom/duoyou/gamesdk/c/view/listview/XListViewHeader;->getVisiableHeight()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/duoyou/gamesdk/c/view/listview/XListView;->mPullRefreshing:Z

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/duoyou/gamesdk/c/view/listview/XListView;->mHeaderViewHeight:I

    if-le v2, v0, :cond_0

    :cond_2
    iget-boolean v0, p0, Lcom/duoyou/gamesdk/c/view/listview/XListView;->mPullRefreshing:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/duoyou/gamesdk/c/view/listview/XListView;->mHeaderViewHeight:I

    if-le v2, v0, :cond_3

    iget v0, p0, Lcom/duoyou/gamesdk/c/view/listview/XListView;->mHeaderViewHeight:I

    move v3, v0

    :goto_1
    iput v1, p0, Lcom/duoyou/gamesdk/c/view/listview/XListView;->mScrollBack:I

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/view/listview/XListView;->mScroller:Landroid/widget/Scroller;

    sub-int v4, v3, v2

    const/16 v5, 0x190

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    invoke-virtual {p0}, Lcom/duoyou/gamesdk/c/view/listview/XListView;->invalidate()V

    goto :goto_0

    :cond_3
    move v3, v1

    goto :goto_1
.end method

.method private startLoadMore()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/duoyou/gamesdk/c/view/listview/XListView;->mPullLoading:Z

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/view/listview/XListView;->mFooterView:Lcom/duoyou/gamesdk/c/view/listview/XListViewFooter;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/duoyou/gamesdk/c/view/listview/XListViewFooter;->setState(I)V

    iget-boolean v0, p0, Lcom/duoyou/gamesdk/c/view/listview/XListView;->mEnablePullLoad:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/view/listview/XListView;->mListViewListener:Lcom/duoyou/gamesdk/c/view/listview/XListView$IXListViewListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/view/listview/XListView;->mListViewListener:Lcom/duoyou/gamesdk/c/view/listview/XListView$IXListViewListener;

    invoke-interface {v0}, Lcom/duoyou/gamesdk/c/view/listview/XListView$IXListViewListener;->onLoadMore()V

    :cond_0
    return-void
.end method

.method private updateFooterHeight(F)V
    .locals 3

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/view/listview/XListView;->mFooterView:Lcom/duoyou/gamesdk/c/view/listview/XListViewFooter;

    invoke-virtual {v0}, Lcom/duoyou/gamesdk/c/view/listview/XListViewFooter;->getBottomMargin()I

    move-result v0

    float-to-int v1, p1

    add-int/2addr v0, v1

    iget-boolean v1, p0, Lcom/duoyou/gamesdk/c/view/listview/XListView;->mEnablePullLoad:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/duoyou/gamesdk/c/view/listview/XListView;->mPullLoading:Z

    if-nez v1, :cond_0

    if-lez v0, :cond_1

    iget-object v1, p0, Lcom/duoyou/gamesdk/c/view/listview/XListView;->mFooterView:Lcom/duoyou/gamesdk/c/view/listview/XListViewFooter;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/duoyou/gamesdk/c/view/listview/XListViewFooter;->setState(I)V

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/duoyou/gamesdk/c/view/listview/XListView;->mFooterView:Lcom/duoyou/gamesdk/c/view/listview/XListViewFooter;

    invoke-virtual {v1, v0}, Lcom/duoyou/gamesdk/c/view/listview/XListViewFooter;->setBottomMargin(I)V

    return-void

    :cond_1
    iget-object v1, p0, Lcom/duoyou/gamesdk/c/view/listview/XListView;->mFooterView:Lcom/duoyou/gamesdk/c/view/listview/XListViewFooter;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/duoyou/gamesdk/c/view/listview/XListViewFooter;->setState(I)V

    goto :goto_0
.end method

.method private updateHeaderHeight(F)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/view/listview/XListView;->mHeaderView:Lcom/duoyou/gamesdk/c/view/listview/XListViewHeader;

    float-to-int v1, p1

    iget-object v2, p0, Lcom/duoyou/gamesdk/c/view/listview/XListView;->mHeaderView:Lcom/duoyou/gamesdk/c/view/listview/XListViewHeader;

    invoke-virtual {v2}, Lcom/duoyou/gamesdk/c/view/listview/XListViewHeader;->getVisiableHeight()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/duoyou/gamesdk/c/view/listview/XListViewHeader;->setVisiableHeight(I)V

    iget-boolean v0, p0, Lcom/duoyou/gamesdk/c/view/listview/XListView;->mEnablePullRefresh:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/duoyou/gamesdk/c/view/listview/XListView;->mPullRefreshing:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/view/listview/XListView;->mHeaderView:Lcom/duoyou/gamesdk/c/view/listview/XListViewHeader;

    invoke-virtual {v0}, Lcom/duoyou/gamesdk/c/view/listview/XListViewHeader;->getVisiableHeight()I

    move-result v0

    iget v1, p0, Lcom/duoyou/gamesdk/c/view/listview/XListView;->mHeaderViewHeight:I

    if-le v0, v1, :cond_1

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/view/listview/XListView;->mHeaderView:Lcom/duoyou/gamesdk/c/view/listview/XListViewHeader;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/duoyou/gamesdk/c/view/listview/XListViewHeader;->setState(I)V

    :cond_0
    :goto_0
    invoke-virtual {p0, v3}, Lcom/duoyou/gamesdk/c/view/listview/XListView;->setSelection(I)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/duoyou/gamesdk/c/view/listview/XListView;->mHeaderView:Lcom/duoyou/gamesdk/c/view/listview/XListViewHeader;

    invoke-virtual {v0, v3}, Lcom/duoyou/gamesdk/c/view/listview/XListViewHeader;->setState(I)V

    goto :goto_0
.end method


# virtual methods
.method public addFooterView()V
    .locals 1

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/view/listview/XListView;->mFooterView:Lcom/duoyou/gamesdk/c/view/listview/XListViewFooter;

    invoke-virtual {p0, v0}, Lcom/duoyou/gamesdk/c/view/listview/XListView;->addFooterView(Landroid/view/View;)V

    return-void
.end method

.method public computeScroll()V
    .locals 2

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/view/listview/XListView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/duoyou/gamesdk/c/view/listview/XListView;->mScrollBack:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/view/listview/XListView;->mHeaderView:Lcom/duoyou/gamesdk/c/view/listview/XListViewHeader;

    iget-object v1, p0, Lcom/duoyou/gamesdk/c/view/listview/XListView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/duoyou/gamesdk/c/view/listview/XListViewHeader;->setVisiableHeight(I)V

    :goto_0
    invoke-virtual {p0}, Lcom/duoyou/gamesdk/c/view/listview/XListView;->postInvalidate()V

    invoke-direct {p0}, Lcom/duoyou/gamesdk/c/view/listview/XListView;->invokeOnScrolling()V

    :cond_0
    invoke-super {p0}, Landroid/widget/ListView;->computeScroll()V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/duoyou/gamesdk/c/view/listview/XListView;->mFooterView:Lcom/duoyou/gamesdk/c/view/listview/XListViewFooter;

    iget-object v1, p0, Lcom/duoyou/gamesdk/c/view/listview/XListView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/duoyou/gamesdk/c/view/listview/XListViewFooter;->setBottomMargin(I)V

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/duoyou/gamesdk/c/view/listview/XListView;->enabled:Z

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/ListView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 1

    iput p4, p0, Lcom/duoyou/gamesdk/c/view/listview/XListView;->mTotalItemCount:I

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/view/listview/XListView;->mScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/view/listview/XListView;->mScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/widget/AbsListView$OnScrollListener;->onScroll(Landroid/widget/AbsListView;III)V

    :cond_0
    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 2

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/view/listview/XListView;->mScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/view/listview/XListView;->mScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v0, p1, p2}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    :cond_0
    if-nez p2, :cond_1

    invoke-virtual {p0}, Lcom/duoyou/gamesdk/c/view/listview/XListView;->getLastVisiblePosition()I

    move-result v0

    iget v1, p0, Lcom/duoyou/gamesdk/c/view/listview/XListView;->mTotalItemCount:I

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/duoyou/gamesdk/c/view/listview/XListView;->mPullRefreshing:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/view/listview/XListView;->mListViewListener:Lcom/duoyou/gamesdk/c/view/listview/XListView$IXListViewListener;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/duoyou/gamesdk/c/view/listview/XListView;->startLoadMore()V

    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    const/4 v3, 0x0

    const/high16 v1, -0x40800000    # -1.0f

    iget-boolean v0, p0, Lcom/duoyou/gamesdk/c/view/listview/XListView;->enabled:Z

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/duoyou/gamesdk/c/view/listview/XListView;->mLastY:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, p0, Lcom/duoyou/gamesdk/c/view/listview/XListView;->mLastY:F

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    iput v1, p0, Lcom/duoyou/gamesdk/c/view/listview/XListView;->mLastY:F

    invoke-virtual {p0}, Lcom/duoyou/gamesdk/c/view/listview/XListView;->getFirstVisiblePosition()I

    move-result v0

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/duoyou/gamesdk/c/view/listview/XListView;->mEnablePullRefresh:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/view/listview/XListView;->mHeaderView:Lcom/duoyou/gamesdk/c/view/listview/XListViewHeader;

    invoke-virtual {v0}, Lcom/duoyou/gamesdk/c/view/listview/XListViewHeader;->getVisiableHeight()I

    move-result v0

    iget v1, p0, Lcom/duoyou/gamesdk/c/view/listview/XListView;->mHeaderViewHeight:I

    if-le v0, v1, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/duoyou/gamesdk/c/view/listview/XListView;->mPullRefreshing:Z

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/view/listview/XListView;->mHeaderView:Lcom/duoyou/gamesdk/c/view/listview/XListViewHeader;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/duoyou/gamesdk/c/view/listview/XListViewHeader;->setState(I)V

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/view/listview/XListView;->mListViewListener:Lcom/duoyou/gamesdk/c/view/listview/XListView$IXListViewListener;

    if-eqz v0, :cond_1

    new-instance v0, Lcom/duoyou/gamesdk/c/view/listview/XListView$3;

    invoke-direct {v0, p0}, Lcom/duoyou/gamesdk/c/view/listview/XListView$3;-><init>(Lcom/duoyou/gamesdk/c/view/listview/XListView;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {p0, v0, v2, v3}, Lcom/duoyou/gamesdk/c/view/listview/XListView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    invoke-direct {p0}, Lcom/duoyou/gamesdk/c/view/listview/XListView;->resetHeaderHeight()V

    :cond_2
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_1
    return v0

    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, p0, Lcom/duoyou/gamesdk/c/view/listview/XListView;->mLastY:F

    goto :goto_0

    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iget v1, p0, Lcom/duoyou/gamesdk/c/view/listview/XListView;->mLastY:F

    sub-float/2addr v0, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    iput v1, p0, Lcom/duoyou/gamesdk/c/view/listview/XListView;->mLastY:F

    invoke-virtual {p0}, Lcom/duoyou/gamesdk/c/view/listview/XListView;->getFirstVisiblePosition()I

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/duoyou/gamesdk/c/view/listview/XListView;->mHeaderView:Lcom/duoyou/gamesdk/c/view/listview/XListViewHeader;

    invoke-virtual {v1}, Lcom/duoyou/gamesdk/c/view/listview/XListViewHeader;->getVisiableHeight()I

    move-result v1

    if-gtz v1, :cond_3

    cmpl-float v1, v0, v3

    if-lez v1, :cond_4

    :cond_3
    iget-boolean v1, p0, Lcom/duoyou/gamesdk/c/view/listview/XListView;->mEnablePullRefresh:Z

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/duoyou/gamesdk/c/view/listview/XListView;->setRefreshTime()V

    const v1, 0x3fe66666    # 1.8f

    div-float/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/duoyou/gamesdk/c/view/listview/XListView;->updateHeaderHeight(F)V

    invoke-direct {p0}, Lcom/duoyou/gamesdk/c/view/listview/XListView;->invokeOnScrolling()V

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/duoyou/gamesdk/c/view/listview/XListView;->getLastVisiblePosition()I

    move-result v1

    iget v2, p0, Lcom/duoyou/gamesdk/c/view/listview/XListView;->mTotalItemCount:I

    add-int/lit8 v2, v2, -0x1

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/duoyou/gamesdk/c/view/listview/XListView;->mFooterView:Lcom/duoyou/gamesdk/c/view/listview/XListViewFooter;

    invoke-virtual {v1}, Lcom/duoyou/gamesdk/c/view/listview/XListViewFooter;->getBottomMargin()I

    move-result v1

    if-gtz v1, :cond_2

    cmpg-float v0, v0, v3

    if-gez v0, :cond_2

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Lcom/duoyou/gamesdk/c/view/listview/XListView;->getLastVisiblePosition()I

    move-result v0

    iget v1, p0, Lcom/duoyou/gamesdk/c/view/listview/XListView;->mTotalItemCount:I

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_2

    goto :goto_0

    :cond_6
    const/4 v0, 0x0

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public removeFooterView()V
    .locals 1

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/view/listview/XListView;->mFooterView:Lcom/duoyou/gamesdk/c/view/listview/XListViewFooter;

    invoke-virtual {p0, v0}, Lcom/duoyou/gamesdk/c/view/listview/XListView;->removeFooterView(Landroid/view/View;)Z

    return-void
.end method

.method public resetFooterHeight()V
    .locals 6

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/view/listview/XListView;->mFooterView:Lcom/duoyou/gamesdk/c/view/listview/XListViewFooter;

    invoke-virtual {v0}, Lcom/duoyou/gamesdk/c/view/listview/XListViewFooter;->getBottomMargin()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v0, 0x1

    iput v0, p0, Lcom/duoyou/gamesdk/c/view/listview/XListView;->mScrollBack:I

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/view/listview/XListView;->mScroller:Landroid/widget/Scroller;

    neg-int v4, v2

    const/16 v5, 0x190

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    invoke-virtual {p0}, Lcom/duoyou/gamesdk/c/view/listview/XListView;->invalidate()V

    :cond_0
    return-void
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0

    check-cast p1, Landroid/widget/ListAdapter;

    invoke-virtual {p0, p1}, Lcom/duoyou/gamesdk/c/view/listview/XListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 1

    iget-boolean v0, p0, Lcom/duoyou/gamesdk/c/view/listview/XListView;->mIsFooterReady:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/duoyou/gamesdk/c/view/listview/XListView;->mIsFooterReady:Z

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/view/listview/XListView;->mFooterView:Lcom/duoyou/gamesdk/c/view/listview/XListViewFooter;

    invoke-virtual {p0, v0}, Lcom/duoyou/gamesdk/c/view/listview/XListView;->addFooterView(Landroid/view/View;)V

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setHintViewBackgroundColor(I)V
    .locals 1

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/view/listview/XListView;->mFooterView:Lcom/duoyou/gamesdk/c/view/listview/XListViewFooter;

    invoke-virtual {v0, p1}, Lcom/duoyou/gamesdk/c/view/listview/XListViewFooter;->setHintViewBackgroundColor(I)V

    return-void
.end method

.method public setHintViewText()V
    .locals 1

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/view/listview/XListView;->mFooterView:Lcom/duoyou/gamesdk/c/view/listview/XListViewFooter;

    invoke-virtual {v0}, Lcom/duoyou/gamesdk/c/view/listview/XListViewFooter;->setHintViewText()V

    return-void
.end method

.method public setListViewTouchMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/duoyou/gamesdk/c/view/listview/XListView;->enabled:Z

    return-void
.end method

.method public setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 0

    iput-object p1, p0, Lcom/duoyou/gamesdk/c/view/listview/XListView;->mScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    return-void
.end method

.method public setPullLoadEnable(Z)V
    .locals 2

    const/4 v1, 0x0

    iput-boolean p1, p0, Lcom/duoyou/gamesdk/c/view/listview/XListView;->mEnablePullLoad:Z

    iget-boolean v0, p0, Lcom/duoyou/gamesdk/c/view/listview/XListView;->mEnablePullLoad:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/view/listview/XListView;->mFooterView:Lcom/duoyou/gamesdk/c/view/listview/XListViewFooter;

    invoke-virtual {v0}, Lcom/duoyou/gamesdk/c/view/listview/XListViewFooter;->hide()V

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/view/listview/XListView;->mFooterView:Lcom/duoyou/gamesdk/c/view/listview/XListViewFooter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/duoyou/gamesdk/c/view/listview/XListViewFooter;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    return-void

    :cond_0
    iput-boolean v1, p0, Lcom/duoyou/gamesdk/c/view/listview/XListView;->mPullLoading:Z

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/view/listview/XListView;->mFooterView:Lcom/duoyou/gamesdk/c/view/listview/XListViewFooter;

    invoke-virtual {v0}, Lcom/duoyou/gamesdk/c/view/listview/XListViewFooter;->show()V

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/view/listview/XListView;->mFooterView:Lcom/duoyou/gamesdk/c/view/listview/XListViewFooter;

    invoke-virtual {v0, v1}, Lcom/duoyou/gamesdk/c/view/listview/XListViewFooter;->setState(I)V

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/view/listview/XListView;->mFooterView:Lcom/duoyou/gamesdk/c/view/listview/XListViewFooter;

    new-instance v1, Lcom/duoyou/gamesdk/c/view/listview/XListView$2;

    invoke-direct {v1, p0}, Lcom/duoyou/gamesdk/c/view/listview/XListView$2;-><init>(Lcom/duoyou/gamesdk/c/view/listview/XListView;)V

    invoke-virtual {v0, v1}, Lcom/duoyou/gamesdk/c/view/listview/XListViewFooter;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public setPullRefreshEnable(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/duoyou/gamesdk/c/view/listview/XListView;->mEnablePullRefresh:Z

    iget-boolean v0, p0, Lcom/duoyou/gamesdk/c/view/listview/XListView;->mEnablePullRefresh:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/view/listview/XListView;->mHeaderViewContent:Landroid/widget/RelativeLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/duoyou/gamesdk/c/view/listview/XListView;->mHeaderViewContent:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public setRefreshSuffix(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/duoyou/gamesdk/c/view/listview/XListView;->suffix:Ljava/lang/String;

    return-void
.end method

.method public setRefreshTime()V
    .locals 4

    :try_start_0
    iget-boolean v0, p0, Lcom/duoyou/gamesdk/c/view/listview/XListView;->hasSetRefreshTime:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/duoyou/gamesdk/c/view/listview/XListView;->hasSetRefreshTime:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/duoyou/gamesdk/c/view/listview/XListView;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/duoyou/gamesdk/c/view/listview/XListView;->suffix:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "refresh_time"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-static {v1, v2, v3}, Lcom/duoyou/gamesdk/c/c/q;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v0, "\u521a\u521a"

    invoke-virtual {p0, v0}, Lcom/duoyou/gamesdk/c/view/listview/XListView;->setRefreshTime(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_1
    :try_start_1
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-static {v0}, Lcom/duoyou/gamesdk/c/c/e;->a(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/duoyou/gamesdk/c/view/listview/XListView;->setRefreshTime(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public setRefreshTime(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/view/listview/XListView;->mHeaderTimeView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setXListViewListener(Lcom/duoyou/gamesdk/c/view/listview/XListView$IXListViewListener;)V
    .locals 0

    iput-object p1, p0, Lcom/duoyou/gamesdk/c/view/listview/XListView;->mListViewListener:Lcom/duoyou/gamesdk/c/view/listview/XListView$IXListViewListener;

    return-void
.end method

.method public stopLoadMore()V
    .locals 3

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/duoyou/gamesdk/c/view/listview/XListView;->mPullLoading:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iput-boolean v2, p0, Lcom/duoyou/gamesdk/c/view/listview/XListView;->mPullLoading:Z

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/view/listview/XListView;->mFooterView:Lcom/duoyou/gamesdk/c/view/listview/XListViewFooter;

    invoke-virtual {v0, v2}, Lcom/duoyou/gamesdk/c/view/listview/XListViewFooter;->setState(I)V

    :cond_0
    return-void
.end method

.method public stopRefresh()V
    .locals 2

    iget-boolean v0, p0, Lcom/duoyou/gamesdk/c/view/listview/XListView;->mPullRefreshing:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/duoyou/gamesdk/c/view/listview/XListView;->mPullRefreshing:Z

    invoke-direct {p0}, Lcom/duoyou/gamesdk/c/view/listview/XListView;->resetHeaderHeight()V

    :cond_0
    return-void
.end method
