.class Lcom/duoyou/gamesdk/c/view/listview/PinnedSectionListView$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/duoyou/gamesdk/c/view/listview/PinnedSectionListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/duoyou/gamesdk/c/view/listview/PinnedSectionListView;


# direct methods
.method constructor <init>(Lcom/duoyou/gamesdk/c/view/listview/PinnedSectionListView;)V
    .locals 0

    iput-object p1, p0, Lcom/duoyou/gamesdk/c/view/listview/PinnedSectionListView$1;->this$0:Lcom/duoyou/gamesdk/c/view/listview/PinnedSectionListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 2

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/view/listview/PinnedSectionListView$1;->this$0:Lcom/duoyou/gamesdk/c/view/listview/PinnedSectionListView;

    iget-object v0, v0, Lcom/duoyou/gamesdk/c/view/listview/PinnedSectionListView;->mDelegateOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/view/listview/PinnedSectionListView$1;->this$0:Lcom/duoyou/gamesdk/c/view/listview/PinnedSectionListView;

    iget-object v0, v0, Lcom/duoyou/gamesdk/c/view/listview/PinnedSectionListView;->mDelegateOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/widget/AbsListView$OnScrollListener;->onScroll(Landroid/widget/AbsListView;III)V

    :cond_0
    iget-object v0, p0, Lcom/duoyou/gamesdk/c/view/listview/PinnedSectionListView$1;->this$0:Lcom/duoyou/gamesdk/c/view/listview/PinnedSectionListView;

    invoke-virtual {v0}, Lcom/duoyou/gamesdk/c/view/listview/PinnedSectionListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-eqz v0, :cond_1

    if-nez p3, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-interface {v0, p2}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/duoyou/gamesdk/c/view/listview/PinnedSectionListView;->isItemViewTypePinned(Landroid/widget/ListAdapter;I)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/view/listview/PinnedSectionListView$1;->this$0:Lcom/duoyou/gamesdk/c/view/listview/PinnedSectionListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/duoyou/gamesdk/c/view/listview/PinnedSectionListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    iget-object v1, p0, Lcom/duoyou/gamesdk/c/view/listview/PinnedSectionListView$1;->this$0:Lcom/duoyou/gamesdk/c/view/listview/PinnedSectionListView;

    invoke-virtual {v1}, Lcom/duoyou/gamesdk/c/view/listview/PinnedSectionListView;->getPaddingTop()I

    move-result v1

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/view/listview/PinnedSectionListView$1;->this$0:Lcom/duoyou/gamesdk/c/view/listview/PinnedSectionListView;

    invoke-virtual {v0}, Lcom/duoyou/gamesdk/c/view/listview/PinnedSectionListView;->destroyPinnedShadow()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/duoyou/gamesdk/c/view/listview/PinnedSectionListView$1;->this$0:Lcom/duoyou/gamesdk/c/view/listview/PinnedSectionListView;

    invoke-virtual {v0, p2, p2, p3}, Lcom/duoyou/gamesdk/c/view/listview/PinnedSectionListView;->ensureShadowForPosition(III)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/duoyou/gamesdk/c/view/listview/PinnedSectionListView$1;->this$0:Lcom/duoyou/gamesdk/c/view/listview/PinnedSectionListView;

    invoke-virtual {v0, p2}, Lcom/duoyou/gamesdk/c/view/listview/PinnedSectionListView;->findCurrentSectionPosition(I)I

    move-result v0

    const/4 v1, -0x1

    if-le v0, v1, :cond_5

    iget-object v1, p0, Lcom/duoyou/gamesdk/c/view/listview/PinnedSectionListView$1;->this$0:Lcom/duoyou/gamesdk/c/view/listview/PinnedSectionListView;

    invoke-virtual {v1, v0, p2, p3}, Lcom/duoyou/gamesdk/c/view/listview/PinnedSectionListView;->ensureShadowForPosition(III)V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/duoyou/gamesdk/c/view/listview/PinnedSectionListView$1;->this$0:Lcom/duoyou/gamesdk/c/view/listview/PinnedSectionListView;

    invoke-virtual {v0}, Lcom/duoyou/gamesdk/c/view/listview/PinnedSectionListView;->destroyPinnedShadow()V

    goto :goto_0
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/view/listview/PinnedSectionListView$1;->this$0:Lcom/duoyou/gamesdk/c/view/listview/PinnedSectionListView;

    iget-object v0, v0, Lcom/duoyou/gamesdk/c/view/listview/PinnedSectionListView;->mDelegateOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/duoyou/gamesdk/c/view/listview/PinnedSectionListView$1;->this$0:Lcom/duoyou/gamesdk/c/view/listview/PinnedSectionListView;

    iget-object v0, v0, Lcom/duoyou/gamesdk/c/view/listview/PinnedSectionListView;->mDelegateOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-interface {v0, p1, p2}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    :cond_0
    return-void
.end method
