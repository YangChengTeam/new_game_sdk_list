.class public Lcom/duoyou/gamesdk/c/view/listview/PinnedSectionListView;
.super Lcom/duoyou/gamesdk/c/view/listview/XListView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/duoyou/gamesdk/c/view/listview/PinnedSectionListView$PinnedSection;,
        Lcom/duoyou/gamesdk/c/view/listview/PinnedSectionListView$PinnedSectionListAdapter;
    }
.end annotation


# instance fields
.field private final mDataSetObserver:Landroid/database/DataSetObserver;

.field mDelegateOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

.field private mDownEvent:Landroid/view/MotionEvent;

.field private final mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

.field mPinnedSection:Lcom/duoyou/gamesdk/c/view/listview/PinnedSectionListView$PinnedSection;

.field mRecycleSection:Lcom/duoyou/gamesdk/c/view/listview/PinnedSectionListView$PinnedSection;

.field private mSectionsDistanceY:I

.field private mShadowDrawable:Landroid/graphics/drawable/GradientDrawable;

.field private mShadowHeight:I

.field private final mTouchPoint:Landroid/graphics/PointF;

.field private final mTouchRect:Landroid/graphics/Rect;

.field private mTouchSlop:I

.field private mTouchTarget:Landroid/view/View;

.field mTranslateY:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/duoyou/gamesdk/c/view/listview/XListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/duoyou/gamesdk/c/view/listview/PinnedSectionListView;->mTouchRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/duoyou/gamesdk/c/view/listview/PinnedSectionListView;->mTouchPoint:Landroid/graphics/PointF;

    new-instance v0, Lcom/duoyou/gamesdk/c/view/listview/PinnedSectionListView$1;

    invoke-direct {v0, p0}, Lcom/duoyou/gamesdk/c/view/listview/PinnedSectionListView$1;-><init>(Lcom/duoyou/gamesdk/c/view/listview/PinnedSectionListView;)V

    iput-object v0, p0, Lcom/duoyou/gamesdk/c/view/listview/PinnedSectionListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    new-instance v0, Lcom/duoyou/gamesdk/c/view/listview/PinnedSectionListView$2;

    invoke-direct {v0, p0}, Lcom/duoyou/gamesdk/c/view/listview/PinnedSectionListView$2;-><init>(Lcom/duoyou/gamesdk/c/view/listview/PinnedSectionListView;)V

    iput-object v0, p0, Lcom/duoyou/gamesdk/c/view/listview/PinnedSectionListView;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-direct {p0}, Lcom/duoyou/gamesdk/c/view/listview/PinnedSectionListView;->initView()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/duoyou/gamesdk/c/view/listview/XListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/duoyou/gamesdk/c/view/listview/PinnedSectionListView;->mTouchRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/duoyou/gamesdk/c/view/listview/PinnedSectionListView;->mTouchPoint:Landroid/graphics/PointF;

    new-instance v0, Lcom/duoyou/gamesdk/c/view/listview/PinnedSectionListView$1;

    invoke-direct {v0, p0}, Lcom/duoyou/gamesdk/c/view/listview/PinnedSectionListView$1;-><init>(Lcom/duoyou/gamesdk/c/view/listview/PinnedSectionListView;)V

    iput-object v0, p0, Lcom/duoyou/gamesdk/c/view/listview/PinnedSectionListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    new-instance v0, Lcom/duoyou/gamesdk/c/view/listview/PinnedSectionListView$2;

    invoke-direct {v0, p0}, Lcom/duoyou/gamesdk/c/view/listview/PinnedSectionListView$2;-><init>(Lcom/duoyou/gamesdk/c/view/listview/PinnedSectionListView;)V

    iput-object v0, p0, Lcom/duoyou/gamesdk/c/view/listview/PinnedSectionListView;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-direct {p0}, Lcom/duoyou/gamesdk/c/view/listview/PinnedSectionListView;->initView()V

    return-void
.end method

.method private clearTouchTarget()V
    .locals 2

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/duoyou/gamesdk/c/view/listview/PinnedSectionListView;->mTouchTarget:Landroid/view/View;

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/view/listview/PinnedSectionListView;->mDownEvent:Landroid/view/MotionEvent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/view/listview/PinnedSectionListView;->mDownEvent:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    iput-object v1, p0, Lcom/duoyou/gamesdk/c/view/listview/PinnedSectionListView;->mDownEvent:Landroid/view/MotionEvent;

    :cond_0
    return-void
.end method

.method private initView()V
    .locals 1

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/view/listview/PinnedSectionListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-virtual {p0, v0}, Lcom/duoyou/gamesdk/c/view/listview/PinnedSectionListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    invoke-virtual {p0}, Lcom/duoyou/gamesdk/c/view/listview/PinnedSectionListView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/duoyou/gamesdk/c/view/listview/PinnedSectionListView;->mTouchSlop:I

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/duoyou/gamesdk/c/view/listview/PinnedSectionListView;->initShadow(Z)V

    return-void
.end method

.method public static isItemViewTypePinned(Landroid/widget/ListAdapter;I)Z
    .locals 1

    instance-of v0, p0, Landroid/widget/HeaderViewListAdapter;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/widget/HeaderViewListAdapter;

    invoke-virtual {p0}, Landroid/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    :goto_0
    check-cast v0, Lcom/duoyou/gamesdk/c/view/listview/PinnedSectionListView$PinnedSectionListAdapter;

    invoke-interface {v0, p1}, Lcom/duoyou/gamesdk/c/view/listview/PinnedSectionListView$PinnedSectionListAdapter;->isItemViewTypePinned(I)Z

    move-result v0

    return v0

    :cond_0
    move-object v0, p0

    goto :goto_0
.end method

.method private isPinnedViewTouched(Landroid/view/View;FF)Z
    .locals 4

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/view/listview/PinnedSectionListView;->mTouchRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/view/listview/PinnedSectionListView;->mTouchRect:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->top:I

    iget v2, p0, Lcom/duoyou/gamesdk/c/view/listview/PinnedSectionListView;->mTranslateY:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/view/listview/PinnedSectionListView;->mTouchRect:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iget v2, p0, Lcom/duoyou/gamesdk/c/view/listview/PinnedSectionListView;->mTranslateY:I

    invoke-virtual {p0}, Lcom/duoyou/gamesdk/c/view/listview/PinnedSectionListView;->getPaddingTop()I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/view/listview/PinnedSectionListView;->mTouchRect:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Lcom/duoyou/gamesdk/c/view/listview/PinnedSectionListView;->getPaddingLeft()I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/view/listview/PinnedSectionListView;->mTouchRect:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Lcom/duoyou/gamesdk/c/view/listview/PinnedSectionListView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/graphics/Rect;->right:I

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/view/listview/PinnedSectionListView;->mTouchRect:Landroid/graphics/Rect;

    float-to-int v1, p2

    float-to-int v2, p3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    return v0
.end method

.method private performPinnedItemClick()Z
    .locals 7

    const/4 v6, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/view/listview/PinnedSectionListView;->mPinnedSection:Lcom/duoyou/gamesdk/c/view/listview/PinnedSectionListView$PinnedSection;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/duoyou/gamesdk/c/view/listview/PinnedSectionListView;->getOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/duoyou/gamesdk/c/view/listview/PinnedSectionListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    iget-object v3, p0, Lcom/duoyou/gamesdk/c/view/listview/PinnedSectionListView;->mPinnedSection:Lcom/duoyou/gamesdk/c/view/listview/PinnedSectionListView$PinnedSection;

    iget v3, v3, Lcom/duoyou/gamesdk/c/view/listview/PinnedSectionListView$PinnedSection;->position:I

    invoke-interface {v2, v3}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/duoyou/gamesdk/c/view/listview/PinnedSectionListView;->mPinnedSection:Lcom/duoyou/gamesdk/c/view/listview/PinnedSectionListView$PinnedSection;

    iget-object v2, v2, Lcom/duoyou/gamesdk/c/view/listview/PinnedSectionListView$PinnedSection;->view:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/duoyou/gamesdk/c/view/listview/PinnedSectionListView;->playSoundEffect(I)V

    if-eqz v2, :cond_1

    invoke-virtual {v2, v6}, Landroid/view/View;->sendAccessibilityEvent(I)V

    :cond_1
    iget-object v1, p0, Lcom/duoyou/gamesdk/c/view/listview/PinnedSectionListView;->mPinnedSection:Lcom/duoyou/gamesdk/c/view/listview/PinnedSectionListView$PinnedSection;

    iget v3, v1, Lcom/duoyou/gamesdk/c/view/listview/PinnedSectionListView$PinnedSection;->position:I

    iget-object v1, p0, Lcom/duoyou/gamesdk/c/view/listview/PinnedSectionListView;->mPinnedSection:Lcom/duoyou/gamesdk/c/view/listview/PinnedSectionListView$PinnedSection;

    iget-wide v4, v1, Lcom/duoyou/gamesdk/c/view/listview/PinnedSectionListView$PinnedSection;->id:J

    move-object v1, p0

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    move v0, v6

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method createPinnedShadow(I)V
    .locals 8

    const/high16 v2, 0x40000000    # 2.0f

    const/4 v7, 0x0

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/view/listview/PinnedSectionListView;->mRecycleSection:Lcom/duoyou/gamesdk/c/view/listview/PinnedSectionListView$PinnedSection;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/duoyou/gamesdk/c/view/listview/PinnedSectionListView;->mRecycleSection:Lcom/duoyou/gamesdk/c/view/listview/PinnedSectionListView$PinnedSection;

    if-nez v0, :cond_3

    new-instance v0, Lcom/duoyou/gamesdk/c/view/listview/PinnedSectionListView$PinnedSection;

    invoke-direct {v0}, Lcom/duoyou/gamesdk/c/view/listview/PinnedSectionListView$PinnedSection;-><init>()V

    move-object v1, v0

    :goto_0
    invoke-virtual {p0}, Lcom/duoyou/gamesdk/c/view/listview/PinnedSectionListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    iget-object v3, v1, Lcom/duoyou/gamesdk/c/view/listview/PinnedSectionListView$PinnedSection;->view:Landroid/view/View;

    invoke-interface {v0, p1, v3, p0}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/AbsListView$LayoutParams;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/duoyou/gamesdk/c/view/listview/PinnedSectionListView;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/AbsListView$LayoutParams;

    invoke-virtual {v5, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    iget v3, v0, Landroid/widget/AbsListView$LayoutParams;->height:I

    invoke-static {v3}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    iget v0, v0, Landroid/widget/AbsListView$LayoutParams;->height:I

    invoke-static {v0}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    if-nez v3, :cond_2

    move v0, v2

    :goto_1
    invoke-virtual {p0}, Lcom/duoyou/gamesdk/c/view/listview/PinnedSectionListView;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Lcom/duoyou/gamesdk/c/view/listview/PinnedSectionListView;->getListPaddingTop()I

    move-result v6

    sub-int/2addr v3, v6

    invoke-virtual {p0}, Lcom/duoyou/gamesdk/c/view/listview/PinnedSectionListView;->getListPaddingBottom()I

    move-result v6

    sub-int/2addr v3, v6

    if-le v4, v3, :cond_1

    :goto_2
    invoke-virtual {p0}, Lcom/duoyou/gamesdk/c/view/listview/PinnedSectionListView;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Lcom/duoyou/gamesdk/c/view/listview/PinnedSectionListView;->getListPaddingLeft()I

    move-result v6

    sub-int/2addr v4, v6

    invoke-virtual {p0}, Lcom/duoyou/gamesdk/c/view/listview/PinnedSectionListView;->getListPaddingRight()I

    move-result v6

    sub-int/2addr v4, v6

    invoke-static {v4, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-static {v3, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {v5, v2, v0}, Landroid/view/View;->measure(II)V

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v5, v7, v7, v0, v2}, Landroid/view/View;->layout(IIII)V

    iput v7, p0, Lcom/duoyou/gamesdk/c/view/listview/PinnedSectionListView;->mTranslateY:I

    iput-object v5, v1, Lcom/duoyou/gamesdk/c/view/listview/PinnedSectionListView$PinnedSection;->view:Landroid/view/View;

    iput p1, v1, Lcom/duoyou/gamesdk/c/view/listview/PinnedSectionListView$PinnedSection;->position:I

    invoke-virtual {p0}, Lcom/duoyou/gamesdk/c/view/listview/PinnedSectionListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v2

    iput-wide v2, v1, Lcom/duoyou/gamesdk/c/view/listview/PinnedSectionListView$PinnedSection;->id:J

    iput-object v1, p0, Lcom/duoyou/gamesdk/c/view/listview/PinnedSectionListView;->mPinnedSection:Lcom/duoyou/gamesdk/c/view/listview/PinnedSectionListView$PinnedSection;

    return-void

    :cond_1
    move v3, v4

    goto :goto_2

    :cond_2
    move v0, v3

    goto :goto_1

    :cond_3
    move-object v1, v0

    goto :goto_0
.end method

.method destroyPinnedShadow()V
    .locals 1

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/view/listview/PinnedSectionListView;->mPinnedSection:Lcom/duoyou/gamesdk/c/view/listview/PinnedSectionListView$PinnedSection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/view/listview/PinnedSectionListView;->mPinnedSection:Lcom/duoyou/gamesdk/c/view/listview/PinnedSectionListView$PinnedSection;

    iput-object v0, p0, Lcom/duoyou/gamesdk/c/view/listview/PinnedSectionListView;->mRecycleSection:Lcom/duoyou/gamesdk/c/view/listview/PinnedSectionListView$PinnedSection;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/duoyou/gamesdk/c/view/listview/PinnedSectionListView;->mPinnedSection:Lcom/duoyou/gamesdk/c/view/listview/PinnedSectionListView$PinnedSection;

    :cond_0
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 6

    invoke-super {p0, p1}, Lcom/duoyou/gamesdk/c/view/listview/XListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/view/listview/PinnedSectionListView;->mPinnedSection:Lcom/duoyou/gamesdk/c/view/listview/PinnedSectionListView$PinnedSection;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/duoyou/gamesdk/c/view/listview/PinnedSectionListView;->getListPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Lcom/duoyou/gamesdk/c/view/listview/PinnedSectionListView;->getListPaddingTop()I

    move-result v2

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/view/listview/PinnedSectionListView;->mPinnedSection:Lcom/duoyou/gamesdk/c/view/listview/PinnedSectionListView$PinnedSection;

    iget-object v3, v0, Lcom/duoyou/gamesdk/c/view/listview/PinnedSectionListView$PinnedSection;->view:Landroid/view/View;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v4

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/view/listview/PinnedSectionListView;->mShadowDrawable:Landroid/graphics/drawable/GradientDrawable;

    if-nez v0, :cond_2

    const/4 v0, 0x0

    :goto_0
    add-int/2addr v0, v4

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    add-int/2addr v3, v1

    add-int/2addr v0, v2

    invoke-virtual {p1, v1, v2, v3, v0}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    int-to-float v0, v1

    iget v1, p0, Lcom/duoyou/gamesdk/c/view/listview/PinnedSectionListView;->mTranslateY:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/view/listview/PinnedSectionListView;->mPinnedSection:Lcom/duoyou/gamesdk/c/view/listview/PinnedSectionListView$PinnedSection;

    iget-object v0, v0, Lcom/duoyou/gamesdk/c/view/listview/PinnedSectionListView$PinnedSection;->view:Landroid/view/View;

    invoke-virtual {p0}, Lcom/duoyou/gamesdk/c/view/listview/PinnedSectionListView;->getDrawingTime()J

    move-result-wide v2

    invoke-virtual {p0, p1, v0, v2, v3}, Lcom/duoyou/gamesdk/c/view/listview/PinnedSectionListView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/view/listview/PinnedSectionListView;->mShadowDrawable:Landroid/graphics/drawable/GradientDrawable;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/duoyou/gamesdk/c/view/listview/PinnedSectionListView;->mSectionsDistanceY:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/view/listview/PinnedSectionListView;->mShadowDrawable:Landroid/graphics/drawable/GradientDrawable;

    iget-object v1, p0, Lcom/duoyou/gamesdk/c/view/listview/PinnedSectionListView;->mPinnedSection:Lcom/duoyou/gamesdk/c/view/listview/PinnedSectionListView$PinnedSection;

    iget-object v1, v1, Lcom/duoyou/gamesdk/c/view/listview/PinnedSectionListView$PinnedSection;->view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    iget-object v2, p0, Lcom/duoyou/gamesdk/c/view/listview/PinnedSectionListView;->mPinnedSection:Lcom/duoyou/gamesdk/c/view/listview/PinnedSectionListView$PinnedSection;

    iget-object v2, v2, Lcom/duoyou/gamesdk/c/view/listview/PinnedSectionListView$PinnedSection;->view:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v2

    iget-object v3, p0, Lcom/duoyou/gamesdk/c/view/listview/PinnedSectionListView;->mPinnedSection:Lcom/duoyou/gamesdk/c/view/listview/PinnedSectionListView$PinnedSection;

    iget-object v3, v3, Lcom/duoyou/gamesdk/c/view/listview/PinnedSectionListView$PinnedSection;->view:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v3

    iget-object v4, p0, Lcom/duoyou/gamesdk/c/view/listview/PinnedSectionListView;->mPinnedSection:Lcom/duoyou/gamesdk/c/view/listview/PinnedSectionListView$PinnedSection;

    iget-object v4, v4, Lcom/duoyou/gamesdk/c/view/listview/PinnedSectionListView$PinnedSection;->view:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v4

    iget v5, p0, Lcom/duoyou/gamesdk/c/view/listview/PinnedSectionListView;->mShadowHeight:I

    add-int/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/GradientDrawable;->setBounds(IIII)V

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/view/listview/PinnedSectionListView;->mShadowDrawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_1
    return-void

    :cond_2
    iget v0, p0, Lcom/duoyou/gamesdk/c/view/listview/PinnedSectionListView;->mShadowHeight:I

    iget v5, p0, Lcom/duoyou/gamesdk/c/view/listview/PinnedSectionListView;->mSectionsDistanceY:I

    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    const/4 v5, 0x3

    const/4 v0, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_0

    iget-object v4, p0, Lcom/duoyou/gamesdk/c/view/listview/PinnedSectionListView;->mTouchTarget:Landroid/view/View;

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/duoyou/gamesdk/c/view/listview/PinnedSectionListView;->mPinnedSection:Lcom/duoyou/gamesdk/c/view/listview/PinnedSectionListView$PinnedSection;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/duoyou/gamesdk/c/view/listview/PinnedSectionListView;->mPinnedSection:Lcom/duoyou/gamesdk/c/view/listview/PinnedSectionListView$PinnedSection;

    iget-object v4, v4, Lcom/duoyou/gamesdk/c/view/listview/PinnedSectionListView$PinnedSection;->view:Landroid/view/View;

    invoke-direct {p0, v4, v1, v2}, Lcom/duoyou/gamesdk/c/view/listview/PinnedSectionListView;->isPinnedViewTouched(Landroid/view/View;FF)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/duoyou/gamesdk/c/view/listview/PinnedSectionListView;->mPinnedSection:Lcom/duoyou/gamesdk/c/view/listview/PinnedSectionListView$PinnedSection;

    iget-object v4, v4, Lcom/duoyou/gamesdk/c/view/listview/PinnedSectionListView$PinnedSection;->view:Landroid/view/View;

    iput-object v4, p0, Lcom/duoyou/gamesdk/c/view/listview/PinnedSectionListView;->mTouchTarget:Landroid/view/View;

    iget-object v4, p0, Lcom/duoyou/gamesdk/c/view/listview/PinnedSectionListView;->mTouchPoint:Landroid/graphics/PointF;

    iput v1, v4, Landroid/graphics/PointF;->x:F

    iget-object v4, p0, Lcom/duoyou/gamesdk/c/view/listview/PinnedSectionListView;->mTouchPoint:Landroid/graphics/PointF;

    iput v2, v4, Landroid/graphics/PointF;->y:F

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v4

    iput-object v4, p0, Lcom/duoyou/gamesdk/c/view/listview/PinnedSectionListView;->mDownEvent:Landroid/view/MotionEvent;

    :cond_0
    iget-object v4, p0, Lcom/duoyou/gamesdk/c/view/listview/PinnedSectionListView;->mTouchTarget:Landroid/view/View;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/duoyou/gamesdk/c/view/listview/PinnedSectionListView;->mTouchTarget:Landroid/view/View;

    invoke-direct {p0, v4, v1, v2}, Lcom/duoyou/gamesdk/c/view/listview/PinnedSectionListView;->isPinnedViewTouched(Landroid/view/View;FF)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/duoyou/gamesdk/c/view/listview/PinnedSectionListView;->mTouchTarget:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_1
    if-ne v3, v0, :cond_3

    invoke-super {p0, p1}, Lcom/duoyou/gamesdk/c/view/listview/XListView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-direct {p0}, Lcom/duoyou/gamesdk/c/view/listview/PinnedSectionListView;->performPinnedItemClick()Z

    invoke-direct {p0}, Lcom/duoyou/gamesdk/c/view/listview/PinnedSectionListView;->clearTouchTarget()V

    :cond_2
    :goto_0
    return v0

    :cond_3
    if-ne v3, v5, :cond_4

    invoke-direct {p0}, Lcom/duoyou/gamesdk/c/view/listview/PinnedSectionListView;->clearTouchTarget()V

    goto :goto_0

    :cond_4
    const/4 v1, 0x2

    if-ne v3, v1, :cond_2

    iget-object v1, p0, Lcom/duoyou/gamesdk/c/view/listview/PinnedSectionListView;->mTouchPoint:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    sub-float v1, v2, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v2, p0, Lcom/duoyou/gamesdk/c/view/listview/PinnedSectionListView;->mTouchSlop:I

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_2

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/MotionEvent;->setAction(I)V

    iget-object v2, p0, Lcom/duoyou/gamesdk/c/view/listview/PinnedSectionListView;->mTouchTarget:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    iget-object v1, p0, Lcom/duoyou/gamesdk/c/view/listview/PinnedSectionListView;->mDownEvent:Landroid/view/MotionEvent;

    invoke-super {p0, v1}, Lcom/duoyou/gamesdk/c/view/listview/XListView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-super {p0, p1}, Lcom/duoyou/gamesdk/c/view/listview/XListView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-direct {p0}, Lcom/duoyou/gamesdk/c/view/listview/PinnedSectionListView;->clearTouchTarget()V

    goto :goto_0

    :cond_5
    invoke-super {p0, p1}, Lcom/duoyou/gamesdk/c/view/listview/XListView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method ensureShadowForPosition(III)V
    .locals 4

    const/4 v3, 0x0

    const/4 v0, 0x2

    if-ge p3, v0, :cond_1

    invoke-virtual {p0}, Lcom/duoyou/gamesdk/c/view/listview/PinnedSectionListView;->destroyPinnedShadow()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/duoyou/gamesdk/c/view/listview/PinnedSectionListView;->mPinnedSection:Lcom/duoyou/gamesdk/c/view/listview/PinnedSectionListView$PinnedSection;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/view/listview/PinnedSectionListView;->mPinnedSection:Lcom/duoyou/gamesdk/c/view/listview/PinnedSectionListView$PinnedSection;

    iget v0, v0, Lcom/duoyou/gamesdk/c/view/listview/PinnedSectionListView$PinnedSection;->position:I

    if-eq v0, p1, :cond_2

    invoke-virtual {p0}, Lcom/duoyou/gamesdk/c/view/listview/PinnedSectionListView;->destroyPinnedShadow()V

    :cond_2
    iget-object v0, p0, Lcom/duoyou/gamesdk/c/view/listview/PinnedSectionListView;->mPinnedSection:Lcom/duoyou/gamesdk/c/view/listview/PinnedSectionListView$PinnedSection;

    if-nez v0, :cond_3

    invoke-virtual {p0, p1}, Lcom/duoyou/gamesdk/c/view/listview/PinnedSectionListView;->createPinnedShadow(I)V

    :cond_3
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0}, Lcom/duoyou/gamesdk/c/view/listview/PinnedSectionListView;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    sub-int v1, v0, p2

    sub-int v1, p3, v1

    invoke-virtual {p0, v0, v1}, Lcom/duoyou/gamesdk/c/view/listview/PinnedSectionListView;->findFirstVisibleSectionPosition(II)I

    move-result v0

    const/4 v1, -0x1

    if-le v0, v1, :cond_5

    sub-int/2addr v0, p2

    invoke-virtual {p0, v0}, Lcom/duoyou/gamesdk/c/view/listview/PinnedSectionListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/duoyou/gamesdk/c/view/listview/PinnedSectionListView;->mPinnedSection:Lcom/duoyou/gamesdk/c/view/listview/PinnedSectionListView$PinnedSection;

    iget-object v1, v1, Lcom/duoyou/gamesdk/c/view/listview/PinnedSectionListView$PinnedSection;->view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    invoke-virtual {p0}, Lcom/duoyou/gamesdk/c/view/listview/PinnedSectionListView;->getPaddingTop()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/duoyou/gamesdk/c/view/listview/PinnedSectionListView;->mSectionsDistanceY:I

    iget v0, p0, Lcom/duoyou/gamesdk/c/view/listview/PinnedSectionListView;->mSectionsDistanceY:I

    if-gez v0, :cond_4

    iget v0, p0, Lcom/duoyou/gamesdk/c/view/listview/PinnedSectionListView;->mSectionsDistanceY:I

    iput v0, p0, Lcom/duoyou/gamesdk/c/view/listview/PinnedSectionListView;->mTranslateY:I

    goto :goto_0

    :cond_4
    iput v3, p0, Lcom/duoyou/gamesdk/c/view/listview/PinnedSectionListView;->mTranslateY:I

    goto :goto_0

    :cond_5
    iput v3, p0, Lcom/duoyou/gamesdk/c/view/listview/PinnedSectionListView;->mTranslateY:I

    const v0, 0x7fffffff

    iput v0, p0, Lcom/duoyou/gamesdk/c/view/listview/PinnedSectionListView;->mSectionsDistanceY:I

    goto :goto_0
.end method

.method public findCurrentSectionPosition(I)I
    .locals 4

    const/4 v2, -0x1

    invoke-virtual {p0}, Lcom/duoyou/gamesdk/c/view/listview/PinnedSectionListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    if-lt p1, v0, :cond_1

    move v0, v2

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v0, v1, Landroid/widget/SectionIndexer;

    if-eqz v0, :cond_2

    move-object v0, v1

    check-cast v0, Landroid/widget/SectionIndexer;

    invoke-interface {v0, p1}, Landroid/widget/SectionIndexer;->getSectionForPosition(I)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/widget/SectionIndexer;->getPositionForSection(I)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v3

    invoke-static {v1, v3}, Lcom/duoyou/gamesdk/c/view/listview/PinnedSectionListView;->isItemViewTypePinned(Landroid/widget/ListAdapter;I)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_2
    move v0, p1

    :goto_1
    if-ltz v0, :cond_3

    invoke-interface {v1, v0}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v3

    invoke-static {v1, v3}, Lcom/duoyou/gamesdk/c/view/listview/PinnedSectionListView;->isItemViewTypePinned(Landroid/widget/ListAdapter;I)Z

    move-result v3

    if-nez v3, :cond_0

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_3
    move v0, v2

    goto :goto_0
.end method

.method findFirstVisibleSectionPosition(II)I
    .locals 5

    const/4 v0, -0x1

    invoke-virtual {p0}, Lcom/duoyou/gamesdk/c/view/listview/PinnedSectionListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v3

    invoke-interface {v3}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    invoke-virtual {p0}, Lcom/duoyou/gamesdk/c/view/listview/PinnedSectionListView;->getLastVisiblePosition()I

    move-result v2

    if-lt v2, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    add-int v2, p1, p2

    if-lt v2, v1, :cond_2

    sub-int p2, v1, p1

    :cond_2
    const/4 v1, 0x0

    move v2, v1

    :goto_1
    if-ge v2, p2, :cond_0

    add-int v1, p1, v2

    invoke-interface {v3, v1}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v4

    invoke-static {v3, v4}, Lcom/duoyou/gamesdk/c/view/listview/PinnedSectionListView;->isItemViewTypePinned(Landroid/widget/ListAdapter;I)Z

    move-result v4

    if-eqz v4, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1
.end method

.method public initShadow(Z)V
    .locals 5

    const/4 v4, 0x0

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/view/listview/PinnedSectionListView;->mShadowDrawable:Landroid/graphics/drawable/GradientDrawable;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const/4 v2, 0x3

    new-array v2, v2, [I

    const-string v3, "#ffa0a0a0"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    aput v3, v2, v4

    const/4 v3, 0x1

    const-string v4, "#50a0a0a0"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    aput v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "#00a0a0a0"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    aput v4, v2, v3

    invoke-direct {v0, v1, v2}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    iput-object v0, p0, Lcom/duoyou/gamesdk/c/view/listview/PinnedSectionListView;->mShadowDrawable:Landroid/graphics/drawable/GradientDrawable;

    const/high16 v0, 0x41000000    # 8.0f

    invoke-virtual {p0}, Lcom/duoyou/gamesdk/c/view/listview/PinnedSectionListView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/duoyou/gamesdk/c/view/listview/PinnedSectionListView;->mShadowHeight:I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/duoyou/gamesdk/c/view/listview/PinnedSectionListView;->mShadowDrawable:Landroid/graphics/drawable/GradientDrawable;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/duoyou/gamesdk/c/view/listview/PinnedSectionListView;->mShadowDrawable:Landroid/graphics/drawable/GradientDrawable;

    iput v4, p0, Lcom/duoyou/gamesdk/c/view/listview/PinnedSectionListView;->mShadowHeight:I

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 2

    invoke-super/range {p0 .. p5}, Lcom/duoyou/gamesdk/c/view/listview/XListView;->onLayout(ZIIII)V

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/view/listview/PinnedSectionListView;->mPinnedSection:Lcom/duoyou/gamesdk/c/view/listview/PinnedSectionListView$PinnedSection;

    if-eqz v0, :cond_0

    sub-int v0, p4, p2

    invoke-virtual {p0}, Lcom/duoyou/gamesdk/c/view/listview/PinnedSectionListView;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/duoyou/gamesdk/c/view/listview/PinnedSectionListView;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/duoyou/gamesdk/c/view/listview/PinnedSectionListView;->mPinnedSection:Lcom/duoyou/gamesdk/c/view/listview/PinnedSectionListView$PinnedSection;

    iget-object v1, v1, Lcom/duoyou/gamesdk/c/view/listview/PinnedSectionListView$PinnedSection;->view:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/duoyou/gamesdk/c/view/listview/PinnedSectionListView;->recreatePinnedShadow()V

    :cond_0
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/duoyou/gamesdk/c/view/listview/XListView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    new-instance v0, Lcom/duoyou/gamesdk/c/view/listview/PinnedSectionListView$3;

    invoke-direct {v0, p0}, Lcom/duoyou/gamesdk/c/view/listview/PinnedSectionListView$3;-><init>(Lcom/duoyou/gamesdk/c/view/listview/PinnedSectionListView;)V

    invoke-virtual {p0, v0}, Lcom/duoyou/gamesdk/c/view/listview/PinnedSectionListView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method recreatePinnedShadow()V
    .locals 3

    invoke-virtual {p0}, Lcom/duoyou/gamesdk/c/view/listview/PinnedSectionListView;->destroyPinnedShadow()V

    invoke-virtual {p0}, Lcom/duoyou/gamesdk/c/view/listview/PinnedSectionListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/duoyou/gamesdk/c/view/listview/PinnedSectionListView;->getFirstVisiblePosition()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/duoyou/gamesdk/c/view/listview/PinnedSectionListView;->findCurrentSectionPosition(I)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/duoyou/gamesdk/c/view/listview/PinnedSectionListView;->getLastVisiblePosition()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-virtual {p0, v1, v0, v2}, Lcom/duoyou/gamesdk/c/view/listview/PinnedSectionListView;->ensureShadowForPosition(III)V

    goto :goto_0
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0

    check-cast p1, Landroid/widget/ListAdapter;

    invoke-virtual {p0, p1}, Lcom/duoyou/gamesdk/c/view/listview/PinnedSectionListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 2

    if-eqz p1, :cond_1

    instance-of v0, p1, Lcom/duoyou/gamesdk/c/view/listview/PinnedSectionListView$PinnedSectionListAdapter;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Does your adapter implement PinnedSectionListAdapter?"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-interface {p1}, Landroid/widget/ListAdapter;->getViewTypeCount()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Does your adapter handle at least two types of views in getViewTypeCount() method: items and sections?"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p0}, Lcom/duoyou/gamesdk/c/view/listview/PinnedSectionListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/duoyou/gamesdk/c/view/listview/PinnedSectionListView;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {v0, v1}, Landroid/widget/ListAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    :cond_2
    if-eqz p1, :cond_3

    iget-object v1, p0, Lcom/duoyou/gamesdk/c/view/listview/PinnedSectionListView;->mDataSetObserver:Landroid/database/DataSetObserver;

    invoke-interface {p1, v1}, Landroid/widget/ListAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    :cond_3
    if-eq v0, p1, :cond_4

    invoke-virtual {p0}, Lcom/duoyou/gamesdk/c/view/listview/PinnedSectionListView;->destroyPinnedShadow()V

    :cond_4
    invoke-super {p0, p1}, Lcom/duoyou/gamesdk/c/view/listview/XListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 1

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/view/listview/PinnedSectionListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    if-ne p1, v0, :cond_0

    invoke-super {p0, p1}, Lcom/duoyou/gamesdk/c/view/listview/XListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lcom/duoyou/gamesdk/c/view/listview/PinnedSectionListView;->mDelegateOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    goto :goto_0
.end method

.method public setShadowVisible(Z)V
    .locals 5

    invoke-virtual {p0, p1}, Lcom/duoyou/gamesdk/c/view/listview/PinnedSectionListView;->initShadow(Z)V

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/view/listview/PinnedSectionListView;->mPinnedSection:Lcom/duoyou/gamesdk/c/view/listview/PinnedSectionListView$PinnedSection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/view/listview/PinnedSectionListView;->mPinnedSection:Lcom/duoyou/gamesdk/c/view/listview/PinnedSectionListView$PinnedSection;

    iget-object v0, v0, Lcom/duoyou/gamesdk/c/view/listview/PinnedSectionListView$PinnedSection;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    iget v4, p0, Lcom/duoyou/gamesdk/c/view/listview/PinnedSectionListView;->mShadowHeight:I

    add-int/2addr v0, v4

    invoke-virtual {p0, v1, v2, v3, v0}, Lcom/duoyou/gamesdk/c/view/listview/PinnedSectionListView;->invalidate(IIII)V

    :cond_0
    return-void
.end method
